from prophecy_pipeline_sdk.graph import *
from prophecy_pipeline_sdk.properties import *
args = PipelineArgs(label = "test_imports", version = 1, auto_layout = False)

with Pipeline(args) as pipeline:
    test_imports__order_status_tracking = Process(
        name = "test_imports__order_status_tracking",
        properties = ModelTransform(modelName = "test_imports__order_status_tracking")
    )

