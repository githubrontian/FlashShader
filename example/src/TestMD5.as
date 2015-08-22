package 
{
	import gl3d.parser.MD5AnimDecoder;
	import gl3d.parser.MD5AnimParser;
	import gl3d.parser.MD5MeshDecoder;
	import gl3d.parser.MD5MeshParser;
	/**
	 * ...
	 * @author lizhi
	 */
	public class TestMD5 extends BaseExample
	{
		
		public function TestMD5() 
		{
			
		}
		
		override public function initNode():void 
		{
			[Embed(source = "assets/wuji01.MD5MESH", mimeType = "application/octet-stream")]
			//[Embed(source="assets/fashinan_mesh.MD5MESH", mimeType="application/octet-stream")]
			var c:Class;
			var md5mesh:MD5MeshParser= new MD5MeshParser(new c +"");
			[Embed(source = "assets/a_daiji.MD5ANIM", mimeType = "application/octet-stream")]var c2:Class;
			new MD5AnimParser(new c2 + "",md5mesh);
			view.scene.addChild(md5mesh.target);
			md5mesh.target.rotationX = -90;
			md5mesh.target.rotationY = 180;
		}
		
	}

}