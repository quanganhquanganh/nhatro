import React, { useState, useCallback, useEffect } from 'react'
import { SearchItem, Modal } from '../../components'
import icons from '../../ultils/icons'
import { useSelector, useDispatch } from 'react-redux'
import { getCodesArea, getCodes } from '../../ultils/Common/getCodes'
import * as actions from '../../store/actions'
import { useNavigate, createSearchParams, useLocation } from 'react-router-dom'
import { path } from '../../ultils/constant'

const { BsChevronRight, CiLocationOn, TbReportMoney, RiCropLine, MdOutlineMapsHomeWork, CiSearch } = icons
const Search2 = () => {

  const [isShowModal, setIsShowModal] = useState(false)
  const [content, setContent] = useState([])
  const { provinces, areas, prices, categories, utilities } = useSelector(state => state.app)
  const [name, setName] = useState('')
  const [queries, setQueries] = useState({})
  const [arrMinMax, setArrMinMax] = useState({})
  const dispatch = useDispatch()
  const [defaultText, setDefaultText] = useState('')
  const navigate = useNavigate()
  const location = useLocation()
  // console.log(getCodePrice(prices))
  // console.log(getCodeArea(areas))
  useEffect(() => {
    if (!location.pathname.includes(path.SEARCH)) {
      setArrMinMax({})
      setQueries({})

    }
  }, [location])

  // console.log(getCodesArea([35 , 90],areas))
  const handleShowModal = (content, name, defaultText) => {
    setContent(content)
    setName(name)
    setDefaultText(defaultText)
    setIsShowModal(true)
  }
  const handleSubmit = useCallback((e, query, arr) => {
    e.stopPropagation()
    setQueries(prev => ({ ...prev, ...query }))
    setIsShowModal(false)
    arr && setArrMinMax(prev => ({ ...prev, ...arr }))
  }, [isShowModal, queries])


  const handleSearch = () => {
    console.log(queries)
    const queryCodes = Object.entries(queries).filter(item => item[0].includes('Number') || item[0].includes('address') || item[0].includes('Code')).filter(item => item[1])
    let queryCodesObj = {}
    queryCodes.forEach(item => { queryCodesObj[item[0]] = item[1] })
    // console.log(queryCodesObj)
    const queryText = Object.entries(queries).filter(item => !item[0].includes('Number') || !item[0].includes('Code'))

    let queryTextObj = {}
    queryText.forEach(item => { queryTextObj[item[0]] = item[1] })
    let titleSearch = ''
    titleSearch = `${queryTextObj.category ? queryTextObj.category : 'Tìm bài viết'} ${queryTextObj.province ? `ở ${queryTextObj.province}` : 'trên toàn quốc'} với giá ${queryTextObj.price ? queryTextObj.price : 'tốt'} và diện tích ${queryTextObj.area ? queryTextObj.area : 'phù hợp'}
    `
    // console.log(queryTextObj);
    navigate({
      pathname: path.SEARCH,
      search: createSearchParams(queryCodesObj).toString(),

    }, { state: { titleSearch } })
  }

  return (
    <>
      <div className=" p-[10px] w-1/5 mt-3 bg-[#FEBB02]  rounded-lg lg:flex-col flex gap-2  justify-around">
        <div className="cursor-pointer"
          onClick={() => {
            handleShowModal(categories, 'category', 'Tìm tất cả')
          }}
        >
          <SearchItem IconBefore={<MdOutlineMapsHomeWork />} fontWeight
            text={queries.category} defaultText={'Tìm tất cả'} />

        </div>
        <div className="cursor-pointer"
          onClick={() => {
            handleShowModal(provinces, 'province', 'Toàn quốc')
          }}
        >
          <SearchItem IconBefore={<CiLocationOn />} IconAfter={<BsChevronRight color='rgb(156, 163, 175)' />}
            text={queries.province} defaultText={'Toàn quốc'} />

        </div>
        <div className="cursor-pointer"
          onClick={() => {
            handleShowModal(prices, 'price', 'Chọn giá')
          }}
        >
          <SearchItem IconBefore={<TbReportMoney />} IconAfter={<BsChevronRight color='rgb(156, 163, 175)' />}
            text={queries.price} defaultText={'Chọn giá'} />

        </div>
        <div className="cursor-pointer"
          onClick={() => {
            handleShowModal(areas, 'area', 'Chọn diện tích')
          }}
        >
          <SearchItem IconBefore={<RiCropLine />} IconAfter={<BsChevronRight color='rgb(156, 163, 175)' />}
            text={queries.area} defaultText={'Chọn diện tích'} />
        </div>
        <div className="cursor-pointer"
          onClick={() => {
            handleShowModal(utilities, 'utilities', 'Chọn tiện ích')
          }}
        >
          <SearchItem IconBefore={<RiCropLine />} IconAfter={<BsChevronRight color='rgb(156, 163, 175)' />}
            text={queries.utilities} defaultText={'Chọn tiện ích'} />
        </div>

        <button
          onClick={handleSearch}
          type="button"
          className="outline-none py-1 px-2 rounded-lg text-white font-medium text-sm flex items-center justify-center gap-1"
          style={{backgroundColor: "rgb(218, 75, 39)"}}
        >
          <CiSearch />
          Tìm kiếm
        </button>

      </div>
      {isShowModal && <Modal
        content={content}
        arrMinMax={arrMinMax}
        name={name}
        queries={queries}
        setisShowModal={setIsShowModal}
        handleSubmit={handleSubmit}
        defaultText={defaultText}
      />}
    </>
  )
}

export default Search2