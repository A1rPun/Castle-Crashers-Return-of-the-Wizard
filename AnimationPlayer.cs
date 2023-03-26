using Godot;
using System;

public partial class AnimationPlayer : Godot.AnimationPlayer
{
	// Declare member variables here. Examples:
	// private int a = 2;
	// private string b = "text";

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		((AnimationPlayer)GetNode("AnimationPlayer")).Play("RunRight");
	}

public void start()
{
	anim = gameObject.GetComponent<gof>();
	
}
//  // Called every frame. 'delta' is the elapsed time since the previous frame.
//  public override void _Process(float delta)
//  {
//      
//  }
}
