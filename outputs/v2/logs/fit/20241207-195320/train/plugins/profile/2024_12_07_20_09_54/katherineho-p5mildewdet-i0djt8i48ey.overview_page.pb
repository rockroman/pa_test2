�"$	�l�rZH�@^�y��kQ@��01l�@!+N�f��@$	��m?���|�,?c���5j?!3|D�m�p?"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0    p�@s.�Ue_�?A.=����@Y�m�(�?rtrain 60"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0��u�W��@�nK䂳�?Am�����@YcC7��?rtrain 61"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0E�aȔ�@���k�K�?A��v1펚@Y.2��?rtrain 62"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0p�'���@u��l��?At�����@Y�`���?rtrain 63"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0��GZ��@���T,�?A�q6���@YN�q�
�?rtrain 64"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0Mh�Xb��@܄{e���?AF$
-���@Y�Ēr�9�?rtrain 65"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0+N��ݛ@1�߄B�?A���0؛@YSX����?rtrain 66"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0	l����ݚ@˾+��m�?A9)�{ؚ@Y���w���?rtrain 67"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0
�\���@|��c�M�?A��B����@Y�Ws�`��?rtrain 68"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0VҊoh��@e�pu D�?A���W���@Yy;�i���?rtrain 69"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0�����@��"����?Ak��S��@Y��s(CU�?rtrain 70"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0+N�f��@�oB��?A� �h���@Ye�`TR'�?rtrain 71"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0�¼�9��@�G��?A��}]��@Y��fF?�?rtrain 72"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0�W�2�@�EB[�%�?AJ��3��@Y���[֫?rtrain 73"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0DL�$���@XV���n�?A�熦���@Y.rOWw�?rtrain 74"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0�� �@�@J��?A�Ky@��@Y���~�:�?rtrain 75"q
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails0��01l�@m�����?A�nJy=f�@YE���JY�?rtrain 76*	}?5�<�oA2f
/Iterator::Root::Prefetch::FlatMap[0]::GeneratorM��*�@!{A�#��X@)M��*�@1{A�#��X@:Preprocessing2O
Iterator::Root::Prefetch-z��y�?!r��V^?)-z��y�?1r��V^?:Preprocessing2E
Iterator::Root�����?!�٣d�m?)"�[='��?1�E��r�\?:Preprocessing2X
!Iterator::Root::Prefetch::FlatMap��W�*�@!N�6���X@)7QKs+��?1�oHہ;?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9I���0m?I�����X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
$		�q�+5�?*��)BP�?s.�Ue_�?!m�����?	!       "	!       *	!       2$	]L)��B�@�1Ys�kQ@�nJy=f�@!� �h���@:	!       B	!       J$	x��W��?}�Jp?���[֫?!.2��?R	!       Z$	x��W��?}�Jp?���[֫?!.2��?b	!       JCPU_ONLYYI���0m?b q�����X@Y      Y@qE���#?"�
device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2M
=type.googleapis.com/tensorflow.profiler.GenericRecommendation
nono2no:
Refer to the TF2 Profiler FAQ2"CPU: B 