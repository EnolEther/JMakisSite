module PhotographyPagesHelper
  
  def getPhotoInfo (photo_element)
    return flickr.photos.getInfo(:photo_id => photo_element.id)
  end

  def getSquareUrl (photo_info)
    return FlickRaw.url_q(photo_info)
  end

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
end
