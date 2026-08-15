function scp_transition_delete()
{
	var layer_getid = layer_get_id("sequences")
	
	if layer_sequence_exists(layer_getid,sqc_transition_start)
	{
		layer_sequence_destroy(sqc_transition_start)
	}
	
	if layer_sequence_exists(layer_getid,sqc_transition_end)
	{
		layer_sequence_destroy(sqc_transition_end)
	}
}