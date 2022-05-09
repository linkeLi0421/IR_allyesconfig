; ModuleID = '/llk/IR_all_yes/sound/soc/sh/rcar/src.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/src.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rsnd_mod_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rsnd_dai_stream = type { [16 x i8], ptr, [13 x ptr], ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.rsnd_dai = type { [16 x i8], %struct.rsnd_dai_stream, %struct.rsnd_dai_stream, ptr, %struct.snd_pcm_hw_constraint_list, i32, i32, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.rsnd_src = type { %struct.rsnd_mod, ptr, %struct.rsnd_kctrl_cfg_s, %struct.rsnd_kctrl_cfg_s, i32 }
%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.rsnd_kctrl_cfg_s = type { %struct.rsnd_kctrl_cfg, i32 }
%struct.rsnd_kctrl_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.rsnd_priv = type { ptr, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/sh/rcar/src.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rcar_sound,src\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"src\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@rsnd_src_ops = internal global { %struct.rsnd_mod_ops, [44 x i8] } { %struct.rsnd_mod_ops { ptr @.str.2, ptr @rsnd_src_dma_req, ptr @rsnd_src_probe_, ptr null, ptr @rsnd_src_init, ptr @rsnd_src_quit, ptr @rsnd_src_start, ptr @rsnd_src_stop, ptr @rsnd_src_irq, ptr @rsnd_src_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_mod_get_status, ptr null, ptr null, ptr null, ptr @rsnd_src_debug_info }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@rsnd_src_error_occurred._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 425, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s err status : 0x%08x, 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rsnd_src_error_occurred\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rsnd_src_error_occurred._entry_ptr = internal global ptr @rsnd_src_error_occurred._entry, section ".printk_index", align 4
@rsnd_src_set_convert_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 235, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FSO/FSI ratio error\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rsnd_src_set_convert_rate\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rsnd_src_set_convert_rate._entry_ptr = internal global ptr @rsnd_src_set_convert_rate._entry, section ".printk_index", align 4
@chan288888 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 6, i32 510, i32 510, i32 510, i32 510, i32 510], [40 x i8] zeroinitializer }, align 32
@bsdsr_table_pattern1 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 25165824, i32 16777216, i32 12582912, i32 8388608, i32 6291456, i32 4194304], [40 x i8] zeroinitializer }, align 32
@chan244888 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 6, i32 30, i32 30, i32 510, i32 510, i32 510], [40 x i8] zeroinitializer }, align 32
@chan222222 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 6, i32 6, i32 6, i32 6, i32 6, i32 6], [40 x i8] zeroinitializer }, align 32
@bsdsr_table_pattern2 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 37748736, i32 25165824, i32 18874368, i32 12582912, i32 9437184, i32 6291456], [40 x i8] zeroinitializer }, align 32
@bsisr_table = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1048672, i32 1048640, i32 1048624, i32 1048608, i32 1048608, i32 1048608], [40 x i8] zeroinitializer }, align 32
@rsnd_src_set_convert_rate._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str, i32 353, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unknown BSDSR/BSDIR settings\0A\00", [34 x i8] zeroinitializer }, align 32
@rsnd_src_set_convert_rate._entry_ptr.15 = internal global ptr @rsnd_src_set_convert_rate._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SRC Out Rate Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SRC In Rate Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SRC Out Rate\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SRC In Rate\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@switch.table.rsnd_src_set_convert_rate = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @bsdsr_table_pattern1, ptr @bsdsr_table_pattern1, ptr @bsdsr_table_pattern1, ptr @bsdsr_table_pattern1, ptr @bsdsr_table_pattern1, ptr @bsdsr_table_pattern2, ptr @bsdsr_table_pattern2, ptr @bsdsr_table_pattern2, ptr @bsdsr_table_pattern2, ptr @bsdsr_table_pattern1], [56 x i8] zeroinitializer }, align 32
@switch.table.rsnd_src_set_convert_rate.21 = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @chan288888, ptr @chan244888, ptr @chan222222, ptr @chan244888, ptr @chan244888, ptr @chan222222, ptr @chan222222, ptr @chan222222, ptr @chan222222, ptr @chan222222], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 635, i32 6 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 655, i32 9 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 659, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 683, i32 38 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"rsnd_src_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 619, i32 28 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 86, i32 16 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 86, i32 23 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 424, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 235, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"chan288888\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 173, i32 18 }
@___asan_gen_.73 = private unnamed_addr constant [21 x i8] c"bsdsr_table_pattern1\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 146, i32 18 }
@___asan_gen_.76 = private unnamed_addr constant [11 x i8] c"chan244888\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 182, i32 18 }
@___asan_gen_.79 = private unnamed_addr constant [11 x i8] c"chan222222\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 191, i32 18 }
@___asan_gen_.82 = private unnamed_addr constant [21 x i8] c"bsdsr_table_pattern2\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 155, i32 18 }
@___asan_gen_.85 = private unnamed_addr constant [12 x i8] c"bsisr_table\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 164, i32 18 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 353, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 579, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 589, i32 8 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [27 x i8] c"../sound/soc/sh/rcar/src.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 607, i32 14 }
@___asan_gen_.109 = private unnamed_addr constant [39 x i8] c"switch.table.rsnd_src_set_convert_rate\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [42 x i8] c"switch.table.rsnd_src_set_convert_rate.21\00", align 1
@llvm.compiler.used = appending global [34 x ptr] [ptr @rsnd_src_error_occurred._entry, ptr @rsnd_src_error_occurred._entry_ptr, ptr @rsnd_src_set_convert_rate._entry, ptr @rsnd_src_set_convert_rate._entry.13, ptr @rsnd_src_set_convert_rate._entry_ptr, ptr @rsnd_src_set_convert_rate._entry_ptr.15, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rsnd_src_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @chan288888, ptr @bsdsr_table_pattern1, ptr @chan244888, ptr @chan222222, ptr @bsdsr_table_pattern2, ptr @bsisr_table, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @switch.table.rsnd_src_set_convert_rate, ptr @switch.table.rsnd_src_set_convert_rate.21], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_src_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_src_error_occurred._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_src_set_convert_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chan288888 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsdsr_table_pattern1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chan244888 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chan222222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsdsr_table_pattern2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsisr_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_src_set_convert_rate._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rsnd_src_set_convert_rate to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rsnd_src_set_convert_rate.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_src_get_rate(ptr nocapture readnone %priv, ptr noundef readonly %io, i32 noundef %is_in) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %substream = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %6 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdai, align 4
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %7, i32 0, i32 1
  %cmp = icmp eq ptr %playback, %io
  %conv = zext i1 %cmp to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %is_in)
  %cmp3 = icmp eq i32 %conv, %is_in
  %tobool6.not = icmp eq ptr %1, null
  %8 = select i1 %cmp3, i1 true, i1 %tobool6.not
  %or.cond = select i1 %8, i1 true, i1 %tobool.not
  br i1 %or.cond, label %cond.end.cleanup.sink.split_crit_edge, label %cond.end.i

cond.end.cleanup.sink.split_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cond.end.i:                                       ; preds = %cond.end
  %runtime2.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %runtime2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime2.i, align 4
  %tobool3.not.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i, label %cond.end.i.cleanup.sink.split_crit_edge, label %if.end.i

cond.end.i.cleanup.sink.split_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %cond.end.i
  %val.i = getelementptr inbounds %struct.rsnd_src, ptr %1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not.i = icmp eq i32 %12, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %converted_rate.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 6
  br label %if.end8

if.end9.i:                                        ; preds = %if.end.i
  %val10.i = getelementptr inbounds %struct.rsnd_src, ptr %1, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %val10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not.i = icmp eq i32 %14, 0
  br i1 %tobool11.not.i, label %if.end14.i, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14.i:                                       ; preds = %if.end9.i
  %converted_rate13.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 6
  %15 = ptrtoint ptr %converted_rate13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %converted_rate13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool15.not.i = icmp eq i32 %16, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end14.i.cleanup_crit_edge

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %rate.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 14
  br label %if.end8

if.end8:                                          ; preds = %if.then16.i, %if.then8.i
  %rate.sink.i = phi ptr [ %rate.i, %if.then16.i ], [ %converted_rate.i, %if.then8.i ]
  %17 = ptrtoint ptr %rate.sink.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rate.sink.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool9.not = icmp eq i32 %18, 0
  br i1 %tobool9.not, label %if.end8.cleanup.sink.split_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end8.cleanup.sink.split_crit_edge, %cond.end.i.cleanup.sink.split_crit_edge, %cond.end.cleanup.sink.split_crit_edge
  %rate11 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond, i32 0, i32 14
  %19 = ptrtoint ptr %rate11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rate11, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.end8.cleanup_crit_edge ], [ %14, %if.end9.i.cleanup_crit_edge ], [ %16, %if.end14.i.cleanup_crit_edge ], [ %20, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rsnd_src_mod_get(ptr nocapture noundef readonly %priv, i32 noundef %id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp slt i32 %id, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.end, !prof !60

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.end:                                          ; preds = %entry
  %src_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %src_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %id)
  %cmp1.not = icmp sgt i32 %1, %id
  br i1 %cmp1.not, label %lor.end.if.end_crit_edge, label %lor.end.do.end_crit_edge, !prof !61

lor.end.do.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.end.if.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %lor.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 635, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.end.if.end_crit_edge
  %2 = phi i32 [ 0, %do.end ], [ %id, %lor.end.if.end_crit_edge ]
  %src = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 10
  %3 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %src, align 4
  %add.ptr = getelementptr %struct.rsnd_src, ptr %4, i32 %2
  ret ptr %add.ptr
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_src_probe(ptr noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #7
  %flags = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 2
  %2 = call ptr @memset(ptr %name, i32 255, i32 16)
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %6, ptr noundef nonnull @.str.1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @rsnd_node_count(ptr noundef %priv, ptr noundef nonnull %call, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.rsnd_src_probe_done_crit_edge, label %if.end9

if.end5.rsnd_src_probe_done_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsnd_src_probe_done

if.end9:                                          ; preds = %if.end5
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call6, i32 120) #7
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %if.end9.rsnd_src_probe_done_crit_edge, label %devm_kcalloc.exit, !prof !62

if.end9.rsnd_src_probe_done_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsnd_src_probe_done

devm_kcalloc.exit:                                ; preds = %if.end9
  %9 = extractvalue { i32, i1 } %7, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %9, i32 noundef 3520) #7
  %tobool11.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool11.not, label %devm_kcalloc.exit.rsnd_src_probe_done_crit_edge, label %if.end13

devm_kcalloc.exit.rsnd_src_probe_done_crit_edge:  ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsnd_src_probe_done

if.end13:                                         ; preds = %devm_kcalloc.exit
  %src_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 11
  %10 = ptrtoint ptr %src_nr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call6, ptr %src_nr, align 4
  %src14 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 10
  %11 = ptrtoint ptr %src14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %src14, align 4
  %call15 = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #7
  %cmp16.not85 = icmp eq ptr %call15, null
  br i1 %cmp16.not85, label %if.end13.rsnd_src_probe_done_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

if.end13.rsnd_src_probe_done_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsnd_src_probe_done

for.body:                                         ; preds = %skip.for.body_crit_edge, %if.end13.for.body_crit_edge
  %i.088 = phi i32 [ %inc, %skip.for.body_crit_edge ], [ 0, %if.end13.for.body_crit_edge ]
  %np.086 = phi ptr [ %call38, %skip.for.body_crit_edge ], [ %call15, %if.end13.for.body_crit_edge ]
  %call17 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %np.086) #7
  br i1 %call17, label %if.end19, label %for.body.skip_crit_edge

for.body.skip_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip

if.end19:                                         ; preds = %for.body
  %call20 = call i32 @rsnd_node_fixed_index(ptr noundef nonnull %np.086, ptr noundef nonnull @.str.2, i32 noundef %i.088) #7
  %12 = ptrtoint ptr %src14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src14, align 4
  %add.ptr = getelementptr %struct.rsnd_src, ptr %13, i32 %call20
  %call22 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef %call20)
  %call23 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %np.086, i32 noundef 0) #7
  %irq = getelementptr %struct.rsnd_src, ptr %13, i32 %call20, i32 4
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call23, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool25.not = icmp eq i32 %call23, 0
  br i1 %tobool25.not, label %if.end19.rsnd_src_probe_done.sink.split_crit_edge, label %if.end27

if.end19.rsnd_src_probe_done.sink.split_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsnd_src_probe_done.sink.split

if.end27:                                         ; preds = %if.end19
  %call29 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %name) #7
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call29 to i32
  br label %rsnd_src_probe_done.sink.split

if.end33:                                         ; preds = %if.end27
  %call34 = call i32 @rsnd_mod_init(ptr noundef %priv, ptr noundef %add.ptr, ptr noundef nonnull @rsnd_src_ops, ptr noundef %call29, i32 noundef 6, i32 noundef %call20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end33.skip_crit_edge, label %if.end33.rsnd_src_probe_done.sink.split_crit_edge

if.end33.rsnd_src_probe_done.sink.split_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsnd_src_probe_done.sink.split

if.end33.skip_crit_edge:                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip

skip:                                             ; preds = %if.end33.skip_crit_edge, %for.body.skip_crit_edge
  %i.1 = phi i32 [ %call20, %if.end33.skip_crit_edge ], [ %i.088, %for.body.skip_crit_edge ]
  %inc = add i32 %i.1, 1
  %call38 = call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %np.086) #7
  %cmp16.not = icmp eq ptr %call38, null
  br i1 %cmp16.not, label %skip.rsnd_src_probe_done_crit_edge, label %skip.for.body_crit_edge

skip.for.body_crit_edge:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

skip.rsnd_src_probe_done_crit_edge:               ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsnd_src_probe_done

rsnd_src_probe_done.sink.split:                   ; preds = %if.end33.rsnd_src_probe_done.sink.split_crit_edge, %if.then31, %if.end19.rsnd_src_probe_done.sink.split_crit_edge
  %ret.0.ph = phi i32 [ %15, %if.then31 ], [ -22, %if.end19.rsnd_src_probe_done.sink.split_crit_edge ], [ %call34, %if.end33.rsnd_src_probe_done.sink.split_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %np.086) #7
  br label %rsnd_src_probe_done

rsnd_src_probe_done:                              ; preds = %rsnd_src_probe_done.sink.split, %skip.rsnd_src_probe_done_crit_edge, %if.end13.rsnd_src_probe_done_crit_edge, %devm_kcalloc.exit.rsnd_src_probe_done_crit_edge, %if.end9.rsnd_src_probe_done_crit_edge, %if.end5.rsnd_src_probe_done_crit_edge
  %ret.0 = phi i32 [ -22, %if.end5.rsnd_src_probe_done_crit_edge ], [ -12, %devm_kcalloc.exit.rsnd_src_probe_done_crit_edge ], [ -12, %if.end9.rsnd_src_probe_done_crit_edge ], [ 0, %if.end13.rsnd_src_probe_done_crit_edge ], [ %ret.0.ph, %rsnd_src_probe_done.sink.split ], [ 0, %skip.rsnd_src_probe_done_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %rsnd_src_probe_done, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %rsnd_src_probe_done ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_node_count(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_node_fixed_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsnd_src_remove(ptr nocapture noundef readonly %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %src1 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 10
  %src_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %src_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %entry.land.rhs_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %src1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src1, align 4
  %add.ptr = getelementptr %struct.rsnd_src, ptr %3, i32 %i.06
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %land.rhs
  tail call void @rsnd_mod_quit(ptr noundef nonnull %add.ptr) #7
  %inc = add nuw nsw i32 %i.06, 1
  %4 = ptrtoint ptr %src_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_nr, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.land.rhs_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_quit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rsnd_src_dma_req(ptr noundef readonly %io, ptr noundef %mod) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %2 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdai, align 4
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %3, i32 0, i32 1
  %cmp = icmp eq ptr %playback, %io
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %7, ptr noundef nonnull @.str.1) #7
  %cond = select i1 %cmp, ptr @.str.4, ptr @.str.5
  %call2 = tail call ptr @rsnd_dma_request_channel(ptr noundef %call, ptr noundef nonnull @.str.2, ptr noundef %mod, ptr noundef nonnull %cond) #7
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_src_probe_(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq2 = getelementptr inbounds %struct.rsnd_src, ptr %mod, i32 0, i32 4
  %0 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.then.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %1, ptr noundef nonnull @rsnd_src_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef %mod) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %dev_name.exit.if.end5_crit_edge, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dev_name.exit.if.end5_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %dev_name.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  %dma = getelementptr inbounds %struct.rsnd_src, ptr %mod, i32 0, i32 1
  %call6 = tail call i32 @rsnd_dma_attach(ptr noundef %io, ptr noundef %mod, ptr noundef %dma) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %call.i, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_src_init(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readnone %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %val = getelementptr inbounds %struct.rsnd_src, ptr %mod, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %clk = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 4
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %2) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 3, i32 noundef 0) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 3, i32 noundef 1) #7
  tail call void @rsnd_src_set_convert_rate(ptr noundef %io, ptr noundef %mod)
  %call.i = tail call i32 @rsnd_mod_id(ptr noundef %mod) #7
  %add.i = add i32 %call.i, 16
  %shl.i = shl nuw i32 1, %add.i
  %call1.i = tail call i32 @rsnd_mod_id(ptr noundef %mod) #7
  %shl2.i = shl nuw i32 1, %call1.i
  %or.i = or i32 %shl.i, %shl2.i
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 24, i32 noundef %or.i) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 25, i32 noundef %or.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_src_quit(ptr noundef %mod, ptr nocapture noundef readnone %io, ptr nocapture noundef readnone %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 4, i32 noundef 1) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 3, i32 noundef 0) #7
  %clk = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 4
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %1) #7
  %val = getelementptr inbounds %struct.rsnd_src, ptr %mod, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_src_start(ptr noundef %mod, ptr nocapture noundef readonly %io, ptr nocapture noundef readnone %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val2 = getelementptr inbounds %struct.rsnd_src, ptr %mod, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  %phi.sel = select i1 %tobool3.not, i32 1, i32 17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 17, %entry.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 9, i32 noundef %4) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_src_stop(ptr noundef %mod, ptr nocapture noundef readnone %io, ptr nocapture noundef readnone %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 9, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_src_irq(ptr noundef %mod, ptr nocapture noundef readnone %io, ptr nocapture noundef readnone %priv, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq1 = getelementptr inbounds %struct.rsnd_src, ptr %mod, i32 0, i32 4
  %0 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq1, align 4
  %call = tail call i32 @rsnd_mod_id(ptr noundef %mod) #7
  %add = add i32 %call, 16
  %shl = shl nuw i32 1, %add
  %shl2 = shl nuw i32 1, %call
  %or = or i32 %shl, %shl2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %or.cond = or i1 %tobool.not, %cmp
  %int_val.0 = select i1 %or.cond, i32 0, i32 13056
  %sys_int_val.0 = select i1 %or.cond, i32 0, i32 %or
  %val = getelementptr inbounds %struct.rsnd_src, ptr %mod, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  %and = and i32 %sys_int_val.0, 65535
  %sys_int_val.1 = select i1 %tobool6.not, i32 %sys_int_val.0, i32 %and
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 12, i32 noundef %int_val.0) #7
  tail call void @rsnd_mod_bset(ptr noundef %mod, i32 noundef 26, i32 noundef %or, i32 noundef %sys_int_val.1) #7
  tail call void @rsnd_mod_bset(ptr noundef %mod, i32 noundef 27, i32 noundef %or, i32 noundef %sys_int_val.1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_src_pcm_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %2 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdai, align 4
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %3, i32 0, i32 1
  %cmp = icmp eq ptr %playback, %io
  br i1 %cmp, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rdai2 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %4 = ptrtoint ptr %rdai2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdai2, align 4
  %playback3 = getelementptr inbounds %struct.rsnd_dai, ptr %5, i32 0, i32 1
  %cmp4 = icmp eq ptr %playback3, %io
  %cond = select i1 %cmp4, ptr @.str.16, ptr @.str.17
  %sen = getelementptr inbounds %struct.rsnd_src, ptr %mod, i32 0, i32 2
  %call = tail call ptr @rsnd_kctrl_init_s(ptr noundef %sen) #7
  %call5 = tail call i32 @rsnd_kctrl_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd, ptr noundef nonnull %cond, ptr noundef nonnull @rsnd_kctrl_accept_anytime, ptr noundef nonnull @rsnd_src_set_convert_rate, ptr noundef %call, ptr noundef null, i32 noundef 1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %rdai2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdai2, align 4
  %playback10 = getelementptr inbounds %struct.rsnd_dai, ptr %7, i32 0, i32 1
  %cmp11 = icmp eq ptr %playback10, %io
  %cond12 = select i1 %cmp11, ptr @.str.18, ptr @.str.19
  %sync = getelementptr inbounds %struct.rsnd_src, ptr %mod, i32 0, i32 3
  %call13 = tail call ptr @rsnd_kctrl_init_s(ptr noundef %sync) #7
  %call14 = tail call i32 @rsnd_kctrl_new(ptr noundef %mod, ptr noundef %io, ptr noundef %rtd, ptr noundef nonnull %cond12, ptr noundef nonnull @rsnd_kctrl_accept_runtime, ptr noundef nonnull @rsnd_src_set_convert_rate, ptr noundef %call13, ptr noundef null, i32 noundef 1, i32 noundef 192000) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end8 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_get_status(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsnd_src_debug_info(ptr noundef %m, ptr nocapture noundef readnone %io, ptr noundef %mod) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsnd_mod_id(ptr noundef %mod) #7
  %mul = shl i32 %call, 5
  tail call void @rsnd_debugfs_mod_reg_show(ptr noundef %m, ptr noundef %mod, i32 noundef 0, i32 noundef %mul, i32 noundef 32) #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.20) #7
  tail call void @rsnd_debugfs_mod_reg_show(ptr noundef %m, ptr noundef %mod, i32 noundef 0, i32 noundef 448, i32 noundef 32) #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.20) #7
  %call1 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #7
  %mul2 = shl i32 %call1, 6
  %add = add i32 %mul2, 512
  tail call void @rsnd_debugfs_mod_reg_show(ptr noundef %m, ptr noundef %mod, i32 noundef 0, i32 noundef %add, i32 noundef 64) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_src_interrupt(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rsnd_mod_interrupt(ptr noundef %data, ptr noundef nonnull @__rsnd_src_interrupt) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_dma_attach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_interrupt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__rsnd_src_interrupt(ptr noundef %mod, ptr noundef %io) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %lock = getelementptr inbounds %struct.rsnd_priv, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %call = tail call i32 @rsnd_io_is_working(ptr noundef %io) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9.critedge, label %if.end

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @rsnd_mod_id(ptr noundef %mod) #7
  %add.i = add i32 %call.i, 16
  %shl.i = shl nuw i32 1, %add.i
  %call3.i = tail call i32 @rsnd_mod_id(ptr noundef %mod) #7
  %shl4.i = shl nuw i32 1, %call3.i
  %or.i = or i32 %shl.i, %shl4.i
  %val.i = getelementptr inbounds %struct.rsnd_src, ptr %mod, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %and.i = and i32 %or.i, 65535
  %spec.select.i = select i1 %tobool.not.i, i32 %or.i, i32 %and.i
  %call5.i = tail call i32 @rsnd_mod_read(ptr noundef %mod, i32 noundef 24) #7
  %call6.i = tail call i32 @rsnd_mod_read(ptr noundef %mod, i32 noundef 25) #7
  %and7.i = and i32 %spec.select.i, %call5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %and9.i = and i32 %call6.i, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %or.cond.i = select i1 %tobool8.not.i, i1 %tobool10.not.i, i1 false
  br i1 %or.cond.i, label %if.end9.critedge18, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call13.i = tail call ptr @rsnd_mod_name(ptr noundef %mod) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.6, ptr noundef %call13.i, i32 noundef %call5.i, i32 noundef %call6.i) #10
  %call.i14.c19 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #7
  %add.i15.c20 = add i32 %call.i14.c19, 16
  %shl.i16.c21 = shl nuw i32 1, %add.i15.c20
  %call1.i.c22 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #7
  %shl2.i.c23 = shl nuw i32 1, %call1.i.c22
  %or.i17.c24 = or i32 %shl.i16.c21, %shl2.i.c23
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 24, i32 noundef %or.i17.c24) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 25, i32 noundef %or.i17.c24) #7
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  %substream = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %8 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %substream, align 4
  %call8 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %9) #7
  br label %if.end9

if.end9.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %if.end9

if.end9.critedge18:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i14.c = tail call i32 @rsnd_mod_id(ptr noundef %mod) #7
  %add.i15.c = add i32 %call.i14.c, 16
  %shl.i16.c = shl nuw i32 1, %add.i15.c
  %call1.i.c = tail call i32 @rsnd_mod_id(ptr noundef %mod) #7
  %shl2.i.c = shl nuw i32 1, %call1.i.c
  %or.i17.c = or i32 %shl.i16.c, %shl2.i.c
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 24, i32 noundef %or.i17.c) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 25, i32 noundef %or.i17.c) #7
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %if.end9

if.end9:                                          ; preds = %if.end9.critedge18, %if.end9.critedge, %do.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_io_is_working(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsnd_src_set_convert_rate(ptr noundef %io, ptr noundef %mod) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %substream = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %4 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %cond.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.end:                                         ; preds = %entry
  %runtime4 = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %runtime4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime4, align 4
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %8 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdai, align 4
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %9, i32 0, i32 1
  %cmp = icmp eq ptr %playback, %io
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %cond.end.cleanup_crit_edge, label %cond.end.i

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.end.i:                                       ; preds = %cond.end
  %arrayidx.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 6
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %runtime4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime4, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  %14 = select i1 %cmp, i1 true, i1 %tobool6.not.i
  br i1 %14, label %cond.end.i.cleanup.sink.split.i_crit_edge, label %cond.end.i.i

cond.end.i.cleanup.sink.split.i_crit_edge:        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cond.end.i.i:                                     ; preds = %cond.end.i
  %15 = ptrtoint ptr %runtime4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime4, align 4
  %tobool3.not.i.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i.i, label %cond.end.i.i.cleanup.sink.split.i_crit_edge, label %if.end.i.i

cond.end.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i.i:                                       ; preds = %cond.end.i.i
  %val.i.i = getelementptr inbounds %struct.rsnd_src, ptr %11, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %if.end9.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %converted_rate.i.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 6
  br label %if.end8.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %val10.i.i = getelementptr inbounds %struct.rsnd_src, ptr %11, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %val10.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val10.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool11.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool11.not.i.i, label %if.end14.i.i, label %if.end9.i.i.cond.end.i464_crit_edge

if.end9.i.i.cond.end.i464_crit_edge:              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i464

if.end14.i.i:                                     ; preds = %if.end9.i.i
  %converted_rate13.i.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 6
  %21 = ptrtoint ptr %converted_rate13.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %converted_rate13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool15.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool15.not.i.i, label %if.then16.i.i, label %if.end14.i.i.cond.end.i464_crit_edge

if.end14.i.i.cond.end.i464_crit_edge:             ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i464

if.then16.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rate.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 14
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then16.i.i, %if.then8.i.i
  %rate.sink.i.i = phi ptr [ %rate.i.i, %if.then16.i.i ], [ %converted_rate.i.i, %if.then8.i.i ]
  %23 = ptrtoint ptr %rate.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rate.sink.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool9.not.i = icmp eq i32 %24, 0
  br i1 %tobool9.not.i, label %if.end8.i.cleanup.sink.split.i_crit_edge, label %if.end8.i.cond.end.i464_crit_edge

if.end8.i.cond.end.i464_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i464

if.end8.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end8.i.cleanup.sink.split.i_crit_edge, %cond.end.i.i.cleanup.sink.split.i_crit_edge, %cond.end.i.cleanup.sink.split.i_crit_edge
  %rate11.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 14
  %25 = ptrtoint ptr %rate11.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rate11.i, align 4
  br label %cond.end.i464

cond.end.i464:                                    ; preds = %cleanup.sink.split.i, %if.end8.i.cond.end.i464_crit_edge, %if.end14.i.i.cond.end.i464_crit_edge, %if.end9.i.i.cond.end.i464_crit_edge
  %retval.0.i = phi i32 [ %24, %if.end8.i.cond.end.i464_crit_edge ], [ %20, %if.end9.i.i.cond.end.i464_crit_edge ], [ %22, %if.end14.i.i.cond.end.i464_crit_edge ], [ %26, %cleanup.sink.split.i ]
  %27 = ptrtoint ptr %runtime4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %runtime4, align 4
  %cmp3.i = xor i1 %cmp, true
  %29 = select i1 %cmp3.i, i1 true, i1 %tobool6.not.i
  br i1 %29, label %cond.end.i464.cleanup.sink.split.i485_crit_edge, label %cond.end.i.i467

cond.end.i464.cleanup.sink.split.i485_crit_edge:  ; preds = %cond.end.i464
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i485

cond.end.i.i467:                                  ; preds = %cond.end.i464
  %30 = ptrtoint ptr %runtime4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %runtime4, align 4
  %tobool3.not.i.i466 = icmp eq ptr %31, null
  br i1 %tobool3.not.i.i466, label %cond.end.i.i467.cleanup.sink.split.i485_crit_edge, label %if.end.i.i470

cond.end.i.i467.cleanup.sink.split.i485_crit_edge: ; preds = %cond.end.i.i467
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i485

if.end.i.i470:                                    ; preds = %cond.end.i.i467
  %val.i.i468 = getelementptr inbounds %struct.rsnd_src, ptr %11, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %val.i.i468 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val.i.i468, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool7.not.i.i469 = icmp eq i32 %33, 0
  br i1 %tobool7.not.i.i469, label %if.then8.i.i472, label %if.end9.i.i475

if.then8.i.i472:                                  ; preds = %if.end.i.i470
  call void @__sanitizer_cov_trace_pc() #9
  %converted_rate.i.i471 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 6
  br label %if.end8.i483

if.end9.i.i475:                                   ; preds = %if.end.i.i470
  %val10.i.i473 = getelementptr inbounds %struct.rsnd_src, ptr %11, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %val10.i.i473 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val10.i.i473, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool11.not.i.i474 = icmp eq i32 %35, 0
  br i1 %tobool11.not.i.i474, label %if.end14.i.i478, label %if.end9.i.i475.rsnd_src_get_rate.exit487_crit_edge

if.end9.i.i475.rsnd_src_get_rate.exit487_crit_edge: ; preds = %if.end9.i.i475
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsnd_src_get_rate.exit487

if.end14.i.i478:                                  ; preds = %if.end9.i.i475
  %converted_rate13.i.i476 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 6
  %36 = ptrtoint ptr %converted_rate13.i.i476 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %converted_rate13.i.i476, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool15.not.i.i477 = icmp eq i32 %37, 0
  br i1 %tobool15.not.i.i477, label %if.then16.i.i480, label %if.end14.i.i478.rsnd_src_get_rate.exit487_crit_edge

if.end14.i.i478.rsnd_src_get_rate.exit487_crit_edge: ; preds = %if.end14.i.i478
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsnd_src_get_rate.exit487

if.then16.i.i480:                                 ; preds = %if.end14.i.i478
  call void @__sanitizer_cov_trace_pc() #9
  %rate.i.i479 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 14
  br label %if.end8.i483

if.end8.i483:                                     ; preds = %if.then16.i.i480, %if.then8.i.i472
  %rate.sink.i.i481 = phi ptr [ %rate.i.i479, %if.then16.i.i480 ], [ %converted_rate.i.i471, %if.then8.i.i472 ]
  %38 = ptrtoint ptr %rate.sink.i.i481 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rate.sink.i.i481, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool9.not.i482 = icmp eq i32 %39, 0
  br i1 %tobool9.not.i482, label %if.end8.i483.cleanup.sink.split.i485_crit_edge, label %if.end8.i483.rsnd_src_get_rate.exit487_crit_edge

if.end8.i483.rsnd_src_get_rate.exit487_crit_edge: ; preds = %if.end8.i483
  call void @__sanitizer_cov_trace_pc() #9
  br label %rsnd_src_get_rate.exit487

if.end8.i483.cleanup.sink.split.i485_crit_edge:   ; preds = %if.end8.i483
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i485

cleanup.sink.split.i485:                          ; preds = %if.end8.i483.cleanup.sink.split.i485_crit_edge, %cond.end.i.i467.cleanup.sink.split.i485_crit_edge, %cond.end.i464.cleanup.sink.split.i485_crit_edge
  %rate11.i484 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %28, i32 0, i32 14
  %40 = ptrtoint ptr %rate11.i484 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rate11.i484, align 4
  br label %rsnd_src_get_rate.exit487

rsnd_src_get_rate.exit487:                        ; preds = %cleanup.sink.split.i485, %if.end8.i483.rsnd_src_get_rate.exit487_crit_edge, %if.end14.i.i478.rsnd_src_get_rate.exit487_crit_edge, %if.end9.i.i475.rsnd_src_get_rate.exit487_crit_edge
  %retval.0.i486 = phi i32 [ %39, %if.end8.i483.rsnd_src_get_rate.exit487_crit_edge ], [ %35, %if.end9.i.i475.rsnd_src_get_rate.exit487_crit_edge ], [ %37, %if.end14.i.i478.rsnd_src_get_rate.exit487_crit_edge ], [ %41, %cleanup.sink.split.i485 ]
  %call7 = tail call i32 @rsnd_runtime_channel_original_with_params(ptr noundef %io, ptr noundef null) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i486)
  %cmp8 = icmp eq i32 %retval.0.i, %retval.0.i486
  br i1 %cmp8, label %rsnd_src_get_rate.exit487.if.end22_crit_edge, label %if.else

rsnd_src_get_rate.exit487.if.end22_crit_edge:     ; preds = %rsnd_src_get_rate.exit487
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.else:                                          ; preds = %rsnd_src_get_rate.exit487
  %42 = call i32 @llvm.umax.i32(i32 %retval.0.i, i32 %retval.0.i486)
  %43 = call i32 @llvm.umin.i32(i32 %retval.0.i, i32 %retval.0.i486)
  %mul = mul i32 %42, 100
  %div = udiv i32 %mul, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %div)
  %cmp19 = icmp ugt i32 %div, 600
  br i1 %cmp19, label %do.end, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end22:                                         ; preds = %if.else.if.end22_crit_edge, %rsnd_src_get_rate.exit487.if.end22_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i486)
  %cmp23 = icmp ne i32 %retval.0.i, %retval.0.i486
  %conv24 = zext i1 %cmp23 to i32
  %val = getelementptr inbounds %struct.rsnd_src, ptr %mod, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val, align 4
  %or = or i32 %45, %conv24
  %call26 = tail call i32 @rsnd_get_adinr_bit(ptr noundef %mod, ptr noundef %io) #7
  %or27 = or i32 %call26, %call7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool28.not = icmp eq i32 %or, 0
  br i1 %tobool28.not, label %if.end22.if.end246_crit_edge, label %if.then29

if.end22.if.end246_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246

if.then29:                                        ; preds = %if.end22
  %conv30 = zext i32 %retval.0.i to i64
  %mul31 = shl nuw nsw i64 %conv30, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %retval.0.i)
  %cmp211 = icmp ult i32 %retval.0.i, 1024
  br i1 %cmp211, label %if.then215, label %if.else221, !prof !61

if.then215:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %conv216 = trunc i64 %mul31 to i32
  %div219 = udiv i32 %conv216, %retval.0.i486
  br label %if.then230

if.else221:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %46 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %retval.0.i486, i64 %mul31) #11, !srcloc !63
  %asmresult1.i = extractvalue { i64, i64 } %46, 1
  %extract.t527 = trunc i64 %asmresult1.i to i32
  br label %if.then230

if.then230:                                       ; preds = %if.else221, %if.then215
  %n.0.off0 = phi i32 [ %div219, %if.then215 ], [ %extract.t527, %if.else221 ]
  %47 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool236.not = icmp eq i32 %48, 0
  br i1 %tobool236.not, label %if.then230.if.end246_crit_edge, label %if.then237

if.then230.if.end246_crit_edge:                   ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end246

if.then237:                                       ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rdai, align 4
  %playback240 = getelementptr inbounds %struct.rsnd_dai, ptr %50, i32 0, i32 1
  %cmp241 = icmp eq ptr %playback240, %io
  %or244 = select i1 %cmp241, i32 16777217, i32 33554433
  br label %if.end246

if.end246:                                        ; preds = %if.then237, %if.then230.if.end246_crit_edge, %if.end22.if.end246_crit_edge
  %fsrate.0521 = phi i32 [ %n.0.off0, %if.then237 ], [ %n.0.off0, %if.then230.if.end246_crit_edge ], [ 0, %if.end22.if.end246_crit_edge ]
  %ifscr.0520 = phi i32 [ 1, %if.then237 ], [ 1, %if.then230.if.end246_crit_edge ], [ 0, %if.end22.if.end246_crit_edge ]
  %cr.0 = phi i32 [ 69905, %if.then237 ], [ 69904, %if.then230.if.end246_crit_edge ], [ 69904, %if.end22.if.end246_crit_edge ]
  %route.0 = phi i32 [ %or244, %if.then237 ], [ 1, %if.then230.if.end246_crit_edge ], [ 0, %if.end22.if.end246_crit_edge ]
  %call247 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call247)
  %51 = icmp ult i32 %call247, 10
  br i1 %51, label %switch.lookup, label %if.end246.do.end291_crit_edge

if.end246.do.end291_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end291

switch.lookup:                                    ; preds = %if.end246
  %switch.gep = getelementptr inbounds [10 x ptr], ptr @switch.table.rsnd_src_set_convert_rate, i32 0, i32 %call247
  %52 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %52)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep532 = getelementptr inbounds [10 x ptr], ptr @switch.table.rsnd_src_set_convert_rate.21, i32 0, i32 %call247
  %53 = ptrtoint ptr %switch.gep532 to i32
  call void @__asan_load4_noabort(i32 %53)
  %switch.load533 = load ptr, ptr %switch.gep532, align 4
  %flags = getelementptr inbounds %struct.rsnd_priv, ptr %1, i32 0, i32 2
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 4
  %and251 = and i32 %55, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %and251)
  %cmp252 = icmp eq i32 %and251, 19
  br i1 %cmp252, label %if.then254, label %switch.lookup.if.end258_crit_edge

switch.lookup.if.end258_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

if.then254:                                       ; preds = %switch.lookup
  %call255 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #7
  %56 = zext i32 %call255 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call255, label %if.then254.if.end258_crit_edge [
    i32 0, label %if.then254.sw.bb256_crit_edge
    i32 4, label %if.then254.sw.bb256_crit_edge534
  ]

if.then254.sw.bb256_crit_edge534:                 ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb256

if.then254.sw.bb256_crit_edge:                    ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb256

if.then254.if.end258_crit_edge:                   ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end258

sw.bb256:                                         ; preds = %if.then254.sw.bb256_crit_edge, %if.then254.sw.bb256_crit_edge534
  br label %if.end258

if.end258:                                        ; preds = %sw.bb256, %if.then254.if.end258_crit_edge, %switch.lookup.if.end258_crit_edge
  %chptn.1 = phi ptr [ %switch.load533, %if.then254.if.end258_crit_edge ], [ @chan222222, %sw.bb256 ], [ %switch.load533, %switch.lookup.if.end258_crit_edge ]
  %shl261 = shl nuw i32 1, %call7
  %57 = ptrtoint ptr %chptn.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %chptn.1, align 4
  %and262 = and i32 %58, %shl261
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262)
  %tobool263.not = icmp eq i32 %and262, 0
  br i1 %tobool263.not, label %for.inc, label %if.end258.for.end_crit_edge

if.end258.for.end_crit_edge:                      ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %if.end258
  %arrayidx.1 = getelementptr i32, ptr %chptn.1, i32 1
  %59 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.1, align 4
  %and262.1 = and i32 %60, %shl261
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262.1)
  %tobool263.not.1 = icmp eq i32 %and262.1, 0
  br i1 %tobool263.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr i32, ptr %chptn.1, i32 2
  %61 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.2, align 4
  %and262.2 = and i32 %62, %shl261
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262.2)
  %tobool263.not.2 = icmp eq i32 %and262.2, 0
  br i1 %tobool263.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr i32, ptr %chptn.1, i32 3
  %63 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.3, align 4
  %and262.3 = and i32 %64, %shl261
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262.3)
  %tobool263.not.3 = icmp eq i32 %and262.3, 0
  br i1 %tobool263.not.3, label %for.inc.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr i32, ptr %chptn.1, i32 4
  %65 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.4, align 4
  %and262.4 = and i32 %66, %shl261
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262.4)
  %tobool263.not.4 = icmp eq i32 %and262.4, 0
  br i1 %tobool263.not.4, label %for.inc.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr i32, ptr %chptn.1, i32 5
  %67 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.5, align 4
  %and262.5 = and i32 %68, %shl261
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262.5)
  %tobool263.not.5 = icmp eq i32 %and262.5, 0
  br i1 %tobool263.not.5, label %for.inc.4.do.end291_crit_edge, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.4.do.end291_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end291

for.end:                                          ; preds = %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end258.for.end_crit_edge
  %idx.0530.lcssa = phi i32 [ 0, %if.end258.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call7)
  %cmp266 = icmp sgt i32 %call7, 8
  br i1 %cmp266, label %for.end.do.end291_crit_edge, label %if.end271

for.end.do.end291_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end291

if.end271:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call272 = tail call i32 @rsnd_get_busif_shift(ptr noundef %io, ptr noundef %mod) #7
  %phi.bo = or i32 %call272, 1
  %spec.select = select i1 %cmp, i32 %phi.bo, i32 1
  %cond283 = select i1 %cmp, i32 1, i32 %phi.bo
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 2, i32 noundef %route.0) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 4, i32 noundef 1) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 5, i32 noundef %or27) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 6, i32 noundef %ifscr.0520) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 7, i32 noundef %fsrate.0521) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 8, i32 noundef %cr.0) #7
  %arrayidx285 = getelementptr i32, ptr %switch.load, i32 %idx.0530.lcssa
  %69 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx285, align 4
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 10, i32 noundef %70) #7
  %arrayidx286 = getelementptr [6 x i32], ptr @bsisr_table, i32 0, i32 %idx.0530.lcssa
  %71 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx286, align 4
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 11, i32 noundef %72) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 4, i32 noundef 0) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 0, i32 noundef %spec.select) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 1, i32 noundef %cond283) #7
  %call287 = tail call i32 @rsnd_get_dalign(ptr noundef %mod, ptr noundef %io) #7
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 13, i32 noundef %call287) #7
  %call288 = tail call i32 @rsnd_adg_set_src_timesel_gen2(ptr noundef %mod, ptr noundef %io, i32 noundef %retval.0.i, i32 noundef %retval.0.i486) #7
  br label %cleanup

do.end291:                                        ; preds = %for.end.do.end291_crit_edge, %for.inc.4.do.end291_crit_edge, %if.end246.do.end291_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.14) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end291, %if.end271, %do.end, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_channel_original_with_params(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_get_adinr_bit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_get_busif_shift(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_get_dalign(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_adg_set_src_timesel_gen2(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_bset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_kctrl_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_kctrl_accept_anytime(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_kctrl_init_s(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_kctrl_accept_runtime(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_debugfs_mod_reg_show(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !46, !48, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sh/rcar/src.c", i32 635, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/sh/rcar/src.c", i32 655, i32 9}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/sh/rcar/src.c", i32 659, i32 35}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/sh/rcar/src.c", i32 683, i32 38}
!8 = !{ptr @rsnd_src_ops, !9, !"rsnd_src_ops", i1 false, i1 false}
!9 = !{!"../sound/soc/sh/rcar/src.c", i32 619, i32 28}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/sh/rcar/src.c", i32 86, i32 16}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/sh/rcar/src.c", i32 86, i32 23}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/sh/rcar/src.c", i32 424, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rsnd_src_error_occurred._entry, !15, !"_entry", i1 false, i1 false}
!20 = !{ptr @rsnd_src_error_occurred._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/sh/rcar/src.c", i32 235, i32 3}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rsnd_src_set_convert_rate._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @rsnd_src_set_convert_rate._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/sh/rcar/src.c", i32 353, i32 2}
!29 = !{ptr @rsnd_src_set_convert_rate._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rsnd_src_set_convert_rate._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @chan288888, !32, !"chan288888", i1 false, i1 false}
!32 = !{!"../sound/soc/sh/rcar/src.c", i32 173, i32 18}
!33 = !{ptr @bsdsr_table_pattern1, !34, !"bsdsr_table_pattern1", i1 false, i1 false}
!34 = !{!"../sound/soc/sh/rcar/src.c", i32 146, i32 18}
!35 = !{ptr @chan244888, !36, !"chan244888", i1 false, i1 false}
!36 = !{!"../sound/soc/sh/rcar/src.c", i32 182, i32 18}
!37 = !{ptr @chan222222, !38, !"chan222222", i1 false, i1 false}
!38 = !{!"../sound/soc/sh/rcar/src.c", i32 191, i32 18}
!39 = !{ptr @bsdsr_table_pattern2, !40, !"bsdsr_table_pattern2", i1 false, i1 false}
!40 = !{!"../sound/soc/sh/rcar/src.c", i32 155, i32 18}
!41 = !{ptr @bsisr_table, !42, !"bsisr_table", i1 false, i1 false}
!42 = !{!"../sound/soc/sh/rcar/src.c", i32 164, i32 18}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/sh/rcar/src.c", i32 579, i32 8}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/sh/rcar/src.c", i32 589, i32 8}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/sh/rcar/src.c", i32 607, i32 14}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"branch_weights", i32 1073205, i32 2146410443}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{i64 2148669939, i64 2148670219, i64 2148670553, i64 2148670887}
