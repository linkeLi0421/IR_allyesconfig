; ModuleID = '/llk/IR_all_yes/sound/soc/dwc/dwc-pcm.c_pt.bc'
source_filename = "../sound/soc/dwc/dwc-pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dw_i2s_dev = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, %union.dw_i2s_snd_dma_data, %union.dw_i2s_snd_dma_data, %struct.i2s_clk_config_data, ptr, i8, ptr, ptr, ptr, ptr, i32, i32 }
%union.dw_i2s_snd_dma_data = type { %struct.snd_dmaengine_dai_dma_data }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.i2s_clk_config_data = type { i32, i32, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
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
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }

@dw_pcm_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_pcm_open, ptr @dw_pcm_close, ptr null, ptr @dw_pcm_hw_params, ptr null, ptr null, ptr @dw_pcm_trigger, ptr null, ptr @dw_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dw_pcm_transfer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/dwc/dwc-pcm.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@dw_pcm_transfer.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@dw_pcm_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 1092, i32 224, i32 32000, i32 48000, i32 2, i32 2, i32 196608, i32 4096, i32 98304, i32 2, i32 48, i32 16 }, [32 x i8] zeroinitializer }, align 32
@dw_pcm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 170, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid channels number\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dw_pcm_hw_params\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw_pcm_hw_params._entry_ptr = internal global ptr @dw_pcm_hw_params._entry, section ".printk_index", align 4
@dw_pcm_hw_params._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str, i32 185, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid format\0A\00", [16 x i8] zeroinitializer }, align 32
@dw_pcm_hw_params._entry_ptr.12 = internal global ptr @dw_pcm_hw_params._entry.10, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 6, i64 10]
@__sancov_gen_cov_switch_values.14 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"dw_pcm_component\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 253, i32 46 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 102, i32 15 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 695, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 723, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"dw_pcm_hardware\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 72, i32 38 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 170, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [27 x i8] c"../sound/soc/dwc/dwc-pcm.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 185, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @dw_pcm_hw_params._entry, ptr @dw_pcm_hw_params._entry.10, ptr @dw_pcm_hw_params._entry_ptr, ptr @dw_pcm_hw_params._entry_ptr.12, ptr @dw_pcm_component, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dw_pcm_hardware, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcm_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcm_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcm_hw_params._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_pcm_push_tx(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @dw_pcm_transfer(ptr noundef %dev, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_pcm_transfer(ptr noundef %dev, i1 noundef zeroext %push) unnamed_addr #0 align 64 {
entry:
  %period_elapsed = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %period_elapsed) #9
  %0 = ptrtoint ptr %period_elapsed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %period_elapsed, align 1, !annotation !38
  %1 = tail call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !39
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  br i1 %push, label %if.then, label %if.else

if.then:                                          ; preds = %rcu_read_lock.exit
  %tx_substream = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 16
  %5 = ptrtoint ptr %tx_substream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %tx_substream, align 4
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.then.if.end28_crit_edge

if.then.if.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.lhs.true:                                    ; preds = %if.then
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end28_crit_edge, label %land.lhs.true5

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b118 = load i1, ptr @dw_pcm_transfer.__warned, align 1
  br i1 %.b118, label %land.lhs.true5.if.end28_crit_edge, label %land.lhs.true5.if.end28.sink.split_crit_edge

land.lhs.true5.if.end28.sink.split_crit_edge:     ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.sink.split

land.lhs.true5.if.end28_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.else:                                          ; preds = %rcu_read_lock.exit
  %rx_substream = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 17
  %7 = ptrtoint ptr %rx_substream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %rx_substream, align 4
  %call16 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.lhs.true18:                                  ; preds = %if.else
  %call19 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true18.if.end28_crit_edge, label %land.lhs.true21

land.lhs.true18.if.end28_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %.b116117 = load i1, ptr @dw_pcm_transfer.__warned.2, align 1
  br i1 %.b116117, label %land.lhs.true21.if.end28_crit_edge, label %land.lhs.true21.if.end28.sink.split_crit_edge

land.lhs.true21.if.end28.sink.split_crit_edge:    ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.sink.split

land.lhs.true21.if.end28_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.end28.sink.split:                              ; preds = %land.lhs.true21.if.end28.sink.split_crit_edge, %land.lhs.true5.if.end28.sink.split_crit_edge
  %dw_pcm_transfer.__warned.2.sink = phi ptr [ @dw_pcm_transfer.__warned, %land.lhs.true5.if.end28.sink.split_crit_edge ], [ @dw_pcm_transfer.__warned.2, %land.lhs.true21.if.end28.sink.split_crit_edge ]
  %.sink = phi i32 [ 102, %land.lhs.true5.if.end28.sink.split_crit_edge ], [ 104, %land.lhs.true21.if.end28.sink.split_crit_edge ]
  %substream.0.ph = phi ptr [ %6, %land.lhs.true5.if.end28.sink.split_crit_edge ], [ %8, %land.lhs.true21.if.end28.sink.split_crit_edge ]
  %9 = ptrtoint ptr %dw_pcm_transfer.__warned.2.sink to i32
  call void @__asan_store1_noabort(i32 %9)
  store i1 true, ptr %dw_pcm_transfer.__warned.2.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef %.sink, ptr noundef nonnull @.str.1) #9
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %land.lhs.true21.if.end28_crit_edge, %land.lhs.true18.if.end28_crit_edge, %if.else.if.end28_crit_edge, %land.lhs.true5.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %if.then.if.end28_crit_edge
  %substream.0 = phi ptr [ %6, %land.lhs.true5.if.end28_crit_edge ], [ %6, %land.lhs.true.if.end28_crit_edge ], [ %6, %if.then.if.end28_crit_edge ], [ %8, %land.lhs.true21.if.end28_crit_edge ], [ %8, %land.lhs.true18.if.end28_crit_edge ], [ %8, %if.else.if.end28_crit_edge ], [ %substream.0.ph, %if.end28.sink.split ]
  %tobool29.not = icmp eq ptr %substream.0, null
  br i1 %tobool29.not, label %if.end28.if.end95_crit_edge, label %land.rhs

if.end28.if.end95_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

land.rhs:                                         ; preds = %if.end28
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.0, i32 0, i32 11
  %10 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime.i, align 4
  %status.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 37
  %12 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %status.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %land.rhs.if.end95_crit_edge [
    i32 3, label %land.rhs.if.then34_crit_edge
    i32 5, label %snd_pcm_running.exit
  ]

land.rhs.if.then34_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

land.rhs.if.end95_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

snd_pcm_running.exit:                             ; preds = %land.rhs
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.0, i32 0, i32 5
  %17 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp5.i = icmp eq i32 %18, 0
  br i1 %cmp5.i, label %snd_pcm_running.exit.if.then34_crit_edge, label %snd_pcm_running.exit.if.end95_crit_edge

snd_pcm_running.exit.if.end95_crit_edge:          ; preds = %snd_pcm_running.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

snd_pcm_running.exit.if.then34_crit_edge:         ; preds = %snd_pcm_running.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

if.then34:                                        ; preds = %snd_pcm_running.exit.if.then34_crit_edge, %land.rhs.if.then34_crit_edge
  br i1 %push, label %do.end39, label %do.end65

do.end39:                                         ; preds = %if.then34
  %tx_ptr = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 20
  %19 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %tx_ptr, align 4
  %tx_fn = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 18
  %21 = ptrtoint ptr %tx_fn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_fn, align 4
  %call41 = call i32 %22(ptr noundef %dev, ptr noundef %11, i32 noundef %20, ptr noundef nonnull %period_elapsed) #9
  %call.i119 = call zeroext i1 @__kasan_check_write(ptr noundef %tx_ptr, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !40
  call void @llvm.prefetch.p0(ptr %tx_ptr, i32 1, i32 3, i32 1) #9
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.end39
  %23 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %tx_ptr, i32 %20, i32 %call41) #9, !srcloc !41
  %asmresult.i = extractvalue { i32, i32 } %23, 0
  %tobool.not.i121 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i121, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  br label %if.end91

do.end65:                                         ; preds = %if.then34
  %rx_ptr = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 21
  %24 = ptrtoint ptr %rx_ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %rx_ptr, align 4
  %rx_fn = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 19
  %26 = ptrtoint ptr %rx_fn to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_fn, align 4
  %call68 = call i32 %27(ptr noundef %dev, ptr noundef %11, i32 noundef %25, ptr noundef nonnull %period_elapsed) #9
  %call.i120 = call zeroext i1 @__kasan_check_write(ptr noundef %rx_ptr, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !43
  call void @llvm.prefetch.p0(ptr %rx_ptr, i32 1, i32 3, i32 1) #9
  br label %do.body.i124

do.body.i124:                                     ; preds = %do.body.i124.do.body.i124_crit_edge, %do.end65
  %28 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %rx_ptr, i32 %25, i32 %call68) #9, !srcloc !41
  %asmresult.i122 = extractvalue { i32, i32 } %28, 0
  %tobool.not.i123 = icmp eq i32 %asmresult.i122, 0
  br i1 %tobool.not.i123, label %__cmpxchg.exit125, label %do.body.i124.do.body.i124_crit_edge

do.body.i124.do.body.i124_crit_edge:              ; preds = %do.body.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i124

__cmpxchg.exit125:                                ; preds = %do.body.i124
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !44
  br label %if.end91

if.end91:                                         ; preds = %__cmpxchg.exit125, %__cmpxchg.exit
  %29 = ptrtoint ptr %period_elapsed to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %period_elapsed, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool92.not = icmp eq i8 %30, 0
  br i1 %tobool92.not, label %if.end91.if.end95_crit_edge, label %if.then93

if.end91.if.end95_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then93:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  call void @snd_pcm_period_elapsed(ptr noundef nonnull %substream.0) #9
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.end91.if.end95_crit_edge, %snd_pcm_running.exit.if.end95_crit_edge, %land.rhs.if.end95_crit_edge, %if.end28.if.end95_crit_edge
  %call.i126 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i126, label %if.end95.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i129

if.end95.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i129:                               ; preds = %if.end95
  %call1.i127 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i127)
  %tobool.not.i128 = icmp eq i32 %call1.i127, 0
  br i1 %tobool.not.i128, label %land.lhs.true.i129.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i131

land.lhs.true.i129.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i131:                              ; preds = %land.lhs.true.i129
  %.b4.i130 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i130, label %land.lhs.true2.i131.rcu_read_unlock.exit_crit_edge, label %if.then.i132

land.lhs.true2.i131.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i131
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i132:                                     ; preds = %land.lhs.true2.i131
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i132, %land.lhs.true2.i131.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i129.rcu_read_unlock.exit_crit_edge, %if.end95.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !46
  %31 = call i32 @llvm.read_register.i32(metadata !28) #9
  %and.i.i.i.i.i133 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i133 to ptr
  %preempt_count.i.i.i.i134 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i134 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i134, align 4
  %sub.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i134, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %period_elapsed) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dw_pcm_pop_rx(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @dw_pcm_transfer(ptr noundef %dev, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dw_pcm_register(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @dw_pcm_component, ptr noundef null, i32 noundef 0) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_pcm_new(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %rtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm, align 4
  %call = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef 196608, i32 noundef 196608) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_pcm_open(ptr nocapture noundef readnone %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @dw_pcm_hardware) #9
  %call3 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %1, i32 noundef 15) #9
  %private_data4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %12 = ptrtoint ptr %private_data4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %private_data4, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_pcm_close(ptr nocapture noundef readnone %component, ptr nocapture noundef readnone %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @synchronize_rcu() #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_pcm_hw_params(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cond = icmp eq i32 %5, 2
  br i1 %cond, label %sw.epilog, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev2 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.6) #12
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %arrayidx.i.i20 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %sw.epilog.params_format.exit_crit_edge

sw.epilog.params_format.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %sw.epilog
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.1.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.do.end10_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_format.exit

for.inc.i.i.do.end10_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %sw.epilog.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %sw.epilog.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %9, %sw.epilog.params_format.exit_crit_edge ], [ %11, %for.inc.i.i.params_format.exit_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #9, !range !47
  %add.i.i = or i32 %12, %i.09.lcssa.i.i
  %13 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %add.i.i, label %params_format.exit.do.end10_crit_edge [
    i32 2, label %sw.bb
    i32 6, label %params_format.exit.sw.bb4_crit_edge
    i32 10, label %params_format.exit.sw.bb4_crit_edge22
  ]

params_format.exit.sw.bb4_crit_edge22:            ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

params_format.exit.sw.bb4_crit_edge:              ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

params_format.exit.do.end10_crit_edge:            ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

sw.bb:                                            ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  %tx_fn = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 18
  %14 = ptrtoint ptr %tx_fn to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dw_pcm_tx_16, ptr %tx_fn, align 4
  %rx_fn = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 19
  %15 = ptrtoint ptr %rx_fn to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @dw_pcm_rx_16, ptr %rx_fn, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %params_format.exit.sw.bb4_crit_edge, %params_format.exit.sw.bb4_crit_edge22
  %tx_fn5 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 18
  %16 = ptrtoint ptr %tx_fn5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @dw_pcm_tx_32, ptr %tx_fn5, align 4
  %rx_fn6 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 19
  %17 = ptrtoint ptr %rx_fn6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @dw_pcm_rx_32, ptr %rx_fn6, align 4
  br label %cleanup

do.end10:                                         ; preds = %params_format.exit.do.end10_crit_edge, %for.inc.i.i.do.end10_crit_edge
  %dev11 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.11) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %sw.bb4, %sw.bb, %do.end
  %retval.0 = phi i32 [ -22, %do.end10 ], [ -22, %do.end ], [ 0, %sw.bb4 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_pcm_trigger(ptr nocapture noundef readnone %component, ptr noundef %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge196
    i32 4, label %entry.sw.bb_crit_edge197
    i32 0, label %entry.sw.bb95_crit_edge
    i32 5, label %entry.sw.bb95_crit_edge198
    i32 3, label %entry.sw.bb95_crit_edge199
  ]

entry.sw.bb95_crit_edge199:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

entry.sw.bb95_crit_edge198:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

entry.sw.bb95_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb95

entry.sw.bb_crit_edge197:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge196:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge196, %entry.sw.bb_crit_edge197
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %5 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %do.body3, label %do.body49

do.body3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %tx_ptr = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 20
  %7 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %tx_ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  %tx_substream33 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %tx_substream33 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %substream, ptr %tx_substream33, align 4
  br label %sw.epilog

do.body49:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %rx_ptr = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 21
  %9 = ptrtoint ptr %rx_ptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %rx_ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !49
  %rx_substream82 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 17
  %10 = ptrtoint ptr %rx_substream82 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %substream, ptr %rx_substream82, align 4
  br label %sw.epilog

sw.bb95:                                          ; preds = %entry.sw.bb95_crit_edge, %entry.sw.bb95_crit_edge198, %entry.sw.bb95_crit_edge199
  %stream96 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %11 = ptrtoint ptr %stream96 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stream96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp97 = icmp eq i32 %12, 0
  br i1 %cmp97, label %do.body107, label %do.body148

do.body107:                                       ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #11
  %tx_substream108 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 16
  %13 = ptrtoint ptr %tx_substream108 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr null, ptr %tx_substream108, align 4
  br label %sw.epilog

do.body148:                                       ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #11
  %rx_substream149 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 17
  %14 = ptrtoint ptr %rx_substream149 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr null, ptr %rx_substream149, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body148, %do.body107, %do.body49, %do.body3, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %do.body107 ], [ 0, %do.body148 ], [ 0, %do.body3 ], [ 0, %do.body49 ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dw_pcm_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %tx_ptr = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 20
  %rx_ptr = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 21
  %pos.0.in = select i1 %cmp, ptr %tx_ptr, ptr %rx_ptr
  %6 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %pos.0 = load volatile i32, ptr %pos.0.in, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0, i32 %8)
  %cmp6 = icmp ult i32 %pos.0, %8
  %cond = select i1 %cmp6, i32 %pos.0, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_pcm_tx_16(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %runtime, i32 noundef %tx_ptr, ptr nocapture noundef writeonly %period_elapsed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 50
  %0 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_area, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 16
  %2 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %period_size, align 4
  %rem = urem i32 %tx_ptr, %3
  %fifo_th = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %fifo_th to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_th, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp26.not = icmp eq i32 %5, 0
  br i1 %cmp26.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc10, %for.body.for.body_crit_edge ]
  %period_pos.028 = phi i32 [ %rem, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %tx_ptr.addr.027 = phi i32 [ %tx_ptr, %for.body.lr.ph ], [ %spec.store.select, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x i16], ptr %1, i32 %tx_ptr.addr.027
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #9, !srcloc !51
  %arrayidx3 = getelementptr [2 x i16], ptr %1, i32 %tx_ptr.addr.027, i32 1
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx3, align 2
  %conv4 = zext i16 %12 to i32
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %add.ptr6 = getelementptr i8, ptr %14, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv4) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %15) #9, !srcloc !51
  %inc = add i32 %period_pos.028, 1
  %inc7 = add i32 %tx_ptr.addr.027, 1
  %16 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc7, i32 %17)
  %cmp8.not = icmp ult i32 %inc7, %17
  %spec.store.select = select i1 %cmp8.not, i32 %inc7, i32 0
  %inc10 = add nuw i32 %i.029, 1
  %18 = ptrtoint ptr %fifo_th to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fifo_th, align 4
  %cmp = icmp ult i32 %inc10, %19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %tx_ptr.addr.0.lcssa = phi i32 [ %tx_ptr, %entry.for.end_crit_edge ], [ %spec.store.select, %for.body.for.end_crit_edge ]
  %period_pos.0.lcssa = phi i32 [ %rem, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %20 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %period_pos.0.lcssa, i32 %21)
  %cmp12 = icmp uge i32 %period_pos.0.lcssa, %21
  %frombool = zext i1 %cmp12 to i8
  %22 = ptrtoint ptr %period_elapsed to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool, ptr %period_elapsed, align 1
  ret i32 %tx_ptr.addr.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_pcm_rx_16(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %runtime, i32 noundef %rx_ptr, ptr nocapture noundef writeonly %period_elapsed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 50
  %0 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_area, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 16
  %2 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %period_size, align 4
  %rem = urem i32 %rx_ptr, %3
  %fifo_th = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %fifo_th to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_th, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp27.not = icmp eq i32 %5, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc11, %for.body.for.body_crit_edge ]
  %period_pos.029 = phi i32 [ %rem, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %rx_ptr.addr.028 = phi i32 [ %rx_ptr, %for.body.lr.ph ], [ %spec.store.select, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !52
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !53
  %conv = trunc i32 %9 to i16
  %arrayidx = getelementptr [2 x i16], ptr %1, i32 %rx_ptr.addr.028
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %arrayidx, align 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %add.ptr3 = getelementptr i8, ptr %12, i32 36
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !52
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !53
  %conv5 = trunc i32 %14 to i16
  %arrayidx7 = getelementptr [2 x i16], ptr %1, i32 %rx_ptr.addr.028, i32 1
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5, ptr %arrayidx7, align 2
  %inc = add i32 %period_pos.029, 1
  %inc8 = add i32 %rx_ptr.addr.028, 1
  %16 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc8, i32 %17)
  %cmp9.not = icmp ult i32 %inc8, %17
  %spec.store.select = select i1 %cmp9.not, i32 %inc8, i32 0
  %inc11 = add nuw i32 %i.030, 1
  %18 = ptrtoint ptr %fifo_th to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fifo_th, align 4
  %cmp = icmp ult i32 %inc11, %19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %rx_ptr.addr.0.lcssa = phi i32 [ %rx_ptr, %entry.for.end_crit_edge ], [ %spec.store.select, %for.body.for.end_crit_edge ]
  %period_pos.0.lcssa = phi i32 [ %rem, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %20 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %period_pos.0.lcssa, i32 %21)
  %cmp13 = icmp uge i32 %period_pos.0.lcssa, %21
  %frombool = zext i1 %cmp13 to i8
  %22 = ptrtoint ptr %period_elapsed to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool, ptr %period_elapsed, align 1
  ret i32 %rx_ptr.addr.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_pcm_tx_32(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %runtime, i32 noundef %tx_ptr, ptr nocapture noundef writeonly %period_elapsed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 50
  %0 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_area, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 16
  %2 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %period_size, align 4
  %rem = urem i32 %tx_ptr, %3
  %fifo_th = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %fifo_th to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_th, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23.not = icmp eq i32 %5, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc8, %for.body.for.body_crit_edge ]
  %period_pos.025 = phi i32 [ %rem, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %tx_ptr.addr.024 = phi i32 [ %tx_ptr, %for.body.lr.ph ], [ %spec.store.select, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x i32], ptr %1, i32 %tx_ptr.addr.024
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #9, !srcloc !51
  %arrayidx3 = getelementptr [2 x i32], ptr %1, i32 %tx_ptr.addr.024, i32 1
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3, align 4
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %add.ptr5 = getelementptr i8, ptr %14, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %15) #9, !srcloc !51
  %inc = add i32 %period_pos.025, 1
  %inc6 = add i32 %tx_ptr.addr.024, 1
  %16 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc6, i32 %17)
  %cmp7.not = icmp ult i32 %inc6, %17
  %spec.store.select = select i1 %cmp7.not, i32 %inc6, i32 0
  %inc8 = add nuw i32 %i.026, 1
  %18 = ptrtoint ptr %fifo_th to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fifo_th, align 4
  %cmp = icmp ult i32 %inc8, %19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %tx_ptr.addr.0.lcssa = phi i32 [ %tx_ptr, %entry.for.end_crit_edge ], [ %spec.store.select, %for.body.for.end_crit_edge ]
  %period_pos.0.lcssa = phi i32 [ %rem, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %20 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %period_pos.0.lcssa, i32 %21)
  %cmp10 = icmp uge i32 %period_pos.0.lcssa, %21
  %frombool = zext i1 %cmp10 to i8
  %22 = ptrtoint ptr %period_elapsed to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool, ptr %period_elapsed, align 1
  ret i32 %tx_ptr.addr.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_pcm_rx_32(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %runtime, i32 noundef %rx_ptr, ptr nocapture noundef writeonly %period_elapsed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 50
  %0 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_area, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 16
  %2 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %period_size, align 4
  %rem = urem i32 %rx_ptr, %3
  %fifo_th = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %fifo_th to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fifo_th, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp24.not = icmp eq i32 %5, 0
  br i1 %cmp24.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc9, %for.body.for.body_crit_edge ]
  %period_pos.026 = phi i32 [ %rem, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %rx_ptr.addr.025 = phi i32 [ %rx_ptr, %for.body.lr.ph ], [ %spec.store.select, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !52
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !53
  %arrayidx = getelementptr [2 x i32], ptr %1, i32 %rx_ptr.addr.025
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %add.ptr3 = getelementptr i8, ptr %12, i32 36
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !52
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !53
  %arrayidx6 = getelementptr [2 x i32], ptr %1, i32 %rx_ptr.addr.025, i32 1
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx6, align 4
  %inc = add i32 %period_pos.026, 1
  %inc7 = add i32 %rx_ptr.addr.025, 1
  %16 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc7, i32 %17)
  %cmp8.not = icmp ult i32 %inc7, %17
  %spec.store.select = select i1 %cmp8.not, i32 %inc7, i32 0
  %inc9 = add nuw i32 %i.027, 1
  %18 = ptrtoint ptr %fifo_th to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fifo_th, align 4
  %cmp = icmp ult i32 %inc9, %19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %rx_ptr.addr.0.lcssa = phi i32 [ %rx_ptr, %entry.for.end_crit_edge ], [ %spec.store.select, %for.body.for.end_crit_edge ]
  %period_pos.0.lcssa = phi i32 [ %rem, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %20 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %period_pos.0.lcssa, i32 %21)
  %cmp11 = icmp uge i32 %period_pos.0.lcssa, %21
  %frombool = zext i1 %cmp11 to i8
  %22 = ptrtoint ptr %period_elapsed to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool, ptr %period_elapsed, align 1
  ret i32 %rx_ptr.addr.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !10, !12, !13, !15, !17, !19, !20, !21, !22, !23, !24, !26, !27}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../sound/soc/dwc/dwc-pcm.c", i32 102, i32 15}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../sound/soc/dwc/dwc-pcm.c", i32 104, i32 15}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @dw_pcm_component, !14, !"dw_pcm_component", i1 false, i1 false}
!14 = !{!"../sound/soc/dwc/dwc-pcm.c", i32 253, i32 46}
!15 = !{ptr @dw_pcm_hardware, !16, !"dw_pcm_hardware", i1 false, i1 false}
!16 = !{!"../sound/soc/dwc/dwc-pcm.c", i32 72, i32 38}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/dwc/dwc-pcm.c", i32 170, i32 3}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dw_pcm_hw_params._entry, !18, !"_entry", i1 false, i1 false}
!23 = !{ptr @dw_pcm_hw_params._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/dwc/dwc-pcm.c", i32 185, i32 3}
!26 = !{ptr @dw_pcm_hw_params._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @dw_pcm_hw_params._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
!39 = !{i64 2149317494}
!40 = !{i64 2154936988}
!41 = !{i64 935702, i64 935723, i64 935746, i64 935765, i64 935784}
!42 = !{i64 2154937397}
!43 = !{i64 2154941133}
!44 = !{i64 2154941542}
!45 = !{i8 0, i8 2}
!46 = !{i64 2149317760}
!47 = !{i32 0, i32 33}
!48 = !{i64 2154956411}
!49 = !{i64 2154966399}
!50 = !{i64 2148877078}
!51 = !{i64 690132}
!52 = !{i64 690550}
!53 = !{i64 2148875723}
