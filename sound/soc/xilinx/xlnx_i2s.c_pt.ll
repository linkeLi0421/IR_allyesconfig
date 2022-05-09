; ModuleID = '/llk/IR_all_yes/sound/soc/xilinx/xlnx_i2s.c_pt.bc'
source_filename = "../sound/soc/xilinx/xlnx_i2s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_xlnx_i2s__238_178_xlnx_i2s_aud_driver_init6 = internal global ptr @xlnx_i2s_aud_driver_init, section ".initcall6.init", align 4
@xlnx_i2s_aud_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xlnx_i2s_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xlnx_i2s_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xlnx_i2s_aud_driver_exit = internal global ptr @xlnx_i2s_aud_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file239 = internal constant [56 x i8] c"snd_soc_xlnx_i2s.file=sound/soc/xilinx/snd-soc-xlnx-i2s\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [32 x i8] c"snd_soc_xlnx_i2s.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [63 x i8] c"snd_soc_xlnx_i2s.author=Praveen Vuppala  <praveenv@xilinx.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [75 x i8] c"snd_soc_xlnx_i2s.author=Maruthi Srinivas Bayyavarapu <maruthis@xilinx.com>\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xlnx_i2s\00", [23 x i8] zeroinitializer }, align 32
@xlnx_i2s_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,i2s-transmitter-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,i2s-receiver-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xlnx,num-channels\00", [46 x i8] zeroinitializer }, align 32
@xlnx_i2s_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 115, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot get supported channels\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xlnx_i2s_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/xilinx/xlnx_i2s.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xlnx_i2s_probe._entry_ptr = internal global ptr @xlnx_i2s_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xlnx,dwidth\00", [20 x i8] zeroinitializer }, align 32
@xlnx_i2s_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 122, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get data width\0A\00", [41 x i8] zeroinitializer }, align 32
@xlnx_i2s_probe._entry_ptr.10 = internal global ptr @xlnx_i2s_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xlnx,i2s-transmitter-1.0\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xlnx_i2s_playback\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@xlnx_i2s_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr @xlnx_i2s_set_sclkout_div, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xlnx_i2s_hw_params, ptr null, ptr null, ptr @xlnx_i2s_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xlnx,i2s-receiver-1.0\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xlnx_i2s_capture\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@xlnx_i2s_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@xlnx_i2s_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 161, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"i2s component registration failed\0A\00", [61 x i8] zeroinitializer }, align 32
@xlnx_i2s_probe._entry_ptr.19 = internal global ptr @xlnx_i2s_probe._entry.17, section ".printk_index", align 4
@xlnx_i2s_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 165, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s DAI registered\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xlnx_i2s_probe._entry_ptr.23 = internal global ptr @xlnx_i2s_probe._entry.20, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 24]
@__sancov_gen_cov_switch_values.24 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"xlnx_i2s_aud_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 170, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 172, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"xlnx_i2s_of_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 89, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 113, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 115, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 120, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 122, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 136, i32 36 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 137, i32 19 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 138, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"xlnx_i2s_dai_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 79, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 144, i32 43 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 145, i32 19 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 146, i32 34 }
@___asan_gen_.85 = private unnamed_addr constant [19 x i8] c"xlnx_i2s_component\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 85, i32 46 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 161, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [31 x i8] c"../sound/soc/xilinx/xlnx_i2s.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 165, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_xlnx_i2s_aud_driver_exit, ptr @__initcall__kmod_snd_soc_xlnx_i2s__238_178_xlnx_i2s_aud_driver_init6, ptr @xlnx_i2s_aud_driver_exit, ptr @xlnx_i2s_probe._entry, ptr @xlnx_i2s_probe._entry.17, ptr @xlnx_i2s_probe._entry.20, ptr @xlnx_i2s_probe._entry.8, ptr @xlnx_i2s_probe._entry_ptr, ptr @xlnx_i2s_probe._entry_ptr.10, ptr @xlnx_i2s_probe._entry_ptr.19, ptr @xlnx_i2s_probe._entry_ptr.23, ptr @xlnx_i2s_aud_driver, ptr @.str, ptr @xlnx_i2s_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @xlnx_i2s_dai_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @xlnx_i2s_component, ptr @.str.18, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_i2s_aud_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_i2s_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_i2s_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_i2s_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_i2s_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_i2s_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_i2s_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xlnx_i2s_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xlnx_i2s_aud_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xlnx_i2s_aud_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xlnx_i2s_aud_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @xlnx_i2s_aud_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlnx_i2s_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ch = alloca i32, align 4
  %data_width = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ch) #6
  %0 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ch, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_width) #6
  %1 = ptrtoint ptr %data_width to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %data_width, align 4, !annotation !66
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 168, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull %ch, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %5 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ch, align 4
  %mul = shl i32 %6, 1
  store i32 %mul, ptr %ch, align 4
  %call.i.i102 = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef nonnull %data_width, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102)
  %cmp12 = icmp slt i32 %call.i.i102, 0
  br i1 %cmp12, label %do.end16, label %if.end17

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %7 = ptrtoint ptr %data_width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_width, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end17.cleanup_crit_edge [
    i32 16, label %if.end17.sw.epilog_crit_edge
    i32 24, label %sw.bb18
  ]

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb18:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %if.end17.sw.epilog_crit_edge
  %format.0 = phi i32 [ 64, %sw.bb18 ], [ 4, %if.end17.sw.epilog_crit_edge ]
  %call19 = call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.12, ptr %call.i, align 8
  %playback = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i, i32 0, i32 11
  %11 = ptrtoint ptr %playback to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.13, ptr %playback, align 8
  %conv = zext i32 %format.0 to i64
  %formats = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %formats, align 8
  %13 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ch, align 4
  %channels_min = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i, i32 0, i32 11, i32 5
  %15 = ptrtoint ptr %channels_min to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %channels_min, align 4
  %channels_max = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i, i32 0, i32 11, i32 6
  %16 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %channels_max, align 8
  %rates = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i, i32 0, i32 11, i32 2
  br label %if.end43

if.else:                                          ; preds = %sw.epilog
  %call26 = call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.else.cleanup_crit_edge, label %if.then28

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.15, ptr %call.i, align 8
  %capture = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i, i32 0, i32 10
  %18 = ptrtoint ptr %capture to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.16, ptr %capture, align 8
  %conv31 = zext i32 %format.0 to i64
  %formats33 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %formats33 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv31, ptr %formats33, align 8
  %20 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ch, align 4
  %channels_min35 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i, i32 0, i32 10, i32 5
  %22 = ptrtoint ptr %channels_min35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %channels_min35, align 4
  %channels_max37 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i, i32 0, i32 10, i32 6
  %23 = ptrtoint ptr %channels_max37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %channels_max37, align 8
  %rates39 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i, i32 0, i32 10, i32 2
  br label %if.end43

if.end43:                                         ; preds = %if.then28, %if.then21
  %rates39.sink = phi ptr [ %rates39, %if.then28 ], [ %rates, %if.then21 ]
  %24 = ptrtoint ptr %rates39.sink to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8190, ptr %rates39.sink, align 8
  %ops40 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i, i32 0, i32 8
  %25 = ptrtoint ptr %ops40 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @xlnx_i2s_dai_ops, ptr %ops40, align 8
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call3, ptr %driver_data.i, align 4
  %call46 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @xlnx_i2s_component, ptr noundef nonnull %call.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.end56, label %do.end51

do.end51:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  br label %cleanup

do.end56:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef %28) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %do.end51, %if.else.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end16, %do.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then5 ], [ %call.i.i, %do.end ], [ %call.i.i102, %do.end16 ], [ %call46, %do.end51 ], [ 0, %do.end56 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -19, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_width) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ch) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlnx_i2s_set_sclkout_div(ptr nocapture noundef readonly %cpu_dai, i32 noundef %div_id, i32 noundef %div) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %div, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %0)
  %1 = icmp ult i32 %0, 255
  br i1 %1, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %div)
  %add.ptr = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #6, !srcloc !68
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlnx_i2s_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %i2s_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %i2s_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not6 = icmp ult i32 %5, 2
  br i1 %cmp.not6, label %entry.while.end_crit_edge, label %while.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %div5 = lshr i32 %5, 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %chan_id.07 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %div5, %while.body.preheader ]
  %sub = shl i32 %chan_id.07, 2
  %add = add i32 %sub, 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %chan_id.07)
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #6, !srcloc !68
  %dec = add nsw i32 %chan_id.07, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlnx_i2s_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %i2s_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %i2s_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.do.body_crit_edge
    i32 6, label %entry.do.body_crit_edge7
    i32 4, label %entry.do.body_crit_edge8
    i32 0, label %entry.do.body2_crit_edge
    i32 5, label %entry.do.body2_crit_edge9
    i32 3, label %entry.do.body2_crit_edge10
  ]

entry.do.body2_crit_edge10:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

entry.do.body2_crit_edge9:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

entry.do.body_crit_edge8:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge7, %entry.do.body_crit_edge8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !68
  br label %cleanup

do.body2:                                         ; preds = %entry.do.body2_crit_edge, %entry.do.body2_crit_edge9, %entry.do.body2_crit_edge10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %add.ptr5 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #6, !srcloc !68
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body2 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !49, !50, !51, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_snd_soc_xlnx_i2s__238_178_xlnx_i2s_aud_driver_init6, !1, !"__initcall__kmod_snd_soc_xlnx_i2s__238_178_xlnx_i2s_aud_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 178, i32 1}
!2 = !{ptr @__exitcall_xlnx_i2s_aud_driver_exit, !1, !"__exitcall_xlnx_i2s_aud_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file239, !4, !"__UNIQUE_ID_file239", i1 false, i1 false}
!4 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 180, i32 1}
!5 = !{ptr @__UNIQUE_ID_license240, !4, !"__UNIQUE_ID_license240", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author241, !7, !"__UNIQUE_ID_author241", i1 false, i1 false}
!7 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 181, i32 1}
!8 = !{ptr @__UNIQUE_ID_author242, !9, !"__UNIQUE_ID_author242", i1 false, i1 false}
!9 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 182, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 172, i32 11}
!12 = !{ptr @xlnx_i2s_aud_driver, !13, !"xlnx_i2s_aud_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 170, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 113, i32 35}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 115, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @xlnx_i2s_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @xlnx_i2s_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 120, i32 35}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 122, i32 3}
!28 = !{ptr @xlnx_i2s_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @xlnx_i2s_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 136, i32 36}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 137, i32 19}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 138, i32 35}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 144, i32 43}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 145, i32 19}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 146, i32 34}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 161, i32 3}
!44 = !{ptr @xlnx_i2s_probe._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @xlnx_i2s_probe._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 165, i32 2}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @xlnx_i2s_probe._entry.20, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @xlnx_i2s_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @xlnx_i2s_dai_ops, !52, !"xlnx_i2s_dai_ops", i1 false, i1 false}
!52 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 79, i32 37}
!53 = !{ptr @xlnx_i2s_component, !54, !"xlnx_i2s_component", i1 false, i1 false}
!54 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 85, i32 46}
!55 = !{ptr @xlnx_i2s_of_match, !56, !"xlnx_i2s_of_match", i1 false, i1 false}
!56 = !{!"../sound/soc/xilinx/xlnx_i2s.c", i32 89, i32 34}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
!67 = !{i64 2154805849}
!68 = !{i64 687739}
!69 = !{i64 2154806238}
!70 = !{i64 2154806639}
!71 = !{i64 2154807019}
