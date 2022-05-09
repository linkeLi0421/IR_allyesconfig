; ModuleID = '/llk/IR_all_yes/sound/soc/soc-topology-test.c_pt.bc'
source_filename = "../sound/soc/soc-topology-test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.tplg_tmpl_001 = type { %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_manifest }
%struct.snd_soc_tplg_hdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_tplg_manifest = type { i32, i32, i32, i32, i32, i32, i32, [20 x i32], %struct.snd_soc_tplg_private }
%struct.snd_soc_tplg_private = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.anon.88 }
%struct.anon.88 = type { %struct.anon.89, [0 x %struct.snd_soc_tplg_vendor_array] }
%struct.anon.89 = type {}
%struct.snd_soc_tplg_vendor_array = type { i32, i32, i32, %union.anon.90 }
%union.anon.90 = type { [0 x %struct.snd_soc_tplg_vendor_uuid_elem] }
%struct.snd_soc_tplg_vendor_uuid_elem = type { i32, [16 x i8] }
%struct.tplg_tmpl_002 = type { %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_manifest, %struct.snd_soc_tplg_hdr, %struct.snd_soc_tplg_pcm }
%struct.snd_soc_tplg_pcm = type <{ i32, [44 x i8], [44 x i8], i32, i32, i32, i32, i32, [8 x %struct.snd_soc_tplg_stream], i32, [2 x %struct.snd_soc_tplg_stream_caps], i32, i32, %struct.snd_soc_tplg_private }>
%struct.snd_soc_tplg_stream = type { i32, [44 x i8], i64, i32, i32, i32, i32 }
%struct.snd_soc_tplg_stream_caps = type { i32, [44 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.kunit_ptr_not_err_assert = type { %struct.kunit_assert, ptr, ptr }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit_fail_assert = type { %struct.kunit_assert }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_soc_component = type { ptr, i32, %struct.snd_soc_component, %struct.snd_soc_card, %struct.firmware }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }

@__UNIQUE_ID_array239 = internal global [2 x ptr] [ptr @snd_soc_tplg_test_suite, ptr null], align 4
@__UNIQUE_ID_suites240 = internal global ptr @__UNIQUE_ID_array239, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file241 = internal constant [51 x i8] c"soc_topology_test.file=sound/soc/soc-topology-test\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [30 x i8] c"soc_topology_test.license=GPL\00", section ".modinfo", align 1
@snd_soc_tplg_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"snd_soc_tplg_test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @snd_soc_tplg_test_init, ptr @snd_soc_tplg_test_exit, ptr @snd_soc_tplg_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@snd_soc_tplg_test_cases = internal global { [12 x %struct.kunit_case], [48 x i8] } { [12 x %struct.kunit_case] [%struct.kunit_case { ptr @snd_soc_tplg_test_load_with_null_comp, ptr @.str.2, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @snd_soc_tplg_test_load_with_null_ops, ptr @.str.3, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @snd_soc_tplg_test_load_with_null_fw, ptr @.str.4, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @snd_soc_tplg_test_load_empty_tplg, ptr @.str.5, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @snd_soc_tplg_test_load_empty_tplg_bad_magic, ptr @.str.6, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @snd_soc_tplg_test_load_empty_tplg_bad_abi, ptr @.str.7, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @snd_soc_tplg_test_load_empty_tplg_bad_size, ptr @.str.8, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @snd_soc_tplg_test_load_empty_tplg_bad_payload_size, ptr @.str.9, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @snd_soc_tplg_test_load_pcm_tplg, ptr @.str.10, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @snd_soc_tplg_test_load_pcm_tplg_reload_comp, ptr @.str.11, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @snd_soc_tplg_test_load_pcm_tplg_reload_card, ptr @.str.12, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound-soc-topology-test\00", [40 x i8] zeroinitializer }, align 32
@test_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@test_drv = internal global { %struct.device_driver, [52 x i8] } { %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound-soc-topology-test-driver\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"snd_soc_tplg_test_load_with_null_comp\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"snd_soc_tplg_test_load_with_null_ops\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"snd_soc_tplg_test_load_with_null_fw\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"snd_soc_tplg_test_load_empty_tplg\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"snd_soc_tplg_test_load_empty_tplg_bad_magic\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"snd_soc_tplg_test_load_empty_tplg_bad_abi\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"snd_soc_tplg_test_load_empty_tplg_bad_size\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"snd_soc_tplg_test_load_empty_tplg_bad_payload_size\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"snd_soc_tplg_test_load_pcm_tplg\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"snd_soc_tplg_test_load_pcm_tplg_reload_comp\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"snd_soc_tplg_test_load_pcm_tplg_reload_card\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/soc-topology-test.c\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kunit_comp\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kunit-card\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to register card\00", [40 x i8] zeroinitializer }, align 32
@test_component_null_comp = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @d_probe_null_comp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 4, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ret\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"KUNIT Audio Port\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Audio Playback/Capture\00", [41 x i8] zeroinitializer }, align 32
@dummy = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.23, ptr null, ptr @.str.24 }], [20 x i8] zeroinitializer }, align 32
@platform = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str, ptr null, ptr null }], [20 x i8] zeroinitializer }, align 32
@kunit_dai_links = internal global { [1 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [44 x i8] } { [1 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.20, ptr @.str.21, ptr @dummy, i32 1, ptr @dummy, i32 1, ptr @platform, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr null, ptr null, i8 -128, i8 -32, i8 0, %struct.snd_soc_dobj zeroinitializer }], [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kunit_comp->expect\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed topology load\00", [43 x i8] zeroinitializer }, align 32
@test_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @d_probe, ptr @d_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 4, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@test_component_null_fw = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @d_probe_null_fw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 4, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@tplg_tmpl_empty = internal constant { %struct.tplg_tmpl_001, [44 x i8] } { %struct.tplg_tmpl_001 { %struct.snd_soc_tplg_hdr { i32 1131369281, i32 83886080, i32 0, i32 134217728, i32 603979776, i32 0, i32 1879048192, i32 0, i32 16777216 }, %struct.snd_soc_tplg_manifest { i32 1879048192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [20 x i32] zeroinitializer, %struct.snd_soc_tplg_private zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@tplg_tmpl_with_pcm = internal constant { %struct.tplg_tmpl_002, [280 x i8] } { %struct.tplg_tmpl_002 { %struct.snd_soc_tplg_hdr { i32 1131369281, i32 83886080, i32 0, i32 134217728, i32 603979776, i32 0, i32 1879048192, i32 0, i32 16777216 }, %struct.snd_soc_tplg_manifest { i32 1879048192, i32 0, i32 0, i32 0, i32 16777216, i32 0, i32 0, [20 x i32] zeroinitializer, %struct.snd_soc_tplg_private zeroinitializer }, %struct.snd_soc_tplg_hdr { i32 1131369281, i32 83886080, i32 0, i32 117440512, i32 603979776, i32 0, i32 -1878851584, i32 0, i32 16777216 }, %struct.snd_soc_tplg_pcm <{ i32 -1878851584, [44 x i8] c"KUNIT Audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [44 x i8] c"kunit-audio-dai\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 16777216, i32 16777216, i32 0, [8 x %struct.snd_soc_tplg_stream] [%struct.snd_soc_tplg_stream { i32 0, [44 x i8] zeroinitializer, i64 0, i32 0, i32 0, i32 0, i32 33554432 }, %struct.snd_soc_tplg_stream { i32 0, [44 x i8] zeroinitializer, i64 0, i32 0, i32 0, i32 0, i32 33554432 }, %struct.snd_soc_tplg_stream zeroinitializer, %struct.snd_soc_tplg_stream zeroinitializer, %struct.snd_soc_tplg_stream zeroinitializer, %struct.snd_soc_tplg_stream zeroinitializer, %struct.snd_soc_tplg_stream zeroinitializer, %struct.snd_soc_tplg_stream zeroinitializer], i32 0, [2 x %struct.snd_soc_tplg_stream_caps] [%struct.snd_soc_tplg_stream_caps { i32 0, [44 x i8] c"kunit-audio-playback\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0, i32 0, i32 33554432, i32 33554432, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.snd_soc_tplg_stream_caps { i32 0, [44 x i8] c"kunit-audio-capture\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0, i32 0, i32 33554432, i32 33554432, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], i32 0, i32 0, %struct.snd_soc_tplg_private zeroinitializer }> }, [280 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.38 = private unnamed_addr constant [24 x i8] c"snd_soc_tplg_test_suite\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 834, i32 27 }
@___asan_gen_.41 = private unnamed_addr constant [24 x i8] c"snd_soc_tplg_test_cases\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 819, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 30, i32 13 }
@___asan_gen_.47 = private unnamed_addr constant [9 x i8] c"test_dev\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 22, i32 23 }
@___asan_gen_.50 = private unnamed_addr constant [9 x i8] c"test_drv\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 24, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 25, i32 10 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 820, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 821, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 822, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 823, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 824, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 825, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 826, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 827, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 828, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 829, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 830, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 251, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 256, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 265, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [25 x i8] c"test_component_null_comp\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 238, i32 46 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 268, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 91, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 93, i32 18 }
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 87, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant [16 x i8] c"kunit_dai_links\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 89, i32 32 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 85, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 232, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [15 x i8] c"test_component\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 103, i32 46 }
@___asan_gen_.143 = private unnamed_addr constant [23 x i8] c"test_component_null_fw\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 346, i32 46 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 405, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [16 x i8] c"tplg_tmpl_empty\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 122, i32 29 }
@___asan_gen_.152 = private unnamed_addr constant [19 x i8] c"tplg_tmpl_with_pcm\00", align 1
@___asan_gen_.153 = private constant [33 x i8] c"../sound/soc/soc-topology-test.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 150, i32 29 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__UNIQUE_ID_suites240, ptr @snd_soc_tplg_test_suite, ptr @snd_soc_tplg_test_cases, ptr @.str, ptr @test_dev, ptr @test_drv, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @test_component_null_comp, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @dummy, ptr @platform, ptr @kunit_dai_links, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @test_component, ptr @test_component_null_fw, ptr @.str.27, ptr @tplg_tmpl_empty, ptr @tplg_tmpl_with_pcm], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_tplg_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_tplg_test_cases to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_drv to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_null_comp to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_dai_links to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_component_null_fw to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tplg_tmpl_empty to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tplg_tmpl_with_pcm to i32), i32 1096, i32 1376, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_soc_tplg_test_init(ptr nocapture noundef readnone %test) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__root_device_register(ptr noundef nonnull @.str, ptr noundef null) #3
  store ptr %call, ptr @test_dev, align 4
  %call1 = tail call ptr @get_device(ptr noundef %call) #3
  store ptr %call1, ptr @test_dev, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %driver = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @test_drv, ptr %driver, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_soc_tplg_test_exit(ptr nocapture noundef readnone %test) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @test_dev, align 4
  tail call void @put_device(ptr noundef %0) #3
  %1 = load ptr, ptr @test_dev, align 4
  tail call void @root_device_unregister(ptr noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__root_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @root_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_soc_tplg_test_load_with_null_comp(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion16 = alloca %struct.kunit_fail_assert, align 4
  %__assertion32 = alloca %struct.kunit_binary_assert, align 8
  %__assertion56 = alloca %struct.kunit_binary_assert, align 8
  %__assertion86 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 924, i32 noundef 3520) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #3
  %0 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %2 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 251, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.13, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %4 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %7 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.14, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i.i, null
  %cmp.i = icmp ule ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #3
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %test, ptr %call.i.i, align 4
  %expect = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %expect to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -22, ptr %expect, align 4
  %11 = load ptr, ptr @test_dev, align 4
  %card = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3
  %dev = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 5
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %dev, align 4
  %13 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.15, ptr %card, align 4
  %owner = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 7
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %owner, align 4
  %dai_link = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 24
  %15 = ptrtoint ptr %dai_link to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @kunit_dai_links, ptr %dai_link, align 4
  %num_links = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 25
  %16 = ptrtoint ptr %num_links to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %num_links, align 4
  %fully_routed = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 56
  %17 = ptrtoint ptr %fully_routed to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %fully_routed, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %fully_routed, align 4
  %call13 = call i32 @snd_soc_register_card(ptr noundef %card) #3
  %18 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call13, label %do.body15 [
    i32 0, label %entry.if.end_crit_edge
    i32 -517, label %entry.if.end_crit_edge144
  ]

entry.if.end_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion16) #3
  %19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 1
  %20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 2
  %21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 3
  %22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 4
  %23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 4, i32 1
  %24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 5
  %25 = ptrtoint ptr %__assertion16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %test, ptr %__assertion16, align 4
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %19, align 4
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 265, ptr %20, align 4
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.13, ptr %21, align 4
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %22, align 4
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %23, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kunit_fail_assert_format, ptr %24, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion16, i1 noundef zeroext false, ptr noundef nonnull @.str.16) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion16) #3
  br label %if.end

if.end:                                           ; preds = %do.body15, %entry.if.end_crit_edge, %entry.if.end_crit_edge144
  %comp = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 2
  %32 = load ptr, ptr @test_dev, align 4
  %call29 = call i32 @snd_soc_component_initialize(ptr noundef %comp, ptr noundef nonnull @test_component_null_comp, ptr noundef %32) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion32) #3
  %33 = getelementptr inbounds i8, ptr %__assertion32, i32 32
  %34 = call ptr @memset(ptr %33, i32 255, i32 24)
  %35 = ptrtoint ptr %__assertion32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %test, ptr %__assertion32, align 8
  %type35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 1
  %36 = ptrtoint ptr %type35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type35, align 4
  %line36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 2
  %37 = ptrtoint ptr %line36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 268, ptr %line36, align 8
  %file37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 3
  %38 = ptrtoint ptr %file37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.13, ptr %file37, align 4
  %message38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4
  %39 = ptrtoint ptr %message38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %message38, align 8
  %va40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %va40 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %va40, align 4
  %format41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 5
  %41 = ptrtoint ptr %format41 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @kunit_binary_assert_format, ptr %format41, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 1
  %42 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.17, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 2
  %43 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.18, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 3
  %44 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 4
  %45 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.19, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 5
  %conv42 = sext i32 %call29 to i64
  %46 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv42, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp44 = icmp eq i32 %call29, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion32, i1 noundef zeroext %cmp44, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion32) #3
  %call51 = call i32 @snd_soc_add_component(ptr noundef %comp, ptr noundef null, i32 noundef 0) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion56) #3
  %47 = getelementptr inbounds i8, ptr %__assertion56, i32 32
  %48 = call ptr @memset(ptr %47, i32 255, i32 24)
  %49 = ptrtoint ptr %__assertion56 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %test, ptr %__assertion56, align 8
  %type59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 1
  %50 = ptrtoint ptr %type59 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %type59, align 4
  %line60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 2
  %51 = ptrtoint ptr %line60 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 271, ptr %line60, align 8
  %file61 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 3
  %52 = ptrtoint ptr %file61 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.13, ptr %file61, align 4
  %message62 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 4
  %53 = ptrtoint ptr %message62 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %message62, align 8
  %va64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %va64 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %va64, align 4
  %format65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 5
  %55 = ptrtoint ptr %format65 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @kunit_binary_assert_format, ptr %format65, align 8
  %operation66 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion56, i32 0, i32 1
  %56 = ptrtoint ptr %operation66 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.17, ptr %operation66, align 4
  %left_text67 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion56, i32 0, i32 2
  %57 = ptrtoint ptr %left_text67 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.18, ptr %left_text67, align 8
  %left_value68 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion56, i32 0, i32 3
  %58 = ptrtoint ptr %left_value68 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 0, ptr %left_value68, align 8
  %right_text70 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion56, i32 0, i32 4
  %59 = ptrtoint ptr %right_text70 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.19, ptr %right_text70, align 8
  %right_value71 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion56, i32 0, i32 5
  %conv72 = sext i32 %call51 to i64
  %60 = ptrtoint ptr %right_value71 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv72, ptr %right_value71, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp74 = icmp eq i32 %call51, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion56, i1 noundef zeroext %cmp74, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion56) #3
  %call81 = call i32 @snd_soc_unregister_card(ptr noundef %card) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion86) #3
  %61 = getelementptr inbounds i8, ptr %__assertion86, i32 32
  %62 = call ptr @memset(ptr %61, i32 255, i32 24)
  %63 = ptrtoint ptr %__assertion86 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %test, ptr %__assertion86, align 8
  %type89 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 1
  %64 = ptrtoint ptr %type89 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %type89, align 4
  %line90 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 2
  %65 = ptrtoint ptr %line90 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 275, ptr %line90, align 8
  %file91 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 3
  %66 = ptrtoint ptr %file91 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.13, ptr %file91, align 4
  %message92 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 4
  %67 = ptrtoint ptr %message92 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %message92, align 8
  %va94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 4, i32 1
  %68 = ptrtoint ptr %va94 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %va94, align 4
  %format95 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 5
  %69 = ptrtoint ptr %format95 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @kunit_binary_assert_format, ptr %format95, align 8
  %operation96 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 1
  %70 = ptrtoint ptr %operation96 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.17, ptr %operation96, align 4
  %left_text97 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 2
  %71 = ptrtoint ptr %left_text97 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.18, ptr %left_text97, align 8
  %left_value98 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 3
  %72 = ptrtoint ptr %left_value98 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 0, ptr %left_value98, align 8
  %right_text100 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 4
  %73 = ptrtoint ptr %right_text100 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.19, ptr %right_text100, align 8
  %right_value101 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 5
  %conv102 = sext i32 %call81 to i64
  %74 = ptrtoint ptr %right_value101 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv102, ptr %right_value101, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp104 = icmp eq i32 %call81, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion86, i1 noundef zeroext %cmp104, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion86) #3
  %75 = load ptr, ptr @test_dev, align 4
  call void @snd_soc_unregister_component(ptr noundef %75) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_soc_tplg_test_load_with_null_ops(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion16 = alloca %struct.kunit_fail_assert, align 4
  %__assertion32 = alloca %struct.kunit_binary_assert, align 8
  %__assertion56 = alloca %struct.kunit_binary_assert, align 8
  %__assertion86 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 924, i32 noundef 3520) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #3
  %0 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %2 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 295, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.13, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %4 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %7 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.14, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i.i, null
  %cmp.i = icmp ule ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #3
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %test, ptr %call.i.i, align 4
  %expect = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %expect to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %expect, align 4
  %11 = load ptr, ptr @test_dev, align 4
  %card = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3
  %dev = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 5
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %dev, align 4
  %13 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.15, ptr %card, align 4
  %owner = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 7
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %owner, align 4
  %dai_link = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 24
  %15 = ptrtoint ptr %dai_link to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @kunit_dai_links, ptr %dai_link, align 4
  %num_links = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 25
  %16 = ptrtoint ptr %num_links to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %num_links, align 4
  %fully_routed = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 56
  %17 = ptrtoint ptr %fully_routed to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %fully_routed, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %fully_routed, align 4
  %call13 = call i32 @snd_soc_register_card(ptr noundef %card) #3
  %18 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call13, label %do.body15 [
    i32 0, label %entry.if.end_crit_edge
    i32 -517, label %entry.if.end_crit_edge144
  ]

entry.if.end_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion16) #3
  %19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 1
  %20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 2
  %21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 3
  %22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 4
  %23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 4, i32 1
  %24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 5
  %25 = ptrtoint ptr %__assertion16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %test, ptr %__assertion16, align 4
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %19, align 4
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 309, ptr %20, align 4
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.13, ptr %21, align 4
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %22, align 4
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %23, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kunit_fail_assert_format, ptr %24, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion16, i1 noundef zeroext false, ptr noundef nonnull @.str.16) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion16) #3
  br label %if.end

if.end:                                           ; preds = %do.body15, %entry.if.end_crit_edge, %entry.if.end_crit_edge144
  %comp = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 2
  %32 = load ptr, ptr @test_dev, align 4
  %call29 = call i32 @snd_soc_component_initialize(ptr noundef %comp, ptr noundef nonnull @test_component, ptr noundef %32) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion32) #3
  %33 = getelementptr inbounds i8, ptr %__assertion32, i32 32
  %34 = call ptr @memset(ptr %33, i32 255, i32 24)
  %35 = ptrtoint ptr %__assertion32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %test, ptr %__assertion32, align 8
  %type35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 1
  %36 = ptrtoint ptr %type35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type35, align 4
  %line36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 2
  %37 = ptrtoint ptr %line36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 312, ptr %line36, align 8
  %file37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 3
  %38 = ptrtoint ptr %file37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.13, ptr %file37, align 4
  %message38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4
  %39 = ptrtoint ptr %message38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %message38, align 8
  %va40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %va40 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %va40, align 4
  %format41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 5
  %41 = ptrtoint ptr %format41 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @kunit_binary_assert_format, ptr %format41, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 1
  %42 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.17, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 2
  %43 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.18, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 3
  %44 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 4
  %45 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.19, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 5
  %conv42 = sext i32 %call29 to i64
  %46 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv42, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp44 = icmp eq i32 %call29, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion32, i1 noundef zeroext %cmp44, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion32) #3
  %call51 = call i32 @snd_soc_add_component(ptr noundef %comp, ptr noundef null, i32 noundef 0) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion56) #3
  %47 = getelementptr inbounds i8, ptr %__assertion56, i32 32
  %48 = call ptr @memset(ptr %47, i32 255, i32 24)
  %49 = ptrtoint ptr %__assertion56 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %test, ptr %__assertion56, align 8
  %type59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 1
  %50 = ptrtoint ptr %type59 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %type59, align 4
  %line60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 2
  %51 = ptrtoint ptr %line60 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 315, ptr %line60, align 8
  %file61 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 3
  %52 = ptrtoint ptr %file61 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.13, ptr %file61, align 4
  %message62 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 4
  %53 = ptrtoint ptr %message62 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %message62, align 8
  %va64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %va64 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %va64, align 4
  %format65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 5
  %55 = ptrtoint ptr %format65 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @kunit_binary_assert_format, ptr %format65, align 8
  %operation66 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion56, i32 0, i32 1
  %56 = ptrtoint ptr %operation66 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.17, ptr %operation66, align 4
  %left_text67 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion56, i32 0, i32 2
  %57 = ptrtoint ptr %left_text67 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.18, ptr %left_text67, align 8
  %left_value68 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion56, i32 0, i32 3
  %58 = ptrtoint ptr %left_value68 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 0, ptr %left_value68, align 8
  %right_text70 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion56, i32 0, i32 4
  %59 = ptrtoint ptr %right_text70 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.19, ptr %right_text70, align 8
  %right_value71 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion56, i32 0, i32 5
  %conv72 = sext i32 %call51 to i64
  %60 = ptrtoint ptr %right_value71 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv72, ptr %right_value71, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp74 = icmp eq i32 %call51, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion56, i1 noundef zeroext %cmp74, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion56) #3
  %call81 = call i32 @snd_soc_unregister_card(ptr noundef %card) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion86) #3
  %61 = getelementptr inbounds i8, ptr %__assertion86, i32 32
  %62 = call ptr @memset(ptr %61, i32 255, i32 24)
  %63 = ptrtoint ptr %__assertion86 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %test, ptr %__assertion86, align 8
  %type89 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 1
  %64 = ptrtoint ptr %type89 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %type89, align 4
  %line90 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 2
  %65 = ptrtoint ptr %line90 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 319, ptr %line90, align 8
  %file91 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 3
  %66 = ptrtoint ptr %file91 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.13, ptr %file91, align 4
  %message92 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 4
  %67 = ptrtoint ptr %message92 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %message92, align 8
  %va94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 4, i32 1
  %68 = ptrtoint ptr %va94 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %va94, align 4
  %format95 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 5
  %69 = ptrtoint ptr %format95 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @kunit_binary_assert_format, ptr %format95, align 8
  %operation96 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 1
  %70 = ptrtoint ptr %operation96 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.17, ptr %operation96, align 4
  %left_text97 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 2
  %71 = ptrtoint ptr %left_text97 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.18, ptr %left_text97, align 8
  %left_value98 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 3
  %72 = ptrtoint ptr %left_value98 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 0, ptr %left_value98, align 8
  %right_text100 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 4
  %73 = ptrtoint ptr %right_text100 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.19, ptr %right_text100, align 8
  %right_value101 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 5
  %conv102 = sext i32 %call81 to i64
  %74 = ptrtoint ptr %right_value101 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv102, ptr %right_value101, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp104 = icmp eq i32 %call81, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion86, i1 noundef zeroext %cmp104, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion86) #3
  %75 = load ptr, ptr @test_dev, align 4
  call void @snd_soc_unregister_component(ptr noundef %75) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_soc_tplg_test_load_with_null_fw(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion16 = alloca %struct.kunit_fail_assert, align 4
  %__assertion32 = alloca %struct.kunit_binary_assert, align 8
  %__assertion56 = alloca %struct.kunit_binary_assert, align 8
  %__assertion86 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 924, i32 noundef 3520) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #3
  %0 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %2 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 359, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.13, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %4 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %7 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.14, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i.i, null
  %cmp.i = icmp ule ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #3
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %test, ptr %call.i.i, align 4
  %expect = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %expect to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -22, ptr %expect, align 4
  %11 = load ptr, ptr @test_dev, align 4
  %card = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3
  %dev = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 5
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %dev, align 4
  %13 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.15, ptr %card, align 4
  %owner = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 7
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %owner, align 4
  %dai_link = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 24
  %15 = ptrtoint ptr %dai_link to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @kunit_dai_links, ptr %dai_link, align 4
  %num_links = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 25
  %16 = ptrtoint ptr %num_links to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %num_links, align 4
  %fully_routed = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 56
  %17 = ptrtoint ptr %fully_routed to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %fully_routed, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %fully_routed, align 4
  %call13 = call i32 @snd_soc_register_card(ptr noundef %card) #3
  %18 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call13, label %do.body15 [
    i32 0, label %entry.if.end_crit_edge
    i32 -517, label %entry.if.end_crit_edge144
  ]

entry.if.end_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion16) #3
  %19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 1
  %20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 2
  %21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 3
  %22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 4
  %23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 4, i32 1
  %24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 5
  %25 = ptrtoint ptr %__assertion16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %test, ptr %__assertion16, align 4
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %19, align 4
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 373, ptr %20, align 4
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.13, ptr %21, align 4
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %22, align 4
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %23, align 4
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kunit_fail_assert_format, ptr %24, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion16, i1 noundef zeroext false, ptr noundef nonnull @.str.16) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion16) #3
  br label %if.end

if.end:                                           ; preds = %do.body15, %entry.if.end_crit_edge, %entry.if.end_crit_edge144
  %comp = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 2
  %32 = load ptr, ptr @test_dev, align 4
  %call29 = call i32 @snd_soc_component_initialize(ptr noundef %comp, ptr noundef nonnull @test_component_null_fw, ptr noundef %32) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion32) #3
  %33 = getelementptr inbounds i8, ptr %__assertion32, i32 32
  %34 = call ptr @memset(ptr %33, i32 255, i32 24)
  %35 = ptrtoint ptr %__assertion32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %test, ptr %__assertion32, align 8
  %type35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 1
  %36 = ptrtoint ptr %type35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type35, align 4
  %line36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 2
  %37 = ptrtoint ptr %line36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 376, ptr %line36, align 8
  %file37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 3
  %38 = ptrtoint ptr %file37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.13, ptr %file37, align 4
  %message38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4
  %39 = ptrtoint ptr %message38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %message38, align 8
  %va40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %va40 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %va40, align 4
  %format41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion32, i32 0, i32 5
  %41 = ptrtoint ptr %format41 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @kunit_binary_assert_format, ptr %format41, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 1
  %42 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.17, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 2
  %43 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.18, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 3
  %44 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 4
  %45 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.19, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion32, i32 0, i32 5
  %conv42 = sext i32 %call29 to i64
  %46 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv42, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp44 = icmp eq i32 %call29, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion32, i1 noundef zeroext %cmp44, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion32) #3
  %call51 = call i32 @snd_soc_add_component(ptr noundef %comp, ptr noundef null, i32 noundef 0) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion56) #3
  %47 = getelementptr inbounds i8, ptr %__assertion56, i32 32
  %48 = call ptr @memset(ptr %47, i32 255, i32 24)
  %49 = ptrtoint ptr %__assertion56 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %test, ptr %__assertion56, align 8
  %type59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 1
  %50 = ptrtoint ptr %type59 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %type59, align 4
  %line60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 2
  %51 = ptrtoint ptr %line60 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 379, ptr %line60, align 8
  %file61 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 3
  %52 = ptrtoint ptr %file61 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.13, ptr %file61, align 4
  %message62 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 4
  %53 = ptrtoint ptr %message62 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %message62, align 8
  %va64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %va64 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %va64, align 4
  %format65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion56, i32 0, i32 5
  %55 = ptrtoint ptr %format65 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @kunit_binary_assert_format, ptr %format65, align 8
  %operation66 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion56, i32 0, i32 1
  %56 = ptrtoint ptr %operation66 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.17, ptr %operation66, align 4
  %left_text67 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion56, i32 0, i32 2
  %57 = ptrtoint ptr %left_text67 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.18, ptr %left_text67, align 8
  %left_value68 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion56, i32 0, i32 3
  %58 = ptrtoint ptr %left_value68 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 0, ptr %left_value68, align 8
  %right_text70 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion56, i32 0, i32 4
  %59 = ptrtoint ptr %right_text70 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.19, ptr %right_text70, align 8
  %right_value71 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion56, i32 0, i32 5
  %conv72 = sext i32 %call51 to i64
  %60 = ptrtoint ptr %right_value71 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv72, ptr %right_value71, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp74 = icmp eq i32 %call51, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion56, i1 noundef zeroext %cmp74, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion56) #3
  %call81 = call i32 @snd_soc_unregister_card(ptr noundef %card) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion86) #3
  %61 = getelementptr inbounds i8, ptr %__assertion86, i32 32
  %62 = call ptr @memset(ptr %61, i32 255, i32 24)
  %63 = ptrtoint ptr %__assertion86 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %test, ptr %__assertion86, align 8
  %type89 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 1
  %64 = ptrtoint ptr %type89 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %type89, align 4
  %line90 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 2
  %65 = ptrtoint ptr %line90 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 383, ptr %line90, align 8
  %file91 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 3
  %66 = ptrtoint ptr %file91 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.13, ptr %file91, align 4
  %message92 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 4
  %67 = ptrtoint ptr %message92 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %message92, align 8
  %va94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 4, i32 1
  %68 = ptrtoint ptr %va94 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %va94, align 4
  %format95 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 5
  %69 = ptrtoint ptr %format95 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @kunit_binary_assert_format, ptr %format95, align 8
  %operation96 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 1
  %70 = ptrtoint ptr %operation96 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.17, ptr %operation96, align 4
  %left_text97 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 2
  %71 = ptrtoint ptr %left_text97 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.18, ptr %left_text97, align 8
  %left_value98 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 3
  %72 = ptrtoint ptr %left_value98 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 0, ptr %left_value98, align 8
  %right_text100 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 4
  %73 = ptrtoint ptr %right_text100 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.19, ptr %right_text100, align 8
  %right_value101 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 5
  %conv102 = sext i32 %call81 to i64
  %74 = ptrtoint ptr %right_value101 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv102, ptr %right_value101, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp104 = icmp eq i32 %call81, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion86, i1 noundef zeroext %cmp104, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion86) #3
  %75 = load ptr, ptr @test_dev, align 4
  call void @snd_soc_unregister_component(ptr noundef %75) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_soc_tplg_test_load_empty_tplg(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion12 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion45 = alloca %struct.kunit_fail_assert, align 4
  %__assertion61 = alloca %struct.kunit_binary_assert, align 8
  %__assertion85 = alloca %struct.kunit_binary_assert, align 8
  %__assertion115 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 924, i32 noundef 3520) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #3
  %0 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %2 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 399, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.13, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %4 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %7 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.14, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i.i, null
  %cmp.i = icmp ule ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #3
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %test, ptr %call.i.i, align 4
  %expect = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %expect to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %expect, align 4
  %call.i.i182 = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 148, i32 noundef 3520) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion12) #3
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i.i, align 4
  %13 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %__assertion12, align 4
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %14 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %15 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 405, ptr %line17, align 4
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %16 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.13, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %17 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %message19, align 4
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %19 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format22, align 4
  %text23 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion12, i32 0, i32 1
  %20 = ptrtoint ptr %text23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.27, ptr %text23, align 4
  %value24 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion12, i32 0, i32 2
  %21 = ptrtoint ptr %value24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i182, ptr %value24, align 4
  %22 = load ptr, ptr %call.i.i, align 4
  %tobool.not.i183 = icmp ne ptr %call.i.i182, null
  %cmp.i184 = icmp ule ptr %call.i.i182, inttoptr (i32 -4096 to ptr)
  %lnot28 = and i1 %tobool.not.i183, %cmp.i184
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %22, ptr noundef nonnull %__assertion12, i1 noundef zeroext %lnot28, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion12) #3
  %23 = call ptr @memcpy(ptr %call.i.i182, ptr @tplg_tmpl_empty, i32 148)
  %fw = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 4
  %data33 = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %data33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i.i182, ptr %data33, align 4
  %25 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 148, ptr %fw, align 4
  %26 = load ptr, ptr @test_dev, align 4
  %card = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3
  %dev = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 5
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dev, align 4
  %28 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.15, ptr %card, align 4
  %owner = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 7
  %29 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %owner, align 4
  %dai_link = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 24
  %30 = ptrtoint ptr %dai_link to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @kunit_dai_links, ptr %dai_link, align 4
  %num_links = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 25
  %31 = ptrtoint ptr %num_links to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %num_links, align 4
  %fully_routed = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 56
  %32 = ptrtoint ptr %fully_routed to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %fully_routed, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %fully_routed, align 4
  %call42 = call i32 @snd_soc_register_card(ptr noundef %card) #3
  %33 = zext i32 %call42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call42, label %do.body44 [
    i32 0, label %entry.if.end_crit_edge
    i32 -517, label %entry.if.end_crit_edge186
  ]

entry.if.end_crit_edge186:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body44:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion45) #3
  %34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 1
  %35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 2
  %36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 3
  %37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4
  %38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4, i32 1
  %39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 5
  %40 = ptrtoint ptr %__assertion45 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %test, ptr %__assertion45, align 4
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %34, align 4
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 422, ptr %35, align 4
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.13, ptr %36, align 4
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %37, align 4
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %38, align 4
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @kunit_fail_assert_format, ptr %39, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion45, i1 noundef zeroext false, ptr noundef nonnull @.str.16) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion45) #3
  br label %if.end

if.end:                                           ; preds = %do.body44, %entry.if.end_crit_edge, %entry.if.end_crit_edge186
  %comp = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 2
  %47 = load ptr, ptr @test_dev, align 4
  %call58 = call i32 @snd_soc_component_initialize(ptr noundef %comp, ptr noundef nonnull @test_component, ptr noundef %47) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion61) #3
  %48 = getelementptr inbounds i8, ptr %__assertion61, i32 32
  %49 = call ptr @memset(ptr %48, i32 255, i32 24)
  %50 = ptrtoint ptr %__assertion61 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %test, ptr %__assertion61, align 8
  %type64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 1
  %51 = ptrtoint ptr %type64 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %type64, align 4
  %line65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 2
  %52 = ptrtoint ptr %line65 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 425, ptr %line65, align 8
  %file66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 3
  %53 = ptrtoint ptr %file66 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.13, ptr %file66, align 4
  %message67 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 4
  %54 = ptrtoint ptr %message67 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %message67, align 8
  %va69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 4, i32 1
  %55 = ptrtoint ptr %va69 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %va69, align 4
  %format70 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 5
  %56 = ptrtoint ptr %format70 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @kunit_binary_assert_format, ptr %format70, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 1
  %57 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.17, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 2
  %58 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.18, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 3
  %59 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 4
  %60 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.19, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 5
  %conv71 = sext i32 %call58 to i64
  %61 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %conv71, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp73 = icmp eq i32 %call58, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion61, i1 noundef zeroext %cmp73, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion61) #3
  %call80 = call i32 @snd_soc_add_component(ptr noundef %comp, ptr noundef null, i32 noundef 0) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion85) #3
  %62 = getelementptr inbounds i8, ptr %__assertion85, i32 32
  %63 = call ptr @memset(ptr %62, i32 255, i32 24)
  %64 = ptrtoint ptr %__assertion85 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %test, ptr %__assertion85, align 8
  %type88 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 1
  %65 = ptrtoint ptr %type88 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %type88, align 4
  %line89 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 2
  %66 = ptrtoint ptr %line89 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 428, ptr %line89, align 8
  %file90 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 3
  %67 = ptrtoint ptr %file90 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.13, ptr %file90, align 4
  %message91 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 4
  %68 = ptrtoint ptr %message91 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %message91, align 8
  %va93 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %va93 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %va93, align 4
  %format94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 5
  %70 = ptrtoint ptr %format94 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @kunit_binary_assert_format, ptr %format94, align 8
  %operation95 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 1
  %71 = ptrtoint ptr %operation95 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.17, ptr %operation95, align 4
  %left_text96 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 2
  %72 = ptrtoint ptr %left_text96 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.18, ptr %left_text96, align 8
  %left_value97 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 3
  %73 = ptrtoint ptr %left_value97 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 0, ptr %left_value97, align 8
  %right_text99 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 4
  %74 = ptrtoint ptr %right_text99 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.19, ptr %right_text99, align 8
  %right_value100 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 5
  %conv101 = sext i32 %call80 to i64
  %75 = ptrtoint ptr %right_value100 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv101, ptr %right_value100, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp103 = icmp eq i32 %call80, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion85, i1 noundef zeroext %cmp103, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion85) #3
  %call110 = call i32 @snd_soc_unregister_card(ptr noundef %card) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion115) #3
  %76 = getelementptr inbounds i8, ptr %__assertion115, i32 32
  %77 = call ptr @memset(ptr %76, i32 255, i32 24)
  %78 = ptrtoint ptr %__assertion115 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %test, ptr %__assertion115, align 8
  %type118 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 1
  %79 = ptrtoint ptr %type118 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %type118, align 4
  %line119 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 2
  %80 = ptrtoint ptr %line119 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 432, ptr %line119, align 8
  %file120 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 3
  %81 = ptrtoint ptr %file120 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.13, ptr %file120, align 4
  %message121 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 4
  %82 = ptrtoint ptr %message121 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %message121, align 8
  %va123 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 4, i32 1
  %83 = ptrtoint ptr %va123 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %va123, align 4
  %format124 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 5
  %84 = ptrtoint ptr %format124 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @kunit_binary_assert_format, ptr %format124, align 8
  %operation125 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 1
  %85 = ptrtoint ptr %operation125 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.17, ptr %operation125, align 4
  %left_text126 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 2
  %86 = ptrtoint ptr %left_text126 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.18, ptr %left_text126, align 8
  %left_value127 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 3
  %87 = ptrtoint ptr %left_value127 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 0, ptr %left_value127, align 8
  %right_text129 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 4
  %88 = ptrtoint ptr %right_text129 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.19, ptr %right_text129, align 8
  %right_value130 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 5
  %conv131 = sext i32 %call110 to i64
  %89 = ptrtoint ptr %right_value130 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %conv131, ptr %right_value130, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp133 = icmp eq i32 %call110, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion115, i1 noundef zeroext %cmp133, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion115) #3
  %90 = load ptr, ptr @test_dev, align 4
  call void @snd_soc_unregister_component(ptr noundef %90) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_soc_tplg_test_load_empty_tplg_bad_magic(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion12 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion45 = alloca %struct.kunit_fail_assert, align 4
  %__assertion61 = alloca %struct.kunit_binary_assert, align 8
  %__assertion85 = alloca %struct.kunit_binary_assert, align 8
  %__assertion115 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 924, i32 noundef 3520) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #3
  %0 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %2 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 450, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.13, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %4 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %7 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.14, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i.i, null
  %cmp.i = icmp ule ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #3
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %test, ptr %call.i.i, align 4
  %expect = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %expect to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -22, ptr %expect, align 4
  %call.i.i183 = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 148, i32 noundef 3520) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion12) #3
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i.i, align 4
  %13 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %__assertion12, align 4
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %14 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %15 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 456, ptr %line17, align 4
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %16 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.13, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %17 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %message19, align 4
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %19 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format22, align 4
  %text23 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion12, i32 0, i32 1
  %20 = ptrtoint ptr %text23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.27, ptr %text23, align 4
  %value24 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion12, i32 0, i32 2
  %21 = ptrtoint ptr %value24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i183, ptr %value24, align 4
  %22 = load ptr, ptr %call.i.i, align 4
  %tobool.not.i184 = icmp ne ptr %call.i.i183, null
  %cmp.i185 = icmp ule ptr %call.i.i183, inttoptr (i32 -4096 to ptr)
  %lnot28 = and i1 %tobool.not.i184, %cmp.i185
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %22, ptr noundef nonnull %__assertion12, i1 noundef zeroext %lnot28, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion12) #3
  %23 = call ptr @memcpy(ptr %call.i.i183, ptr @tplg_tmpl_empty, i32 148)
  %24 = ptrtoint ptr %call.i.i183 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 1148146497, ptr %call.i.i183, align 1
  %fw = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 4
  %data33 = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %data33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i183, ptr %data33, align 4
  %26 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 148, ptr %fw, align 4
  %27 = load ptr, ptr @test_dev, align 4
  %card = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3
  %dev = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 5
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %dev, align 4
  %29 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.15, ptr %card, align 4
  %owner = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 7
  %30 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %owner, align 4
  %dai_link = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 24
  %31 = ptrtoint ptr %dai_link to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kunit_dai_links, ptr %dai_link, align 4
  %num_links = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 25
  %32 = ptrtoint ptr %num_links to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %num_links, align 4
  %fully_routed = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 56
  %33 = ptrtoint ptr %fully_routed to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %fully_routed, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %fully_routed, align 4
  %call42 = call i32 @snd_soc_register_card(ptr noundef %card) #3
  %34 = zext i32 %call42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call42, label %do.body44 [
    i32 0, label %entry.if.end_crit_edge
    i32 -517, label %entry.if.end_crit_edge187
  ]

entry.if.end_crit_edge187:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body44:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion45) #3
  %35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 1
  %36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 2
  %37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 3
  %38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4
  %39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4, i32 1
  %40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 5
  %41 = ptrtoint ptr %__assertion45 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %test, ptr %__assertion45, align 4
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %35, align 4
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 478, ptr %36, align 4
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.13, ptr %37, align 4
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %38, align 4
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %39, align 4
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @kunit_fail_assert_format, ptr %40, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion45, i1 noundef zeroext false, ptr noundef nonnull @.str.16) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion45) #3
  br label %if.end

if.end:                                           ; preds = %do.body44, %entry.if.end_crit_edge, %entry.if.end_crit_edge187
  %comp = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 2
  %48 = load ptr, ptr @test_dev, align 4
  %call58 = call i32 @snd_soc_component_initialize(ptr noundef %comp, ptr noundef nonnull @test_component, ptr noundef %48) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion61) #3
  %49 = getelementptr inbounds i8, ptr %__assertion61, i32 32
  %50 = call ptr @memset(ptr %49, i32 255, i32 24)
  %51 = ptrtoint ptr %__assertion61 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %test, ptr %__assertion61, align 8
  %type64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 1
  %52 = ptrtoint ptr %type64 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %type64, align 4
  %line65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 2
  %53 = ptrtoint ptr %line65 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 481, ptr %line65, align 8
  %file66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 3
  %54 = ptrtoint ptr %file66 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.13, ptr %file66, align 4
  %message67 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 4
  %55 = ptrtoint ptr %message67 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %message67, align 8
  %va69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %va69 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %va69, align 4
  %format70 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 5
  %57 = ptrtoint ptr %format70 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @kunit_binary_assert_format, ptr %format70, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 1
  %58 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.17, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 2
  %59 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.18, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 3
  %60 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 4
  %61 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.19, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 5
  %conv71 = sext i32 %call58 to i64
  %62 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv71, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp73 = icmp eq i32 %call58, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion61, i1 noundef zeroext %cmp73, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion61) #3
  %call80 = call i32 @snd_soc_add_component(ptr noundef %comp, ptr noundef null, i32 noundef 0) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion85) #3
  %63 = getelementptr inbounds i8, ptr %__assertion85, i32 32
  %64 = call ptr @memset(ptr %63, i32 255, i32 24)
  %65 = ptrtoint ptr %__assertion85 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %test, ptr %__assertion85, align 8
  %type88 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 1
  %66 = ptrtoint ptr %type88 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %type88, align 4
  %line89 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 2
  %67 = ptrtoint ptr %line89 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 484, ptr %line89, align 8
  %file90 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 3
  %68 = ptrtoint ptr %file90 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.13, ptr %file90, align 4
  %message91 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 4
  %69 = ptrtoint ptr %message91 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %message91, align 8
  %va93 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %va93 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %va93, align 4
  %format94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 5
  %71 = ptrtoint ptr %format94 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @kunit_binary_assert_format, ptr %format94, align 8
  %operation95 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 1
  %72 = ptrtoint ptr %operation95 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.17, ptr %operation95, align 4
  %left_text96 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 2
  %73 = ptrtoint ptr %left_text96 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.18, ptr %left_text96, align 8
  %left_value97 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 3
  %74 = ptrtoint ptr %left_value97 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %left_value97, align 8
  %right_text99 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 4
  %75 = ptrtoint ptr %right_text99 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.19, ptr %right_text99, align 8
  %right_value100 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 5
  %conv101 = sext i32 %call80 to i64
  %76 = ptrtoint ptr %right_value100 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv101, ptr %right_value100, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp103 = icmp eq i32 %call80, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion85, i1 noundef zeroext %cmp103, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion85) #3
  %call110 = call i32 @snd_soc_unregister_card(ptr noundef %card) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion115) #3
  %77 = getelementptr inbounds i8, ptr %__assertion115, i32 32
  %78 = call ptr @memset(ptr %77, i32 255, i32 24)
  %79 = ptrtoint ptr %__assertion115 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %test, ptr %__assertion115, align 8
  %type118 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 1
  %80 = ptrtoint ptr %type118 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %type118, align 4
  %line119 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 2
  %81 = ptrtoint ptr %line119 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 488, ptr %line119, align 8
  %file120 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 3
  %82 = ptrtoint ptr %file120 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.13, ptr %file120, align 4
  %message121 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 4
  %83 = ptrtoint ptr %message121 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %message121, align 8
  %va123 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 4, i32 1
  %84 = ptrtoint ptr %va123 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %va123, align 4
  %format124 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 5
  %85 = ptrtoint ptr %format124 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @kunit_binary_assert_format, ptr %format124, align 8
  %operation125 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 1
  %86 = ptrtoint ptr %operation125 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.17, ptr %operation125, align 4
  %left_text126 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 2
  %87 = ptrtoint ptr %left_text126 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.18, ptr %left_text126, align 8
  %left_value127 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 3
  %88 = ptrtoint ptr %left_value127 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 0, ptr %left_value127, align 8
  %right_text129 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 4
  %89 = ptrtoint ptr %right_text129 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.19, ptr %right_text129, align 8
  %right_value130 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 5
  %conv131 = sext i32 %call110 to i64
  %90 = ptrtoint ptr %right_value130 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv131, ptr %right_value130, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp133 = icmp eq i32 %call110, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion115, i1 noundef zeroext %cmp133, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion115) #3
  %91 = load ptr, ptr @test_dev, align 4
  call void @snd_soc_unregister_component(ptr noundef %91) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_soc_tplg_test_load_empty_tplg_bad_abi(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion12 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion45 = alloca %struct.kunit_fail_assert, align 4
  %__assertion61 = alloca %struct.kunit_binary_assert, align 8
  %__assertion85 = alloca %struct.kunit_binary_assert, align 8
  %__assertion115 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 924, i32 noundef 3520) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #3
  %0 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %2 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 506, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.13, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %4 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %7 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.14, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i.i, null
  %cmp.i = icmp ule ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #3
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %test, ptr %call.i.i, align 4
  %expect = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %expect to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -22, ptr %expect, align 4
  %call.i.i183 = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 148, i32 noundef 3520) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion12) #3
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i.i, align 4
  %13 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %__assertion12, align 4
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %14 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %15 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 512, ptr %line17, align 4
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %16 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.13, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %17 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %message19, align 4
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %19 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format22, align 4
  %text23 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion12, i32 0, i32 1
  %20 = ptrtoint ptr %text23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.27, ptr %text23, align 4
  %value24 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion12, i32 0, i32 2
  %21 = ptrtoint ptr %value24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i183, ptr %value24, align 4
  %22 = load ptr, ptr %call.i.i, align 4
  %tobool.not.i184 = icmp ne ptr %call.i.i183, null
  %cmp.i185 = icmp ule ptr %call.i.i183, inttoptr (i32 -4096 to ptr)
  %lnot28 = and i1 %tobool.not.i184, %cmp.i185
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %22, ptr noundef nonnull %__assertion12, i1 noundef zeroext %lnot28, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion12) #3
  %23 = call ptr @memcpy(ptr %call.i.i183, ptr @tplg_tmpl_empty, i32 148)
  %abi = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %call.i.i183, i32 0, i32 1
  %24 = ptrtoint ptr %abi to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 100663296, ptr %abi, align 1
  %fw = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 4
  %data33 = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %data33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i183, ptr %data33, align 4
  %26 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 148, ptr %fw, align 4
  %27 = load ptr, ptr @test_dev, align 4
  %card = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3
  %dev = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 5
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %dev, align 4
  %29 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.15, ptr %card, align 4
  %owner = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 7
  %30 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %owner, align 4
  %dai_link = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 24
  %31 = ptrtoint ptr %dai_link to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kunit_dai_links, ptr %dai_link, align 4
  %num_links = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 25
  %32 = ptrtoint ptr %num_links to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %num_links, align 4
  %fully_routed = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 56
  %33 = ptrtoint ptr %fully_routed to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %fully_routed, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %fully_routed, align 4
  %call42 = call i32 @snd_soc_register_card(ptr noundef %card) #3
  %34 = zext i32 %call42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call42, label %do.body44 [
    i32 0, label %entry.if.end_crit_edge
    i32 -517, label %entry.if.end_crit_edge187
  ]

entry.if.end_crit_edge187:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body44:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion45) #3
  %35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 1
  %36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 2
  %37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 3
  %38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4
  %39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4, i32 1
  %40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 5
  %41 = ptrtoint ptr %__assertion45 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %test, ptr %__assertion45, align 4
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %35, align 4
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 534, ptr %36, align 4
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.13, ptr %37, align 4
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %38, align 4
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %39, align 4
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @kunit_fail_assert_format, ptr %40, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion45, i1 noundef zeroext false, ptr noundef nonnull @.str.16) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion45) #3
  br label %if.end

if.end:                                           ; preds = %do.body44, %entry.if.end_crit_edge, %entry.if.end_crit_edge187
  %comp = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 2
  %48 = load ptr, ptr @test_dev, align 4
  %call58 = call i32 @snd_soc_component_initialize(ptr noundef %comp, ptr noundef nonnull @test_component, ptr noundef %48) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion61) #3
  %49 = getelementptr inbounds i8, ptr %__assertion61, i32 32
  %50 = call ptr @memset(ptr %49, i32 255, i32 24)
  %51 = ptrtoint ptr %__assertion61 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %test, ptr %__assertion61, align 8
  %type64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 1
  %52 = ptrtoint ptr %type64 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %type64, align 4
  %line65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 2
  %53 = ptrtoint ptr %line65 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 537, ptr %line65, align 8
  %file66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 3
  %54 = ptrtoint ptr %file66 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.13, ptr %file66, align 4
  %message67 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 4
  %55 = ptrtoint ptr %message67 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %message67, align 8
  %va69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %va69 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %va69, align 4
  %format70 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 5
  %57 = ptrtoint ptr %format70 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @kunit_binary_assert_format, ptr %format70, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 1
  %58 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.17, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 2
  %59 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.18, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 3
  %60 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 4
  %61 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.19, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 5
  %conv71 = sext i32 %call58 to i64
  %62 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv71, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp73 = icmp eq i32 %call58, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion61, i1 noundef zeroext %cmp73, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion61) #3
  %call80 = call i32 @snd_soc_add_component(ptr noundef %comp, ptr noundef null, i32 noundef 0) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion85) #3
  %63 = getelementptr inbounds i8, ptr %__assertion85, i32 32
  %64 = call ptr @memset(ptr %63, i32 255, i32 24)
  %65 = ptrtoint ptr %__assertion85 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %test, ptr %__assertion85, align 8
  %type88 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 1
  %66 = ptrtoint ptr %type88 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %type88, align 4
  %line89 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 2
  %67 = ptrtoint ptr %line89 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 540, ptr %line89, align 8
  %file90 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 3
  %68 = ptrtoint ptr %file90 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.13, ptr %file90, align 4
  %message91 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 4
  %69 = ptrtoint ptr %message91 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %message91, align 8
  %va93 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %va93 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %va93, align 4
  %format94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 5
  %71 = ptrtoint ptr %format94 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @kunit_binary_assert_format, ptr %format94, align 8
  %operation95 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 1
  %72 = ptrtoint ptr %operation95 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.17, ptr %operation95, align 4
  %left_text96 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 2
  %73 = ptrtoint ptr %left_text96 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.18, ptr %left_text96, align 8
  %left_value97 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 3
  %74 = ptrtoint ptr %left_value97 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %left_value97, align 8
  %right_text99 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 4
  %75 = ptrtoint ptr %right_text99 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.19, ptr %right_text99, align 8
  %right_value100 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 5
  %conv101 = sext i32 %call80 to i64
  %76 = ptrtoint ptr %right_value100 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv101, ptr %right_value100, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp103 = icmp eq i32 %call80, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion85, i1 noundef zeroext %cmp103, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion85) #3
  %call110 = call i32 @snd_soc_unregister_card(ptr noundef %card) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion115) #3
  %77 = getelementptr inbounds i8, ptr %__assertion115, i32 32
  %78 = call ptr @memset(ptr %77, i32 255, i32 24)
  %79 = ptrtoint ptr %__assertion115 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %test, ptr %__assertion115, align 8
  %type118 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 1
  %80 = ptrtoint ptr %type118 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %type118, align 4
  %line119 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 2
  %81 = ptrtoint ptr %line119 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 544, ptr %line119, align 8
  %file120 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 3
  %82 = ptrtoint ptr %file120 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.13, ptr %file120, align 4
  %message121 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 4
  %83 = ptrtoint ptr %message121 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %message121, align 8
  %va123 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 4, i32 1
  %84 = ptrtoint ptr %va123 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %va123, align 4
  %format124 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 5
  %85 = ptrtoint ptr %format124 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @kunit_binary_assert_format, ptr %format124, align 8
  %operation125 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 1
  %86 = ptrtoint ptr %operation125 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.17, ptr %operation125, align 4
  %left_text126 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 2
  %87 = ptrtoint ptr %left_text126 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.18, ptr %left_text126, align 8
  %left_value127 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 3
  %88 = ptrtoint ptr %left_value127 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 0, ptr %left_value127, align 8
  %right_text129 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 4
  %89 = ptrtoint ptr %right_text129 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.19, ptr %right_text129, align 8
  %right_value130 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 5
  %conv131 = sext i32 %call110 to i64
  %90 = ptrtoint ptr %right_value130 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv131, ptr %right_value130, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp133 = icmp eq i32 %call110, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion115, i1 noundef zeroext %cmp133, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion115) #3
  %91 = load ptr, ptr @test_dev, align 4
  call void @snd_soc_unregister_component(ptr noundef %91) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_soc_tplg_test_load_empty_tplg_bad_size(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion12 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion46 = alloca %struct.kunit_fail_assert, align 4
  %__assertion62 = alloca %struct.kunit_binary_assert, align 8
  %__assertion86 = alloca %struct.kunit_binary_assert, align 8
  %__assertion116 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 924, i32 noundef 3520) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #3
  %0 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %2 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 562, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.13, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %4 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %7 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.14, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i.i, null
  %cmp.i = icmp ule ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #3
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %test, ptr %call.i.i, align 4
  %expect = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %expect to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -22, ptr %expect, align 4
  %call.i.i184 = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 148, i32 noundef 3520) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion12) #3
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i.i, align 4
  %13 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %__assertion12, align 4
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %14 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %15 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 568, ptr %line17, align 4
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %16 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.13, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %17 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %message19, align 4
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %19 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format22, align 4
  %text23 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion12, i32 0, i32 1
  %20 = ptrtoint ptr %text23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.27, ptr %text23, align 4
  %value24 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion12, i32 0, i32 2
  %21 = ptrtoint ptr %value24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i184, ptr %value24, align 4
  %22 = load ptr, ptr %call.i.i, align 4
  %tobool.not.i185 = icmp ne ptr %call.i.i184, null
  %cmp.i186 = icmp ule ptr %call.i.i184, inttoptr (i32 -4096 to ptr)
  %lnot28 = and i1 %tobool.not.i185, %cmp.i186
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %22, ptr noundef nonnull %__assertion12, i1 noundef zeroext %lnot28, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion12) #3
  %23 = call ptr @memcpy(ptr %call.i.i184, ptr @tplg_tmpl_empty, i32 148)
  %size33 = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %call.i.i184, i32 0, i32 4
  %24 = ptrtoint ptr %size33 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 620756992, ptr %size33, align 1
  %fw = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 4
  %data34 = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %data34 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i184, ptr %data34, align 4
  %26 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 148, ptr %fw, align 4
  %27 = load ptr, ptr @test_dev, align 4
  %card = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3
  %dev = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 5
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %dev, align 4
  %29 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.15, ptr %card, align 4
  %owner = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 7
  %30 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %owner, align 4
  %dai_link = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 24
  %31 = ptrtoint ptr %dai_link to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kunit_dai_links, ptr %dai_link, align 4
  %num_links = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 25
  %32 = ptrtoint ptr %num_links to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %num_links, align 4
  %fully_routed = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 56
  %33 = ptrtoint ptr %fully_routed to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %fully_routed, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %fully_routed, align 4
  %call43 = call i32 @snd_soc_register_card(ptr noundef %card) #3
  %34 = zext i32 %call43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call43, label %do.body45 [
    i32 0, label %entry.if.end_crit_edge
    i32 -517, label %entry.if.end_crit_edge188
  ]

entry.if.end_crit_edge188:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body45:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion46) #3
  %35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 1
  %36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 2
  %37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 3
  %38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 4
  %39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 4, i32 1
  %40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 5
  %41 = ptrtoint ptr %__assertion46 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %test, ptr %__assertion46, align 4
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %35, align 4
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 590, ptr %36, align 4
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.13, ptr %37, align 4
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %38, align 4
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %39, align 4
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @kunit_fail_assert_format, ptr %40, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion46, i1 noundef zeroext false, ptr noundef nonnull @.str.16) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion46) #3
  br label %if.end

if.end:                                           ; preds = %do.body45, %entry.if.end_crit_edge, %entry.if.end_crit_edge188
  %comp = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 2
  %48 = load ptr, ptr @test_dev, align 4
  %call59 = call i32 @snd_soc_component_initialize(ptr noundef %comp, ptr noundef nonnull @test_component, ptr noundef %48) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion62) #3
  %49 = getelementptr inbounds i8, ptr %__assertion62, i32 32
  %50 = call ptr @memset(ptr %49, i32 255, i32 24)
  %51 = ptrtoint ptr %__assertion62 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %test, ptr %__assertion62, align 8
  %type65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 1
  %52 = ptrtoint ptr %type65 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %type65, align 4
  %line66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 2
  %53 = ptrtoint ptr %line66 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 593, ptr %line66, align 8
  %file67 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 3
  %54 = ptrtoint ptr %file67 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.13, ptr %file67, align 4
  %message68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 4
  %55 = ptrtoint ptr %message68 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %message68, align 8
  %va70 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %va70 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %va70, align 4
  %format71 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 5
  %57 = ptrtoint ptr %format71 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @kunit_binary_assert_format, ptr %format71, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion62, i32 0, i32 1
  %58 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.17, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion62, i32 0, i32 2
  %59 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.18, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion62, i32 0, i32 3
  %60 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion62, i32 0, i32 4
  %61 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.19, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion62, i32 0, i32 5
  %conv72 = sext i32 %call59 to i64
  %62 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv72, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp74 = icmp eq i32 %call59, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion62, i1 noundef zeroext %cmp74, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion62) #3
  %call81 = call i32 @snd_soc_add_component(ptr noundef %comp, ptr noundef null, i32 noundef 0) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion86) #3
  %63 = getelementptr inbounds i8, ptr %__assertion86, i32 32
  %64 = call ptr @memset(ptr %63, i32 255, i32 24)
  %65 = ptrtoint ptr %__assertion86 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %test, ptr %__assertion86, align 8
  %type89 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 1
  %66 = ptrtoint ptr %type89 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %type89, align 4
  %line90 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 2
  %67 = ptrtoint ptr %line90 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 596, ptr %line90, align 8
  %file91 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 3
  %68 = ptrtoint ptr %file91 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.13, ptr %file91, align 4
  %message92 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 4
  %69 = ptrtoint ptr %message92 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %message92, align 8
  %va94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %va94 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %va94, align 4
  %format95 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 5
  %71 = ptrtoint ptr %format95 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @kunit_binary_assert_format, ptr %format95, align 8
  %operation96 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 1
  %72 = ptrtoint ptr %operation96 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.17, ptr %operation96, align 4
  %left_text97 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 2
  %73 = ptrtoint ptr %left_text97 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.18, ptr %left_text97, align 8
  %left_value98 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 3
  %74 = ptrtoint ptr %left_value98 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %left_value98, align 8
  %right_text100 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 4
  %75 = ptrtoint ptr %right_text100 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.19, ptr %right_text100, align 8
  %right_value101 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 5
  %conv102 = sext i32 %call81 to i64
  %76 = ptrtoint ptr %right_value101 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv102, ptr %right_value101, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp104 = icmp eq i32 %call81, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion86, i1 noundef zeroext %cmp104, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion86) #3
  %call111 = call i32 @snd_soc_unregister_card(ptr noundef %card) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion116) #3
  %77 = getelementptr inbounds i8, ptr %__assertion116, i32 32
  %78 = call ptr @memset(ptr %77, i32 255, i32 24)
  %79 = ptrtoint ptr %__assertion116 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %test, ptr %__assertion116, align 8
  %type119 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 1
  %80 = ptrtoint ptr %type119 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %type119, align 4
  %line120 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 2
  %81 = ptrtoint ptr %line120 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 600, ptr %line120, align 8
  %file121 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 3
  %82 = ptrtoint ptr %file121 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.13, ptr %file121, align 4
  %message122 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 4
  %83 = ptrtoint ptr %message122 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %message122, align 8
  %va124 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 4, i32 1
  %84 = ptrtoint ptr %va124 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %va124, align 4
  %format125 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 5
  %85 = ptrtoint ptr %format125 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @kunit_binary_assert_format, ptr %format125, align 8
  %operation126 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion116, i32 0, i32 1
  %86 = ptrtoint ptr %operation126 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.17, ptr %operation126, align 4
  %left_text127 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion116, i32 0, i32 2
  %87 = ptrtoint ptr %left_text127 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.18, ptr %left_text127, align 8
  %left_value128 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion116, i32 0, i32 3
  %88 = ptrtoint ptr %left_value128 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 0, ptr %left_value128, align 8
  %right_text130 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion116, i32 0, i32 4
  %89 = ptrtoint ptr %right_text130 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.19, ptr %right_text130, align 8
  %right_value131 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion116, i32 0, i32 5
  %conv132 = sext i32 %call111 to i64
  %90 = ptrtoint ptr %right_value131 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv132, ptr %right_value131, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp134 = icmp eq i32 %call111, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion116, i1 noundef zeroext %cmp134, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion116) #3
  %91 = load ptr, ptr @test_dev, align 4
  call void @snd_soc_unregister_component(ptr noundef %91) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_soc_tplg_test_load_empty_tplg_bad_payload_size(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion12 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion45 = alloca %struct.kunit_fail_assert, align 4
  %__assertion61 = alloca %struct.kunit_binary_assert, align 8
  %__assertion85 = alloca %struct.kunit_binary_assert, align 8
  %__assertion115 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 924, i32 noundef 3520) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #3
  %0 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %2 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 618, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.13, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %4 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %7 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.14, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i.i, null
  %cmp.i = icmp ule ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #3
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %test, ptr %call.i.i, align 4
  %expect = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %expect to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -22, ptr %expect, align 4
  %call.i.i183 = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 148, i32 noundef 3520) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion12) #3
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i.i, align 4
  %13 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %__assertion12, align 4
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %14 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %15 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 624, ptr %line17, align 4
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %16 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.13, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %17 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %message19, align 4
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %19 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format22, align 4
  %text23 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion12, i32 0, i32 1
  %20 = ptrtoint ptr %text23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.27, ptr %text23, align 4
  %value24 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion12, i32 0, i32 2
  %21 = ptrtoint ptr %value24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i183, ptr %value24, align 4
  %22 = load ptr, ptr %call.i.i, align 4
  %tobool.not.i184 = icmp ne ptr %call.i.i183, null
  %cmp.i185 = icmp ule ptr %call.i.i183, inttoptr (i32 -4096 to ptr)
  %lnot28 = and i1 %tobool.not.i184, %cmp.i185
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %22, ptr noundef nonnull %__assertion12, i1 noundef zeroext %lnot28, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion12) #3
  %23 = call ptr @memcpy(ptr %call.i.i183, ptr @tplg_tmpl_empty, i32 148)
  %payload_size = getelementptr inbounds %struct.snd_soc_tplg_hdr, ptr %call.i.i183, i32 0, i32 6
  %24 = ptrtoint ptr %payload_size to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 0, ptr %payload_size, align 1
  %fw = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 4
  %data33 = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %data33 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i183, ptr %data33, align 4
  %26 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 148, ptr %fw, align 4
  %27 = load ptr, ptr @test_dev, align 4
  %card = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3
  %dev = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 5
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %dev, align 4
  %29 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.15, ptr %card, align 4
  %owner = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 7
  %30 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %owner, align 4
  %dai_link = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 24
  %31 = ptrtoint ptr %dai_link to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kunit_dai_links, ptr %dai_link, align 4
  %num_links = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 25
  %32 = ptrtoint ptr %num_links to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %num_links, align 4
  %fully_routed = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 56
  %33 = ptrtoint ptr %fully_routed to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %fully_routed, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %fully_routed, align 4
  %call42 = call i32 @snd_soc_register_card(ptr noundef %card) #3
  %34 = zext i32 %call42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call42, label %do.body44 [
    i32 0, label %entry.if.end_crit_edge
    i32 -517, label %entry.if.end_crit_edge187
  ]

entry.if.end_crit_edge187:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body44:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion45) #3
  %35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 1
  %36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 2
  %37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 3
  %38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4
  %39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4, i32 1
  %40 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 5
  %41 = ptrtoint ptr %__assertion45 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %test, ptr %__assertion45, align 4
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %35, align 4
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 647, ptr %36, align 4
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.13, ptr %37, align 4
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %38, align 4
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %39, align 4
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @kunit_fail_assert_format, ptr %40, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion45, i1 noundef zeroext false, ptr noundef nonnull @.str.16) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion45) #3
  br label %if.end

if.end:                                           ; preds = %do.body44, %entry.if.end_crit_edge, %entry.if.end_crit_edge187
  %comp = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 2
  %48 = load ptr, ptr @test_dev, align 4
  %call58 = call i32 @snd_soc_component_initialize(ptr noundef %comp, ptr noundef nonnull @test_component, ptr noundef %48) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion61) #3
  %49 = getelementptr inbounds i8, ptr %__assertion61, i32 32
  %50 = call ptr @memset(ptr %49, i32 255, i32 24)
  %51 = ptrtoint ptr %__assertion61 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %test, ptr %__assertion61, align 8
  %type64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 1
  %52 = ptrtoint ptr %type64 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %type64, align 4
  %line65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 2
  %53 = ptrtoint ptr %line65 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 650, ptr %line65, align 8
  %file66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 3
  %54 = ptrtoint ptr %file66 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.13, ptr %file66, align 4
  %message67 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 4
  %55 = ptrtoint ptr %message67 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %message67, align 8
  %va69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %va69 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %va69, align 4
  %format70 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 5
  %57 = ptrtoint ptr %format70 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @kunit_binary_assert_format, ptr %format70, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 1
  %58 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.17, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 2
  %59 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.18, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 3
  %60 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 4
  %61 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.19, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 5
  %conv71 = sext i32 %call58 to i64
  %62 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv71, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp73 = icmp eq i32 %call58, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion61, i1 noundef zeroext %cmp73, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion61) #3
  %call80 = call i32 @snd_soc_add_component(ptr noundef %comp, ptr noundef null, i32 noundef 0) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion85) #3
  %63 = getelementptr inbounds i8, ptr %__assertion85, i32 32
  %64 = call ptr @memset(ptr %63, i32 255, i32 24)
  %65 = ptrtoint ptr %__assertion85 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %test, ptr %__assertion85, align 8
  %type88 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 1
  %66 = ptrtoint ptr %type88 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %type88, align 4
  %line89 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 2
  %67 = ptrtoint ptr %line89 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 653, ptr %line89, align 8
  %file90 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 3
  %68 = ptrtoint ptr %file90 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.13, ptr %file90, align 4
  %message91 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 4
  %69 = ptrtoint ptr %message91 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %message91, align 8
  %va93 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %va93 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %va93, align 4
  %format94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 5
  %71 = ptrtoint ptr %format94 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @kunit_binary_assert_format, ptr %format94, align 8
  %operation95 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 1
  %72 = ptrtoint ptr %operation95 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.17, ptr %operation95, align 4
  %left_text96 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 2
  %73 = ptrtoint ptr %left_text96 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.18, ptr %left_text96, align 8
  %left_value97 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 3
  %74 = ptrtoint ptr %left_value97 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 0, ptr %left_value97, align 8
  %right_text99 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 4
  %75 = ptrtoint ptr %right_text99 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.19, ptr %right_text99, align 8
  %right_value100 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 5
  %conv101 = sext i32 %call80 to i64
  %76 = ptrtoint ptr %right_value100 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv101, ptr %right_value100, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp103 = icmp eq i32 %call80, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion85, i1 noundef zeroext %cmp103, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion85) #3
  %77 = load ptr, ptr @test_dev, align 4
  call void @snd_soc_unregister_component(ptr noundef %77) #3
  %call110 = call i32 @snd_soc_unregister_card(ptr noundef %card) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion115) #3
  %78 = getelementptr inbounds i8, ptr %__assertion115, i32 32
  %79 = call ptr @memset(ptr %78, i32 255, i32 24)
  %80 = ptrtoint ptr %__assertion115 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %test, ptr %__assertion115, align 8
  %type118 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 1
  %81 = ptrtoint ptr %type118 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %type118, align 4
  %line119 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 2
  %82 = ptrtoint ptr %line119 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 659, ptr %line119, align 8
  %file120 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 3
  %83 = ptrtoint ptr %file120 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.13, ptr %file120, align 4
  %message121 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 4
  %84 = ptrtoint ptr %message121 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %message121, align 8
  %va123 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 4, i32 1
  %85 = ptrtoint ptr %va123 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %va123, align 4
  %format124 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 5
  %86 = ptrtoint ptr %format124 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @kunit_binary_assert_format, ptr %format124, align 8
  %operation125 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 1
  %87 = ptrtoint ptr %operation125 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.17, ptr %operation125, align 4
  %left_text126 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 2
  %88 = ptrtoint ptr %left_text126 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.18, ptr %left_text126, align 8
  %left_value127 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 3
  %89 = ptrtoint ptr %left_value127 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 0, ptr %left_value127, align 8
  %right_text129 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 4
  %90 = ptrtoint ptr %right_text129 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.19, ptr %right_text129, align 8
  %right_value130 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 5
  %conv131 = sext i32 %call110 to i64
  %91 = ptrtoint ptr %right_value130 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %conv131, ptr %right_value130, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp133 = icmp eq i32 %call110, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion115, i1 noundef zeroext %cmp133, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion115) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_soc_tplg_test_load_pcm_tplg(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion12 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion45 = alloca %struct.kunit_fail_assert, align 4
  %__assertion61 = alloca %struct.kunit_binary_assert, align 8
  %__assertion85 = alloca %struct.kunit_binary_assert, align 8
  %__assertion115 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 924, i32 noundef 3520) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #3
  %0 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %2 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 673, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.13, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %4 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %7 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.14, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i.i, null
  %cmp.i = icmp ule ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #3
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %test, ptr %call.i.i, align 4
  %expect = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %expect to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %expect, align 4
  %call.i.i182 = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 1096, i32 noundef 3520) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion12) #3
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i.i, align 4
  %13 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %__assertion12, align 4
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %14 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %15 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 679, ptr %line17, align 4
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %16 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.13, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %17 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %message19, align 4
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %19 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format22, align 4
  %text23 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion12, i32 0, i32 1
  %20 = ptrtoint ptr %text23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.27, ptr %text23, align 4
  %value24 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion12, i32 0, i32 2
  %21 = ptrtoint ptr %value24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i182, ptr %value24, align 4
  %22 = load ptr, ptr %call.i.i, align 4
  %tobool.not.i183 = icmp ne ptr %call.i.i182, null
  %cmp.i184 = icmp ule ptr %call.i.i182, inttoptr (i32 -4096 to ptr)
  %lnot28 = and i1 %tobool.not.i183, %cmp.i184
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %22, ptr noundef nonnull %__assertion12, i1 noundef zeroext %lnot28, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion12) #3
  %23 = call ptr @memcpy(ptr %call.i.i182, ptr @tplg_tmpl_with_pcm, i32 1096)
  %fw = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 4
  %data33 = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %data33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i.i182, ptr %data33, align 4
  %25 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1096, ptr %fw, align 4
  %26 = load ptr, ptr @test_dev, align 4
  %card = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3
  %dev = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 5
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dev, align 4
  %28 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.15, ptr %card, align 4
  %owner = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 7
  %29 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %owner, align 4
  %dai_link = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 24
  %30 = ptrtoint ptr %dai_link to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @kunit_dai_links, ptr %dai_link, align 4
  %num_links = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 25
  %31 = ptrtoint ptr %num_links to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %num_links, align 4
  %fully_routed = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 56
  %32 = ptrtoint ptr %fully_routed to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %fully_routed, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %fully_routed, align 4
  %call42 = call i32 @snd_soc_register_card(ptr noundef %card) #3
  %33 = zext i32 %call42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call42, label %do.body44 [
    i32 0, label %entry.if.end_crit_edge
    i32 -517, label %entry.if.end_crit_edge186
  ]

entry.if.end_crit_edge186:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body44:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion45) #3
  %34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 1
  %35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 2
  %36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 3
  %37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4
  %38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4, i32 1
  %39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 5
  %40 = ptrtoint ptr %__assertion45 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %test, ptr %__assertion45, align 4
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %34, align 4
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 696, ptr %35, align 4
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.13, ptr %36, align 4
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %37, align 4
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %38, align 4
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @kunit_fail_assert_format, ptr %39, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion45, i1 noundef zeroext false, ptr noundef nonnull @.str.16) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion45) #3
  br label %if.end

if.end:                                           ; preds = %do.body44, %entry.if.end_crit_edge, %entry.if.end_crit_edge186
  %comp = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 2
  %47 = load ptr, ptr @test_dev, align 4
  %call58 = call i32 @snd_soc_component_initialize(ptr noundef %comp, ptr noundef nonnull @test_component, ptr noundef %47) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion61) #3
  %48 = getelementptr inbounds i8, ptr %__assertion61, i32 32
  %49 = call ptr @memset(ptr %48, i32 255, i32 24)
  %50 = ptrtoint ptr %__assertion61 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %test, ptr %__assertion61, align 8
  %type64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 1
  %51 = ptrtoint ptr %type64 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %type64, align 4
  %line65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 2
  %52 = ptrtoint ptr %line65 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 699, ptr %line65, align 8
  %file66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 3
  %53 = ptrtoint ptr %file66 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.13, ptr %file66, align 4
  %message67 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 4
  %54 = ptrtoint ptr %message67 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %message67, align 8
  %va69 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 4, i32 1
  %55 = ptrtoint ptr %va69 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %va69, align 4
  %format70 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion61, i32 0, i32 5
  %56 = ptrtoint ptr %format70 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @kunit_binary_assert_format, ptr %format70, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 1
  %57 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.17, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 2
  %58 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.18, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 3
  %59 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 4
  %60 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.19, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion61, i32 0, i32 5
  %conv71 = sext i32 %call58 to i64
  %61 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %conv71, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp73 = icmp eq i32 %call58, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion61, i1 noundef zeroext %cmp73, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion61) #3
  %call80 = call i32 @snd_soc_add_component(ptr noundef %comp, ptr noundef null, i32 noundef 0) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion85) #3
  %62 = getelementptr inbounds i8, ptr %__assertion85, i32 32
  %63 = call ptr @memset(ptr %62, i32 255, i32 24)
  %64 = ptrtoint ptr %__assertion85 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %test, ptr %__assertion85, align 8
  %type88 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 1
  %65 = ptrtoint ptr %type88 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %type88, align 4
  %line89 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 2
  %66 = ptrtoint ptr %line89 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 702, ptr %line89, align 8
  %file90 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 3
  %67 = ptrtoint ptr %file90 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.13, ptr %file90, align 4
  %message91 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 4
  %68 = ptrtoint ptr %message91 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %message91, align 8
  %va93 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %va93 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %va93, align 4
  %format94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion85, i32 0, i32 5
  %70 = ptrtoint ptr %format94 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @kunit_binary_assert_format, ptr %format94, align 8
  %operation95 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 1
  %71 = ptrtoint ptr %operation95 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.17, ptr %operation95, align 4
  %left_text96 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 2
  %72 = ptrtoint ptr %left_text96 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.18, ptr %left_text96, align 8
  %left_value97 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 3
  %73 = ptrtoint ptr %left_value97 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 0, ptr %left_value97, align 8
  %right_text99 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 4
  %74 = ptrtoint ptr %right_text99 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.19, ptr %right_text99, align 8
  %right_value100 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion85, i32 0, i32 5
  %conv101 = sext i32 %call80 to i64
  %75 = ptrtoint ptr %right_value100 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv101, ptr %right_value100, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp103 = icmp eq i32 %call80, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion85, i1 noundef zeroext %cmp103, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion85) #3
  %76 = load ptr, ptr @test_dev, align 4
  call void @snd_soc_unregister_component(ptr noundef %76) #3
  %call110 = call i32 @snd_soc_unregister_card(ptr noundef %card) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion115) #3
  %77 = getelementptr inbounds i8, ptr %__assertion115, i32 32
  %78 = call ptr @memset(ptr %77, i32 255, i32 24)
  %79 = ptrtoint ptr %__assertion115 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %test, ptr %__assertion115, align 8
  %type118 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 1
  %80 = ptrtoint ptr %type118 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %type118, align 4
  %line119 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 2
  %81 = ptrtoint ptr %line119 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 708, ptr %line119, align 8
  %file120 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 3
  %82 = ptrtoint ptr %file120 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.13, ptr %file120, align 4
  %message121 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 4
  %83 = ptrtoint ptr %message121 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %message121, align 8
  %va123 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 4, i32 1
  %84 = ptrtoint ptr %va123 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %va123, align 4
  %format124 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion115, i32 0, i32 5
  %85 = ptrtoint ptr %format124 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @kunit_binary_assert_format, ptr %format124, align 8
  %operation125 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 1
  %86 = ptrtoint ptr %operation125 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.17, ptr %operation125, align 4
  %left_text126 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 2
  %87 = ptrtoint ptr %left_text126 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.18, ptr %left_text126, align 8
  %left_value127 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 3
  %88 = ptrtoint ptr %left_value127 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 0, ptr %left_value127, align 8
  %right_text129 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 4
  %89 = ptrtoint ptr %right_text129 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.19, ptr %right_text129, align 8
  %right_value130 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion115, i32 0, i32 5
  %conv131 = sext i32 %call110 to i64
  %90 = ptrtoint ptr %right_value130 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv131, ptr %right_value130, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp133 = icmp eq i32 %call110, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion115, i1 noundef zeroext %cmp133, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion115) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_soc_tplg_test_load_pcm_tplg_reload_comp(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion12 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion45 = alloca %struct.kunit_fail_assert, align 4
  %__assertion62 = alloca %struct.kunit_binary_assert, align 8
  %__assertion86 = alloca %struct.kunit_binary_assert, align 8
  %__assertion116 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 924, i32 noundef 3520) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #3
  %0 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %2 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 724, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.13, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %4 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %7 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.14, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i.i, null
  %cmp.i = icmp ule ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #3
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %test, ptr %call.i.i, align 4
  %expect = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %expect to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %expect, align 4
  %call.i.i184 = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 1096, i32 noundef 3520) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion12) #3
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i.i, align 4
  %13 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %__assertion12, align 4
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %14 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %15 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 730, ptr %line17, align 4
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %16 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.13, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %17 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %message19, align 4
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %19 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format22, align 4
  %text23 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion12, i32 0, i32 1
  %20 = ptrtoint ptr %text23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.27, ptr %text23, align 4
  %value24 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion12, i32 0, i32 2
  %21 = ptrtoint ptr %value24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i184, ptr %value24, align 4
  %22 = load ptr, ptr %call.i.i, align 4
  %tobool.not.i185 = icmp ne ptr %call.i.i184, null
  %cmp.i186 = icmp ule ptr %call.i.i184, inttoptr (i32 -4096 to ptr)
  %lnot28 = and i1 %tobool.not.i185, %cmp.i186
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %22, ptr noundef nonnull %__assertion12, i1 noundef zeroext %lnot28, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion12) #3
  %23 = call ptr @memcpy(ptr %call.i.i184, ptr @tplg_tmpl_with_pcm, i32 1096)
  %fw = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 4
  %data33 = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %data33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i.i184, ptr %data33, align 4
  %25 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1096, ptr %fw, align 4
  %26 = load ptr, ptr @test_dev, align 4
  %card = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3
  %dev = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 5
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dev, align 4
  %28 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.15, ptr %card, align 4
  %owner = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 7
  %29 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %owner, align 4
  %dai_link = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 24
  %30 = ptrtoint ptr %dai_link to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @kunit_dai_links, ptr %dai_link, align 4
  %num_links = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 25
  %31 = ptrtoint ptr %num_links to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %num_links, align 4
  %fully_routed = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 56
  %32 = ptrtoint ptr %fully_routed to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %fully_routed, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %fully_routed, align 4
  %call42 = call i32 @snd_soc_register_card(ptr noundef %card) #3
  %33 = zext i32 %call42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call42, label %do.body44 [
    i32 0, label %entry.if.end_crit_edge
    i32 -517, label %entry.if.end_crit_edge189
  ]

entry.if.end_crit_edge189:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body44:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion45) #3
  %34 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 1
  %35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 2
  %36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 3
  %37 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4
  %38 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4, i32 1
  %39 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 5
  %40 = ptrtoint ptr %__assertion45 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %test, ptr %__assertion45, align 4
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %34, align 4
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 747, ptr %35, align 4
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.13, ptr %36, align 4
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %37, align 4
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %38, align 4
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @kunit_fail_assert_format, ptr %39, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion45, i1 noundef zeroext false, ptr noundef nonnull @.str.16) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion45) #3
  br label %if.end

if.end:                                           ; preds = %do.body44, %entry.if.end_crit_edge, %entry.if.end_crit_edge189
  %comp = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 2
  %type65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 1
  %line66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 2
  %file67 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 3
  %message68 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 4
  %va70 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 4, i32 1
  %format71 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion62, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion62, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion62, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion62, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion62, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion62, i32 0, i32 5
  %type89 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 1
  %line90 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 2
  %file91 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 3
  %message92 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 4
  %va94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 4, i32 1
  %format95 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion86, i32 0, i32 5
  %operation96 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 1
  %left_text97 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 2
  %left_value98 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 3
  %right_text100 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 4
  %right_value101 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion86, i32 0, i32 5
  %47 = getelementptr inbounds i8, ptr %__assertion62, i32 32
  %48 = getelementptr inbounds i8, ptr %__assertion86, i32 32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.0188 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %49 = load ptr, ptr @test_dev, align 4
  %call59 = call i32 @snd_soc_component_initialize(ptr noundef %comp, ptr noundef nonnull @test_component, ptr noundef %49) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion62) #3
  %50 = call ptr @memset(ptr %47, i32 255, i32 24)
  %51 = ptrtoint ptr %__assertion62 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %test, ptr %__assertion62, align 8
  %52 = ptrtoint ptr %type65 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %type65, align 4
  %53 = ptrtoint ptr %line66 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 751, ptr %line66, align 8
  %54 = ptrtoint ptr %file67 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.13, ptr %file67, align 4
  %55 = ptrtoint ptr %message68 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %message68, align 8
  %56 = ptrtoint ptr %va70 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %va70, align 4
  %57 = ptrtoint ptr %format71 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @kunit_binary_assert_format, ptr %format71, align 8
  %58 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.17, ptr %operation, align 4
  %59 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.18, ptr %left_text, align 8
  %60 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %left_value, align 8
  %61 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.19, ptr %right_text, align 8
  %conv72 = sext i32 %call59 to i64
  %62 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv72, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp74 = icmp eq i32 %call59, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion62, i1 noundef zeroext %cmp74, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion62) #3
  %call81 = call i32 @snd_soc_add_component(ptr noundef %comp, ptr noundef null, i32 noundef 0) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion86) #3
  %63 = call ptr @memset(ptr %48, i32 255, i32 24)
  %64 = ptrtoint ptr %__assertion86 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %test, ptr %__assertion86, align 8
  %65 = ptrtoint ptr %type89 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %type89, align 4
  %66 = ptrtoint ptr %line90 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 754, ptr %line90, align 8
  %67 = ptrtoint ptr %file91 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @.str.13, ptr %file91, align 4
  %68 = ptrtoint ptr %message92 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %message92, align 8
  %69 = ptrtoint ptr %va94 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %va94, align 4
  %70 = ptrtoint ptr %format95 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @kunit_binary_assert_format, ptr %format95, align 8
  %71 = ptrtoint ptr %operation96 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.17, ptr %operation96, align 4
  %72 = ptrtoint ptr %left_text97 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.18, ptr %left_text97, align 8
  %73 = ptrtoint ptr %left_value98 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 0, ptr %left_value98, align 8
  %74 = ptrtoint ptr %right_text100 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.19, ptr %right_text100, align 8
  %conv102 = sext i32 %call81 to i64
  %75 = ptrtoint ptr %right_value101 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv102, ptr %right_value101, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp104 = icmp eq i32 %call81, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion86, i1 noundef zeroext %cmp104, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion86) #3
  %76 = load ptr, ptr @test_dev, align 4
  call void @snd_soc_unregister_component(ptr noundef %76) #3
  %inc = add nuw nsw i32 %i.0188, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %call111 = call i32 @snd_soc_unregister_card(ptr noundef %card) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion116) #3
  %77 = getelementptr inbounds i8, ptr %__assertion116, i32 32
  %78 = call ptr @memset(ptr %77, i32 255, i32 24)
  %79 = ptrtoint ptr %__assertion116 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %test, ptr %__assertion116, align 8
  %type119 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 1
  %80 = ptrtoint ptr %type119 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %type119, align 4
  %line120 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 2
  %81 = ptrtoint ptr %line120 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 761, ptr %line120, align 8
  %file121 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 3
  %82 = ptrtoint ptr %file121 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.13, ptr %file121, align 4
  %message122 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 4
  %83 = ptrtoint ptr %message122 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %message122, align 8
  %va124 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 4, i32 1
  %84 = ptrtoint ptr %va124 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %va124, align 4
  %format125 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion116, i32 0, i32 5
  %85 = ptrtoint ptr %format125 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @kunit_binary_assert_format, ptr %format125, align 8
  %operation126 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion116, i32 0, i32 1
  %86 = ptrtoint ptr %operation126 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.17, ptr %operation126, align 4
  %left_text127 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion116, i32 0, i32 2
  %87 = ptrtoint ptr %left_text127 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.18, ptr %left_text127, align 8
  %left_value128 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion116, i32 0, i32 3
  %88 = ptrtoint ptr %left_value128 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 0, ptr %left_value128, align 8
  %right_text130 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion116, i32 0, i32 4
  %89 = ptrtoint ptr %right_text130 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.19, ptr %right_text130, align 8
  %right_value131 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion116, i32 0, i32 5
  %conv132 = sext i32 %call111 to i64
  %90 = ptrtoint ptr %right_value131 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv132, ptr %right_value131, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp134 = icmp eq i32 %call111, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion116, i1 noundef zeroext %cmp134, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion116) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_soc_tplg_test_load_pcm_tplg_reload_card(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion12 = alloca %struct.kunit_ptr_not_err_assert, align 4
  %__assertion44 = alloca %struct.kunit_binary_assert, align 8
  %__assertion67 = alloca %struct.kunit_binary_assert, align 8
  %__assertion100 = alloca %struct.kunit_fail_assert, align 4
  %__assertion119 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 924, i32 noundef 3520) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #3
  %0 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %2 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 777, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %3 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.13, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %4 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %6 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format, align 4
  %text = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 1
  %7 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.14, ptr %text, align 4
  %value = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %value, align 4
  %tobool.not.i = icmp ne ptr %call.i.i, null
  %cmp.i = icmp ule ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %lnot = and i1 %tobool.not.i, %cmp.i
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %lnot, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #3
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %test, ptr %call.i.i, align 4
  %expect = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %expect to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %expect, align 4
  %call.i.i187 = call ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef 1, i32 noundef 1096, i32 noundef 3520) #3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion12) #3
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i.i, align 4
  %13 = ptrtoint ptr %__assertion12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %__assertion12, align 4
  %type16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 1
  %14 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type16, align 4
  %line17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 2
  %15 = ptrtoint ptr %line17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 783, ptr %line17, align 4
  %file18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 3
  %16 = ptrtoint ptr %file18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.13, ptr %file18, align 4
  %message19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4
  %17 = ptrtoint ptr %message19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %message19, align 4
  %va21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %va21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %va21, align 4
  %format22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion12, i32 0, i32 5
  %19 = ptrtoint ptr %format22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @kunit_ptr_not_err_assert_format, ptr %format22, align 4
  %text23 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion12, i32 0, i32 1
  %20 = ptrtoint ptr %text23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.27, ptr %text23, align 4
  %value24 = getelementptr inbounds %struct.kunit_ptr_not_err_assert, ptr %__assertion12, i32 0, i32 2
  %21 = ptrtoint ptr %value24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i187, ptr %value24, align 4
  %22 = load ptr, ptr %call.i.i, align 4
  %tobool.not.i188 = icmp ne ptr %call.i.i187, null
  %cmp.i189 = icmp ule ptr %call.i.i187, inttoptr (i32 -4096 to ptr)
  %lnot28 = and i1 %tobool.not.i188, %cmp.i189
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %22, ptr noundef nonnull %__assertion12, i1 noundef zeroext %lnot28, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion12) #3
  %23 = call ptr @memcpy(ptr %call.i.i187, ptr @tplg_tmpl_with_pcm, i32 1096)
  %fw = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 4
  %data33 = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %data33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i.i187, ptr %data33, align 4
  %25 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1096, ptr %fw, align 4
  %26 = load ptr, ptr @test_dev, align 4
  %card = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3
  %dev = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 5
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dev, align 4
  %28 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.15, ptr %card, align 4
  %owner = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 7
  %29 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %owner, align 4
  %dai_link = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 24
  %30 = ptrtoint ptr %dai_link to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @kunit_dai_links, ptr %dai_link, align 4
  %num_links = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 25
  %31 = ptrtoint ptr %num_links to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %num_links, align 4
  %fully_routed = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 3, i32 56
  %32 = ptrtoint ptr %fully_routed to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %fully_routed, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %fully_routed, align 4
  %comp = getelementptr inbounds %struct.kunit_soc_component, ptr %call.i.i, i32 0, i32 2
  %call41 = call i32 @snd_soc_component_initialize(ptr noundef %comp, ptr noundef nonnull @test_component, ptr noundef %26) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion44) #3
  %33 = getelementptr inbounds i8, ptr %__assertion44, i32 32
  %34 = call ptr @memset(ptr %33, i32 255, i32 24)
  %35 = ptrtoint ptr %__assertion44 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %test, ptr %__assertion44, align 8
  %type47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion44, i32 0, i32 1
  %36 = ptrtoint ptr %type47 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type47, align 4
  %line48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion44, i32 0, i32 2
  %37 = ptrtoint ptr %line48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 799, ptr %line48, align 8
  %file49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion44, i32 0, i32 3
  %38 = ptrtoint ptr %file49 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.13, ptr %file49, align 4
  %message50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion44, i32 0, i32 4
  %39 = ptrtoint ptr %message50 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %message50, align 8
  %va52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion44, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %va52 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %va52, align 4
  %format53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion44, i32 0, i32 5
  %41 = ptrtoint ptr %format53 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @kunit_binary_assert_format, ptr %format53, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion44, i32 0, i32 1
  %42 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.17, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion44, i32 0, i32 2
  %43 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.18, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion44, i32 0, i32 3
  %44 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion44, i32 0, i32 4
  %45 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.19, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion44, i32 0, i32 5
  %conv54 = sext i32 %call41 to i64
  %46 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv54, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp eq i32 %call41, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion44, i1 noundef zeroext %cmp, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion44) #3
  %call62 = call i32 @snd_soc_add_component(ptr noundef %comp, ptr noundef null, i32 noundef 0) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion67) #3
  %47 = getelementptr inbounds i8, ptr %__assertion67, i32 32
  %48 = call ptr @memset(ptr %47, i32 255, i32 24)
  %49 = ptrtoint ptr %__assertion67 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %test, ptr %__assertion67, align 8
  %type70 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion67, i32 0, i32 1
  %50 = ptrtoint ptr %type70 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %type70, align 4
  %line71 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion67, i32 0, i32 2
  %51 = ptrtoint ptr %line71 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 802, ptr %line71, align 8
  %file72 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion67, i32 0, i32 3
  %52 = ptrtoint ptr %file72 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.13, ptr %file72, align 4
  %message73 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion67, i32 0, i32 4
  %53 = ptrtoint ptr %message73 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %message73, align 8
  %va75 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion67, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %va75 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %va75, align 4
  %format76 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion67, i32 0, i32 5
  %55 = ptrtoint ptr %format76 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @kunit_binary_assert_format, ptr %format76, align 8
  %operation77 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion67, i32 0, i32 1
  %56 = ptrtoint ptr %operation77 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.17, ptr %operation77, align 4
  %left_text78 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion67, i32 0, i32 2
  %57 = ptrtoint ptr %left_text78 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.18, ptr %left_text78, align 8
  %left_value79 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion67, i32 0, i32 3
  %58 = ptrtoint ptr %left_value79 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 0, ptr %left_value79, align 8
  %right_text81 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion67, i32 0, i32 4
  %59 = ptrtoint ptr %right_text81 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.19, ptr %right_text81, align 8
  %right_value82 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion67, i32 0, i32 5
  %conv83 = sext i32 %call62 to i64
  %60 = ptrtoint ptr %right_value82 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv83, ptr %right_value82, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp85 = icmp eq i32 %call62, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion67, i1 noundef zeroext %cmp85, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion67) #3
  %61 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 1
  %62 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 2
  %63 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 3
  %64 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 4
  %65 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 4, i32 1
  %66 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion100, i32 0, i32 5
  %type122 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion119, i32 0, i32 1
  %line123 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion119, i32 0, i32 2
  %file124 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion119, i32 0, i32 3
  %message125 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion119, i32 0, i32 4
  %va127 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion119, i32 0, i32 4, i32 1
  %format128 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion119, i32 0, i32 5
  %operation129 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion119, i32 0, i32 1
  %left_text130 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion119, i32 0, i32 2
  %left_value131 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion119, i32 0, i32 3
  %right_text133 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion119, i32 0, i32 4
  %right_value134 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion119, i32 0, i32 5
  %67 = getelementptr inbounds i8, ptr %__assertion119, i32 32
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.0191 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %call94 = call i32 @snd_soc_register_card(ptr noundef %card) #3
  %68 = zext i32 %call94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call94, label %do.body99 [
    i32 0, label %for.body.if.end_crit_edge
    i32 -517, label %for.body.if.end_crit_edge192
  ]

for.body.if.end_crit_edge192:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body99:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion100) #3
  %69 = ptrtoint ptr %__assertion100 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %test, ptr %__assertion100, align 4
  %70 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %61, align 4
  %71 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 807, ptr %62, align 4
  %72 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.13, ptr %63, align 4
  %73 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %64, align 4
  %74 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %65, align 4
  %75 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @kunit_fail_assert_format, ptr %66, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion100, i1 noundef zeroext false, ptr noundef nonnull @.str.16) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion100) #3
  br label %if.end

if.end:                                           ; preds = %do.body99, %for.body.if.end_crit_edge, %for.body.if.end_crit_edge192
  %call114 = call i32 @snd_soc_unregister_card(ptr noundef %card) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion119) #3
  %76 = call ptr @memset(ptr %67, i32 255, i32 24)
  %77 = ptrtoint ptr %__assertion119 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %test, ptr %__assertion119, align 8
  %78 = ptrtoint ptr %type122 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %type122, align 4
  %79 = ptrtoint ptr %line123 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 810, ptr %line123, align 8
  %80 = ptrtoint ptr %file124 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.13, ptr %file124, align 4
  %81 = ptrtoint ptr %message125 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %message125, align 8
  %82 = ptrtoint ptr %va127 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %va127, align 4
  %83 = ptrtoint ptr %format128 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @kunit_binary_assert_format, ptr %format128, align 8
  %84 = ptrtoint ptr %operation129 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @.str.17, ptr %operation129, align 4
  %85 = ptrtoint ptr %left_text130 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.18, ptr %left_text130, align 8
  %86 = ptrtoint ptr %left_value131 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 0, ptr %left_value131, align 8
  %87 = ptrtoint ptr %right_text133 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.19, ptr %right_text133, align 8
  %conv135 = sext i32 %call114 to i64
  %88 = ptrtoint ptr %right_value134 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %conv135, ptr %right_value134, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp137 = icmp eq i32 %call114, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion119, i1 noundef zeroext %cmp137, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion119) #3
  %inc = add nuw nsw i32 %i.0191, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %89 = load ptr, ptr @test_dev, align 4
  call void @snd_soc_unregister_component(ptr noundef %89) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_ptr_not_err_assert_format(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_fail_assert_format(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_unregister_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kunit_kmalloc_array(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d_probe_null_comp(ptr noundef %component) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %component, i32 -8
  %fw = getelementptr i8, ptr %component, i32 904
  %call = tail call i32 @snd_soc_tplg_component_load(ptr noundef null, ptr noundef null, ptr noundef %fw) #3
  %expect = getelementptr i8, ptr %component, i32 -4
  %0 = ptrtoint ptr %expect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %expect, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #3
  %2 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %3 = call ptr @memset(ptr %2, i32 255, i32 24)
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %6 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 233, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %9 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.13, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %10 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %12 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %13 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.17, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %14 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.25, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = sext i32 %1 to i64
  %15 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %16 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.19, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv2 = sext i32 %call to i64
  %17 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv2, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %call)
  %cmp = icmp eq i32 %1, %call
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %5, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef nonnull @.str.26) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_tplg_component_load(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d_probe(ptr noundef %component) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %component, i32 -8
  %fw = getelementptr i8, ptr %component, i32 904
  %call = tail call i32 @snd_soc_tplg_component_load(ptr noundef %component, ptr noundef null, ptr noundef %fw) #3
  %expect = getelementptr i8, ptr %component, i32 -4
  %0 = ptrtoint ptr %expect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %expect, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #3
  %2 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %3 = call ptr @memset(ptr %2, i32 255, i32 24)
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %6 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 67, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %9 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.13, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %10 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %12 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %13 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.17, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %14 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.25, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = sext i32 %1 to i64
  %15 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %16 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.19, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv2 = sext i32 %call to i64
  %17 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv2, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %call)
  %cmp = icmp eq i32 %1, %call
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %5, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef nonnull @.str.26) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @d_remove(ptr noundef %component) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %component, i32 -8
  %call = tail call i32 @snd_soc_tplg_component_remove(ptr noundef %component) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #3
  %0 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %6 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 79, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %7 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.13, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %8 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %10 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %11 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.17, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %12 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.18, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %13 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %14 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.19, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv2 = sext i32 %call to i64
  %15 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv2, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %3, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_tplg_component_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @d_probe_null_fw(ptr noundef %component) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %component, i32 -8
  %call = tail call i32 @snd_soc_tplg_component_load(ptr noundef %component, ptr noundef null, ptr noundef null) #3
  %expect = getelementptr i8, ptr %component, i32 -4
  %0 = ptrtoint ptr %expect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %expect, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #3
  %2 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %3 = call ptr @memset(ptr %2, i32 255, i32 24)
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %6 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %8 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 341, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %9 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.13, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %10 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %12 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %13 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.17, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %14 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.25, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = sext i32 %1 to i64
  %15 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %16 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.19, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv2 = sext i32 %call to i64
  %17 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv2, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %call)
  %cmp = icmp eq i32 %1, %call
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %5, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef nonnull @.str.26) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #3
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !45, !47, !49, !50, !51, !53, !55, !57, !59, !60, !61, !63, !65, !67, !68, !70, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__UNIQUE_ID_suites240, !1, !"__UNIQUE_ID_suites240", i1 false, i1 false}
!1 = !{!"../sound/soc/soc-topology-test.c", i32 841, i32 1}
!2 = !{ptr @__UNIQUE_ID_file241, !3, !"__UNIQUE_ID_file241", i1 false, i1 false}
!3 = !{!"../sound/soc/soc-topology-test.c", i32 843, i32 1}
!4 = !{ptr @__UNIQUE_ID_license242, !3, !"__UNIQUE_ID_license242", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array239, !1, !"__UNIQUE_ID_array239", i1 false, i1 false}
!6 = !{ptr @snd_soc_tplg_test_suite, !7, !"snd_soc_tplg_test_suite", i1 false, i1 false}
!7 = !{!"../sound/soc/soc-topology-test.c", i32 834, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/soc-topology-test.c", i32 30, i32 13}
!10 = !{ptr @test_dev, !11, !"test_dev", i1 false, i1 false}
!11 = !{!"../sound/soc/soc-topology-test.c", i32 22, i32 23}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/soc-topology-test.c", i32 25, i32 10}
!14 = !{ptr @test_drv, !15, !"test_drv", i1 false, i1 false}
!15 = !{!"../sound/soc/soc-topology-test.c", i32 24, i32 29}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/soc-topology-test.c", i32 820, i32 2}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/soc-topology-test.c", i32 821, i32 2}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/soc-topology-test.c", i32 822, i32 2}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/soc-topology-test.c", i32 823, i32 2}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/soc-topology-test.c", i32 824, i32 2}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/soc-topology-test.c", i32 825, i32 2}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/soc-topology-test.c", i32 826, i32 2}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/soc-topology-test.c", i32 827, i32 2}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/soc-topology-test.c", i32 828, i32 2}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/soc-topology-test.c", i32 829, i32 2}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/soc-topology-test.c", i32 830, i32 2}
!38 = !{ptr @snd_soc_tplg_test_cases, !39, !"snd_soc_tplg_test_cases", i1 false, i1 false}
!39 = !{!"../sound/soc/soc-topology-test.c", i32 819, i32 26}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/soc-topology-test.c", i32 251, i32 2}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/soc-topology-test.c", i32 256, i32 26}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/soc-topology-test.c", i32 265, i32 3}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/soc-topology-test.c", i32 268, i32 2}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/soc-topology-test.c", i32 91, i32 11}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/soc-topology-test.c", i32 93, i32 18}
!55 = !{ptr @kunit_dai_links, !56, !"kunit_dai_links", i1 false, i1 false}
!56 = !{!"../sound/soc/soc-topology-test.c", i32 89, i32 32}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/soc-topology-test.c", i32 85, i32 1}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @dummy, !58, !"dummy", i1 false, i1 false}
!61 = !{ptr @platform, !62, !"platform", i1 false, i1 false}
!62 = !{!"../sound/soc/soc-topology-test.c", i32 87, i32 1}
!63 = !{ptr @test_component_null_comp, !64, !"test_component_null_comp", i1 false, i1 false}
!64 = !{!"../sound/soc/soc-topology-test.c", i32 238, i32 46}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/soc-topology-test.c", i32 232, i32 2}
!67 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @test_component, !69, !"test_component", i1 false, i1 false}
!69 = !{!"../sound/soc/soc-topology-test.c", i32 103, i32 46}
!70 = !{ptr @test_component_null_fw, !71, !"test_component_null_fw", i1 false, i1 false}
!71 = !{!"../sound/soc/soc-topology-test.c", i32 346, i32 46}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/soc-topology-test.c", i32 405, i32 2}
!74 = !{ptr @tplg_tmpl_empty, !75, !"tplg_tmpl_empty", i1 false, i1 false}
!75 = !{!"../sound/soc/soc-topology-test.c", i32 122, i32 29}
!76 = !{ptr @tplg_tmpl_with_pcm, !77, !"tplg_tmpl_with_pcm", i1 false, i1 false}
!77 = !{!"../sound/soc/soc-topology-test.c", i32 150, i32 29}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
