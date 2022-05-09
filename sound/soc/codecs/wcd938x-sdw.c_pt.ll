; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wcd938x-sdw.c_pt.bc'
source_filename = "../sound/soc/codecs/wcd938x-sdw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wcd938x_sdw_device_get\22, \22a\22\09"
module asm "\09.weak\09__crc_wcd938x_sdw_device_get\09\09\09\09"
module asm "\09.long\09__crc_wcd938x_sdw_device_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wcd938x_sdw_device_get:\09\09\09\09\09"
module asm "\09.asciz \09\22wcd938x_sdw_device_get\22\09\09\09\09\09"
module asm "__kstrtabns_wcd938x_sdw_device_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wcd938x_swr_get_current_bank\22, \22a\22\09"
module asm "\09.weak\09__crc_wcd938x_swr_get_current_bank\09\09\09\09"
module asm "\09.long\09__crc_wcd938x_swr_get_current_bank\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wcd938x_swr_get_current_bank:\09\09\09\09\09"
module asm "\09.asciz \09\22wcd938x_swr_get_current_bank\22\09\09\09\09\09"
module asm "__kstrtabns_wcd938x_swr_get_current_bank:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wcd938x_sdw_hw_params\22, \22a\22\09"
module asm "\09.weak\09__crc_wcd938x_sdw_hw_params\09\09\09\09"
module asm "\09.long\09__crc_wcd938x_sdw_hw_params\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wcd938x_sdw_hw_params:\09\09\09\09\09"
module asm "\09.asciz \09\22wcd938x_sdw_hw_params\22\09\09\09\09\09"
module asm "__kstrtabns_wcd938x_sdw_hw_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wcd938x_sdw_free\22, \22a\22\09"
module asm "\09.weak\09__crc_wcd938x_sdw_free\09\09\09\09"
module asm "\09.long\09__crc_wcd938x_sdw_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wcd938x_sdw_free:\09\09\09\09\09"
module asm "\09.asciz \09\22wcd938x_sdw_free\22\09\09\09\09\09"
module asm "__kstrtabns_wcd938x_sdw_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wcd938x_sdw_set_sdw_stream\22, \22a\22\09"
module asm "\09.weak\09__crc_wcd938x_sdw_set_sdw_stream\09\09\09\09"
module asm "\09.long\09__crc_wcd938x_sdw_set_sdw_stream\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wcd938x_sdw_set_sdw_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22wcd938x_sdw_set_sdw_stream\22\09\09\09\09\09"
module asm "__kstrtabns_wcd938x_sdw_set_sdw_stream:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sdw_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdw_device_id = type { i16, i16, i8, i8, i32 }
%struct.sdw_slave_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sdw_dpn_prop = type { i32, i32, i32, i32, ptr, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i8, i8, i32, ptr }
%struct.wcd938x_sdw_ch_info = type { i32, i32 }
%struct.component_ops = type { ptr, ptr }
%struct.sdw_port_config = type { i32, i32 }
%struct.wcd938x_sdw_priv = type { ptr, %struct.sdw_stream_config, ptr, [5 x %struct.sdw_port_config], ptr, [15 x i8], i32, i32, i8, ptr, ptr }
%struct.sdw_stream_config = type { i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.sdw_slave = type { %struct.sdw_slave_id, %struct.device, i32, ptr, ptr, %struct.sdw_slave_prop, ptr, %struct.list_head, [15 x %struct.completion], [15 x i32], i16, i16, i8, %struct.completion, %struct.completion, %struct.completion, i32, i8, i8 }
%struct.sdw_slave_id = type { i16, i16, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sdw_slave_prop = type { i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, i8, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.sdw_bus_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@sdw_bus_type = external dso_local global %struct.bus_type, align 4
@__kstrtab_wcd938x_sdw_device_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_wcd938x_sdw_device_get = external dso_local constant [0 x i8], align 1
@__ksymtab_wcd938x_sdw_device_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wcd938x_sdw_device_get to i32), ptr @__kstrtab_wcd938x_sdw_device_get, ptr @__kstrtabns_wcd938x_sdw_device_get }, section "___ksymtab_gpl+wcd938x_sdw_device_get", align 4
@__kstrtab_wcd938x_swr_get_current_bank = external dso_local constant [0 x i8], align 1
@__kstrtabns_wcd938x_swr_get_current_bank = external dso_local constant [0 x i8], align 1
@__ksymtab_wcd938x_swr_get_current_bank = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wcd938x_swr_get_current_bank to i32), ptr @__kstrtab_wcd938x_swr_get_current_bank, ptr @__kstrtabns_wcd938x_swr_get_current_bank }, section "___ksymtab_gpl+wcd938x_swr_get_current_bank", align 4
@__kstrtab_wcd938x_sdw_hw_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_wcd938x_sdw_hw_params = external dso_local constant [0 x i8], align 1
@__ksymtab_wcd938x_sdw_hw_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wcd938x_sdw_hw_params to i32), ptr @__kstrtab_wcd938x_sdw_hw_params, ptr @__kstrtabns_wcd938x_sdw_hw_params }, section "___ksymtab_gpl+wcd938x_sdw_hw_params", align 4
@__kstrtab_wcd938x_sdw_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_wcd938x_sdw_free = external dso_local constant [0 x i8], align 1
@__ksymtab_wcd938x_sdw_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wcd938x_sdw_free to i32), ptr @__kstrtab_wcd938x_sdw_free, ptr @__kstrtabns_wcd938x_sdw_free }, section "___ksymtab_gpl+wcd938x_sdw_free", align 4
@__kstrtab_wcd938x_sdw_set_sdw_stream = external dso_local constant [0 x i8], align 1
@__kstrtabns_wcd938x_sdw_set_sdw_stream = external dso_local constant [0 x i8], align 1
@__ksymtab_wcd938x_sdw_set_sdw_stream = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wcd938x_sdw_set_sdw_stream to i32), ptr @__kstrtab_wcd938x_sdw_set_sdw_stream, ptr @__kstrtabns_wcd938x_sdw_set_sdw_stream }, section "___ksymtab_gpl+wcd938x_sdw_set_sdw_stream", align 4
@__initcall__kmod_snd_soc_wcd938x_sdw__239_317_wcd9380_codec_driver_init6 = internal global ptr @wcd9380_codec_driver_init, section ".initcall6.init", align 4
@wcd9380_codec_driver = internal global { %struct.sdw_driver, [60 x i8] } { %struct.sdw_driver { ptr null, ptr @wcd9380_probe, ptr null, ptr null, ptr @wcd9380_slave_id, ptr @wcd9380_slave_ops, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wcd938x_sdw_pm_ops, ptr null, ptr null } }, [60 x i8] zeroinitializer }, align 32
@__exitcall_wcd9380_codec_driver_exit = internal global ptr @wcd9380_codec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description240 = internal constant [57 x i8] c"snd_soc_wcd938x_sdw.description=WCD938X SDW codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [62 x i8] c"snd_soc_wcd938x_sdw.file=sound/soc/codecs/snd-soc-wcd938x-sdw\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [32 x i8] c"snd_soc_wcd938x_sdw.license=GPL\00", section ".modinfo", align 1
@wcd9380_slave_id = internal constant { [2 x %struct.sdw_device_id], [40 x i8] } { [2 x %struct.sdw_device_id] [%struct.sdw_device_id { i16 535, i16 269, i8 0, i8 0, i32 0 }, %struct.sdw_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@wcd9380_slave_ops = internal global { %struct.sdw_slave_ops, [40 x i8] } { %struct.sdw_slave_ops { ptr null, ptr @wcd9380_interrupt_callback, ptr @wcd9380_update_status, ptr @wcd9380_bus_config, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wcd9380-codec\00", [18 x i8] zeroinitializer }, align 32
@wcd938x_sdw_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wcd938x_sdw_runtime_suspend, ptr @wcd938x_sdw_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,tx-port-mapping\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,rx-port-mapping\00", [43 x i8] zeroinitializer }, align 32
@wcd9380_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 243, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Static Port mapping not specified\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wcd9380_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/soc/codecs/wcd938x-sdw.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wcd9380_probe._entry_ptr = internal global ptr @wcd9380_probe._entry, section ".printk_index", align 4
@wcd938x_dpn_prop = internal global { [5 x %struct.sdw_dpn_prop], [124 x i8] } { [5 x %struct.sdw_dpn_prop] [%struct.sdw_dpn_prop { i32 1, i32 0, i32 0, i32 0, ptr null, i32 1, i32 0, i8 1, i32 0, i32 0, i32 8, i32 1, i32 0, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null }, %struct.sdw_dpn_prop { i32 2, i32 0, i32 0, i32 0, ptr null, i32 1, i32 0, i8 1, i32 0, i32 0, i32 4, i32 1, i32 0, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null }, %struct.sdw_dpn_prop { i32 3, i32 0, i32 0, i32 0, ptr null, i32 1, i32 0, i8 1, i32 0, i32 0, i32 4, i32 1, i32 0, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null }, %struct.sdw_dpn_prop { i32 4, i32 0, i32 0, i32 0, ptr null, i32 1, i32 0, i8 1, i32 0, i32 0, i32 4, i32 1, i32 0, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null }, %struct.sdw_dpn_prop { i32 5, i32 0, i32 0, i32 0, ptr null, i32 1, i32 0, i8 1, i32 0, i32 0, i32 4, i32 1, i32 0, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null }], [124 x i8] zeroinitializer }, align 32
@wcd938x_sdw_tx_ch_info = internal global { [13 x %struct.wcd938x_sdw_ch_info], [56 x i8] } { [13 x %struct.wcd938x_sdw_ch_info] [%struct.wcd938x_sdw_ch_info { i32 1, i32 1 }, %struct.wcd938x_sdw_ch_info { i32 1, i32 2 }, %struct.wcd938x_sdw_ch_info { i32 2, i32 1 }, %struct.wcd938x_sdw_ch_info { i32 2, i32 2 }, %struct.wcd938x_sdw_ch_info { i32 3, i32 1 }, %struct.wcd938x_sdw_ch_info { i32 3, i32 2 }, %struct.wcd938x_sdw_ch_info { i32 3, i32 4 }, %struct.wcd938x_sdw_ch_info { i32 3, i32 4 }, %struct.wcd938x_sdw_ch_info { i32 3, i32 8 }, %struct.wcd938x_sdw_ch_info { i32 4, i32 1 }, %struct.wcd938x_sdw_ch_info { i32 4, i32 2 }, %struct.wcd938x_sdw_ch_info { i32 4, i32 4 }, %struct.wcd938x_sdw_ch_info { i32 4, i32 8 }], [56 x i8] zeroinitializer }, align 32
@wcd938x_sdw_rx_ch_info = internal global { [8 x %struct.wcd938x_sdw_ch_info], [32 x i8] } { [8 x %struct.wcd938x_sdw_ch_info] [%struct.wcd938x_sdw_ch_info { i32 1, i32 1 }, %struct.wcd938x_sdw_ch_info { i32 1, i32 2 }, %struct.wcd938x_sdw_ch_info { i32 2, i32 1 }, %struct.wcd938x_sdw_ch_info { i32 3, i32 1 }, %struct.wcd938x_sdw_ch_info { i32 3, i32 2 }, %struct.wcd938x_sdw_ch_info { i32 4, i32 1 }, %struct.wcd938x_sdw_ch_info { i32 5, i32 2 }, %struct.wcd938x_sdw_ch_info { i32 5, i32 1 }], [32 x i8] zeroinitializer }, align 32
@wcd938x_sdw_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @wcd938x_sdw_component_bind, ptr @wcd938x_sdw_component_unbind }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [21 x i8] c"wcd9380_codec_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 308, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"wcd9380_slave_id\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 272, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"wcd9380_slave_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 194, i32 29 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 313, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"wcd938x_sdw_pm_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 303, i32 32 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 231, i32 42 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 237, i32 50 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 243, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"wcd938x_dpn_prop\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 51, i32 28 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"wcd938x_sdw_tx_ch_info\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 35, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [23 x i8] c"wcd938x_sdw_rx_ch_info\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 24, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant [26 x i8] c"wcd938x_sdw_component_ops\00", align 1
@___asan_gen_.57 = private constant [34 x i8] c"../sound/soc/codecs/wcd938x-sdw.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 211, i32 35 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_wcd9380_codec_driver_exit, ptr @__initcall__kmod_snd_soc_wcd938x_sdw__239_317_wcd9380_codec_driver_init6, ptr @__ksymtab_wcd938x_sdw_device_get, ptr @__ksymtab_wcd938x_sdw_free, ptr @__ksymtab_wcd938x_sdw_hw_params, ptr @__ksymtab_wcd938x_sdw_set_sdw_stream, ptr @__ksymtab_wcd938x_swr_get_current_bank, ptr @wcd9380_codec_driver_exit, ptr @wcd9380_probe._entry, ptr @wcd9380_probe._entry_ptr, ptr @wcd9380_codec_driver, ptr @wcd9380_slave_id, ptr @wcd9380_slave_ops, ptr @.str, ptr @wcd938x_sdw_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @wcd938x_dpn_prop, ptr @wcd938x_sdw_tx_ch_info, ptr @wcd938x_sdw_rx_ch_info, ptr @wcd938x_sdw_component_ops], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd9380_codec_driver to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd9380_slave_id to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd9380_slave_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_sdw_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd9380_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_dpn_prop to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_sdw_tx_ch_info to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_sdw_rx_ch_info to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_sdw_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wcd938x_sdw_device_get(ptr noundef %np) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @bus_find_device(ptr noundef nonnull @sdw_bus_type, ptr noundef null, ptr noundef %np, ptr noundef nonnull @device_match_of_node) #7
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcd938x_swr_get_current_bank(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdw_read(ptr noundef %sdev, i32 noundef 68) #7
  %and = lshr i32 %call, 6
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcd938x_sdw_hw_params(ptr noundef %wcd, ptr nocapture readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture readnone %dai) #0 align 64 {
entry:
  %port_config = alloca [5 x %struct.sdw_port_config], align 4
  %ch_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %port_config) #7
  %0 = call ptr @memset(ptr %port_config, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ch_mask) #7
  %ch_count = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %wcd, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %ch_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %ch_count, align 4
  %active_ports = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %wcd, i32 0, i32 6
  %2 = ptrtoint ptr %active_ports to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %active_ports, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc15.for.body_crit_edge, %entry
  %i.054 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wcd938x_sdw_priv, ptr %wcd, i32 0, i32 3, i32 %i.054
  %ch_mask2 = getelementptr %struct.wcd938x_sdw_priv, ptr %wcd, i32 0, i32 3, i32 %i.054, i32 1
  %3 = ptrtoint ptr %ch_mask2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ch_mask2, align 4
  %5 = ptrtoint ptr %ch_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ch_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.body.for.inc15_crit_edge, label %if.end

for.body.for.inc15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc15

if.end:                                           ; preds = %for.body
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %ch_mask, i32 noundef 4, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp452 = icmp slt i32 %call, 4
  br i1 %cmp452, label %if.end.for.body5_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body5_crit_edge:                       ; preds = %if.end
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %if.end.for.body5_crit_edge
  %j.053 = phi i32 [ %call8, %for.body5.for.body5_crit_edge ], [ %call, %if.end.for.body5_crit_edge ]
  %6 = ptrtoint ptr %ch_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ch_count, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %ch_count, align 4
  %add = add nsw i32 %j.053, 1
  %call8 = call i32 @_find_next_bit_be(ptr noundef nonnull %ch_mask, i32 noundef 4, i32 noundef %add) #7
  %cmp4 = icmp slt i32 %call8, 4
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.end_crit_edge

for.body5.for.end_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5

for.end:                                          ; preds = %for.body5.for.end_crit_edge, %if.end.for.end_crit_edge
  %8 = ptrtoint ptr %active_ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %active_ports, align 4
  %arrayidx10 = getelementptr [5 x %struct.sdw_port_config], ptr %port_config, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %arrayidx10, align 4
  %inc14 = add i32 %9, 1
  store i32 %inc14, ptr %active_ports, align 4
  br label %for.inc15

for.inc15:                                        ; preds = %for.end, %for.body.for.inc15_crit_edge
  %inc16 = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc16, 5
  br i1 %exitcond.not, label %for.end17, label %for.inc15.for.body_crit_edge

for.inc15.for.body_crit_edge:                     ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end17:                                        ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #9
  %sconfig = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %wcd, i32 0, i32 1
  %bps = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %wcd, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %bps to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %bps, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %16 = ptrtoint ptr %sconfig to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %sconfig, align 4
  %is_tx = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %wcd, i32 0, i32 8
  %17 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_tx, align 4, !range !57
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %wcd, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %20, align 4
  %type = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %wcd, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %type, align 4
  %23 = ptrtoint ptr %wcd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wcd, align 4
  %25 = ptrtoint ptr %active_ports to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %active_ports, align 4
  %sruntime = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %wcd, i32 0, i32 2
  %27 = ptrtoint ptr %sruntime to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sruntime, align 4
  %call31 = call i32 @sdw_stream_add_slave(ptr noundef %24, ptr noundef %sconfig, ptr noundef nonnull %port_config, i32 noundef %26, ptr noundef %28) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ch_mask) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %port_config) #7
  ret i32 %call31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_stream_add_slave(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcd938x_sdw_free(ptr nocapture noundef readonly %wcd, ptr nocapture readnone %substream, ptr nocapture readnone %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wcd, align 4
  %sruntime = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %wcd, i32 0, i32 2
  %2 = ptrtoint ptr %sruntime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sruntime, align 4
  %call = tail call i32 @sdw_stream_remove_slave(ptr noundef %1, ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_stream_remove_slave(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @wcd938x_sdw_set_sdw_stream(ptr nocapture noundef writeonly %wcd, ptr nocapture readnone %dai, ptr noundef %stream, i32 %direction) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sruntime = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %wcd, i32 0, i32 2
  %0 = ptrtoint ptr %sruntime to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %stream, ptr %sruntime, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd9380_codec_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__sdw_register_driver(ptr noundef nonnull @wcd9380_codec_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wcd9380_codec_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sdw_unregister_driver(ptr noundef nonnull @wcd9380_codec_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdw_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_of_node(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sdw_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd9380_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.sdw_slave, ptr %pdev, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 108, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.sdw_slave, ptr %pdev, i32 0, i32 1, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i56 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i56, null
  br i1 %tobool.i.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %is_tx = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %is_tx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %is_tx, align 4
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %arrayidx = getelementptr %struct.sdw_slave, ptr %pdev, i32 0, i32 9, i32 1
  %call.i57 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef %arrayidx, i32 noundef 4, i32 noundef 0) #7
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %arrayidx8 = getelementptr %struct.sdw_slave, ptr %pdev, i32 0, i32 9, i32 1
  %call.i58 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef %arrayidx8, i32 noundef 5, i32 noundef 0) #7
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then3
  %call.i58.sink = phi i32 [ %call.i58, %if.else ], [ %call.i57, %if.then3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.sink)
  %cmp = icmp slt i32 %call.i58.sink, 0
  br i1 %cmp, label %do.end, label %if.end10.if.end12_crit_edge

if.end10.if.end12_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.3) #10
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.end10.if.end12_crit_edge
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.sdw_slave, ptr %pdev, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i, align 4
  %scp_int1_mask = getelementptr inbounds %struct.sdw_slave, ptr %pdev, i32 0, i32 5, i32 19
  %9 = ptrtoint ptr %scp_int1_mask to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 7, ptr %scp_int1_mask, align 4
  %lane_control_support = getelementptr inbounds %struct.sdw_slave, ptr %pdev, i32 0, i32 5, i32 12
  %10 = ptrtoint ptr %lane_control_support to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %lane_control_support, align 4
  %is_tx14 = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %call.i, i32 0, i32 8
  %11 = ptrtoint ptr %is_tx14 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_tx14, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool15.not = icmp eq i8 %12, 0
  br i1 %tobool15.not, label %if.else20, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %source_ports = getelementptr inbounds %struct.sdw_slave, ptr %pdev, i32 0, i32 5, i32 14
  %13 = ptrtoint ptr %source_ports to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 63, ptr %source_ports, align 4
  %src_dpn_prop = getelementptr inbounds %struct.sdw_slave, ptr %pdev, i32 0, i32 5, i32 17
  %14 = ptrtoint ptr %src_dpn_prop to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @wcd938x_dpn_prop, ptr %src_dpn_prop, align 4
  %wake_capable = getelementptr inbounds %struct.sdw_slave, ptr %pdev, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %wake_capable to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %wake_capable, align 4
  br label %if.end24

if.else20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %sink_ports = getelementptr inbounds %struct.sdw_slave, ptr %pdev, i32 0, i32 5, i32 15
  %16 = ptrtoint ptr %sink_ports to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 63, ptr %sink_ports, align 4
  %sink_dpn_prop = getelementptr inbounds %struct.sdw_slave, ptr %pdev, i32 0, i32 5, i32 18
  %17 = ptrtoint ptr %sink_dpn_prop to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @wcd938x_dpn_prop, ptr %sink_dpn_prop, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else20, %if.then16
  %wcd938x_sdw_tx_ch_info.sink = phi ptr [ @wcd938x_sdw_rx_ch_info, %if.else20 ], [ @wcd938x_sdw_tx_ch_info, %if.then16 ]
  %18 = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %wcd938x_sdw_tx_ch_info.sink, ptr %18, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 3000) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #7
  %call.i59 = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.sdw_slave, ptr %pdev, i32 0, i32 1, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i59, ptr %last_busy.i, align 8
  %call.i60 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call26 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @wcd938x_sdw_component_ops) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.end24 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wcd938x_sdw_component_bind(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wcd938x_sdw_component_unbind(ptr nocapture noundef %dev, ptr nocapture noundef %master, ptr nocapture noundef %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd9380_interrupt_callback(ptr noundef %slave, ptr nocapture noundef readnone %status) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %sts1 = alloca i32, align 4
  %sts2 = alloca i32, align 4
  %sts3 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %driver_data.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %slave_irq1 = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %slave_irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave_irq1, align 4
  %call3 = tail call ptr @dev_get_regmap(ptr noundef %dev, ptr noundef null) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sts1) #7
  %4 = ptrtoint ptr %sts1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %sts1, align 4, !annotation !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sts2) #7
  %5 = ptrtoint ptr %sts2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %sts2, align 4, !annotation !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sts3) #7
  %6 = ptrtoint ptr %sts3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %sts3, align 4, !annotation !58
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %irq.i, align 4, !annotation !58
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %irq.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body.irq_find_mapping.exit_crit_edge, label %if.then.i

do.body.irq_find_mapping.exit_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %do.body.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.then.i ], [ 0, %do.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @handle_nested_irq(i32 noundef %retval.0.i) #7
  %call5 = call i32 @regmap_read(ptr noundef %call3, i32 noundef 13422, ptr noundef nonnull %sts1) #7
  %call6 = call i32 @regmap_read(ptr noundef %call3, i32 noundef 13423, ptr noundef nonnull %sts2) #7
  %call7 = call i32 @regmap_read(ptr noundef %call3, i32 noundef 13424, ptr noundef nonnull %sts3) #7
  %10 = ptrtoint ptr %sts1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sts1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %lor.lhs.false, label %irq_find_mapping.exit.do.body.backedge_crit_edge

irq_find_mapping.exit.do.body.backedge_crit_edge: ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.backedge

lor.lhs.false:                                    ; preds = %irq_find_mapping.exit
  %12 = ptrtoint ptr %sts2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sts2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %lor.rhs, label %lor.lhs.false.do.body.backedge_crit_edge

lor.lhs.false.do.body.backedge_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.backedge

lor.rhs:                                          ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %sts3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sts3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %do.end, label %lor.rhs.do.body.backedge_crit_edge

lor.rhs.do.body.backedge_crit_edge:               ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %lor.rhs.do.body.backedge_crit_edge, %lor.lhs.false.do.body.backedge_crit_edge, %irq_find_mapping.exit.do.body.backedge_crit_edge
  br label %do.body

do.end:                                           ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts1) #7
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wcd9380_update_status(ptr nocapture noundef readnone %slave, i32 noundef %status) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd9380_bus_config(ptr noundef %slave, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %next_bank = getelementptr inbounds %struct.sdw_bus_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %next_bank to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %next_bank, align 4
  %mul = shl i32 %1, 4
  %add = add i32 %mul, 224
  %call = tail call i32 @sdw_write(ptr noundef %slave, i32 noundef %add, i8 noundef zeroext 1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_sdw_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dev_get_regmap(ptr noundef %dev, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @regcache_cache_only(ptr noundef nonnull %call, i1 noundef zeroext true) #7
  tail call void @regcache_mark_dirty(ptr noundef nonnull %call) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_sdw_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dev_get_regmap(ptr noundef %dev, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @regcache_cache_only(ptr noundef nonnull %call, i1 noundef zeroext false) #7
  %call1 = tail call i32 @regcache_sync(ptr noundef nonnull %call) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %0 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__ksymtab_wcd938x_sdw_device_get, !1, !"__ksymtab_wcd938x_sdw_device_get", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 90, i32 1}
!2 = !{ptr @__ksymtab_wcd938x_swr_get_current_bank, !3, !"__ksymtab_wcd938x_swr_get_current_bank", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 100, i32 1}
!4 = !{ptr @__ksymtab_wcd938x_sdw_hw_params, !5, !"__ksymtab_wcd938x_sdw_hw_params", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 139, i32 1}
!6 = !{ptr @__ksymtab_wcd938x_sdw_free, !7, !"__ksymtab_wcd938x_sdw_free", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 149, i32 1}
!8 = !{ptr @__ksymtab_wcd938x_sdw_set_sdw_stream, !9, !"__ksymtab_wcd938x_sdw_set_sdw_stream", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 159, i32 1}
!10 = !{ptr @__initcall__kmod_snd_soc_wcd938x_sdw__239_317_wcd9380_codec_driver_init6, !11, !"__initcall__kmod_snd_soc_wcd938x_sdw__239_317_wcd9380_codec_driver_init6", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 317, i32 1}
!12 = !{ptr @__exitcall_wcd9380_codec_driver_exit, !11, !"__exitcall_wcd9380_codec_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description240, !14, !"__UNIQUE_ID_description240", i1 false, i1 false}
!14 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 319, i32 1}
!15 = !{ptr @__UNIQUE_ID_file241, !16, !"__UNIQUE_ID_file241", i1 false, i1 false}
!16 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 320, i32 1}
!17 = !{ptr @__UNIQUE_ID_license242, !16, !"__UNIQUE_ID_license242", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 313, i32 11}
!20 = !{ptr @wcd9380_codec_driver, !21, !"wcd9380_codec_driver", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 308, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 231, i32 42}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 237, i32 50}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 243, i32 3}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @wcd9380_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @wcd9380_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @wcd938x_dpn_prop, !35, !"wcd938x_dpn_prop", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 51, i32 28}
!36 = !{ptr @wcd938x_sdw_tx_ch_info, !37, !"wcd938x_sdw_tx_ch_info", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 35, i32 35}
!38 = !{ptr @wcd938x_sdw_rx_ch_info, !39, !"wcd938x_sdw_rx_ch_info", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 24, i32 35}
!40 = !{ptr @wcd938x_sdw_component_ops, !41, !"wcd938x_sdw_component_ops", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 211, i32 35}
!42 = !{ptr @wcd9380_slave_id, !43, !"wcd9380_slave_id", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 272, i32 35}
!44 = !{ptr @wcd9380_slave_ops, !45, !"wcd9380_slave_ops", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 194, i32 29}
!46 = !{ptr @wcd938x_sdw_pm_ops, !47, !"wcd938x_sdw_pm_ops", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/wcd938x-sdw.c", i32 303, i32 32}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i8 0, i8 2}
!58 = !{!"auto-init"}
