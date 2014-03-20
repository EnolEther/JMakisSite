module PhotographyPagesHelper
  
  def getPhotoInfo (photo_element)
    return flickr.photos.getInfo(:photo_id => photo_element.id)
  end

  def getSquareUrl (photo_info)
    return FlickRaw.url_q(photo_info)
  end

  # def getThumbURL (photo_info)
  #   return FlickRaw.url_t(photo_info)
  # end

  # def getOrginalURL (photo_info)
  #   return FlickRaw.url_o(photo_info)
  # end

  # def getMediumUrl (photo_info)
  #   return FlickRaw.url_z(photo_info)
  # end

  # def getLargeUrl (photo_info)
  #   return FlickRaw.url_b(photo_info)
  # end

  def getPhotoTitle (photo_info)
    return photo_info.title
  end

  def getLargePhotoURL (photo_element)
    sizes = flickr.photos.getSizes(:photo_id => photo_element.id)
    original = sizes.find {|s| s.label == 'Original' }
    large = sizes.find {|s| s.label == 'Large'}
    if large == nil
      return  original.source
    else
      return large.source
    end
  end

  def parsePhotoData (photo_elements)
    theData = Array.new
    photo_elements.each do |p|
      info = getPhotoInfo(p)
      thumbURL = getSquareUrl(info)
      largeURL = getLargePhotoURL(p)
      title = getPhotoTitle(info)
      theHash = {:title => title, :thumbURL => thumbURL, :largeURL => largeURL}
      theData.push theHash
    end
    return theData
  end

#   def parsePhotoDataOLD (photo_elements)
#     theData = Array.new
#     photo_elements.each do |p|
#       info = getPhotoInfo(p)
#       surl = getSquareUrl(info)
#       ourl = getOrginalUrl(info)
#       lgurl = getLargeUrl(info)
#       turl = getPhotoSize(p)
#       title = getPhotoTitle(info)
#       theHash = {:title => title, :sqURL => surl, :srcURL => turl, :lgURL => lgurl, :oURL => ourl}
#       theData.push theHash
#     end
#     return theData
#   end

#   def makeTheHTML(theData)
#     theHTML = Array.new
#     theData.each do |ele|
#       str = "<img src='#{ele[:sqURL]}' alt='#{ele[:title]}' >"
#       theHTML.push str
#     end
#     return theHTML
#   end

#   def toPage(list)
#     makeTheHTML( parsePhotoData(list) )
#   end
end
