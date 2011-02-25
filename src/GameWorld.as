package  
{
	import net.flashpunk.World;
	/**
	 * ...
	 * @author Brumby
	 */
	public class GameWorld extends World
	{
		
		public function GameWorld() 
		{
			add(new Player);
			add(new Platform(30, 30, 10, 40));
		}
		
	}

}
