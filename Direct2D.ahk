class Matrix
{
  
}
class ID2D1Factory
{
	__new(){
		this._p:=DllCall("d2d1\D2D1CreateFactory","uint",0,"ptr",GUID(CLSID,"{06152247-6f50-465a-9245-118bfd3b6007}"),"uint*",0,"ptr*",pIFactory)
		this._i:={3:"ReloadSystemMetrics",4:"GetDesktopDpi",5:"CreateRectangleGeometry",6:"CreateRoundedRectangleGeometry",7:"CreateEllipseGeometry",8:"CreateGeometryGroup",9:"CreateTransformedGeometry",10:"CreatePathGeometry",11:"CreateStrokeStyle",12:"CreateDrawingStateBlock",13:"CreateWicBitmapRenderTarget",14:"CreateHwndRenderTarget",15:"CreateDxgiSurfaceRenderTarget",16:"CreateDCRenderTarget"}
	}
	__call(aName,aParam*){
		if aName is Integer
			if this._i.HasKey(aName)
				return this[this._i[aName]](aParam*)
	}
	__delete(){
		ObjRelease(this._p)
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
	}
  ReloadSystemMetrics(){
	return _Error(DllCall(vt(this._p,,3),"ptr",this._p),"ReloadSystemMetrics")
  }

  GetDesktopDpi(){
	_Error(DllCall(vt(this._p,,4),"ptr",this._p,"Float*",dpiX,"Float*",dpiY),"GetDesktopDpi")
	return [dpiX,dpiY]
  }

  CreateRectangleGeometry(rectangle){
	_Error(DllCall(vt(this._p,,5),"ptr",this._p,"ptr",rectangle,"ptr*",rectangleGeometry),"CreateRectangleGeometry")
	return rectangleGeometry
  }

  CreateRoundedRectangleGeometry(roundedRectangle){
	_Error(DllCall(vt(this._p,,6),"ptr",this._p,"ptr",roundedRectangle,"ptr*",roundedRectangleGeometry),"CreateRoundedRectangleGeometry")
	return roundedRectangleGeometry
  }

  CreateEllipseGeometry(ellipse){
	_Error(DllCall(vt(this._p,,7),"ptr",this._p,"ptr",ellipse,"ptr*",ellipseGeometry),"CreateEllipseGeometry")
	return ellipseGeometry
  }

  CreateGeometryGroup(fillMode,geometries,geometriesCount){
	_Error(DllCall(vt(this._p,,8),"ptr",this._p,"uint",fillMode,"ptr",geometries,"ptr",geometriesCount,"ptr*",geometryGroup),"CreateGeometryGroup")
	return geometryGroup
  }

  CreateTransformedGeometry(sourceGeometry,transform){
	_Error(DllCall(vt(this._p,,9),"ptr",this._p,"ptr",sourceGeometry,"ptr",transform,"ptr*",transformedGeometry),"CreateTransformedGeometry")
	return transformedGeometry
  }

  CreatePathGeometry(){
	_Error(DllCall(vt(this._p,,10),"ptr",this._p,"ptr*",pathGeometry),"CreatePathGeometry")
	return pathGeometry
  }

  CreateStrokeStyle(strokeStyleProperties,dashes,dashesCount){
	_Error(DllCall(vt(this._p,,11),"ptr",this._p,"ptr",strokeStyleProperties,"ptr",dashes,"uint",dashesCount,"ptr*",strokeStyle),"CreateStrokeStyle")
	return strokeStyle
  }

  CreateDrawingStateBlock(drawingStateDescription,textRenderingParams){
	_Error(DllCall(vt(this._p,,12),"ptr",this._p,"ptr",drawingStateDescription,"ptr",textRenderingParams,"ptr*",drawingStateBlock),"CreateDrawingStateBlock")
	return drawingStateBlock
  }

  CreateWicBitmapRenderTarget(target,renderTargetProperties){
	_Error(DllCall(vt(this._p,,13),"ptr",this._p,"ptr",target,"ptr",renderTargetProperties,"ptr*",renderTarget),"CreateWicBitmapRenderTarget")
	return renderTarget
  }

  CreateHwndRenderTarget(renderTargetProperties,hwndRenderTargetProperties){
	_Error(DllCall(vt(this._p,,14),"ptr",this._p,"ptr",renderTargetProperties,"ptr",hwndRenderTargetProperties,"ptr*",hwndRenderTarget),"CreateHwndRenderTarget")
	return hwndRenderTarget
  }

  CreateDxgiSurfaceRenderTarget(dxgiSurface,renderTargetProperties){
	_Error(DllCall(vt(this._p,,15),"ptr",this._p,"ptr",dxgiSurface,"ptr",renderTargetProperties,"ptr*",renderTarget),"CreateDxgiSurfaceRenderTarget")
	return renderTarget
  }

  CreateDCRenderTarget(renderTargetProperties){
	_Error(DllCall(vt(this._p,,16),"ptr",this._p,"ptr",renderTargetProperties,"ptr*",dcRenderTarget),"CreateDCRenderTarget")
	return dcRenderTarget
  }
}
class ID2D1RenderTarget
{
	__new(){
		this._p:=0
		this._i:={3:"GetFactory",4:"CreateBitmap",5:"CreateBitmapFromWicBitmap",6:"CreateSharedBitmap",7:"CreateBitmapBrush",8:"CreateSolidColorBrush",9:"CreateGradientStopCollection",10:"CreateLinearGradientBrush",11:"CreateRadialGradientBrush",12:"CreateCompatibleRenderTarget",13:"CreateLayer",14:"CreateMesh",15:"DrawLine",16:"DrawRectangle",17:"FillRectangle",18:"DrawRoundedRectangle",19:"FillRoundedRectangle",20:"DrawEllipse",21:"FillEllipse",22:"DrawGeometry",23:"FillGeometry",24:"FillMesh",25:"FillOpacityMask",26:"DrawBitmap",27:"DrawText",28:"DrawTextLayout",29:"DrawGlyphRun",30:"SetTransform",31:"GetTransform",32:"SetAntialiasMode",33:"GetAntialiasMode",34:"SetTextAntialiasMode",35:"GetTextAntialiasMode",36:"SetTextRenderingParams",37:"GetTextRenderingParams",38:"SetTags",39:"GetTags",40:"PushLayer",41:"PopLayer",42:"Flush",43:"SaveDrawingState",44:"RestoreDrawingState",45:"PushAxisAlignedClip",46:"PopAxisAlignedClip",47:"Clear",48:"BeginDraw",49:"EndDraw",50:"GetPixelFormat",51:"SetDpi",52:"GetDpi",53:"GetSize",54:"GetPixelSize",55:"GetMaximumBitmapSize",56:"IsSupported"}
	}
	__call(aName,aParam*){
		if aName is Integer
		{
			if this._i.HasKey(aName)
				return this[this._i[aName]](aParam*)
		}else if (aName=""){
			this._p:=aParam.1
			return this
		}
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
	}
  GetFactory(){
	_Error(DllCall(vt(this._p,,3),"ptr",this._p,"ptr*",factory),"GetFactory")
	return factory
  }
  
  CreateBitmap(size,srcData,pitch,bitmapProperties){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"uint",size,"uint",srcData,"ptr",pitch,"ptr",bitmapProperties,"ptr*",bitmap),"CreateBitmap")
	return bitmap
  }

  CreateBitmapFromWicBitmap(wicBitmapSource,bitmapProperties){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"ptr",wicBitmapSource,"ptr",bitmapProperties,"ptr*",bitmap),"CreateBitmapFromWicBitmap")
	return bitmap
  }

  CreateSharedBitmap(riid,data,bitmapProperties){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"ptr",riid,"ptr",data,"ptr",bitmapProperties,"ptr*",bitmap),"CreateSharedBitmap")
	return bitmap
  }

  CreateBitmapBrush(bitmap,bitmapBrushProperties,brushProperties){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"ptr",bitmap,"ptr",bitmapBrushProperties,"ptr",brushProperties,"ptr*",bitmapBrush),"CreateBitmapBrush")
	return bitmapBrush
  }

  CreateSolidColorBrush(color,brushProperties){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr",color,"ptr",brushProperties,"ptr*",solidColorBrush),"CreateSolidColorBrush")
	return solidColorBrush
  }

  CreateGradientStopCollection(gradientStops,gradientStopsCount,colorInterpolationGamma,extendMode){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr",gradientStops,"uint",gradientStopsCount,"uint",colorInterpolationGamma,"uint",extendMode,"ptr*",gradientStopCollection),"CreateGradientStopCollection")
	return gradientStopCollection
  }

  CreateLinearGradientBrush(linearGradientBrushProperties,brushProperties,gradientStopCollection){
	_Error(DllCall(vt(this._p,10),"ptr",this._p,"ptr",linearGradientBrushProperties,"ptr",brushProperties,"ptr",gradientStopCollection,"ptr*",linearGradientBrush),"CreateLinearGradientBrush")
	return linearGradientBrush
  }

  CreateRadialGradientBrush(radialGradientBrushProperties,brushProperties,gradientStopCollection){
	_Error(DllCall(vt(this._p,11),"ptr",this._p,"ptr",radialGradientBrushProperties,"ptr",brushProperties,"ptr",gradientStopCollection,"ptr*",radialGradientBrush),"CreateRadialGradientBrush")
	return radialGradientBrush
  }

  CreateCompatibleRenderTarget(desiredSize,desiredPixelSize,desiredFormat,options){
	_Error(DllCall(vt(this._p,12),"ptr",this._p,"ptr",desiredSize,"ptr",desiredPixelSize,"ptr",desiredFormat,"uint",options,"ptr*",bitmapRenderTarget),"CreateCompatibleRenderTarget")
	return bitmapRenderTarget
  }

  CreateLayer(size){
	_Error(DllCall(vt(this._p,13),"ptr",this._p,"ptr",size,"ptr*",layer),"CreateLayer")
	return layer
  }

  CreateMesh(){
	_Error(DllCall(vt(this._p,14),"ptr",this._p,"ptr*",mesh),"CreateMesh")
	return mesh
  }

  DrawLine(point0,point1,point2,point3,brush,strokeWidth,strokeStyle){
	return _Error(DllCall(vt(this._p,15),"ptr",this._p,"float",point0,"float",point1,"float",point2,"float",point3,"ptr",brush,"float",strokeWidth,"ptr",strokeStyle),"DrawLine")
  }

  DrawRectangle(rect,brush,strokeWidth,strokeStyle){
	return _Error(DllCall(vt(this._p,16),"ptr",this._p,"ptr",rect,"ptr",brush,"float",strokeWidth,"ptr",strokeStyle),"DrawRectangle")
  }

  FillRectangle(rect,brush){
	return _Error(DllCall(vt(this._p,17),"ptr",this._p,"ptr",rect,"ptr",brush),"FillRectangle")
  }

  DrawRoundedRectangle(roundedRect,brush,strokeWidth,strokeStyle){
	return _Error(DllCall(vt(this._p,18),"ptr",this._p,"ptr",roundedRect,"ptr",brush,"float",strokeWidth,"ptr",strokeStyle),"DrawRoundedRectangle")
  }

  FillRoundedRectangle(roundedRect,brush){
	return _Error(DllCall(vt(this._p,19),"ptr",this._p,"ptr",roundedRect,"ptr",brush),"FillRoundedRectangle")
  }

  DrawEllipse(ellipse,brush,strokeWidth,strokeStyle){
	return _Error(DllCall(vt(this._p,20),"ptr",this._p,"ptr",ellipse,"ptr",brush,"float",strokeWidth,"ptr",strokeStyle),"DrawEllipse")
  }

  FillEllipse(ellipse,brush){
	return _Error(DllCall(vt(this._p,21),"ptr",this._p,"ptr",ellipse,"ptr",brush),"FillEllipse")
  }

  DrawGeometry(geometry,brush,strokeWidth,strokeStyle){
	return _Error(DllCall(vt(this._p,22),"ptr",this._p,"ptr",geometry,"ptr",brush,"float",strokeWidth,"ptr",strokeStyle),"DrawGeometry")
  }

  FillGeometry(geometry,brush,opacityBrush){
	return _Error(DllCall(vt(this._p,23),"ptr",this._p,"ptr",geometry,"ptr",brush,"ptr",opacityBrush),"FillGeometry")
  }

  FillMesh(mesh,brush){
	return _Error(DllCall(vt(this._p,24),"ptr",this._p,"ptr",mesh,"ptr",brush),"FillMesh")
  }

  FillOpacityMask(opacityMask,brush,content,destinationRectangle,sourceRectangle){
	return _Error(DllCall(vt(this._p,25),"ptr",this._p,"ptr",opacityMask,"ptr",brush,"uint",content,"ptr",destinationRectangle,"ptr",sourceRectangle),"FillOpacityMask")
  }

  DrawBitmap(bitmap,destinationRectangle,opacity,interpolationMode,sourceRectangle){
	return _Error(DllCall(vt(this._p,26),"ptr",this._p,"ptr",bitmap,"ptr",destinationRectangle,"float",opacity,"uint",interpolationMode,"ptr",sourceRectangle),"DrawBitmap")
  }

  DrawText(string,stringLength,textFormat,layoutRect,defaultForegroundBrush,options,measuringMode){
	return _Error(DllCall(vt(this._p,27),"ptr",this._p,"str",string,"uint",stringLength,"ptr",textFormat,"ptr",layoutRect,"ptr",defaultForegroundBrush,"uint",options,"uint",measuringMode),"DrawText")
  }

  DrawTextLayout(origin0,origin1,textLayout,defaultForegroundBrush,layout,options){
	return _Error(DllCall(vt(this._p,28),"ptr",this._p,"float",origin0,"float",origin1,"ptr",textLayout,"ptr",defaultForegroundBrush,"uint",layout,"uint",options),"DrawTextLayout")
  }

  DrawGlyphRun(baselineOrigin0,baselineOrigin1,glyphRun,foregroundBrush,measuringMode){
	return _Error(DllCall(vt(this._p,29),"ptr",this._p,"float",baselineOrigin0,"float",baselineOrigin1,"ptr",glyphRun,"ptr",foregroundBrush,"uint",measuringMode),"DrawGlyphRun")
  }

  SetTransform(transform){
	return _Error(DllCall(vt(this._p,30),"ptr",this._p,"ptr",transform),"SetTransform")
  }

  GetTransform(transform){
	return _Error(DllCall(vt(this._p,31),"ptr",this._p,"ptr",transform),"GetTransform")
  }

  SetAntialiasMode(antialiasMode){
	return _Error(DllCall(vt(this._p,32),"ptr",this._p,"uint",antialiasMode),"SetAntialiasMode")
  }

  GetAntialiasMode(){
	return _Error(DllCall(vt(this._p,33),"ptr",this._p),"GetAntialiasMode")
  }

  SetTextAntialiasMode(textAntialiasMode){
	return _Error(DllCall(vt(this._p,34),"ptr",this._p,"uint",textAntialiasMode),"SetTextAntialiasMode")
  }

  GetTextAntialiasMode(){
	return _Error(DllCall(vt(this._p,35),"ptr",this._p),"GetTextAntialiasMode")
  }

  SetTextRenderingParams(textRenderingParams){
	return _Error(DllCall(vt(this._p,36),"ptr",this._p,"ptr",textRenderingParams),"SetTextRenderingParams")
  }

  GetTextRenderingParams(Byref textRenderingParams){
	return _Error(DllCall(vt(this._p,37),"ptr",this._p,"ptr*",textRenderingParams),"GetTextRenderingParams")
	
  }

  SetTags(tag1,tag2){
	return _Error(DllCall(vt(this._p,38),"ptr",this._p,"uint64",tag1,"uint64",tag2),"SetTags")
  }

  GetTags(){
	_Error(DllCall(vt(this._p,39),"ptr",this._p,"uint64*",tag1,"uint64*",tag2),"GetTags")
	return [tag1,tag2]
  }

  PushLayer(layerParameters,layer){
	return _Error(DllCall(vt(this._p,40),"ptr",this._p,"ptr",layerParameters,"ptr",layer),"PushLayer")
  }

  PopLayer(){
	return _Error(DllCall(vt(this._p,41),"ptr",this._p),"PopLayer")
  }

  Flush(){
	_Error(DllCall(vt(this._p,42),"ptr",this._p,"uint64*",tag1,"uint64*",tag2),"Flush")
	return [tag1,tag2]
  }

  SaveDrawingState(drawingStateBlock){
	return _Error(DllCall(vt(this._p,43),"ptr",this._p,"ptr",drawingStateBlock),"SaveDrawingState")
  }

  RestoreDrawingState(drawingStateBlock){
	return _Error(DllCall(vt(this._p,44),"ptr",this._p,"ptr",drawingStateBlock),"RestoreDrawingState")
  }

  PushAxisAlignedClip(clipRect,antialiasMode){
	return _Error(DllCall(vt(this._p,45),"ptr",this._p,"ptr",clipRect,"uint",antialiasMode),"PushAxisAlignedClip")
  }

  PopAxisAlignedClip(){
	return _Error(DllCall(vt(this._p,46),"ptr",this._p),"PopAxisAlignedClip")
  }

  Clear(D2D1_COLOR_F){
	return _Error(DllCall(vt(this._p,47),"ptr",this._p,"ptr",D2D1_COLOR_F),"Clear")
  }

  BeginDraw(){
	return _Error(DllCall(vt(this._p,48),"ptr",this._p),"BeginDraw")
  }

  EndDraw(){
	_Error(DllCall(vt(this._p,49),"ptr",this._p,"int64*",tag1,"int64*",tag2),"EndDraw")
	return [tag1,tag2]
  }

  GetPixelFormat(){
	return _Error(DllCall(vt(this._p,50),"ptr",this._p,"int"),"GetPixelFormat")
  }

  SetDpi(dpiX,dpiY){
	return _Error(DllCall(vt(this._p,51),"ptr",this._p,"float",dpiX,"float",dpiY),"SetDpi")
  }

  GetDpi(){
	_Error(DllCall(vt(this._p,52),"ptr",this._p,"float*",dpiX,"float*",dpiY),"GetDpi")
	return [dpiX,dpiY]
  }

  GetSize(){
	h:=_Error(DllCall(vt(this._p,53),"ptr",this._p,"int64"),"GetSize")
	return [NumGet(&h,"float"),NumGet(&h+4,"float")] ; float x,float y
  }

  GetPixelSize(){
	h:=_Error(DllCall(vt(this._p,54),"ptr",this._p,"int64"),"GetPixelSize")
	return [NumGet(&h,"uint"),NumGet(&h+4,"uint")] ; uint x,uint y
  }

  GetMaximumBitmapSize(){
	return _Error(DllCall(vt(this._p,55),"ptr",this._p,"uint"),"GetMaximumBitmapSize")
  }

  IsSupported(renderTargetProperties){
	return _Error(DllCall(vt(this._p,56),"ptr",this._p,"ptr",renderTargetProperties),"IsSupported")
  }
  
; ID2D1BitmapRenderTarget
  GetBitmap(){
	_Error(DllCall(vt(this._p,57),"ptr",this._p,"ptr*",bitmap),"GetBitmap")
	return bitmap
  }
; ID2D1HwndRenderTarget
  CheckWindowState(){
	return _Error(DllCall(vt(this._p,57),"ptr",this._p),"CheckWindowState")
  }

  Resize(pixelSize){
	return _Error(DllCall(vt(this._p,58),"ptr",this._p,"ptr",pixelSize),"Resize")
  }

  GetHwnd(){
	return _Error(DllCall(vt(this._p,59),"ptr",this._p),"GetHwnd")
  }
; ID2D1DCRenderTarget
BindDC(hDC,pSubRect){
	return _Error(DllCall(vt(this._p,57),"ptr",this._p,"ptr",hDC,"ptr",pSubRect),"BindDC")
  }
}

class ID2D1Brush
{
	__new(){
		this._p:=0,this._i:=0,this._t:={Bitmap:"Bitmap_",SolidColor:"SolidColor_",LinearGradient:"LinearGradient_",RadiaGradient:"RadiaGradient_"}
		this._m:={3:"GetFactory",4:"SetOpacity",5:"SetTransform",6:"GetOpacity",7:"GetTransform"}
	}
	__get(aName){
		if !instr(aName,"_")
			return this[this._i aName]()
		else return this[aName]()
	}
	__call(aName,aParam*){
		if (aName="")&&(this._p:=aParam.1)&&(this._i:=this._t[aParam.2])
			return this
		else if !instr(aName,"_")
			return this[this._i aName](aParam*)
	}
  SetOpacity(opacity){
	return _Error(DllCall(vt(this._p,4),"ptr",this._p,"float",opacity),"SetOpacity")
  }

  SetTransform(transform){
	return _Error(DllCall(vt(this._p,5),"ptr",this._p,"ptr",transform),"SetTransform")
  }

  GetOpacity(){
	return _Error(DllCall(vt(this._p,6),"ptr",this._p,"float"),"GetOpacity")
  }

  GetTransform(){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"ptr*",transform),"GetTransform")
	return transform
  }
; ID2D1BitmapBrush
  SetExtendModeX(extendModeX){
	return _Error(DllCall(vt(this._p,8),"ptr",this._p,"uint",extendModeX),"SetExtendModeX")
  }

  SetExtendModeY(extendModeY){
	return _Error(DllCall(vt(this._p,9),"ptr",this._p,"uint",extendModeY),"SetExtendModeY")
  }

  SetInterpolationMode(interpolationMode){
	return _Error(DllCall(vt(this._p,10),"ptr",this._p,"uint",interpolationMode),"SetInterpolationMode")
  }

  SetBitmap(bitmap){
	return _Error(DllCall(vt(this._p,11),"ptr",this._p,"ptr",bitmap),"SetBitmap")
  }

  GetExtendModeX(){
	return _Error(DllCall(vt(this._p,12),"ptr",this._p),"GetExtendModeX")
  }

  GetExtendModeY(){
	return _Error(DllCall(vt(this._p,13),"ptr",this._p),"GetExtendModeY")
  }

  GetInterpolationMode(){
	return _Error(DllCall(vt(this._p,A_PtrSize),"ptr",this.ptr),"GetInterpolationMode")
  }

  GetBitmap(){
	_Error(DllCall(vt(this._p,15),"ptr",this._p,"ptr*",bitmap),"GetBitmap")
	return bitmap
  }
; ID2D1SolidColorBrush
  SetColor(color){
	return _Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr",color),"SetColor")
  }

  GetColor(){
	return _Error(DllCall(vt(this._p,9),"ptr",this._p),"GetColor")
  }
; ID2D1LinearGradientBrush
  SetStartPoint(startPoint){
	return _Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr",startPoint),"SetStartPoint")
  }

  SetEndPoint(endPoint){
	return _Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr",endPoint),"SetEndPoint")
  }

  GetStartPoint(){
	return _Error(DllCall(vt(this._p,10),"ptr",this._p),"GetStartPoint")
  }

  GetEndPoint(){
	return _Error(DllCall(vt(this._p,11),"ptr",this._p),"GetEndPoint")
  }

  GetGradientStopCollection(){
	_Error(DllCall(vt(this._p,12),"ptr",this._p,"ptr*",gradientStopCollection),"GetGradientStopCollection")
	return gradientStopCollection
  }
; ID2D1RadialGradientBrush
  SetCenter(center){
	return _Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr",center),"SetCenter")
  }

  SetGradientOriginOffset(gradientOriginOffset){
	return _Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr",gradientOriginOffset),"SetGradientOriginOffset")
  }

  SetRadiusX(radiusX){
	return _Error(DllCall(vt(this._p,10),"ptr",this._p,"float",radiusX),"SetRadiusX")
  }

  SetRadiusY(radiusY){
	return _Error(DllCall(vt(this._p,11),"ptr",this._p,"float",radiusY),"SetRadiusY")
  }

  GetCenter(){
	return _Error(DllCall(vt(this._p,12),"ptr",this._p),"GetCenter")
  }

  GetGradientOriginOffset(){
	return _Error(DllCall(vt(this._p,13),"ptr",this._p),"GetGradientOriginOffset")
  }

  GetRadiusX(){
	return _Error(DllCall(vt(this._p,14),"ptr",this.ptr,"float"),"GetRadiusX")
  }

  GetRadiusY(){
	return _Error(DllCall(vt(this._p,15),"ptr",this._p,"float"),"GetRadiusY")
  }

  GetGradientStopCollection(){
	_Error(DllCall(vt(this._p,16),"ptr",this._p,"ptr*",gradientStopCollection),"GetGradientStopCollection")
	return gradientStopCollection
  }
}
;;
;;
;;
class ID2D1Geometry
{
	__new(){
		this._p:=0,this._i:=0,this._t:={property:"property_",bool:"bool_",and:"and_",or:"or_",not:"not_"}
		this._m:={3:"GetFactory",4:"GetBounds",5:"GetWidenedBounds",6:"StrokeContainsPoint",7:"FillContainsPoint",8:"CompareWithGeometry",9:"Simplify",10:"Tessellate",11:"CombineWithGeometry",12:"Outline",13:"ComputeArea",14:"ComputeLength",15:"ComputePointAtLength",16:"Widen"}
	}
	__get(aName){
		if !instr(aName,"_")
			return this[this._i aName]()
		else return this[aName]()
	}
	__call(aName,aParam*){
		if (aName="")&&(this._p:=aParam.1)&&(this._i:=this._t[aParam.2])
			return this
		else if !instr(aName,"_")
			return this[this._i aName](aParam*)
	}

  GetBounds(worldTransform){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr",worldTransform,"ptr*",bounds),"GetBounds")
	return bounds
  }

  GetWidenedBounds(strokeWidth,strokeStyle,worldTransform,flatteningTolerance){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"float",strokeWidth,"ptr",strokeStyle,"ptr",worldTransform,"float",flatteningTolerance,"ptr*",bounds),"GetWidenedBounds")
	return bounds
  }

  StrokeContainsPoint(point0,point1,strokeWidth,strokeStyle,worldTransform,flatteningTolerance){
	_Error(DllCall(vt(this._p,6),"ptr",this._p,"float",point0,"float",point1,"float",strokeWidth,"ptr",strokeStyle,"ptr",worldTransform,"float",flatteningTolerance,"Uint*",contains),"StrokeContainsPoint")
	return contains
  }

  FillContainsPoint(point0,point1,worldTransform,flatteningTolerance){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"float",point0,"float",point1,"ptr",worldTransform,"float",flatteningTolerance,"uint*",contains),"FillContainsPoint")
	return contains
  }

  CompareWithGeometry(inputGeometry,inputGeometryTransform,flatteningTolerance){
	_Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr",inputGeometry,"ptr",inputGeometryTransform,"float",flatteningTolerance,"uint*",relation),"CompareWithGeometry")
	return relation
  }

  Simplify(simplificationOption,worldTransform,flatteningTolerance){
	_Error(DllCall(vt(this._p,9),"ptr",this._p,"uint",simplificationOption,"ptr",worldTransform,"float",flatteningTolerance,"ptr*",geometrySink),"Simplify")
	return geometrySink
  }

  Tessellate(worldTransform,flatteningTolerance){
	_Error(DllCall(vt(this._p,10),"ptr",this._p,"ptr",worldTransform,"float",flatteningTolerance,"ptr*",tessellationSink),"Tessellate")
	return tessellationSink
  }

  CombineWithGeometry(inputGeometry,combineMode,inputGeometryTransform,flatteningTolerance){
	_Error(DllCall(vt(this._p,11),"ptr",this._p,"ptr",inputGeometry,"uint",combineMode,"ptr",inputGeometryTransform,"float",flatteningTolerance,"ptr*",geometrySink),"CombineWithGeometry")
	return geometrySink
  }

  Outline(worldTransform,flatteningTolerance){
	_Error(DllCall(vt(this._p,12),"ptr",this._p,"ptr",worldTransform,"float",flatteningTolerance,"ptr*",geometrySink),"Outline")
	return geometrySink
  }

  ComputeArea(worldTransform,flatteningTolerance){
	_Error(DllCall(vt(this._p,13),"ptr",this._p,"ptr",worldTransform,"float",flatteningTolerance,"ptr*",area),"ComputeArea")
	return area
  }

  ComputeLength(worldTransform,flatteningTolerance){
	_Error(DllCall(vt(this._p,14),"ptr",this._p,"ptr",worldTransform,"float",flatteningTolerance,"ptr*",length),"ComputeLength")
	return length
  }

  ComputePointAtLength(length,worldTransform,flatteningTolerance,Byref point,Byref unitTangentVector){
	return _Error(DllCall(vt(this._p,15),"ptr",this._p,"float",length,"ptr",worldTransform,"float",flatteningTolerance,"ptr*",point,"ptr*",unitTangentVector),"ComputePointAtLength")
  }

  Widen(strokeWidth,strokeStyle,worldTransform,flatteningTolerance,geometrySink){
	return _Error(DllCall(vt(this._p,16),"ptr",this._p,"float",strokeWidth,"ptr",strokeStyle,"ptr",worldTransform,"float",flatteningTolerance,"ptr",geometrySink),"Widen")
  }
; ID2D1RectangleGeometry
  GetRect(Byref rect){
	return _Error(DllCall(vt(this._p,17),"ptr",this._p,"ptr*",rect),"GetRect")
  }
; ID2D1RoundedRectangleGeometry
  GetRoundedRect(){
	_Error(DllCall(vt(this._p,17),"ptr",this._p,"ptr*",roundedRect),"GetRoundedRect")
	return roundedRect
  }
; ID2D1EllipseGeometry
  GetEllipse(){
	_Error(DllCall(vt(this._p,17),"ptr",this._p,"ptr*",ellipse),"GetEllipse")
	return ellipse
  }
; ID2D1GeometryGroup
  GetFillMode(){
	return _Error(DllCall(vt(this._p,17),"ptr",this._p),"GetFillMode")
  }

  GetSourceGeometryCount(){
	return _Error(DllCall(vt(this._p,18),"ptr",this._p),"GetSourceGeometryCount")
  }

  GetSourceGeometries(geometriesCount){
	_Error(DllCall(vt(this._p,19),"ptr",this._p,"ptr*",geometries,"uint",geometriesCount),"GetSourceGeometries")
	return geometries
  }
; ID2D1TransformedGeometry
  GetSourceGeometry(){
	_Error(DllCall(vt(this._p,17),"ptr",this._p,"ptr*",sourceGeometry),"GetSourceGeometry")
	return sourceGeometry
  }

  GetTransform(){
	_Error(DllCall(vt(this._p,18),"ptr",this._p,"ptr*",transform),"GetTransform")
	return transform
  }
; ID2D1PathGeometry
  Open(){
	_Error(DllCall(vt(this._p,17),"ptr",this._p,"ptr*",geometrySink),"Open")
	return geometrySink
  }

  Stream(){
	_Error(DllCall(vt(this._p,18),"ptr",this._p,"ptr*",geometrySink),"Stream")
	return geometrySink
  }

  GetSegmentCount(){
	_Error(DllCall(vt(this._p,19),"ptr",this._p,"uint*",count),"GetSegmentCount")
	return count
  }

  GetFigureCount(){
	_Error(DllCall(vt(this._p,20),"ptr",this._p,"uint*",count),"GetFigureCount")
	return count
  }
}
;;
;;ID2D1Bitmap
;;
class ID2D1Bitmap
{
	__new(){
		this._p:=0
		this._i:={3:"GetFactory",4:"GetSize",5:"GetPixelSize",6:"GetPixelFormat",7:"GetDpi",8:"CopyFromBitmap",9:"CopyFromRenderTarget",10:"CopyFromMemory"}
	}
	__call(aName,aParam*){
		if aName is Integer
		{
			if this._i.HasKey(aName)
				return this[this._i[aName]](aParam*)
		}else if (aName=""){
			this._p:=aParam.1
			return this
		}
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
	}

  GetSize(){
	return _Error(DllCall(vt(this._p,4),"ptr",this._p),"GetSize")
  }

  GetPixelSize(){
	return _Error(DllCall(vt(this._p,5),"ptr",this._p),"GetPixelSize")
  }

  GetPixelFormat(){
	return _Error(DllCall(vt(this._p,6),"ptr",this._p),"GetPixelFormat")
  }

  GetDpi(){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"float*",dpiX,"float*",dpiY),"GetDpi")
	return [dpiX,dpiY]
  }

  CopyFromBitmap(destPoint,bitmap,srcRect){
	return _Error(DllCall(vt(this._p,8),"ptr",this._p,"ptr",destPoint,"ptr",bitmap,"ptr",srcRect,"Uint"),"CopyFromBitmap")
  }

  CopyFromRenderTarget(destPoint,renderTarget,srcRect){
	return _Error(DllCall(vt(this._p,9),"ptr",this._p,"ptr",destPoint,"ptr",renderTarget,"ptr",srcRect),"CopyFromRenderTarget")
  }

  CopyFromMemory(dstRect,srcData,pitch){
	return _Error(DllCall(vt(this._p,10),"ptr",this._p,"ptr",dstRect,"ptr",srcData,"uint",pitch),"CopyFromMemory")
  }
}

;;
;;ID2D1Resource
;;
class ID2D1Resource
{
	__new(){
		this._p:=0,this._i:=0,this._t:={}
		this._m:={}
	}
	__get(aName){
		if !instr(aName,"_")
			return this[this._i aName]()
		else return this[aName]()
	}
	__call(aName,aParam*){
		if (aName="")&&(this._p:=aParam.1)&&(this._i:=this._t[aParam.2])
			return this
		else if !instr(aName,"_")
			return this[this._i aName](aParam*)
	}
	
  GetFactory(){
	_Error(DllCall(vt(this._p,3),"ptr",this._p,"ptr*",factory),"GetFactory")
	return factory
  }	
; ID2D1GradientStopCollection
  GetGradientStopCount(){
	return _Error(DllCall(vt(this._p,4),"ptr",this._p),"GetGradientStopCount")
  }

  GetGradientStops(gradientStopsCount){
	_Error(DllCall(vt(this._p,5),"ptr",this._p,"ptr*",gradientStops,"uint",gradientStopsCount),"GetGradientStops")
	return gradientStops
  }

  GetColorInterpolationGamma(){
	return _Error(DllCall(vt(this._p,6),"ptr",this._p),"GetColorInterpolationGamma")
  }

  GetExtendMode(){
	return _Error(DllCall(vt(this._p,7),"ptr",this._p),"GetExtendMode")
  }
; ID2D1StrokeStyle
  GetStartCap(){
	return _Error(DllCall(vt(this._p,4),"ptr",this._p),"GetStartCap")
  }

  GetEndCap(){
	return _Error(DllCall(vt(this._p,5),"ptr",this._p),"GetEndCap")
  }

  GetDashCap(){
	return _Error(DllCall(vt(this._p,6),"ptr",this._p),"GetDashCap")
  }

  GetMiterLimit(){
	return _Error(DllCall(vt(this._p,7),"ptr",this._p,"float"),"GetMiterLimit")
  }

  GetLineJoin(){
	return _Error(DllCall(vt(this._p,8),"ptr",this._p),"GetLineJoin")
  }

  GetDashOffset(){
	return _Error(DllCall(vt(this._p,9),"ptr",this._p,"float"),"GetDashOffset")
  }

  GetDashStyle(){
	return _Error(DllCall(vt(this._p,10),"ptr",this._p),"GetDashStyle")
  }

  GetDashesCount(){
	return _Error(DllCall(vt(this._p,11),"ptr",this._p),"GetDashesCount")
  }

  GetDashes(dashesCount){
	_Error(DllCall(vt(this._p,12),"ptr",this._p,"ptr*",dashes,"uint",dashesCount),"GetDashes")
	return dashes
  }
; ID2D1Mesh
  Open(){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr*",tessellationSink),"Open")
	return tessellationSink
  }
; ID2D1Layer
  GetSize(){
	return _Error(DllCall(vt(this._p,4),"ptr",this._p),"GetSize")
  }
; ID2D1DrawingStateBlock
  GetDescription(){
	_Error(DllCall(vt(this._p,4),"ptr",this._p,"ptr*",stateDescription),"GetDescription")
	return stateDescription
  }

  SetDescription(stateDescription){
	return _Error(DllCall(vt(this._p,5),"ptr",this._p,"ptr",stateDescription),"SetDescription")
  }

  SetTextRenderingParams(textRenderingParams){
	return _Error(DllCall(vt(this._p,6),"ptr",this._p,"ptr",textRenderingParams),"SetTextRenderingParams")
  }

  GetTextRenderingParams(){
	_Error(DllCall(vt(this._p,7),"ptr",this._p,"ptr*",textRenderingParams),"GetTextRenderingParams")
	return textRenderingParams
  }

}

;;
;;ID2D1GeometrySink
;;
class ID2D1GeometrySink
{
	__new(){
		this._p:=0
		this._i:={3:"SetFillMode",4:"SetSegmentFlags",5:"BeginFigure",6:"AddLines",7:"AddBeziers",8:"EndFigure",9:"Close",10:"AddLine",11:"AddBezier",12:"AddQuadraticBezier",13:"AddQuadraticBeziers",14:"AddArc"}
	}
	__call(aName,aParam*){
		if aName is Integer
		{
			if this._i.HasKey(aName)
				return this[this._i[aName]](aParam*)
		}else if (aName=""){
			this._p:=aParam.1
			return this
		}
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
	}
	
  SetFillMode(fillMode){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p,"uint",fillMode),"SetFillMode")
  }

  SetSegmentFlags(vertexFlags){
	return _Error(DllCall(vt(this._p,4),"ptr",this._p,"uint",vertexFlags),"SetSegmentFlags")
  }

  BeginFigure(startPoint0,startPoint1,figureBegin){
	return _Error(DllCall(vt(this._p,5),"ptr",this._p,"float",startPoint0,"float",startPoint1,"uint",figureBegin),"BeginFigure")
  }

  AddLines(points,pointsCount){
	return _Error(DllCall(vt(this._p,6),"ptr",this._p,"ptr",points,"uint",pointsCount),"AddLines")
  }

  AddBeziers(beziers,beziersCount){
	return _Error(DllCall(vt(this._p,7),"ptr",this._p,"ptr",beziers,"uint",beziersCount),"AddBeziers")
  }

  EndFigure(figureEnd){
	return _Error(DllCall(vt(this._p,8),"ptr",this._p,"uint",figureEnd),"EndFigure")
  }

  Close(){
	return _Error(DllCall(vt(this._p,9),"ptr",this._p),"Close")
  }
  AddLine(point0,point1){
	return _Error(DllCall(vt(this._p,10),"ptr",this._p,"float",point0,"float",point1),"AddLine")
  }

  AddBezier(bezier){
	return _Error(DllCall(vt(this._p,11),"ptr",this._p,"ptr",bezier),"AddBezier")
  }

  AddQuadraticBezier(bezier){
	return _Error(DllCall(vt(this._p,12),"ptr",this._p,"ptr",bezier),"AddQuadraticBezier")
  }

  AddQuadraticBeziers(beziers,beziersCount){
	return _Error(DllCall(vt(this._p,13),"ptr",this._p,"ptr",beziers,"uint",beziersCount),"AddQuadraticBeziers")
  }

  AddArc(arc){
	return _Error(DllCall(vt(this._p,14),"ptr",this._p,"ptr",arc),"AddArc")
  }

}

;;
;;ID2D1TessellationSink
;;
class ID2D1TessellationSink
{
	__new(){
		this._p:=0
		this._i:={3:"AddTriangles",4:"Close"}
	}
	__call(aName,aParam*){
		if aName is Integer
		{
			if this._i.HasKey(aName)
				return this[this._i[aName]](aParam*)
		}else if (aName=""){
			this._p:=aParam.1
			return this
		}
	}
	__get(aName){
		if this._i.haskey(aName)
			return this[this._i[aName]]()
	}
  
  AddTriangles(triangles,trianglesCount){
	return _Error(DllCall(vt(this._p,3),"ptr",this._p,"ptr",triangles,"uint",trianglesCount),"AddTriangles")
  }

  Close(){
	return _Error(DllCall(vt(this._p,4),"ptr",this._p),"Close")
  }
}

;;
;;
;;


;;
;;ID2D1Transform
;;


;;
;;wrapped function
;;
; 
