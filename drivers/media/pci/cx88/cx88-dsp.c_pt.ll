; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx88/cx88-dsp.c_pt.bc'
source_filename = "../drivers/media/pci/cx88/cx88-dsp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cx88_dsp_detect_stereo_sap\22, \22a\22\09"
module asm "\09.weak\09__crc_cx88_dsp_detect_stereo_sap\09\09\09\09"
module asm "\09.long\09__crc_cx88_dsp_detect_stereo_sap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx88_dsp_detect_stereo_sap:\09\09\09\09\09"
module asm "\09.asciz \09\22cx88_dsp_detect_stereo_sap\22\09\09\09\09\09"
module asm "__kstrtabns_cx88_dsp_detect_stereo_sap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sram_channel = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cx88_core = type { %struct.list_head, %struct.refcount_struct, i32, [32 x i8], i32, i32, i32, ptr, ptr, [3 x i32], i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.v4l2_ctrl_handler, ptr, ptr, i32, %struct.cx88_board, i32, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.IR_i2c_init_data, %struct.wm8775_platform_data, %struct.mutex, i32, ptr, ptr, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx88_board = type { ptr, i32, i32, i8, i8, i32, [8 x %struct.cx88_input], %struct.cx88_input, i32, i32, i32, i32 }
%struct.cx88_input = type { i32, i32, i32, i32, i32, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.wm8775_platform_data = type { i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__param_str_dsp_debug = internal constant [17 x i8] c"cx88xx.dsp_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dsp_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dsp_debug = internal constant %struct.kernel_param { ptr @__param_str_dsp_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dsp_debug } }, section "__param", align 4
@__UNIQUE_ID_dsp_debugtype385 = internal constant [30 x i8] c"cx88xx.parmtype=dsp_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dsp_debug386 = internal constant [54 x i8] c"cx88xx.parm=dsp_debug:enable audio dsp debug messages\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cx88_dsp_detect_stereo_sap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017cx88xx: %s: dsp:stereo/sap detection result:%s%s%s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cx88_dsp_detect_stereo_sap\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/pci/cx88/cx88-dsp.c\00", [62 x i8] zeroinitializer }, align 32
@cx88_dsp_detect_stereo_sap._entry_ptr = internal global ptr @cx88_dsp_detect_stereo_sap._entry, section ".printk_index", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" mono\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" stereo\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" dual\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_cx88_dsp_detect_stereo_sap = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx88_dsp_detect_stereo_sap = external dso_local constant [0 x i8], align 1
@__ksymtab_cx88_dsp_detect_stereo_sap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx88_dsp_detect_stereo_sap to i32), ptr @__kstrtab_cx88_dsp_detect_stereo_sap, ptr @__kstrtabns_cx88_dsp_detect_stereo_sap }, section "___ksymtab+cx88_dsp_detect_stereo_sap", align 4
@cx88_sram_channels = external dso_local local_unnamed_addr constant [0 x %struct.sram_channel], align 4
@read_rds_samples._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\017cx88xx: %s: dsp:read RDS samples: current_address=%08x (offset=%08x), sample_count=%d, aud_intstat=%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"read_rds_samples\00", [47 x i8] zeroinitializer }, align 32
@read_rds_samples._entry_ptr = internal global ptr @read_rds_samples._entry, section ".printk_index", align 4
@read_rds_samples._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017cx88xx: %s: dsp:RDS samples dump: %*ph\0A\00", [54 x i8] zeroinitializer }, align 32
@read_rds_samples._entry_ptr.11 = internal global ptr @read_rds_samples._entry.9, section ".printk_index", align 4
@detect_a2_a2m_eiaj._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014cx88xx: unsupported audio mode %d for %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"detect_a2_a2m_eiaj\00", [45 x i8] zeroinitializer }, align 32
@detect_a2_a2m_eiaj._entry_ptr = internal global ptr @detect_a2_a2m_eiaj._entry, section ".printk_index", align 4
@detect_a2_a2m_eiaj._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\017cx88xx: %s: dsp:detect a2/a2m/eiaj: carrier=%d, stereo=%d, dual=%d, noise=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@detect_a2_a2m_eiaj._entry_ptr.16 = internal global ptr @detect_a2_a2m_eiaj._entry.14, section ".printk_index", align 4
@detect_btsc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\017cx88xx: %s: dsp:detect btsc: dual_ref=%d, dual=%d, sap_ref=%d, sap=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"detect_btsc\00", [20 x i8] zeroinitializer }, align 32
@detect_btsc._entry_ptr = internal global ptr @detect_btsc._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 7, i64 11]
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"dsp_debug\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 60, i32 21 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 315, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 250, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 267, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 181, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 191, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [37 x i8] c"../drivers/media/pci/cx88/cx88-dsp.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 231, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_dsp_debug386, ptr @__UNIQUE_ID_dsp_debugtype385, ptr @__ksymtab_cx88_dsp_detect_stereo_sap, ptr @__param_dsp_debug, ptr @cx88_dsp_detect_stereo_sap._entry, ptr @cx88_dsp_detect_stereo_sap._entry_ptr, ptr @detect_a2_a2m_eiaj._entry, ptr @detect_a2_a2m_eiaj._entry.14, ptr @detect_a2_a2m_eiaj._entry_ptr, ptr @detect_a2_a2m_eiaj._entry_ptr.16, ptr @detect_btsc._entry, ptr @detect_btsc._entry_ptr, ptr @read_rds_samples._entry, ptr @read_rds_samples._entry.9, ptr @read_rds_samples._entry_ptr, ptr @read_rds_samples._entry_ptr.11, ptr @dsp_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_dsp_detect_stereo_sap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_rds_samples._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_rds_samples._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_a2_a2m_eiaj._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_a2_a2m_eiaj._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_btsc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx88_dsp_detect_stereo_sap(ptr nocapture noundef readonly %core) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 831504
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %3 = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %add.ptr5 = getelementptr i32, ptr %5, i32 819555
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %7 = and i32 %6, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %last_change = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 39
  %9 = ptrtoint ptr %last_change to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_change, align 8
  %add.neg = add i32 %8, -50
  %sub = sub i32 %add.neg, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.sram_channel], ptr @cx88_sram_channels, i32 0, i32 7, i32 5) to i32))
  %11 = load i32, ptr getelementptr inbounds ([0 x %struct.sram_channel], ptr @cx88_sram_channels, i32 0, i32 7, i32 5), align 4
  %div73.i = lshr i32 %11, 2
  %div174.i = lshr i32 %11, 4
  %mul.i = mul nuw nsw i32 %div174.i, 3
  %12 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.sram_channel], ptr @cx88_sram_channels, i32 0, i32 7, i32 6) to i32))
  %14 = load i32, ptr getelementptr inbounds ([0 x %struct.sram_channel], ptr @cx88_sram_channels, i32 0, i32 7, i32 6), align 4
  %shr.i = lshr i32 %14, 2
  %add.ptr.i = getelementptr i32, ptr %13, i32 %shr.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !52
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.sram_channel], ptr @cx88_sram_channels, i32 0, i32 7, i32 4) to i32))
  %17 = load i32, ptr getelementptr inbounds ([0 x %struct.sram_channel], ptr @cx88_sram_channels, i32 0, i32 7, i32 4), align 4
  %sub.i = sub i32 %16, %17
  %add.i = add i32 %sub.i, %div73.i
  %18 = load i32, ptr @dsp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i = icmp eq i32 %18, 0
  br i1 %cmp.not.i, label %if.end15.if.end7.i.i_crit_edge, label %do.end.i

if.end15.if.end7.i.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i

do.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lmmio, align 4
  %add.ptr10.i = getelementptr i32, ptr %20, i32 524313
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #6, !srcloc !52
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %16, i32 noundef %sub.i, i32 noundef %mul.i, i32 noundef %22) #9
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %do.end.i, %if.end15.if.end7.i.i_crit_edge
  %23 = mul nuw nsw i32 %div174.i, 6
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3264) #10
  %tobool.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.cleanup_crit_edge, label %if.end19.i

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19.i:                                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp2081.not.i = icmp ult i32 %11, 16
  br i1 %cmp2081.not.i, label %if.end19.i.do.body33.i_crit_edge, label %for.body.lr.ph.i

if.end19.i.do.body33.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33.i

for.body.lr.ph.i:                                 ; preds = %if.end19.i
  %mul21.i = and i32 %11, -4
  %umax.i = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 1) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.083.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %offset.082.i = phi i32 [ %add.i, %for.body.lr.ph.i ], [ %add32.i, %for.body.i.for.body.i_crit_edge ]
  %rem.i = urem i32 %offset.082.i, %mul21.i
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %add26.i = add i32 %rem.i, %17
  %shr27.i = lshr i32 %add26.i, 2
  %add.ptr28.i = getelementptr i32, ptr %25, i32 %shr27.i
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #6, !srcloc !52
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %conv.i = trunc i32 %27 to i16
  %arrayidx.i = getelementptr i16, ptr %call8.i.i, i32 %i.083.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i, ptr %arrayidx.i, align 2
  %add32.i = add nuw i32 %rem.i, 4
  %inc.i = add nuw nsw i32 %i.083.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.do.body33.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.do.body33.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33.i

do.body33.i:                                      ; preds = %for.body.i.do.body33.i_crit_edge, %if.end19.i.do.body33.i_crit_edge
  %29 = load i32, ptr @dsp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp34.i = icmp ugt i32 %29, 1
  br i1 %cmp34.i, label %do.end39.i, label %do.body33.i.if.end19_crit_edge

do.body33.i.if.end19_crit_edge:                   ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

do.end39.i:                                       ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #8
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef %mul.i, ptr noundef nonnull %call8.i.i) #9
  br label %if.end19

if.end19:                                         ; preds = %do.end39.i, %do.body33.i.if.end19_crit_edge
  %tvaudio = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 32
  %30 = ptrtoint ptr %tvaudio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tvaudio, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %if.end19.sw.epilog.thread_crit_edge [
    i32 2, label %sw.bb21
    i32 3, label %if.end19.sw.epilog.i_crit_edge
    i32 4, label %if.end19.sw.epilog.i_crit_edge77
    i32 11, label %sw.bb1.i
    i32 7, label %sw.bb2.i
  ]

if.end19.sw.epilog.i_crit_edge77:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end19.sw.epilog.i_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end19.sw.epilog.thread_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

sw.bb1.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb1.i, %if.end19.sw.epilog.i_crit_edge, %if.end19.sw.epilog.i_crit_edge77
  %dual_freq.0.i = phi i32 [ 83955, %sw.bb2.i ], [ 90273, %sw.bb1.i ], [ 89907, %if.end19.sw.epilog.i_crit_edge ], [ 89907, %if.end19.sw.epilog.i_crit_edge77 ]
  %stereo_freq.0.i = phi i32 [ 85231, %sw.bb2.i ], [ 80685, %sw.bb1.i ], [ 77918, %if.end19.sw.epilog.i_crit_edge ], [ 77918, %if.end19.sw.epilog.i_crit_edge77 ]
  %carrier_freq.0.i = phi i32 [ 64339, %sw.bb2.i ], [ 69288, %sw.bb1.i ], [ 68923, %if.end19.sw.epilog.i_crit_edge ], [ 68923, %if.end19.sw.epilog.i_crit_edge77 ]
  %call.i.i.i = tail call fastcc i32 @int_cos(i32 noundef %carrier_freq.0.i) #6
  %mul.i.i.i = shl i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp329.not.i.i.i = icmp ult i32 %11, 16
  %.pre.i.i.i = sext i32 %mul.i.i.i to i64
  br i1 %cmp329.not.i.i.i, label %sw.epilog.i.for.end.i.i.i_crit_edge, label %sw.epilog.i.for.body.i.i.i_crit_edge

sw.epilog.i.for.body.i.i.i_crit_edge:             ; preds = %sw.epilog.i
  br label %for.body.i.i.i

sw.epilog.i.for.end.i.i.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %sw.epilog.i.for.body.i.i.i_crit_edge
  %s_prev.0332.i.i.i = phi i32 [ %conv5.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %sw.epilog.i.for.body.i.i.i_crit_edge ]
  %s_prev2.0331.i.i.i = phi i32 [ %s_prev.0332.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %sw.epilog.i.for.body.i.i.i_crit_edge ]
  %i.0330.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %sw.epilog.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i16, ptr %call8.i.i, i32 %i.0330.i.i.i
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = sext i16 %34 to i64
  %conv2.i.i.i = sext i32 %s_prev.0332.i.i.i to i64
  %mul3.i.i.i = mul nsw i64 %conv2.i.i.i, %.pre.i.i.i
  %div.i.i.i = sdiv i64 %mul3.i.i.i, 32768
  %add.i.i.i = add nsw i64 %div.i.i.i, %conv.i.i.i
  %35 = trunc i64 %add.i.i.i to i32
  %conv5.i.i.i = sub i32 %35, %s_prev2.0331.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.0330.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %mul.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.for.end.i.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i.for.end.i.i.i_crit_edge, %sw.epilog.i.for.end.i.i.i_crit_edge
  %N.170 = phi i32 [ 0, %sw.epilog.i.for.end.i.i.i_crit_edge ], [ %mul.i, %for.body.i.i.i.for.end.i.i.i_crit_edge ]
  %s_prev2.0.lcssa.i.i.i = phi i32 [ 0, %sw.epilog.i.for.end.i.i.i_crit_edge ], [ %s_prev.0332.i.i.i, %for.body.i.i.i.for.end.i.i.i_crit_edge ]
  %s_prev.0.lcssa.i.i.i = phi i32 [ 0, %sw.epilog.i.for.end.i.i.i_crit_edge ], [ %conv5.i.i.i, %for.body.i.i.i.for.end.i.i.i_crit_edge ]
  %conv6.i.i.i = sext i32 %s_prev2.0.lcssa.i.i.i to i64
  %mul8.i.i.i = mul nsw i64 %conv6.i.i.i, %conv6.i.i.i
  %conv9.i.i.i = sext i32 %s_prev.0.lcssa.i.i.i to i64
  %mul11.i.i.i = mul nsw i64 %conv9.i.i.i, %conv9.i.i.i
  %add12.i.i.i = add nuw i64 %mul11.i.i.i, %mul8.i.i.i
  %mul15.i.i.i = mul nsw i64 %conv6.i.i.i, %.pre.i.i.i
  %mul17.i.i.i = mul i64 %mul15.i.i.i, %conv9.i.i.i
  %div18.neg.i.i.i = sdiv i64 %mul17.i.i.i, -32768
  %sub19.i.i.i = add i64 %add12.i.i.i, %div18.neg.i.i.i
  %mul20.i.i.i = mul i32 %N.170, %mul.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub19.i.i.i)
  %cmp193.i.i.i = icmp ult i64 %sub19.i.i.i, 4294967296
  br i1 %cmp193.i.i.i, label %if.then197.i.i.i, label %if.else203.i.i.i, !prof !58

if.then197.i.i.i:                                 ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv198.i.i.i = trunc i64 %sub19.i.i.i to i32
  %div201.i.i.i = udiv i32 %conv198.i.i.i, %mul20.i.i.i
  br label %freq_magnitude.exit.i

if.else203.i.i.i:                                 ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul20.i.i.i, i64 %sub19.i.i.i) #11, !srcloc !59
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %36, 1
  %extract.t327.i.i.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %freq_magnitude.exit.i

freq_magnitude.exit.i:                            ; preds = %if.else203.i.i.i, %if.then197.i.i.i
  %tmp.0.off0.i.i.i = phi i32 [ %div201.i.i.i, %if.then197.i.i.i ], [ %extract.t327.i.i.i, %if.else203.i.i.i ]
  %call1.i.i = tail call i32 @int_sqrt(i32 noundef %tmp.0.off0.i.i.i) #6
  %call.i.i163.i = tail call fastcc i32 @int_cos(i32 noundef %stereo_freq.0.i) #6
  %mul.i.i164.i = shl i32 %call.i.i163.i, 1
  %.pre.i.i166.i = sext i32 %mul.i.i164.i to i64
  br i1 %cmp329.not.i.i.i, label %freq_magnitude.exit.i.for.end.i.i193.i_crit_edge, label %freq_magnitude.exit.i.for.body.i.i179.i_crit_edge

freq_magnitude.exit.i.for.body.i.i179.i_crit_edge: ; preds = %freq_magnitude.exit.i
  br label %for.body.i.i179.i

freq_magnitude.exit.i.for.end.i.i193.i_crit_edge: ; preds = %freq_magnitude.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i193.i

for.body.i.i179.i:                                ; preds = %for.body.i.i179.i.for.body.i.i179.i_crit_edge, %freq_magnitude.exit.i.for.body.i.i179.i_crit_edge
  %s_prev.0332.i.i167.i = phi i32 [ %conv5.i.i176.i, %for.body.i.i179.i.for.body.i.i179.i_crit_edge ], [ 0, %freq_magnitude.exit.i.for.body.i.i179.i_crit_edge ]
  %s_prev2.0331.i.i168.i = phi i32 [ %s_prev.0332.i.i167.i, %for.body.i.i179.i.for.body.i.i179.i_crit_edge ], [ 0, %freq_magnitude.exit.i.for.body.i.i179.i_crit_edge ]
  %i.0330.i.i169.i = phi i32 [ %inc.i.i177.i, %for.body.i.i179.i.for.body.i.i179.i_crit_edge ], [ 0, %freq_magnitude.exit.i.for.body.i.i179.i_crit_edge ]
  %arrayidx.i.i170.i = getelementptr i16, ptr %call8.i.i, i32 %i.0330.i.i169.i
  %37 = ptrtoint ptr %arrayidx.i.i170.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.i.i170.i, align 2
  %conv.i.i171.i = sext i16 %38 to i64
  %conv2.i.i172.i = sext i32 %s_prev.0332.i.i167.i to i64
  %mul3.i.i173.i = mul nsw i64 %conv2.i.i172.i, %.pre.i.i166.i
  %div.i.i174.i = sdiv i64 %mul3.i.i173.i, 32768
  %add.i.i175.i = add nsw i64 %div.i.i174.i, %conv.i.i171.i
  %39 = trunc i64 %add.i.i175.i to i32
  %conv5.i.i176.i = sub i32 %39, %s_prev2.0331.i.i168.i
  %inc.i.i177.i = add nuw i32 %i.0330.i.i169.i, 1
  %exitcond.not.i.i178.i = icmp eq i32 %inc.i.i177.i, %N.170
  br i1 %exitcond.not.i.i178.i, label %for.body.i.i179.i.for.end.i.i193.i_crit_edge, label %for.body.i.i179.i.for.body.i.i179.i_crit_edge

for.body.i.i179.i.for.body.i.i179.i_crit_edge:    ; preds = %for.body.i.i179.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i179.i

for.body.i.i179.i.for.end.i.i193.i_crit_edge:     ; preds = %for.body.i.i179.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i193.i

for.end.i.i193.i:                                 ; preds = %for.body.i.i179.i.for.end.i.i193.i_crit_edge, %freq_magnitude.exit.i.for.end.i.i193.i_crit_edge
  %s_prev2.0.lcssa.i.i180.i = phi i32 [ 0, %freq_magnitude.exit.i.for.end.i.i193.i_crit_edge ], [ %s_prev.0332.i.i167.i, %for.body.i.i179.i.for.end.i.i193.i_crit_edge ]
  %s_prev.0.lcssa.i.i181.i = phi i32 [ 0, %freq_magnitude.exit.i.for.end.i.i193.i_crit_edge ], [ %conv5.i.i176.i, %for.body.i.i179.i.for.end.i.i193.i_crit_edge ]
  %conv6.i.i182.i = sext i32 %s_prev2.0.lcssa.i.i180.i to i64
  %mul8.i.i183.i = mul nsw i64 %conv6.i.i182.i, %conv6.i.i182.i
  %conv9.i.i184.i = sext i32 %s_prev.0.lcssa.i.i181.i to i64
  %mul11.i.i185.i = mul nsw i64 %conv9.i.i184.i, %conv9.i.i184.i
  %add12.i.i186.i = add nuw i64 %mul11.i.i185.i, %mul8.i.i183.i
  %mul15.i.i187.i = mul nsw i64 %conv6.i.i182.i, %.pre.i.i166.i
  %mul17.i.i188.i = mul i64 %mul15.i.i187.i, %conv9.i.i184.i
  %div18.neg.i.i189.i = sdiv i64 %mul17.i.i188.i, -32768
  %sub19.i.i190.i = add i64 %add12.i.i186.i, %div18.neg.i.i189.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub19.i.i190.i)
  %cmp193.i.i299.i = icmp ult i64 %sub19.i.i190.i, 4294967296
  br i1 %cmp193.i.i299.i, label %if.then197.i.i303.i, label %if.else203.i.i306.i, !prof !58

if.then197.i.i303.i:                              ; preds = %for.end.i.i193.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv198.i.i301.i = trunc i64 %sub19.i.i190.i to i32
  %div201.i.i302.i = udiv i32 %conv198.i.i301.i, %mul20.i.i.i
  br label %freq_magnitude.exit309.i

if.else203.i.i306.i:                              ; preds = %for.end.i.i193.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul20.i.i.i, i64 %sub19.i.i190.i) #11, !srcloc !59
  %asmresult1.i.i.i304.i = extractvalue { i64, i64 } %40, 1
  %extract.t327.i.i305.i = trunc i64 %asmresult1.i.i.i304.i to i32
  br label %freq_magnitude.exit309.i

freq_magnitude.exit309.i:                         ; preds = %if.else203.i.i306.i, %if.then197.i.i303.i
  %tmp.0.off0.i.i307.i = phi i32 [ %div201.i.i302.i, %if.then197.i.i303.i ], [ %extract.t327.i.i305.i, %if.else203.i.i306.i ]
  %call1.i308.i = tail call i32 @int_sqrt(i32 noundef %tmp.0.off0.i.i307.i) #6
  %call.i.i310.i = tail call fastcc i32 @int_cos(i32 noundef %dual_freq.0.i) #6
  %mul.i.i311.i = shl i32 %call.i.i310.i, 1
  %.pre.i.i313.i = sext i32 %mul.i.i311.i to i64
  br i1 %cmp329.not.i.i.i, label %freq_magnitude.exit309.i.for.end.i.i340.i_crit_edge, label %freq_magnitude.exit309.i.for.body.i.i326.i_crit_edge

freq_magnitude.exit309.i.for.body.i.i326.i_crit_edge: ; preds = %freq_magnitude.exit309.i
  br label %for.body.i.i326.i

freq_magnitude.exit309.i.for.end.i.i340.i_crit_edge: ; preds = %freq_magnitude.exit309.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i340.i

for.body.i.i326.i:                                ; preds = %for.body.i.i326.i.for.body.i.i326.i_crit_edge, %freq_magnitude.exit309.i.for.body.i.i326.i_crit_edge
  %s_prev.0332.i.i314.i = phi i32 [ %conv5.i.i323.i, %for.body.i.i326.i.for.body.i.i326.i_crit_edge ], [ 0, %freq_magnitude.exit309.i.for.body.i.i326.i_crit_edge ]
  %s_prev2.0331.i.i315.i = phi i32 [ %s_prev.0332.i.i314.i, %for.body.i.i326.i.for.body.i.i326.i_crit_edge ], [ 0, %freq_magnitude.exit309.i.for.body.i.i326.i_crit_edge ]
  %i.0330.i.i316.i = phi i32 [ %inc.i.i324.i, %for.body.i.i326.i.for.body.i.i326.i_crit_edge ], [ 0, %freq_magnitude.exit309.i.for.body.i.i326.i_crit_edge ]
  %arrayidx.i.i317.i = getelementptr i16, ptr %call8.i.i, i32 %i.0330.i.i316.i
  %41 = ptrtoint ptr %arrayidx.i.i317.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.i.i317.i, align 2
  %conv.i.i318.i = sext i16 %42 to i64
  %conv2.i.i319.i = sext i32 %s_prev.0332.i.i314.i to i64
  %mul3.i.i320.i = mul nsw i64 %conv2.i.i319.i, %.pre.i.i313.i
  %div.i.i321.i = sdiv i64 %mul3.i.i320.i, 32768
  %add.i.i322.i = add nsw i64 %div.i.i321.i, %conv.i.i318.i
  %43 = trunc i64 %add.i.i322.i to i32
  %conv5.i.i323.i = sub i32 %43, %s_prev2.0331.i.i315.i
  %inc.i.i324.i = add nuw i32 %i.0330.i.i316.i, 1
  %exitcond.not.i.i325.i = icmp eq i32 %inc.i.i324.i, %N.170
  br i1 %exitcond.not.i.i325.i, label %for.body.i.i326.i.for.end.i.i340.i_crit_edge, label %for.body.i.i326.i.for.body.i.i326.i_crit_edge

for.body.i.i326.i.for.body.i.i326.i_crit_edge:    ; preds = %for.body.i.i326.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i326.i

for.body.i.i326.i.for.end.i.i340.i_crit_edge:     ; preds = %for.body.i.i326.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i340.i

for.end.i.i340.i:                                 ; preds = %for.body.i.i326.i.for.end.i.i340.i_crit_edge, %freq_magnitude.exit309.i.for.end.i.i340.i_crit_edge
  %s_prev2.0.lcssa.i.i327.i = phi i32 [ 0, %freq_magnitude.exit309.i.for.end.i.i340.i_crit_edge ], [ %s_prev.0332.i.i314.i, %for.body.i.i326.i.for.end.i.i340.i_crit_edge ]
  %s_prev.0.lcssa.i.i328.i = phi i32 [ 0, %freq_magnitude.exit309.i.for.end.i.i340.i_crit_edge ], [ %conv5.i.i323.i, %for.body.i.i326.i.for.end.i.i340.i_crit_edge ]
  %conv6.i.i329.i = sext i32 %s_prev2.0.lcssa.i.i327.i to i64
  %mul8.i.i330.i = mul nsw i64 %conv6.i.i329.i, %conv6.i.i329.i
  %conv9.i.i331.i = sext i32 %s_prev.0.lcssa.i.i328.i to i64
  %mul11.i.i332.i = mul nsw i64 %conv9.i.i331.i, %conv9.i.i331.i
  %add12.i.i333.i = add nuw i64 %mul11.i.i332.i, %mul8.i.i330.i
  %mul15.i.i334.i = mul nsw i64 %conv6.i.i329.i, %.pre.i.i313.i
  %mul17.i.i335.i = mul i64 %mul15.i.i334.i, %conv9.i.i331.i
  %div18.neg.i.i336.i = sdiv i64 %mul17.i.i335.i, -32768
  %sub19.i.i337.i = add i64 %add12.i.i333.i, %div18.neg.i.i336.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub19.i.i337.i)
  %cmp193.i.i446.i = icmp ult i64 %sub19.i.i337.i, 4294967296
  br i1 %cmp193.i.i446.i, label %if.then197.i.i450.i, label %if.else203.i.i453.i, !prof !58

if.then197.i.i450.i:                              ; preds = %for.end.i.i340.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv198.i.i448.i = trunc i64 %sub19.i.i337.i to i32
  %div201.i.i449.i = udiv i32 %conv198.i.i448.i, %mul20.i.i.i
  br label %freq_magnitude.exit456.i

if.else203.i.i453.i:                              ; preds = %for.end.i.i340.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul20.i.i.i, i64 %sub19.i.i337.i) #11, !srcloc !59
  %asmresult1.i.i.i451.i = extractvalue { i64, i64 } %44, 1
  %extract.t327.i.i452.i = trunc i64 %asmresult1.i.i.i451.i to i32
  br label %freq_magnitude.exit456.i

freq_magnitude.exit456.i:                         ; preds = %if.else203.i.i453.i, %if.then197.i.i450.i
  %tmp.0.off0.i.i454.i = phi i32 [ %div201.i.i449.i, %if.then197.i.i450.i ], [ %extract.t327.i.i452.i, %if.else203.i.i453.i ]
  %call1.i455.i = tail call i32 @int_sqrt(i32 noundef %tmp.0.off0.i.i454.i) #6
  %45 = tail call i32 @llvm.umin.i32(i32 %N.170, i32 192) #6
  %46 = tail call i32 @llvm.usub.sat.i32(i32 %N.170, i32 192) #6
  %x.addr.0.i.i = getelementptr i16, ptr %call8.i.i, i32 %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp329.not.i.i457.i = icmp eq i32 %45, 0
  %mul20.i.i458.i = mul nuw nsw i32 %45, %45
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %int_goertzel.exit.i.i.for.body.i.i_crit_edge, %freq_magnitude.exit456.i
  %sum.03.i.i = phi i32 [ 0, %freq_magnitude.exit456.i ], [ %add.i.i, %int_goertzel.exit.i.i.for.body.i.i_crit_edge ]
  %i.02.i.i = phi i32 [ 0, %freq_magnitude.exit456.i ], [ %inc.i.i, %int_goertzel.exit.i.i.for.body.i.i_crit_edge ]
  %freq_start.addr.01.i.i = phi i32 [ 3276, %freq_magnitude.exit456.i ], [ %add4.i.i, %int_goertzel.exit.i.i.for.body.i.i_crit_edge ]
  %call.i.i471.i = tail call fastcc i32 @int_cos(i32 noundef %freq_start.addr.01.i.i) #6
  %mul.i.i472.i = shl i32 %call.i.i471.i, 1
  %.pre.i.i473.i = sext i32 %mul.i.i472.i to i64
  br i1 %cmp329.not.i.i457.i, label %for.body.i.i.for.end.i.i498.i_crit_edge, label %for.body.i.i.for.body.i.i486.i_crit_edge

for.body.i.i.for.body.i.i486.i_crit_edge:         ; preds = %for.body.i.i
  br label %for.body.i.i486.i

for.body.i.i.for.end.i.i498.i_crit_edge:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i498.i

for.body.i.i486.i:                                ; preds = %for.body.i.i486.i.for.body.i.i486.i_crit_edge, %for.body.i.i.for.body.i.i486.i_crit_edge
  %s_prev.0332.i.i474.i = phi i32 [ %conv5.i.i483.i, %for.body.i.i486.i.for.body.i.i486.i_crit_edge ], [ 0, %for.body.i.i.for.body.i.i486.i_crit_edge ]
  %s_prev2.0331.i.i475.i = phi i32 [ %s_prev.0332.i.i474.i, %for.body.i.i486.i.for.body.i.i486.i_crit_edge ], [ 0, %for.body.i.i.for.body.i.i486.i_crit_edge ]
  %i.0330.i.i476.i = phi i32 [ %inc.i.i484.i, %for.body.i.i486.i.for.body.i.i486.i_crit_edge ], [ 0, %for.body.i.i.for.body.i.i486.i_crit_edge ]
  %arrayidx.i.i477.i = getelementptr i16, ptr %x.addr.0.i.i, i32 %i.0330.i.i476.i
  %47 = ptrtoint ptr %arrayidx.i.i477.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.i.i477.i, align 2
  %conv.i.i478.i = sext i16 %48 to i64
  %conv2.i.i479.i = sext i32 %s_prev.0332.i.i474.i to i64
  %mul3.i.i480.i = mul nsw i64 %conv2.i.i479.i, %.pre.i.i473.i
  %div.i.i481.i = sdiv i64 %mul3.i.i480.i, 32768
  %add.i.i482.i = add nsw i64 %div.i.i481.i, %conv.i.i478.i
  %49 = trunc i64 %add.i.i482.i to i32
  %conv5.i.i483.i = sub i32 %49, %s_prev2.0331.i.i475.i
  %inc.i.i484.i = add nuw nsw i32 %i.0330.i.i476.i, 1
  %exitcond.not.i.i485.i = icmp eq i32 %inc.i.i484.i, %45
  br i1 %exitcond.not.i.i485.i, label %for.body.i.i486.i.for.end.i.i498.i_crit_edge, label %for.body.i.i486.i.for.body.i.i486.i_crit_edge

for.body.i.i486.i.for.body.i.i486.i_crit_edge:    ; preds = %for.body.i.i486.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i486.i

for.body.i.i486.i.for.end.i.i498.i_crit_edge:     ; preds = %for.body.i.i486.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i498.i

for.end.i.i498.i:                                 ; preds = %for.body.i.i486.i.for.end.i.i498.i_crit_edge, %for.body.i.i.for.end.i.i498.i_crit_edge
  %s_prev2.0.lcssa.i.i487.i = phi i32 [ 0, %for.body.i.i.for.end.i.i498.i_crit_edge ], [ %s_prev.0332.i.i474.i, %for.body.i.i486.i.for.end.i.i498.i_crit_edge ]
  %s_prev.0.lcssa.i.i488.i = phi i32 [ 0, %for.body.i.i.for.end.i.i498.i_crit_edge ], [ %conv5.i.i483.i, %for.body.i.i486.i.for.end.i.i498.i_crit_edge ]
  %conv6.i.i489.i = sext i32 %s_prev2.0.lcssa.i.i487.i to i64
  %mul8.i.i490.i = mul nsw i64 %conv6.i.i489.i, %conv6.i.i489.i
  %conv9.i.i491.i = sext i32 %s_prev.0.lcssa.i.i488.i to i64
  %mul11.i.i492.i = mul nsw i64 %conv9.i.i491.i, %conv9.i.i491.i
  %add12.i.i493.i = add nuw i64 %mul11.i.i492.i, %mul8.i.i490.i
  %mul15.i.i494.i = mul nsw i64 %conv6.i.i489.i, %.pre.i.i473.i
  %mul17.i.i495.i = mul i64 %mul15.i.i494.i, %conv9.i.i491.i
  %div18.neg.i.i496.i = sdiv i64 %mul17.i.i495.i, -32768
  %sub19.i.i497.i = add i64 %add12.i.i493.i, %div18.neg.i.i496.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub19.i.i497.i)
  %cmp193.i.i592.i = icmp ult i64 %sub19.i.i497.i, 4294967296
  br i1 %cmp193.i.i592.i, label %if.then197.i.i596.i, label %if.else203.i.i599.i, !prof !58

if.then197.i.i596.i:                              ; preds = %for.end.i.i498.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv198.i.i594.i = trunc i64 %sub19.i.i497.i to i32
  %div201.i.i595.i = udiv i32 %conv198.i.i594.i, %mul20.i.i458.i
  br label %int_goertzel.exit.i.i

if.else203.i.i599.i:                              ; preds = %for.end.i.i498.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul20.i.i458.i, i64 %sub19.i.i497.i) #11, !srcloc !59
  %asmresult1.i.i.i597.i = extractvalue { i64, i64 } %50, 1
  %extract.t327.i.i598.i = trunc i64 %asmresult1.i.i.i597.i to i32
  br label %int_goertzel.exit.i.i

int_goertzel.exit.i.i:                            ; preds = %if.else203.i.i599.i, %if.then197.i.i596.i
  %tmp.0.off0.i.i600.i = phi i32 [ %div201.i.i595.i, %if.then197.i.i596.i ], [ %extract.t327.i.i598.i, %if.else203.i.i599.i ]
  %add.i.i = add i32 %tmp.0.off0.i.i600.i, %sum.03.i.i
  %add4.i.i = add nuw nsw i32 %freq_start.addr.01.i.i, 9011
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 5
  br i1 %exitcond.not.i.i, label %noise_magnitude.exit.i, label %int_goertzel.exit.i.i.for.body.i.i_crit_edge

int_goertzel.exit.i.i.for.body.i.i_crit_edge:     ; preds = %int_goertzel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

noise_magnitude.exit.i:                           ; preds = %int_goertzel.exit.i.i
  %div5.i.i = udiv i32 %add.i.i, 5
  %call6.i.i = tail call i32 @int_sqrt(i32 noundef %div5.i.i) #6
  %51 = load i32, ptr @dsp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.not.i63 = icmp eq i32 %51, 0
  br i1 %cmp.not.i63, label %noise_magnitude.exit.i.do.end15.i_crit_edge, label %do.end11.i

noise_magnitude.exit.i.do.end15.i_crit_edge:      ; preds = %noise_magnitude.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15.i

do.end11.i:                                       ; preds = %noise_magnitude.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %call1.i.i, i32 noundef %call1.i308.i, i32 noundef %call1.i455.i, i32 noundef %call6.i.i) #9
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end11.i, %noise_magnitude.exit.i.do.end15.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i308.i, i32 %call1.i455.i)
  %cmp16.i = icmp sgt i32 %call1.i308.i, %call1.i455.i
  %..i = select i1 %cmp16.i, i32 2, i32 12
  %52 = ptrtoint ptr %tvaudio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tvaudio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %53)
  %cmp20.i = icmp eq i32 %53, 7
  %54 = tail call i32 @llvm.smax.i32(i32 %call1.i308.i, i32 %call1.i455.i) #6
  %mul.i64 = shl i32 %54, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i, i32 %mul.i64)
  %cmp24.i = icmp sgt i32 %call1.i.i, %mul.i64
  br i1 %cmp20.i, label %if.then21.i, label %if.else53.i

if.then21.i:                                      ; preds = %do.end15.i
  br i1 %cmp24.i, label %land.lhs.true.i, label %if.then21.i.if.end94.i_crit_edge

if.then21.i.if.end94.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94.i

land.lhs.true.i:                                  ; preds = %if.then21.i
  %mul31.i = mul i32 %54, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i, i32 %mul31.i)
  %cmp32.i = icmp slt i32 %call1.i.i, %mul31.i
  %55 = add i32 %call1.i.i, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 179, i32 %55)
  %56 = icmp ult i32 %55, 179
  %57 = and i1 %56, %cmp32.i
  %58 = tail call i32 @llvm.smin.i32(i32 %call1.i308.i, i32 %call1.i455.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %58)
  %cmp50.i = icmp sgt i32 %54, %58
  %or.cond.i = select i1 %57, i1 %cmp50.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i.do.body_crit_edge, label %land.lhs.true.i.if.end94.i_crit_edge

land.lhs.true.i.if.end94.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94.i

land.lhs.true.i.do.body_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.else53.i:                                      ; preds = %do.end15.i
  br i1 %cmp24.i, label %land.lhs.true62.i, label %if.else53.i.if.end94.i_crit_edge

if.else53.i.if.end94.i_crit_edge:                 ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94.i

land.lhs.true62.i:                                ; preds = %if.else53.i
  %mul69.i = shl i32 %54, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i, i32 %mul69.i)
  %cmp70.i = icmp slt i32 %call1.i.i, %mul69.i
  %59 = add i32 %call1.i.i, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 179, i32 %59)
  %60 = icmp ult i32 %59, 179
  %61 = and i1 %60, %cmp70.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call6.i.i)
  %cmp76.i = icmp slt i32 %call6.i.i, 10
  %or.cond161.i = select i1 %61, i1 %cmp76.i, i1 false
  %62 = tail call i32 @llvm.smin.i32(i32 %call1.i308.i, i32 %call1.i455.i) #6
  %mul90.i = shl i32 %62, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %mul90.i)
  %cmp91.i = icmp sgt i32 %54, %mul90.i
  %or.cond601.i = select i1 %or.cond161.i, i1 %cmp91.i, i1 false
  br i1 %or.cond601.i, label %land.lhs.true62.i.do.body_crit_edge, label %land.lhs.true62.i.if.end94.i_crit_edge

land.lhs.true62.i.if.end94.i_crit_edge:           ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94.i

land.lhs.true62.i.do.body_crit_edge:              ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end94.i:                                       ; preds = %land.lhs.true62.i.if.end94.i_crit_edge, %if.else53.i.if.end94.i_crit_edge, %land.lhs.true.i.if.end94.i_crit_edge, %if.then21.i.if.end94.i_crit_edge
  br label %do.body

sw.bb21:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @detect_btsc(ptr noundef nonnull %call8.i.i, i32 noundef %mul.i)
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.bb21, %if.end19.sw.epilog.thread_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #6
  br label %cleanup

do.body:                                          ; preds = %if.end94.i, %land.lhs.true62.i.do.body_crit_edge, %land.lhs.true.i.do.body_crit_edge
  %ret.0 = phi i32 [ 1, %if.end94.i ], [ %..i, %land.lhs.true.i.do.body_crit_edge ], [ %..i, %land.lhs.true62.i.do.body_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #6
  %63 = load i32, ptr @dsp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp26.not = icmp eq i32 %63, 0
  br i1 %cmp26.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %and30 = and i32 %ret.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %cond = select i1 %tobool31.not, ptr @.str.4, ptr @.str.3
  %and32 = and i32 %ret.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %cond34 = select i1 %tobool33.not, ptr @.str.4, ptr @.str.5
  %and35 = and i32 %ret.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %cond37 = select i1 %tobool36.not, ptr @.str.4, ptr @.str.6
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond, ptr noundef nonnull %cond34, ptr noundef nonnull %cond37) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %sw.epilog.thread, %if.end7.i.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end12.cleanup_crit_edge ], [ %ret.0, %do.body.cleanup_crit_edge ], [ %ret.0, %do.end ], [ -1, %sw.epilog.thread ], [ -1, %if.end7.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @detect_btsc(ptr nocapture noundef readonly %x, i32 noundef %N) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call fastcc i32 @int_cos(i32 noundef 56690) #6
  %mul.i.i = shl i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %N)
  %cmp329.not.i.i = icmp eq i32 %N, 0
  %.pre.i.i = sext i32 %mul.i.i to i64
  br i1 %cmp329.not.i.i, label %entry.for.end.i.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.for.end.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %s_prev.0332.i.i = phi i32 [ %conv5.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %s_prev2.0331.i.i = phi i32 [ %s_prev.0332.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %i.0330.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %x, i32 %i.0330.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = sext i16 %1 to i64
  %conv2.i.i = sext i32 %s_prev.0332.i.i to i64
  %mul3.i.i = mul nsw i64 %conv2.i.i, %.pre.i.i
  %div.i.i = sdiv i64 %mul3.i.i, 32768
  %add.i.i = add nsw i64 %div.i.i, %conv.i.i
  %2 = trunc i64 %add.i.i to i32
  %conv5.i.i = sub i32 %2, %s_prev2.0331.i.i
  %inc.i.i = add nuw i32 %i.0330.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %N
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %entry.for.end.i.i_crit_edge
  %s_prev2.0.lcssa.i.i = phi i32 [ 0, %entry.for.end.i.i_crit_edge ], [ %s_prev.0332.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %s_prev.0.lcssa.i.i = phi i32 [ 0, %entry.for.end.i.i_crit_edge ], [ %conv5.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %conv6.i.i = sext i32 %s_prev2.0.lcssa.i.i to i64
  %mul8.i.i = mul nsw i64 %conv6.i.i, %conv6.i.i
  %conv9.i.i = sext i32 %s_prev.0.lcssa.i.i to i64
  %mul11.i.i = mul nsw i64 %conv9.i.i, %conv9.i.i
  %add12.i.i = add nuw i64 %mul11.i.i, %mul8.i.i
  %mul15.i.i = mul nsw i64 %conv6.i.i, %.pre.i.i
  %mul17.i.i = mul i64 %mul15.i.i, %conv9.i.i
  %div18.neg.i.i = sdiv i64 %mul17.i.i, -32768
  %sub19.i.i = add i64 %add12.i.i, %div18.neg.i.i
  %mul20.i.i = mul i32 %N, %N
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub19.i.i)
  %cmp193.i.i = icmp ult i64 %sub19.i.i, 4294967296
  br i1 %cmp193.i.i, label %if.then197.i.i, label %if.else203.i.i, !prof !58

if.then197.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv198.i.i = trunc i64 %sub19.i.i to i32
  %div201.i.i = udiv i32 %conv198.i.i, %mul20.i.i
  br label %freq_magnitude.exit

if.else203.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul20.i.i, i64 %sub19.i.i) #11, !srcloc !59
  %asmresult1.i.i.i = extractvalue { i64, i64 } %3, 1
  %extract.t327.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %freq_magnitude.exit

freq_magnitude.exit:                              ; preds = %if.else203.i.i, %if.then197.i.i
  %tmp.0.off0.i.i = phi i32 [ %div201.i.i, %if.then197.i.i ], [ %extract.t327.i.i, %if.else203.i.i ]
  %call1.i = tail call i32 @int_sqrt(i32 noundef %tmp.0.off0.i.i) #6
  %call.i.i1 = tail call fastcc i32 @int_cos(i32 noundef 80987) #6
  %mul.i.i2 = shl i32 %call.i.i1, 1
  %.pre.i.i4 = sext i32 %mul.i.i2 to i64
  br i1 %cmp329.not.i.i, label %freq_magnitude.exit.for.end.i.i31_crit_edge, label %freq_magnitude.exit.for.body.i.i17_crit_edge

freq_magnitude.exit.for.body.i.i17_crit_edge:     ; preds = %freq_magnitude.exit
  br label %for.body.i.i17

freq_magnitude.exit.for.end.i.i31_crit_edge:      ; preds = %freq_magnitude.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i31

for.body.i.i17:                                   ; preds = %for.body.i.i17.for.body.i.i17_crit_edge, %freq_magnitude.exit.for.body.i.i17_crit_edge
  %s_prev.0332.i.i5 = phi i32 [ %conv5.i.i14, %for.body.i.i17.for.body.i.i17_crit_edge ], [ 0, %freq_magnitude.exit.for.body.i.i17_crit_edge ]
  %s_prev2.0331.i.i6 = phi i32 [ %s_prev.0332.i.i5, %for.body.i.i17.for.body.i.i17_crit_edge ], [ 0, %freq_magnitude.exit.for.body.i.i17_crit_edge ]
  %i.0330.i.i7 = phi i32 [ %inc.i.i15, %for.body.i.i17.for.body.i.i17_crit_edge ], [ 0, %freq_magnitude.exit.for.body.i.i17_crit_edge ]
  %arrayidx.i.i8 = getelementptr i16, ptr %x, i32 %i.0330.i.i7
  %4 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i8, align 2
  %conv.i.i9 = sext i16 %5 to i64
  %conv2.i.i10 = sext i32 %s_prev.0332.i.i5 to i64
  %mul3.i.i11 = mul nsw i64 %conv2.i.i10, %.pre.i.i4
  %div.i.i12 = sdiv i64 %mul3.i.i11, 32768
  %add.i.i13 = add nsw i64 %div.i.i12, %conv.i.i9
  %6 = trunc i64 %add.i.i13 to i32
  %conv5.i.i14 = sub i32 %6, %s_prev2.0331.i.i6
  %inc.i.i15 = add nuw i32 %i.0330.i.i7, 1
  %exitcond.not.i.i16 = icmp eq i32 %inc.i.i15, %N
  br i1 %exitcond.not.i.i16, label %for.body.i.i17.for.end.i.i31_crit_edge, label %for.body.i.i17.for.body.i.i17_crit_edge

for.body.i.i17.for.body.i.i17_crit_edge:          ; preds = %for.body.i.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i17

for.body.i.i17.for.end.i.i31_crit_edge:           ; preds = %for.body.i.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i31

for.end.i.i31:                                    ; preds = %for.body.i.i17.for.end.i.i31_crit_edge, %freq_magnitude.exit.for.end.i.i31_crit_edge
  %s_prev2.0.lcssa.i.i18 = phi i32 [ 0, %freq_magnitude.exit.for.end.i.i31_crit_edge ], [ %s_prev.0332.i.i5, %for.body.i.i17.for.end.i.i31_crit_edge ]
  %s_prev.0.lcssa.i.i19 = phi i32 [ 0, %freq_magnitude.exit.for.end.i.i31_crit_edge ], [ %conv5.i.i14, %for.body.i.i17.for.end.i.i31_crit_edge ]
  %conv6.i.i20 = sext i32 %s_prev2.0.lcssa.i.i18 to i64
  %mul8.i.i21 = mul nsw i64 %conv6.i.i20, %conv6.i.i20
  %conv9.i.i22 = sext i32 %s_prev.0.lcssa.i.i19 to i64
  %mul11.i.i23 = mul nsw i64 %conv9.i.i22, %conv9.i.i22
  %add12.i.i24 = add nuw i64 %mul11.i.i23, %mul8.i.i21
  %mul15.i.i25 = mul nsw i64 %conv6.i.i20, %.pre.i.i4
  %mul17.i.i26 = mul i64 %mul15.i.i25, %conv9.i.i22
  %div18.neg.i.i27 = sdiv i64 %mul17.i.i26, -32768
  %sub19.i.i28 = add i64 %add12.i.i24, %div18.neg.i.i27
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub19.i.i28)
  %cmp193.i.i137 = icmp ult i64 %sub19.i.i28, 4294967296
  br i1 %cmp193.i.i137, label %if.then197.i.i141, label %if.else203.i.i144, !prof !58

if.then197.i.i141:                                ; preds = %for.end.i.i31
  call void @__sanitizer_cov_trace_pc() #8
  %conv198.i.i139 = trunc i64 %sub19.i.i28 to i32
  %div201.i.i140 = udiv i32 %conv198.i.i139, %mul20.i.i
  br label %freq_magnitude.exit147

if.else203.i.i144:                                ; preds = %for.end.i.i31
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul20.i.i, i64 %sub19.i.i28) #11, !srcloc !59
  %asmresult1.i.i.i142 = extractvalue { i64, i64 } %7, 1
  %extract.t327.i.i143 = trunc i64 %asmresult1.i.i.i142 to i32
  br label %freq_magnitude.exit147

freq_magnitude.exit147:                           ; preds = %if.else203.i.i144, %if.then197.i.i141
  %tmp.0.off0.i.i145 = phi i32 [ %div201.i.i140, %if.then197.i.i141 ], [ %extract.t327.i.i143, %if.else203.i.i144 ]
  %call1.i146 = tail call i32 @int_sqrt(i32 noundef %tmp.0.off0.i.i145) #6
  br i1 %cmp329.not.i.i, label %freq_magnitude.exit147.for.end.i.i178_crit_edge, label %freq_magnitude.exit147.for.body.i.i164_crit_edge

freq_magnitude.exit147.for.body.i.i164_crit_edge: ; preds = %freq_magnitude.exit147
  br label %for.body.i.i164

freq_magnitude.exit147.for.end.i.i178_crit_edge:  ; preds = %freq_magnitude.exit147
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i178

for.body.i.i164:                                  ; preds = %for.body.i.i164.for.body.i.i164_crit_edge, %freq_magnitude.exit147.for.body.i.i164_crit_edge
  %s_prev.0332.i.i152 = phi i32 [ %conv5.i.i161, %for.body.i.i164.for.body.i.i164_crit_edge ], [ 0, %freq_magnitude.exit147.for.body.i.i164_crit_edge ]
  %s_prev2.0331.i.i153 = phi i32 [ %s_prev.0332.i.i152, %for.body.i.i164.for.body.i.i164_crit_edge ], [ 0, %freq_magnitude.exit147.for.body.i.i164_crit_edge ]
  %i.0330.i.i154 = phi i32 [ %inc.i.i162, %for.body.i.i164.for.body.i.i164_crit_edge ], [ 0, %freq_magnitude.exit147.for.body.i.i164_crit_edge ]
  %arrayidx.i.i155 = getelementptr i16, ptr %x, i32 %i.0330.i.i154
  %8 = ptrtoint ptr %arrayidx.i.i155 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i.i155, align 2
  %conv.i.i156 = sext i16 %9 to i64
  %conv2.i.i157 = sext i32 %s_prev.0332.i.i152 to i64
  %mul3.i.i158 = mul nsw i64 %conv2.i.i157, 12788
  %div.i.i159 = sdiv i64 %mul3.i.i158, 32768
  %add.i.i160 = add nsw i64 %div.i.i159, %conv.i.i156
  %10 = trunc i64 %add.i.i160 to i32
  %conv5.i.i161 = sub i32 %10, %s_prev2.0331.i.i153
  %inc.i.i162 = add nuw i32 %i.0330.i.i154, 1
  %exitcond.not.i.i163 = icmp eq i32 %inc.i.i162, %N
  br i1 %exitcond.not.i.i163, label %for.body.i.i164.for.end.i.i178_crit_edge, label %for.body.i.i164.for.body.i.i164_crit_edge

for.body.i.i164.for.body.i.i164_crit_edge:        ; preds = %for.body.i.i164
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i164

for.body.i.i164.for.end.i.i178_crit_edge:         ; preds = %for.body.i.i164
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i178

for.end.i.i178:                                   ; preds = %for.body.i.i164.for.end.i.i178_crit_edge, %freq_magnitude.exit147.for.end.i.i178_crit_edge
  %s_prev2.0.lcssa.i.i165 = phi i32 [ 0, %freq_magnitude.exit147.for.end.i.i178_crit_edge ], [ %s_prev.0332.i.i152, %for.body.i.i164.for.end.i.i178_crit_edge ]
  %s_prev.0.lcssa.i.i166 = phi i32 [ 0, %freq_magnitude.exit147.for.end.i.i178_crit_edge ], [ %conv5.i.i161, %for.body.i.i164.for.end.i.i178_crit_edge ]
  %conv6.i.i167 = sext i32 %s_prev2.0.lcssa.i.i165 to i64
  %mul8.i.i168 = mul nsw i64 %conv6.i.i167, %conv6.i.i167
  %conv9.i.i169 = sext i32 %s_prev.0.lcssa.i.i166 to i64
  %mul11.i.i170 = mul nsw i64 %conv9.i.i169, %conv9.i.i169
  %add12.i.i171 = add nuw i64 %mul11.i.i170, %mul8.i.i168
  %mul15.i.i172 = mul nsw i64 %conv6.i.i167, 12788
  %mul17.i.i173 = mul i64 %mul15.i.i172, %conv9.i.i169
  %div18.neg.i.i174 = sdiv i64 %mul17.i.i173, -32768
  %sub19.i.i175 = add i64 %add12.i.i171, %div18.neg.i.i174
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub19.i.i175)
  %cmp193.i.i284 = icmp ult i64 %sub19.i.i175, 4294967296
  br i1 %cmp193.i.i284, label %if.then197.i.i288, label %if.else203.i.i291, !prof !58

if.then197.i.i288:                                ; preds = %for.end.i.i178
  call void @__sanitizer_cov_trace_pc() #8
  %conv198.i.i286 = trunc i64 %sub19.i.i175 to i32
  %div201.i.i287 = udiv i32 %conv198.i.i286, %mul20.i.i
  br label %freq_magnitude.exit294

if.else203.i.i291:                                ; preds = %for.end.i.i178
  call void @__sanitizer_cov_trace_pc() #8
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul20.i.i, i64 %sub19.i.i175) #11, !srcloc !59
  %asmresult1.i.i.i289 = extractvalue { i64, i64 } %11, 1
  %extract.t327.i.i290 = trunc i64 %asmresult1.i.i.i289 to i32
  br label %freq_magnitude.exit294

freq_magnitude.exit294:                           ; preds = %if.else203.i.i291, %if.then197.i.i288
  %tmp.0.off0.i.i292 = phi i32 [ %div201.i.i287, %if.then197.i.i288 ], [ %extract.t327.i.i290, %if.else203.i.i291 ]
  %call1.i293 = tail call i32 @int_sqrt(i32 noundef %tmp.0.off0.i.i292) #6
  %call.i.i295 = tail call fastcc i32 @int_cos(i32 noundef 64339) #6
  %mul.i.i296 = shl i32 %call.i.i295, 1
  %.pre.i.i298 = sext i32 %mul.i.i296 to i64
  br i1 %cmp329.not.i.i, label %freq_magnitude.exit294.for.end.i.i325_crit_edge, label %freq_magnitude.exit294.for.body.i.i311_crit_edge

freq_magnitude.exit294.for.body.i.i311_crit_edge: ; preds = %freq_magnitude.exit294
  br label %for.body.i.i311

freq_magnitude.exit294.for.end.i.i325_crit_edge:  ; preds = %freq_magnitude.exit294
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i325

for.body.i.i311:                                  ; preds = %for.body.i.i311.for.body.i.i311_crit_edge, %freq_magnitude.exit294.for.body.i.i311_crit_edge
  %s_prev.0332.i.i299 = phi i32 [ %conv5.i.i308, %for.body.i.i311.for.body.i.i311_crit_edge ], [ 0, %freq_magnitude.exit294.for.body.i.i311_crit_edge ]
  %s_prev2.0331.i.i300 = phi i32 [ %s_prev.0332.i.i299, %for.body.i.i311.for.body.i.i311_crit_edge ], [ 0, %freq_magnitude.exit294.for.body.i.i311_crit_edge ]
  %i.0330.i.i301 = phi i32 [ %inc.i.i309, %for.body.i.i311.for.body.i.i311_crit_edge ], [ 0, %freq_magnitude.exit294.for.body.i.i311_crit_edge ]
  %arrayidx.i.i302 = getelementptr i16, ptr %x, i32 %i.0330.i.i301
  %12 = ptrtoint ptr %arrayidx.i.i302 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i.i302, align 2
  %conv.i.i303 = sext i16 %13 to i64
  %conv2.i.i304 = sext i32 %s_prev.0332.i.i299 to i64
  %mul3.i.i305 = mul nsw i64 %conv2.i.i304, %.pre.i.i298
  %div.i.i306 = sdiv i64 %mul3.i.i305, 32768
  %add.i.i307 = add nsw i64 %div.i.i306, %conv.i.i303
  %14 = trunc i64 %add.i.i307 to i32
  %conv5.i.i308 = sub i32 %14, %s_prev2.0331.i.i300
  %inc.i.i309 = add nuw i32 %i.0330.i.i301, 1
  %exitcond.not.i.i310 = icmp eq i32 %inc.i.i309, %N
  br i1 %exitcond.not.i.i310, label %for.body.i.i311.for.end.i.i325_crit_edge, label %for.body.i.i311.for.body.i.i311_crit_edge

for.body.i.i311.for.body.i.i311_crit_edge:        ; preds = %for.body.i.i311
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i311

for.body.i.i311.for.end.i.i325_crit_edge:         ; preds = %for.body.i.i311
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i325

for.end.i.i325:                                   ; preds = %for.body.i.i311.for.end.i.i325_crit_edge, %freq_magnitude.exit294.for.end.i.i325_crit_edge
  %s_prev2.0.lcssa.i.i312 = phi i32 [ 0, %freq_magnitude.exit294.for.end.i.i325_crit_edge ], [ %s_prev.0332.i.i299, %for.body.i.i311.for.end.i.i325_crit_edge ]
  %s_prev.0.lcssa.i.i313 = phi i32 [ 0, %freq_magnitude.exit294.for.end.i.i325_crit_edge ], [ %conv5.i.i308, %for.body.i.i311.for.end.i.i325_crit_edge ]
  %conv6.i.i314 = sext i32 %s_prev2.0.lcssa.i.i312 to i64
  %mul8.i.i315 = mul nsw i64 %conv6.i.i314, %conv6.i.i314
  %conv9.i.i316 = sext i32 %s_prev.0.lcssa.i.i313 to i64
  %mul11.i.i317 = mul nsw i64 %conv9.i.i316, %conv9.i.i316
  %add12.i.i318 = add nuw i64 %mul11.i.i317, %mul8.i.i315
  %mul15.i.i319 = mul nsw i64 %conv6.i.i314, %.pre.i.i298
  %mul17.i.i320 = mul i64 %mul15.i.i319, %conv9.i.i316
  %div18.neg.i.i321 = sdiv i64 %mul17.i.i320, -32768
  %sub19.i.i322 = add i64 %add12.i.i318, %div18.neg.i.i321
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub19.i.i322)
  %cmp193.i.i431 = icmp ult i64 %sub19.i.i322, 4294967296
  br i1 %cmp193.i.i431, label %if.then197.i.i435, label %if.else203.i.i438, !prof !58

if.then197.i.i435:                                ; preds = %for.end.i.i325
  call void @__sanitizer_cov_trace_pc() #8
  %conv198.i.i433 = trunc i64 %sub19.i.i322 to i32
  %div201.i.i434 = udiv i32 %conv198.i.i433, %mul20.i.i
  br label %freq_magnitude.exit441

if.else203.i.i438:                                ; preds = %for.end.i.i325
  call void @__sanitizer_cov_trace_pc() #8
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul20.i.i, i64 %sub19.i.i322) #11, !srcloc !59
  %asmresult1.i.i.i436 = extractvalue { i64, i64 } %15, 1
  %extract.t327.i.i437 = trunc i64 %asmresult1.i.i.i436 to i32
  br label %freq_magnitude.exit441

freq_magnitude.exit441:                           ; preds = %if.else203.i.i438, %if.then197.i.i435
  %tmp.0.off0.i.i439 = phi i32 [ %div201.i.i434, %if.then197.i.i435 ], [ %extract.t327.i.i437, %if.else203.i.i438 ]
  %call1.i440 = tail call i32 @int_sqrt(i32 noundef %tmp.0.off0.i.i439) #6
  %16 = load i32, ptr @dsp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not = icmp eq i32 %16, 0
  br i1 %cmp.not, label %freq_magnitude.exit441.do.end7_crit_edge, label %do.end

freq_magnitude.exit441.do.end7_crit_edge:         ; preds = %freq_magnitude.exit441
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

do.end:                                           ; preds = %freq_magnitude.exit441
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call1.i293, i32 noundef %call1.i440, i32 noundef %call1.i, i32 noundef %call1.i146) #9
  br label %do.end7

do.end7:                                          ; preds = %do.end, %freq_magnitude.exit441.do.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @int_cos(i32 noundef %x) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 %x, 102943
  %rem = and i32 %div, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %if.then

common.ret:                                       ; preds = %if.end10, %if.then5, %if.then
  %common.ret.op = phi i32 [ %sub2, %if.then ], [ %sub9, %if.then5 ], [ %add33, %if.end10 ]
  ret i32 %common.ret.op

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %x, -102943
  %call = tail call fastcc i32 @int_cos(i32 noundef %sub)
  %sub2 = sub i32 0, %call
  br label %common.ret

if.end:                                           ; preds = %entry
  %0 = mul i32 %div, 102943
  %rem3.decomposed = sub i32 %x, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 51471, i32 %rem3.decomposed)
  %cmp = icmp ugt i32 %rem3.decomposed, 51471
  br i1 %cmp, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rem6 = urem i32 %rem3.decomposed, 51471
  %sub7 = sub nuw nsw i32 51471, %rem6
  %call8 = tail call fastcc i32 @int_cos(i32 noundef %sub7)
  %sub9 = sub i32 0, %call8
  br label %common.ret

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul nuw i32 %rem3.decomposed, %rem3.decomposed
  %div1255 = lshr i32 %mul, 16
  %mul13 = mul nuw nsw i32 %div1255, %rem3.decomposed
  %div1456 = lshr i32 %mul13, 15
  %mul15 = mul nuw i32 %div1456, %rem3.decomposed
  %div18 = udiv i32 %mul15, 393216
  %mul19 = mul nuw nsw i32 %div18, %rem3.decomposed
  %div2058 = lshr i32 %mul19, 15
  %mul21 = mul nuw nsw i32 %div2058, %rem3.decomposed
  %div24 = udiv i32 %mul21, 983040
  %mul25 = mul nuw nsw i32 %div24, %rem3.decomposed
  %div2660 = lshr i32 %mul25, 15
  %mul27 = mul nuw nsw i32 %div2660, %rem3.decomposed
  %div30 = udiv i32 %mul27, 1835008
  %1 = or i32 %div18, 32768
  %2 = add nuw nsw i32 %div1255, %div24
  %sub32 = sub nsw i32 %1, %2
  %add33 = add nsw i32 %sub32, %div30
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !14, !15, !17, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__param_dsp_debug, !1, !"__param_dsp_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx88/cx88-dsp.c", i32 61, i32 1}
!2 = !{ptr @__UNIQUE_ID_dsp_debugtype385, !1, !"__UNIQUE_ID_dsp_debugtype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dsp_debug386, !4, !"__UNIQUE_ID_dsp_debug386", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx88/cx88-dsp.c", i32 62, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx88/cx88-dsp.c", i32 315, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cx88_dsp_detect_stereo_sap._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @cx88_dsp_detect_stereo_sap._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__ksymtab_cx88_dsp_detect_stereo_sap, !16, !"__ksymtab_cx88_dsp_detect_stereo_sap", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/cx88/cx88-dsp.c", i32 322, i32 1}
!17 = !{ptr @dsp_debug, !18, !"dsp_debug", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/cx88/cx88-dsp.c", i32 60, i32 21}
!19 = !{ptr @__param_str_dsp_debug, !1, !"__param_str_dsp_debug", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/cx88/cx88-dsp.c", i32 250, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @read_rds_samples._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @read_rds_samples._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/cx88/cx88-dsp.c", i32 267, i32 2}
!27 = !{ptr @read_rds_samples._entry.9, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @read_rds_samples._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/cx88/cx88-dsp.c", i32 181, i32 3}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @detect_a2_a2m_eiaj._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @detect_a2_a2m_eiaj._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/cx88/cx88-dsp.c", i32 191, i32 2}
!36 = !{ptr @detect_a2_a2m_eiaj._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @detect_a2_a2m_eiaj._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/cx88/cx88-dsp.c", i32 231, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @detect_btsc._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @detect_btsc._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 5009130}
!53 = !{i64 2158642370}
!54 = !{i64 2158642972}
!55 = !{i64 2158635786}
!56 = !{i64 2158639008}
!57 = !{i64 2158639881}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 2148539189, i64 2148539469, i64 2148539803, i64 2148540137}
