framework "CoreData"

class NSManagedObjectModel

  @@mom = nil;

  def self.mom
    @@mom ||= NSManagedObjectModel.new_mom
  end

  def setDefaultManagedObjectModel(newDefaultModel)
    @@mom = newDefaultModel
  end

  def self.new_mom 
    NSManagedObjectModel.mergedModelFromBundles(nil)    
  end

  def self.newModelNamed(modelName, bundleName)
    path = NSBundle.mainBundle(modelName.stringByDeletingPathExtension, ofType:modelName.pathExtension, inDirectory:bundleName)
    modelUrl = NSURL.fileURLWithPath(path)
    NSManagedObjectModel.alloc.initWithContentsOfURL(modelUrl)
  end

  def self.instance_from_bundled_file(modelFileName)
    path = NSBundle.mainBundle.pathForResource(modelFileName.chomp, ofType:modelFileName.pathExtension)
    if path
      momURL = NSURL.fileURLWithPath(path)
      NSManagedObjectModel.alloc.initWithContentsOfURL(momURL)
    else
      self.mom
    end
  end

  def self.managedObjectModelNamed(modelFileName)
    self.instance_from_bundled_file(modelFileName)
  end

end
