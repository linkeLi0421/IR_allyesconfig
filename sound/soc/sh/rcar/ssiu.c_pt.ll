; ModuleID = '/llk/IR_all_yes/sound/soc/sh/rcar/ssiu.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/ssiu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rsnd_mod_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
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
%struct.rsnd_dai = type { [16 x i8], %struct.rsnd_dai_stream, %struct.rsnd_dai_stream, ptr, %struct.snd_pcm_hw_constraint_list, i32, i32, i32, i8 }
%struct.rsnd_dai_stream = type { [16 x i8], ptr, [13 x ptr], ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.rsnd_priv = type { ptr, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32 }
%struct.rsnd_ssiu = type { %struct.rsnd_mod, [8 x i32], i32, i32, i32 }

@rsnd_ssiu_busif_err_status_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 118, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s err status : 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rsnd_ssiu_busif_err_status_clear\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/sh/rcar/ssiu.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rsnd_ssiu_busif_err_status_clear._entry_ptr = internal global ptr @rsnd_ssiu_busif_err_status_clear._entry, section ".printk_index", align 4
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rcar_sound,ssiu\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssiu\00", [27 x i8] zeroinitializer }, align 32
@rsnd_ssiu_ops_gen1 = internal global { %struct.rsnd_mod_ops, [44 x i8] } { %struct.rsnd_mod_ops { ptr @.str.6, ptr null, ptr null, ptr null, ptr @rsnd_ssiu_init, ptr @rsnd_ssiu_quit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_ssiu_get_status, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@rsnd_ssiu_ops_gen2 = internal global { %struct.rsnd_mod_ops, [44 x i8] } { %struct.rsnd_mod_ops { ptr @.str.6, ptr @rsnd_ssiu_dma_req, ptr null, ptr null, ptr @rsnd_ssiu_init_gen2, ptr null, ptr @rsnd_ssiu_start_gen2, ptr @rsnd_ssiu_stop_gen2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_ssiu_get_status, ptr null, ptr null, ptr null, ptr @rsnd_ssiu_debug_info }, [44 x i8] zeroinitializer }, align 32
@gen2_id = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 4, i32 8, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18], [56 x i8] zeroinitializer }, align 32
@gen3_id = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 41, i32 42, i32 43, i32 44], [56 x i8] zeroinitializer }, align 32
@rsnd_ssiu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 547, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unknown SSIU\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rsnd_ssiu_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rsnd_ssiu_probe._entry_ptr = internal global ptr @rsnd_ssiu_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@__const.rsnd_ssiu_init_gen2.rsnd_ssi_array = private unnamed_addr constant [3 x i32] [i32 9, i32 8, i32 7], align 4
@switch.table.rsnd_ssiu_busif_err_status_clear = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 -4, i32 -4, i32 -4, i32 -4, i32 4], [56 x i8] zeroinitializer }, align 32
@switch.table.rsnd_ssiu_busif_err_status_clear.12 = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 135, i32 135, i32 135, i32 135, i32 135, i32 134, i32 134, i32 134, i32 134, i32 136], [56 x i8] zeroinitializer }, align 32
@switch.table.rsnd_ssiu_busif_err_irq_ctrl = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 -4, i32 -4, i32 -4, i32 -4, i32 4], [56 x i8] zeroinitializer }, align 32
@switch.table.rsnd_ssiu_busif_err_irq_ctrl.13 = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 143, i32 143, i32 143, i32 143, i32 143, i32 142, i32 142, i32 142, i32 142, i32 144], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 117, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 463, i32 29 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 475, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"rsnd_ssiu_ops_gen1\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 226, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c"rsnd_ssiu_ops_gen2\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 414, i32 28 }
@___asan_gen_.44 = private unnamed_addr constant [8 x i8] c"gen2_id\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 45, i32 18 }
@___asan_gen_.47 = private unnamed_addr constant [8 x i8] c"gen3_id\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 46, i32 18 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 547, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 395, i32 19 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [28 x i8] c"../sound/soc/sh/rcar/ssiu.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 395, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant [46 x i8] c"switch.table.rsnd_ssiu_busif_err_status_clear\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [49 x i8] c"switch.table.rsnd_ssiu_busif_err_status_clear.12\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [42 x i8] c"switch.table.rsnd_ssiu_busif_err_irq_ctrl\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [45 x i8] c"switch.table.rsnd_ssiu_busif_err_irq_ctrl.13\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @rsnd_ssiu_busif_err_status_clear._entry, ptr @rsnd_ssiu_busif_err_status_clear._entry_ptr, ptr @rsnd_ssiu_probe._entry, ptr @rsnd_ssiu_probe._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rsnd_ssiu_ops_gen1, ptr @rsnd_ssiu_ops_gen2, ptr @gen2_id, ptr @gen3_id, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @switch.table.rsnd_ssiu_busif_err_status_clear, ptr @switch.table.rsnd_ssiu_busif_err_status_clear.12, ptr @switch.table.rsnd_ssiu_busif_err_irq_ctrl, ptr @switch.table.rsnd_ssiu_busif_err_irq_ctrl.13], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_ssiu_busif_err_status_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_ssiu_ops_gen1 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_ssiu_ops_gen2 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen2_id to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen3_id to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_ssiu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rsnd_ssiu_busif_err_status_clear to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rsnd_ssiu_busif_err_status_clear.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rsnd_ssiu_busif_err_irq_ctrl to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rsnd_ssiu_busif_err_irq_ctrl.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rsnd_ssiu_busif_err_status_clear(ptr noundef %mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsnd_mod_id(ptr noundef %mod) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call)
  %0 = icmp ult i32 %call, 10
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.rsnd_ssiu_busif_err_status_clear, i32 0, i32 %call
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep26 = getelementptr inbounds [10 x i32], ptr @switch.table.rsnd_ssiu_busif_err_status_clear.12, i32 0, i32 %call
  %2 = ptrtoint ptr %switch.gep26 to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load27 = load i32, ptr %switch.gep26, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %shift.0 = phi i32 [ -4, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %offset.0 = phi i32 [ 134, %entry.sw.epilog_crit_edge ], [ %switch.load27, %switch.lookup ]
  %shl = shl nuw nsw i32 15, %shift.0
  %priv5 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %call3 = tail call i32 @rsnd_mod_read(ptr noundef %mod, i32 noundef %offset.0) #6
  %and = and i32 %call3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %priv5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv5, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %call8 = tail call ptr @rsnd_mod_name(ptr noundef %mod) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev6, ptr noundef nonnull @.str, ptr noundef %call8, i32 noundef %and) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %7 = xor i1 %tobool.not, true
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef %offset.0, i32 noundef %shl) #6
  %add2.1 = add nuw nsw i32 %offset.0, 2
  %call3.1 = tail call i32 @rsnd_mod_read(ptr noundef %mod, i32 noundef %add2.1) #6
  %and.1 = and i32 %call3.1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %priv5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv5, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev6.1 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %call8.1 = tail call ptr @rsnd_mod_name(ptr noundef %mod) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev6.1, ptr noundef nonnull @.str, ptr noundef %call8.1, i32 noundef %and.1) #9
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %error.1.off0.1 = phi i1 [ true, %if.then.1 ], [ %7, %if.end.if.end.1_crit_edge ]
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef %add2.1, i32 noundef %shl) #6
  %add2.2 = add nuw nsw i32 %offset.0, 4
  %call3.2 = tail call i32 @rsnd_mod_read(ptr noundef %mod, i32 noundef %add2.2) #6
  %and.2 = and i32 %call3.2, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %priv5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv5, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %dev6.2 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %call8.2 = tail call ptr @rsnd_mod_name(ptr noundef %mod) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev6.2, ptr noundef nonnull @.str, ptr noundef %call8.2, i32 noundef %and.2) #9
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %error.1.off0.2 = phi i1 [ true, %if.then.2 ], [ %error.1.off0.1, %if.end.1.if.end.2_crit_edge ]
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef %add2.2, i32 noundef %shl) #6
  %add2.3 = add nuw nsw i32 %offset.0, 6
  %call3.3 = tail call i32 @rsnd_mod_read(ptr noundef %mod, i32 noundef %add2.3) #6
  %and.3 = and i32 %call3.3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %priv5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv5, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %dev6.3 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %call8.3 = tail call ptr @rsnd_mod_name(ptr noundef %mod) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev6.3, ptr noundef nonnull @.str, ptr noundef %call8.3, i32 noundef %and.3) #9
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %error.1.off0.3 = phi i1 [ true, %if.then.3 ], [ %error.1.off0.2, %if.end.2.if.end.3_crit_edge ]
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef %add2.3, i32 noundef %shl) #6
  ret i1 %error.1.off0.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsnd_parse_connect_ssiu(ptr noundef %rdai, ptr noundef readnone %playback, ptr noundef readnone %capture) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rsnd_dai, ptr %rdai, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %5, ptr noundef nonnull @.str.5) #6
  %playback2 = getelementptr inbounds %struct.rsnd_dai, ptr %rdai, i32 0, i32 1
  %capture3 = getelementptr inbounds %struct.rsnd_dai, ptr %rdai, i32 0, i32 2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cond.true_crit_edge, label %if.then

entry.cond.true_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

if.then:                                          ; preds = %entry
  %call4 = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #6
  %cmp.not49 = icmp eq ptr %call4, null
  br i1 %cmp.not49, label %if.then.for.end_crit_edge, label %for.body.lr.ph

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %ssiu_nr.i = getelementptr inbounds %struct.rsnd_priv, ptr %1, i32 0, i32 9
  %ssiu.i = getelementptr inbounds %struct.rsnd_priv, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end14.for.body_crit_edge ]
  %np.050 = phi ptr [ %call4, %for.body.lr.ph ], [ %call15, %if.end14.for.body_crit_edge ]
  %call5 = tail call i32 @rsnd_node_fixed_index(ptr noundef nonnull %np.050, ptr noundef nonnull @.str.6, i32 noundef %i.051) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.i = icmp slt i32 %call5, 0
  br i1 %cmp.i, label %for.body.do.end.i_crit_edge, label %lor.end.i, !prof !39

for.body.do.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.end.i:                                        ; preds = %for.body
  %6 = ptrtoint ptr %ssiu_nr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ssiu_nr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call5)
  %cmp1.not.i = icmp sgt i32 %7, %call5
  br i1 %cmp1.not.i, label %lor.end.i.rsnd_ssiu_mod_get.exit_crit_edge, label %lor.end.i.do.end.i_crit_edge, !prof !40

lor.end.i.do.end.i_crit_edge:                     ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.end.i.rsnd_ssiu_mod_get.exit_crit_edge:       ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rsnd_ssiu_mod_get.exit

do.end.i:                                         ; preds = %lor.end.i.do.end.i_crit_edge, %for.body.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 426, i32 noundef 9, ptr noundef null) #6
  br label %rsnd_ssiu_mod_get.exit

rsnd_ssiu_mod_get.exit:                           ; preds = %do.end.i, %lor.end.i.rsnd_ssiu_mod_get.exit_crit_edge
  %8 = phi i32 [ 0, %do.end.i ], [ %call5, %lor.end.i.rsnd_ssiu_mod_get.exit_crit_edge ]
  %9 = ptrtoint ptr %ssiu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ssiu.i, align 4
  %add.ptr.i = getelementptr %struct.rsnd_ssiu, ptr %10, i32 %8
  %cmp7 = icmp eq ptr %np.050, %playback
  br i1 %cmp7, label %if.then8, label %rsnd_ssiu_mod_get.exit.if.end_crit_edge

rsnd_ssiu_mod_get.exit.if.end_crit_edge:          ; preds = %rsnd_ssiu_mod_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then8:                                         ; preds = %rsnd_ssiu_mod_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %type = getelementptr inbounds %struct.rsnd_mod, ptr %add.ptr.i, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  %call9 = tail call i32 @rsnd_dai_connect(ptr noundef %add.ptr.i, ptr noundef %playback2, i32 noundef %12) #6
  br label %if.end

if.end:                                           ; preds = %if.then8, %rsnd_ssiu_mod_get.exit.if.end_crit_edge
  %cmp10 = icmp eq ptr %np.050, %capture
  br i1 %cmp10, label %if.then11, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %type12 = getelementptr inbounds %struct.rsnd_mod, ptr %add.ptr.i, i32 0, i32 1
  %13 = ptrtoint ptr %type12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type12, align 4
  %call13 = tail call i32 @rsnd_dai_connect(ptr noundef %add.ptr.i, ptr noundef %capture3, i32 noundef %14) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %inc = add i32 %call5, 1
  %call15 = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %np.050) #6
  %cmp.not = icmp eq ptr %call15, null
  br i1 %cmp.not, label %if.end14.for.end_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call) #6
  br label %cond.true

cond.true:                                        ; preds = %for.end, %entry.cond.true_crit_edge
  %arrayidx = getelementptr %struct.rsnd_dai, ptr %rdai, i32 0, i32 1, i32 2, i32 12
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %if.then19, label %cond.true.cond.true21_crit_edge

cond.true.cond.true21_crit_edge:                  ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true21

if.then19:                                        ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rsnd_parse_connect_ssiu_compatible(ptr noundef %1, ptr noundef %playback2)
  br label %cond.true21

cond.true21:                                      ; preds = %if.then19, %cond.true.cond.true21_crit_edge
  %arrayidx23 = getelementptr %struct.rsnd_dai, ptr %rdai, i32 0, i32 2, i32 2, i32 12
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx23, align 4
  %tobool24.not = icmp eq ptr %18, null
  br i1 %tobool24.not, label %if.then26, label %cond.true21.if.end27_crit_edge

cond.true21.if.end27_crit_edge:                   ; preds = %cond.true21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then26:                                        ; preds = %cond.true21
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rsnd_parse_connect_ssiu_compatible(ptr noundef %1, ptr noundef %capture3)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %cond.true21.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_node_fixed_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_dai_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsnd_parse_connect_ssiu_compatible(ptr nocapture noundef readonly %priv, ptr noundef %io) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup15_crit_edge, label %if.end

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup15

if.end:                                           ; preds = %entry
  %call = tail call i32 @rsnd_ssi_is_dma_mode(ptr noundef nonnull %1) #6
  %ssiu_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 9
  %2 = ptrtoint ptr %ssiu_nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ssiu_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp30 = icmp sgt i32 %3, 0
  br i1 %cmp30, label %land.rhs.lr.ph, label %if.end.cleanup15_crit_edge

if.end.cleanup15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup15

land.rhs.lr.ph:                                   ; preds = %if.end
  %ssiu1 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.031 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %ssiu1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ssiu1, align 4
  %add.ptr = getelementptr %struct.rsnd_ssiu, ptr %5, i32 %i.031
  %tobool2.not = icmp eq ptr %add.ptr, null
  br i1 %tobool2.not, label %land.rhs.cleanup15_crit_edge, label %for.body

land.rhs.cleanup15_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup15

for.body:                                         ; preds = %land.rhs
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %call6 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %1) #6
  %call7 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %add.ptr) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %call7)
  %cmp8 = icmp eq i32 %call6, %call7
  br i1 %cmp8, label %land.lhs.true9, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true9:                                   ; preds = %land.lhs.true
  %call10 = tail call i32 @rsnd_mod_id_sub(ptr noundef nonnull %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %land.lhs.true9.for.inc_crit_edge

land.lhs.true9.for.inc_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then12:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  %type = getelementptr inbounds %struct.rsnd_mod, ptr %add.ptr, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %call13 = tail call i32 @rsnd_dai_connect(ptr noundef nonnull %add.ptr, ptr noundef %io, i32 noundef %7) #6
  br label %cleanup15

for.inc:                                          ; preds = %land.lhs.true9.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %8 = ptrtoint ptr %ssiu_nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ssiu_nr, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.cleanup15_crit_edge

for.inc.cleanup15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup15

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

cleanup15:                                        ; preds = %for.inc.cleanup15_crit_edge, %if.then12, %land.rhs.cleanup15_crit_edge, %if.end.cleanup15_crit_edge, %entry.cleanup15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_ssiu_probe(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull @.str.5) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @rsnd_node_count(ptr noundef %priv, ptr noundef nonnull %call, ptr noundef nonnull @.str.6) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ssi_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %ssi_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ssi_nr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %nr.0 = phi i32 [ %call4, %if.then ], [ %5, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.0)
  %tobool5.not = icmp eq i32 %nr.0, 0
  br i1 %tobool5.not, label %if.end.cleanup58_crit_edge, label %if.end7

if.end.cleanup58_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

if.end7:                                          ; preds = %if.end
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr.0, i32 68) #6
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end7.cleanup58_crit_edge, label %devm_kcalloc.exit, !prof !41

if.end7.cleanup58_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

devm_kcalloc.exit:                                ; preds = %if.end7
  %8 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %8, i32 noundef 3520) #6
  %tobool9.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool9.not, label %devm_kcalloc.exit.cleanup58_crit_edge, label %if.end11

devm_kcalloc.exit.cleanup58_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

if.end11:                                         ; preds = %devm_kcalloc.exit
  %ssiu12 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 8
  %9 = ptrtoint ptr %ssiu12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i.i, ptr %ssiu12, align 4
  %ssiu_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 9
  %10 = ptrtoint ptr %ssiu_nr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %nr.0, ptr %ssiu_nr, align 4
  %flags = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  %rsnd_ssiu_ops_gen1.rsnd_ssiu_ops_gen2 = select i1 %cmp, ptr @rsnd_ssiu_ops_gen1, ptr @rsnd_ssiu_ops_gen2
  %brmerge = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %brmerge, label %if.end11.if.end31_crit_edge, label %if.then18

if.end11.if.end31_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then18:                                        ; preds = %if.end11
  store ptr @rsnd_ssiu_id, ptr getelementptr inbounds (%struct.rsnd_mod_ops, ptr @rsnd_ssiu_ops_gen2, i32 0, i32 17), align 4
  store ptr @rsnd_ssiu_id_sub, ptr getelementptr inbounds (%struct.rsnd_mod_ops, ptr @rsnd_ssiu_ops_gen2, i32 0, i32 18), align 4
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and20 = and i32 %14, 15
  %15 = zext i32 %and20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and20, label %do.end [
    i32 2, label %if.then18.if.end31_crit_edge
    i32 3, label %if.then27
  ]

if.then18.if.end31_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then27:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup58

if.end31:                                         ; preds = %if.then27, %if.then18.if.end31_crit_edge, %if.end11.if.end31_crit_edge
  %list.0 = phi ptr [ @gen3_id, %if.then27 ], [ null, %if.end11.if.end31_crit_edge ], [ @gen2_id, %if.then18.if.end31_crit_edge ]
  %nr.1 = phi i32 [ 10, %if.then27 ], [ 0, %if.end11.if.end31_crit_edge ], [ 10, %if.then18.if.end31_crit_edge ]
  %16 = ptrtoint ptr %ssiu_nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ssiu_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp33107 = icmp sgt i32 %17, 0
  br i1 %cmp33107, label %land.rhs.lr.ph, label %if.end31.cleanup58_crit_edge

if.end31.cleanup58_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

land.rhs.lr.ph:                                   ; preds = %if.end31
  %umax = call i32 @llvm.umax.i32(i32 %nr.1, i32 1)
  br label %land.rhs

for.cond:                                         ; preds = %if.end50
  %inc56 = add nuw nsw i32 %i.0108, 1
  %18 = ptrtoint ptr %ssiu_nr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ssiu_nr, align 4
  %cmp33 = icmp slt i32 %inc56, %19
  br i1 %cmp33, label %for.cond.land.rhs_crit_edge, label %for.cond.cleanup58_crit_edge

for.cond.cleanup58_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

for.cond.land.rhs_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

land.rhs:                                         ; preds = %for.cond.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0108 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc56, %for.cond.land.rhs_crit_edge ]
  %20 = ptrtoint ptr %ssiu12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ssiu12, align 4
  %add.ptr = getelementptr %struct.rsnd_ssiu, ptr %21, i32 %i.0108
  %tobool35.not = icmp eq ptr %add.ptr, null
  br i1 %tobool35.not, label %land.rhs.cleanup58_crit_edge, label %for.body

land.rhs.cleanup58_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

for.body:                                         ; preds = %land.rhs
  br i1 %tobool.not, label %if.else48, label %for.cond38.preheader

for.cond38.preheader:                             ; preds = %for.body
  br i1 %brmerge, label %for.cond38.preheader.if.end50_crit_edge, label %for.body40.lr.ph

for.cond38.preheader.if.end50_crit_edge:          ; preds = %for.cond38.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

for.body40.lr.ph:                                 ; preds = %for.cond38.preheader
  %id44 = getelementptr %struct.rsnd_ssiu, ptr %21, i32 %i.0108, i32 3
  %id_sub47 = getelementptr %struct.rsnd_ssiu, ptr %21, i32 %i.0108, i32 4
  br label %for.body40

for.body40:                                       ; preds = %if.end43.for.body40_crit_edge, %for.body40.lr.ph
  %j.0106 = phi i32 [ 0, %for.body40.lr.ph ], [ %inc, %if.end43.for.body40_crit_edge ]
  %arrayidx = getelementptr i32, ptr %list.0, i32 %j.0106
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %i.0108)
  %cmp41 = icmp sgt i32 %23, %i.0108
  br i1 %cmp41, label %for.body40.if.end50_crit_edge, label %if.end43

for.body40.if.end50_crit_edge:                    ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.end43:                                         ; preds = %for.body40
  %24 = ptrtoint ptr %id44 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %j.0106, ptr %id44, align 4
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 %i.0108, %26
  %27 = ptrtoint ptr %id_sub47 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %id_sub47, align 4
  %inc = add nuw nsw i32 %j.0106, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end43.if.end50_crit_edge, label %if.end43.for.body40_crit_edge

if.end43.for.body40_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body40

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.else48:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %id49 = getelementptr %struct.rsnd_ssiu, ptr %21, i32 %i.0108, i32 3
  %28 = ptrtoint ptr %id49 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %i.0108, ptr %id49, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.end43.if.end50_crit_edge, %for.body40.if.end50_crit_edge, %for.cond38.preheader.if.end50_crit_edge
  %call51 = tail call i32 @rsnd_mod_init(ptr noundef %priv, ptr noundef nonnull %add.ptr, ptr noundef nonnull %rsnd_ssiu_ops_gen1.rsnd_ssiu_ops_gen2, ptr noundef null, i32 noundef 12, i32 noundef %i.0108) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %for.cond, label %if.end50.cleanup58_crit_edge

if.end50.cleanup58_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

cleanup58:                                        ; preds = %if.end50.cleanup58_crit_edge, %land.rhs.cleanup58_crit_edge, %for.cond.cleanup58_crit_edge, %if.end31.cleanup58_crit_edge, %do.end, %devm_kcalloc.exit.cleanup58_crit_edge, %if.end7.cleanup58_crit_edge, %if.end.cleanup58_crit_edge
  %retval.2 = phi i32 [ -19, %do.end ], [ -22, %if.end.cleanup58_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup58_crit_edge ], [ -12, %if.end7.cleanup58_crit_edge ], [ 0, %if.end31.cleanup58_crit_edge ], [ %call51, %if.end50.cleanup58_crit_edge ], [ 0, %for.cond.cleanup58_crit_edge ], [ 0, %land.rhs.cleanup58_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_node_count(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsnd_ssiu_id(ptr nocapture noundef readonly %mod) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.rsnd_ssiu, ptr %mod, i32 0, i32 3
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsnd_ssiu_id_sub(ptr nocapture noundef readonly %mod) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id_sub = getelementptr inbounds %struct.rsnd_ssiu, ptr %mod, i32 0, i32 4
  %0 = ptrtoint ptr %id_sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id_sub, align 4
  ret i32 %1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsnd_ssiu_remove(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ssiu1 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 8
  %ssiu_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %ssiu_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ssiu_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %entry.land.rhs_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %ssiu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ssiu1, align 4
  %add.ptr = getelementptr %struct.rsnd_ssiu, ptr %3, i32 %i.06
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %land.rhs
  tail call void @rsnd_mod_quit(ptr noundef nonnull %add.ptr) #6
  %inc = add nuw nsw i32 %i.06, 1
  %4 = ptrtoint ptr %ssiu_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ssiu_nr, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.land.rhs_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_quit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_ssi_is_dma_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id_sub(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ssiu_init(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rdai1 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %0 = ptrtoint ptr %rdai1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdai1, align 4
  %call = tail call i32 @rsnd_ssi_multi_secondaries_runtime(ptr noundef %io) #6
  %call2 = tail call i32 @rsnd_ssi_use_busif(ptr noundef %io) #6
  %call3 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #6
  %clk_master = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %clk_master to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %clk_master, align 4
  %call4 = tail call zeroext i1 @rsnd_ssiu_busif_err_status_clear(ptr noundef %mod)
  %shl = shl nuw i32 1, %call3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %shl5 = shl nuw i32 %lnot.ext, %call3
  tail call void @rsnd_mod_bset(ptr noundef %mod, i32 noundef 105, i32 noundef %shl, i32 noundef %shl5) #6
  %call6 = tail call i32 @rsnd_mod_read(ptr noundef %mod, i32 noundef 106) #6
  %call7 = tail call i32 @rsnd_mod_read(ptr noundef %mod, i32 noundef 107) #6
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 11
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call9 = tail call i32 @__rsnd_ssi_is_pin_sharing(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %shl, %call
  br label %if.end25

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.else.if.end25_crit_edge, label %if.then13

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and = shl i32 %call, 16
  %5 = and i32 %and, 1048576
  %6 = or i32 %call6, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call)
  %cmp = icmp eq i32 %call, 6
  %or18 = or i32 %6, 16
  %val1.1 = select i1 %cmp, i32 %or18, i32 %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 518, i32 %call)
  %cmp20 = icmp eq i32 %call, 518
  %or22 = or i32 %call7, 16
  %spec.select84 = select i1 %cmp20, i32 %or22, i32 %call7
  br label %if.end25

if.end25:                                         ; preds = %if.then13, %if.else.if.end25_crit_edge, %if.then
  %ssis.0 = phi i32 [ %or, %if.then ], [ 0, %if.else.if.end25_crit_edge ], [ %call, %if.then13 ]
  %val1.2 = phi i32 [ %call6, %if.then ], [ %call6, %if.else.if.end25_crit_edge ], [ %val1.1, %if.then13 ]
  %val2.0 = phi i32 [ %call7, %if.then ], [ %call7, %if.else.if.end25_crit_edge ], [ %spec.select84, %if.then13 ]
  %and26 = and i32 %ssis.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool29.not = icmp sgt i8 %bf.load, -1
  %cond = select i1 %tobool29.not, i32 1, i32 2
  %or30 = select i1 %tobool27.not, i32 0, i32 %cond
  %val1.3 = or i32 %or30, %val1.2
  %and32 = and i32 %ssis.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %cond36 = select i1 %tobool29.not, i32 4, i32 8
  %or37 = select i1 %tobool33.not, i32 0, i32 %cond36
  %val1.4 = or i32 %val1.3, %or37
  %and39 = and i32 %ssis.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %cond43 = select i1 %tobool29.not, i32 65536, i32 131072
  %or44 = select i1 %tobool40.not, i32 0, i32 %cond43
  %val1.5 = or i32 %val1.4, %or44
  %and46 = and i32 %ssis.0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %or51 = select i1 %tobool47.not, i32 0, i32 %cond
  %val2.1 = or i32 %or51, %val2.0
  tail call void @rsnd_mod_bset(ptr noundef %mod, i32 noundef 106, i32 noundef 1245215, i32 noundef %val1.5) #6
  tail call void @rsnd_mod_bset(ptr noundef %mod, i32 noundef 107, i32 noundef 23, i32 noundef %val2.1) #6
  tail call fastcc void @rsnd_ssiu_busif_err_irq_ctrl(ptr noundef %mod, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ssiu_quit(ptr noundef %mod, ptr nocapture noundef readnone %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rsnd_ssiu_busif_err_irq_ctrl(ptr noundef %mod, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rsnd_ssiu_get_status(ptr noundef %mod, ptr nocapture noundef readnone %io, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsnd_mod_id_sub(ptr noundef %mod) #6
  %arrayidx = getelementptr %struct.rsnd_ssiu, ptr %mod, i32 0, i32 1, i32 %call
  ret ptr %arrayidx
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_ssi_multi_secondaries_runtime(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_ssi_use_busif(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_bset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rsnd_ssi_is_pin_sharing(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsnd_ssiu_busif_err_irq_ctrl(ptr noundef %mod, i32 noundef %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsnd_mod_id(ptr noundef %mod) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call)
  %0 = icmp ult i32 %call, 10
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.rsnd_ssiu_busif_err_irq_ctrl, i32 0, i32 %call
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep15 = getelementptr inbounds [10 x i32], ptr @switch.table.rsnd_ssiu_busif_err_irq_ctrl.13, i32 0, i32 %call
  %2 = ptrtoint ptr %switch.gep15 to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load16 = load i32, ptr %switch.gep15, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %shift.0 = phi i32 [ -4, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %offset.0 = phi i32 [ 142, %entry.sw.epilog_crit_edge ], [ %switch.load16, %switch.lookup ]
  %shl = shl nuw nsw i32 15, %shift.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %neg = xor i32 %shl, -1
  %call4 = tail call i32 @rsnd_mod_read(ptr noundef %mod, i32 noundef %offset.0) #6
  %or = or i32 %call4, %shl
  %and = and i32 %call4, %neg
  %sys_int_enable.0 = select i1 %tobool.not, i32 %and, i32 %or
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef %offset.0, i32 noundef %sys_int_enable.0) #6
  %add2.1 = add nuw nsw i32 %offset.0, 2
  %call4.1 = tail call i32 @rsnd_mod_read(ptr noundef %mod, i32 noundef %add2.1) #6
  %or.1 = or i32 %call4.1, %shl
  %and.1 = and i32 %call4.1, %neg
  %sys_int_enable.0.1 = select i1 %tobool.not, i32 %and.1, i32 %or.1
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef %add2.1, i32 noundef %sys_int_enable.0.1) #6
  %add2.2 = add nuw nsw i32 %offset.0, 4
  %call4.2 = tail call i32 @rsnd_mod_read(ptr noundef %mod, i32 noundef %add2.2) #6
  %or.2 = or i32 %call4.2, %shl
  %and.2 = and i32 %call4.2, %neg
  %sys_int_enable.0.2 = select i1 %tobool.not, i32 %and.2, i32 %or.2
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef %add2.2, i32 noundef %sys_int_enable.0.2) #6
  %add2.3 = add nuw nsw i32 %offset.0, 6
  %call4.3 = tail call i32 @rsnd_mod_read(ptr noundef %mod, i32 noundef %add2.3) #6
  %or.3 = or i32 %call4.3, %shl
  %and.3 = and i32 %call4.3, %neg
  %sys_int_enable.0.3 = select i1 %tobool.not, i32 %and.3, i32 %or.3
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef %add2.3, i32 noundef %sys_int_enable.0.3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rsnd_ssiu_dma_req(ptr noundef readonly %io, ptr noundef %mod) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %cond = select i1 %cmp, ptr @.str.10, ptr @.str.11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %7, ptr noundef nonnull @.str.5) #6
  %call2 = tail call ptr @rsnd_dma_request_channel(ptr noundef %call, ptr noundef nonnull @.str.6, ptr noundef %mod, ptr noundef nonnull %cond) #6
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ssiu_init_gen2(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  %rsnd_ssi_array = alloca [3 x i32], align 4
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  %and2 = and i32 %1, 2
  %call = tail call i32 @rsnd_ssiu_init(ptr noundef %mod, ptr noundef %io, ptr noundef %priv)
  %usrcnt = getelementptr inbounds %struct.rsnd_ssiu, ptr %mod, i32 0, i32 2
  %2 = ptrtoint ptr %usrcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usrcnt, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %usrcnt, align 4
  %call3 = tail call i32 @rsnd_runtime_is_tdm(ptr noundef %io) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @rsnd_runtime_is_tdm_split(ptr noundef %io) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %spec.select = select i1 %tobool6.not, i32 0, i32 256
  br label %if.end9

if.end9:                                          ; preds = %if.else, %entry.if.end9_crit_edge
  %mode.0 = phi i32 [ 1, %entry.if.end9_crit_edge ], [ %spec.select, %if.else ]
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 104, i32 noundef %mode.0) #6
  %call10 = tail call i32 @rsnd_ssi_use_busif(ptr noundef %io) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.if.end32_crit_edge, label %if.then12

if.end9.if.end32_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then12:                                        ; preds = %if.end9
  %call13 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #6
  %call14 = tail call i32 @rsnd_mod_id_sub(ptr noundef %mod) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call13)
  %cmp15 = icmp eq i32 %call13, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call14)
  %cmp16 = icmp sgt i32 %call14, 3
  %or.cond = select i1 %cmp15, i1 %cmp16, i1 false
  %. = select i1 %or.cond, i32 161, i32 118
  %.110 = select i1 %or.cond, i32 153, i32 110
  %.111 = select i1 %or.cond, i32 169, i32 126
  %add21 = add i32 %call14, %.
  %add22 = add i32 %call14, %.110
  %add23 = add i32 %call14, %.111
  %call25 = tail call i32 @rsnd_get_adinr_bit(ptr noundef %mod, ptr noundef %io) #6
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %4 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdai, align 4
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %5, i32 0, i32 1
  %cmp26 = icmp eq ptr %playback, %io
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 @rsnd_runtime_channel_after_ctu_with_params(ptr noundef %io, ptr noundef null) #6
  br label %cond.end

cond.false:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call i32 @rsnd_runtime_channel_original_with_params(ptr noundef %io, ptr noundef null) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call27, %cond.true ], [ %call28, %cond.false ]
  %or = or i32 %cond, %call25
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef %add21, i32 noundef %or) #6
  %call29 = tail call i32 @rsnd_get_busif_shift(ptr noundef %io, ptr noundef %mod) #6
  %or30 = or i32 %call29, 1
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef %add22, i32 noundef %or30) #6
  %call31 = tail call i32 @rsnd_get_dalign(ptr noundef %mod, ptr noundef %io) #6
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef %add23, i32 noundef %call31) #6
  br label %if.end32

if.end32:                                         ; preds = %cond.end, %if.end9.if.end32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool34.not = icmp eq i32 %and2, 0
  %6 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.end32.cleanup_crit_edge, label %if.then35

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then35:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rsnd_ssi_array) #6
  %8 = call ptr @memcpy(ptr %rsnd_ssi_array, ptr @__const.rsnd_ssiu_init_gen2.rsnd_ssi_array, i32 12)
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 11
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #6
  %call37 = tail call i32 @rsnd_mod_id(ptr noundef %10) #6
  %shl = shl i32 %call37, 16
  %shl38 = shl i32 %call37, 20
  %shl40 = shl i32 %call37, 24
  %shl42 = shl i32 %call37, 28
  %or39 = or i32 %shl38, %call37
  %or41 = or i32 %or39, %shl
  %or43 = or i32 %or41, %shl40
  %or44 = or i32 %or43, %shl42
  %11 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %i, align 4
  %call45104 = call ptr @rsnd_mod_next(ptr noundef nonnull %i, ptr noundef %io, ptr noundef nonnull %rsnd_ssi_array, i32 noundef 3) #6
  %tobool46.not105 = icmp eq ptr %call45104, null
  br i1 %tobool46.not105, label %if.then35.for.end_crit_edge, label %if.then35.for.body_crit_edge

if.then35.for.body_crit_edge:                     ; preds = %if.then35
  br label %for.body

if.then35.for.end_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then35.for.body_crit_edge
  %call45107 = phi ptr [ %call45, %for.body.for.body_crit_edge ], [ %call45104, %if.then35.for.body_crit_edge ]
  %val.0106 = phi i32 [ %or52, %for.body.for.body_crit_edge ], [ %or44, %if.then35.for.body_crit_edge ]
  %12 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i, align 4
  %mul = shl i32 %13, 2
  %add47 = add i32 %mul, 20
  %shl48 = shl i32 15, %add47
  %neg = xor i32 %shl48, -1
  %and49 = and i32 %val.0106, %neg
  %call50 = call i32 @rsnd_mod_id(ptr noundef nonnull %call45107) #6
  %shl51 = shl i32 %call50, %add47
  %or52 = or i32 %and49, %shl51
  %14 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i, align 4
  %inc53 = add i32 %15, 1
  store i32 %inc53, ptr %i, align 4
  %call45 = call ptr @rsnd_mod_next(ptr noundef nonnull %i, ptr noundef %io, ptr noundef nonnull %rsnd_ssi_array, i32 noundef 3) #6
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then35.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %or44, %if.then35.for.end_crit_edge ], [ %or52, %for.body.for.end_crit_edge ]
  br i1 %tobool33.not, label %for.end.if.end56_crit_edge, label %if.then55

for.end.if.end56_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then55:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 151, i32 noundef %val.0.lcssa) #6
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %for.end.if.end56_crit_edge
  br i1 %tobool34.not, label %if.end56.if.end59_crit_edge, label %if.then58

if.end56.if.end59_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 152, i32 noundef %val.0.lcssa) #6
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end56.if.end59_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rsnd_ssi_array) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end32.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ssiu_start_gen2(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsnd_mod_id_sub(ptr noundef %mod) #6
  %call1 = tail call i32 @rsnd_ssi_use_busif(ptr noundef %io) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %call, 2
  %shl = shl nuw i32 1, %mul
  tail call void @rsnd_mod_bset(ptr noundef %mod, i32 noundef 109, i32 noundef %shl, i32 noundef %shl) #6
  %call4 = tail call i32 @rsnd_ssi_multi_secondaries_runtime(ptr noundef %io) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 108, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ssiu_stop_gen2(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsnd_mod_id_sub(ptr noundef %mod) #6
  %call1 = tail call i32 @rsnd_ssi_use_busif(ptr noundef %io) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %call, 2
  %shl = shl nuw i32 1, %mul
  tail call void @rsnd_mod_bset(ptr noundef %mod, i32 noundef 109, i32 noundef %shl, i32 noundef 0) #6
  %usrcnt = getelementptr inbounds %struct.rsnd_ssiu, ptr %mod, i32 0, i32 2
  %0 = ptrtoint ptr %usrcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usrcnt, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %usrcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @rsnd_ssi_multi_secondaries_runtime(ptr noundef %io) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 108, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsnd_ssiu_debug_info(ptr noundef %m, ptr nocapture noundef readnone %io, ptr noundef %mod) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsnd_mod_id(ptr noundef %mod) #6
  %mul = shl i32 %call, 7
  tail call void @rsnd_debugfs_mod_reg_show(ptr noundef %m, ptr noundef %mod, i32 noundef 2, i32 noundef %mul, i32 noundef 128) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_is_tdm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_is_tdm_split(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_get_adinr_bit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_channel_after_ctu_with_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_channel_original_with_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_get_busif_shift(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_get_dalign(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_next(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_debugfs_mod_reg_show(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sh/rcar/ssiu.c", i32 117, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rsnd_ssiu_busif_err_status_clear._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rsnd_ssiu_busif_err_status_clear._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/sh/rcar/ssiu.c", i32 463, i32 29}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/sh/rcar/ssiu.c", i32 475, i32 34}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/sh/rcar/ssiu.c", i32 547, i32 4}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rsnd_ssiu_probe._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @rsnd_ssiu_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @rsnd_ssiu_ops_gen1, !19, !"rsnd_ssiu_ops_gen1", i1 false, i1 false}
!19 = !{!"../sound/soc/sh/rcar/ssiu.c", i32 226, i32 28}
!20 = !{ptr @rsnd_ssiu_ops_gen2, !21, !"rsnd_ssiu_ops_gen2", i1 false, i1 false}
!21 = !{!"../sound/soc/sh/rcar/ssiu.c", i32 414, i32 28}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/sh/rcar/ssiu.c", i32 395, i32 19}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/sh/rcar/ssiu.c", i32 395, i32 26}
!26 = !{ptr @gen2_id, !27, !"gen2_id", i1 false, i1 false}
!27 = !{!"../sound/soc/sh/rcar/ssiu.c", i32 45, i32 18}
!28 = !{ptr @gen3_id, !29, !"gen3_id", i1 false, i1 false}
!29 = !{!"../sound/soc/sh/rcar/ssiu.c", i32 46, i32 18}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 1073205, i32 2146410443}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{!"branch_weights", i32 1, i32 2000}
