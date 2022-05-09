; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cobalt/cobalt-omnitek.c_pt.bc'
source_filename = "../drivers/media/pci/cobalt/cobalt-omnitek.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cobalt_stream = type { %struct.video_device, %struct.vb2_queue, %struct.list_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [32 x %struct.sg_dma_desc_info], i32, i8, i8, i8, i32, i8, i8, i8, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_dv_timings = type { i32, %union.anon.84 }
%union.anon.84 = type { [32 x i32] }
%struct.sg_dma_desc_info = type { ptr, i32, i32, ptr, ptr }
%struct.cobalt = type { i32, ptr, %struct.v4l2_device, %struct.mutex, ptr, ptr, i8, i16, [16 x %struct.cobalt_stream], [5 x %struct.i2c_adapter], [5 x %struct.cobalt_i2c_data], i8, i8, ptr, %struct.work_struct, i32, i32, i32, i32, [12 x i32], i32, i32, i32, i32, i8, [512 x i8], ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.cobalt_i2c_data = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sg_dma_descriptor = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/pci/cobalt/cobalt-omnitek.c\00", [54 x i8] zeroinitializer }, align 32
@show_dma_capability._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016%s: Omnitek DMA capability: ID 0x%02x Version 0x%02x Next 0x%x Size 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"show_dma_capability\00", [44 x i8] zeroinitializer }, align 32
@show_dma_capability._entry_ptr = internal global ptr @show_dma_capability._entry, section ".printk_index", align 4
@show_dma_capability._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: Omnitek DMA: 32 bits PCIe and Local\0A\00", [53 x i8] zeroinitializer }, align 32
@show_dma_capability._entry_ptr.5 = internal global ptr @show_dma_capability._entry.3, section ".printk_index", align 4
@show_dma_capability._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s: Omnitek DMA: 64 bits PCIe, 32 bits Local\0A\00", [48 x i8] zeroinitializer }, align 32
@show_dma_capability._entry_ptr.8 = internal global ptr @show_dma_capability._entry.6, section ".printk_index", align 4
@show_dma_capability._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: Omnitek DMA: 64 bits PCIe and Local\0A\00", [53 x i8] zeroinitializer }, align 32
@show_dma_capability._entry_ptr.11 = internal global ptr @show_dma_capability._entry.9, section ".printk_index", align 4
@show_dma_capability._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: Omnitek DMA channel #%d: %s %s\0A\00", [58 x i8] zeroinitializer }, align 32
@show_dma_capability._entry_ptr.14 = internal global ptr @show_dma_capability._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FIFO\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MEMORY\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Input\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Output\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bidirectional\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 65536, i64 131072]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 162, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 71, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 77, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 80, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 83, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 90, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 58, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 59, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 60, i32 29 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [45 x i8] c"../drivers/media/pci/cobalt/cobalt-omnitek.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 62, i32 9 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @show_dma_capability._entry, ptr @show_dma_capability._entry.12, ptr @show_dma_capability._entry.3, ptr @show_dma_capability._entry.6, ptr @show_dma_capability._entry.9, ptr @show_dma_capability._entry_ptr, ptr @show_dma_capability._entry_ptr.11, ptr @show_dma_capability._entry_ptr.14, ptr @show_dma_capability._entry_ptr.5, ptr @show_dma_capability._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_dma_capability._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_dma_capability._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_dma_capability._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_dma_capability._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_dma_capability._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omni_sg_dma_start(ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cobalt1 = getelementptr inbounds %struct.cobalt_stream, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %cobalt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cobalt1, align 4
  %bus = getelementptr inbounds %struct.sg_dma_desc_info, ptr %desc, i32 0, i32 1
  %bar0 = getelementptr inbounds %struct.cobalt, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bar0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bar0, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 80
  %dma_channel = getelementptr inbounds %struct.cobalt_stream, ptr %s, i32 0, i32 20
  %4 = ptrtoint ptr %dma_channel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dma_channel, align 4
  %conv3 = zext i8 %5 to i32
  %mul = shl nuw nsw i32 %conv3, 6
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %mul
  %add.ptr5 = getelementptr i8, ptr %add.ptr4, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #5, !srcloc !43
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus, align 4
  %and = and i32 %7, -32
  %8 = ptrtoint ptr %bar0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bar0, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 80
  %10 = ptrtoint ptr %dma_channel to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dma_channel, align 4
  %conv10 = zext i8 %11 to i32
  %mul11 = shl nuw nsw i32 %conv10, 6
  %add.ptr12 = getelementptr i8, ptr %add.ptr8, i32 %mul11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %12) #5, !srcloc !43
  %13 = ptrtoint ptr %bar0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bar0, align 4
  %add.ptr14 = getelementptr i8, ptr %14, i32 96
  %15 = ptrtoint ptr %dma_channel to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dma_channel, align 4
  %conv16 = zext i8 %16 to i32
  %mul17 = shl nuw nsw i32 %conv16, 6
  %add.ptr18 = getelementptr i8, ptr %add.ptr14, i32 %mul17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 50397184) #5, !srcloc !43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @is_dma_done(ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cobalt1 = getelementptr inbounds %struct.cobalt_stream, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %cobalt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cobalt1, align 4
  %bar0 = getelementptr inbounds %struct.cobalt, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bar0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bar0, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 96
  %dma_channel = getelementptr inbounds %struct.cobalt_stream, ptr %s, i32 0, i32 20
  %4 = ptrtoint ptr %dma_channel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dma_channel, align 4
  %conv = zext i8 %5 to i32
  %mul = shl nuw nsw i32 %conv, 6
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %7 = and i32 %6, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp ne i32 %7, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omni_sg_dma_abort_channel(ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cobalt1 = getelementptr inbounds %struct.cobalt_stream, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %cobalt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cobalt1, align 4
  %bar0.i = getelementptr inbounds %struct.cobalt, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bar0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bar0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 96
  %dma_channel.i = getelementptr inbounds %struct.cobalt_stream, ptr %s, i32 0, i32 20
  %4 = ptrtoint ptr %dma_channel.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dma_channel.i, align 4
  %conv.i = zext i8 %5 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 6
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %7 = and i32 %6, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.not = icmp eq i32 %7, 0
  br i1 %tobool.not.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %bar0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bar0.i, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 96
  %10 = ptrtoint ptr %dma_channel.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dma_channel.i, align 4
  %conv = zext i8 %11 to i32
  %mul = shl nuw nsw i32 %conv, 6
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 67108864) #5, !srcloc !43
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omni_sg_dma_init(ptr noundef %cobalt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bar0 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 4
  %0 = ptrtoint ptr %bar0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar0, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !44
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %first_fifo_channel = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 23
  %4 = ptrtoint ptr %first_fifo_channel to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %first_fifo_channel, align 8
  %and = and i32 %3, 15
  %dma_channels = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 22
  %5 = ptrtoint ptr %dma_channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %dma_channels, align 4
  %and1 = lshr i32 %3, 8
  %6 = trunc i32 %and1 to i8
  %7 = and i8 %6, 1
  %8 = xor i8 %7, 1
  %9 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 24
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %8, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp42.not = icmp eq i32 %and, 0
  br i1 %cmp42.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %entry.for.body_crit_edge
  %i.043 = phi i32 [ %inc26, %if.end25.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %11 = ptrtoint ptr %bar0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bar0, align 4
  %add.ptr5 = getelementptr i8, ptr %12, i32 96
  %mul = shl i32 %i.043, 6
  %add.ptr6 = getelementptr i8, ptr %add.ptr5, i32 %mul
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %14 = ptrtoint ptr %bar0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bar0, align 4
  %add.ptr9 = getelementptr i8, ptr %15, i32 96
  %add.ptr11 = getelementptr i8, ptr %add.ptr9, i32 %mul
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %17 = and i32 %16, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool14.not = icmp eq i32 %17, 0
  br i1 %tobool14.not, label %if.then15, label %for.body.if.end20_crit_edge

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %bar0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bar0, align 4
  %add.ptr17 = getelementptr i8, ptr %19, i32 96
  %add.ptr19 = getelementptr i8, ptr %add.ptr17, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 67108864) #5, !srcloc !43
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %for.body.if.end20_crit_edge
  %20 = and i32 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool22.not = icmp eq i32 %20, 0
  br i1 %tobool22.not, label %if.then23, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %first_fifo_channel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %first_fifo_channel, align 8
  %inc = add i32 %22, 1
  store i32 %inc, ptr %first_fifo_channel, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20.if.end25_crit_edge
  %inc26 = add nuw nsw i32 %i.043, 1
  %23 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_channels, align 4
  %cmp = icmp slt i32 %inc26, %24
  br i1 %cmp, label %if.end25.for.body_crit_edge, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end25.for.end_crit_edge, %entry.for.end_crit_edge
  %25 = ptrtoint ptr %bar0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bar0, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !44
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %29 = ptrtoint ptr %bar0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bar0, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !44
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %name.i = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %and.i = and i32 %28, 255
  %shr.i = lshr i32 %28, 8
  %and3.i = and i32 %shr.i, 255
  %shr4.i = lshr i32 %28, 16
  %shr6.i = lshr i32 %32, 24
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name.i, i32 noundef %and.i, i32 noundef %and3.i, i32 noundef %shr4.i, i32 noundef %shr6.i) #8
  %shr9.i = lshr i32 %32, 8
  %and10.i = and i32 %shr9.i, 3
  %33 = zext i32 %and10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and10.i, label %for.end.sw.epilog.i_crit_edge [
    i32 0, label %for.end.sw.epilog.sink.split.i_crit_edge
    i32 1, label %do.end22.i
    i32 3, label %do.end31.i
  ]

for.end.sw.epilog.sink.split.i_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.i

for.end.sw.epilog.i_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

do.end22.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.i

do.end31.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %do.end31.i, %do.end22.i, %for.end.sw.epilog.sink.split.i_crit_edge
  %.str.10.sink.i = phi ptr [ @.str.10, %do.end31.i ], [ @.str.7, %do.end22.i ], [ @.str.4, %for.end.sw.epilog.sink.split.i_crit_edge ]
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.10.sink.i, ptr noundef %name.i) #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %for.end.sw.epilog.i_crit_edge
  %and37.i = and i32 %32, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %cmp67.not.i = icmp eq i32 %and37.i, 0
  br i1 %cmp67.not.i, label %sw.epilog.i.show_dma_capability.exit_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  br label %for.body.i

sw.epilog.i.show_dma_capability.exit_crit_edge:   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %show_dma_capability.exit

for.body.i:                                       ; preds = %get_dma_direction.exit.i.for.body.i_crit_edge, %sw.epilog.i.for.body.i_crit_edge
  %i.068.i = phi i32 [ %inc.i, %get_dma_direction.exit.i.for.body.i_crit_edge ], [ 0, %sw.epilog.i.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %bar0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bar0, align 4
  %add.ptr39.i = getelementptr i8, ptr %35, i32 96
  %mul.i = shl i32 %i.068.i, 6
  %add.ptr40.i = getelementptr i8, ptr %add.ptr39.i, i32 %mul.i
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i) #5, !srcloc !44
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %and49.i = and i32 %37, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool.not.i = icmp eq i32 %and49.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.16, ptr @.str.15
  %and.i.i = and i32 %37, 196608
  %38 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %and.i.i, label %sw.epilog.i.i [
    i32 0, label %for.body.i.get_dma_direction.exit.i_crit_edge
    i32 65536, label %sw.bb1.i.i
    i32 131072, label %sw.bb2.i.i
  ]

for.body.i.get_dma_direction.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_dma_direction.exit.i

sw.bb1.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_dma_direction.exit.i

sw.bb2.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_dma_direction.exit.i

sw.epilog.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_dma_direction.exit.i

get_dma_direction.exit.i:                         ; preds = %sw.epilog.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %for.body.i.get_dma_direction.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.20, %sw.epilog.i.i ], [ @.str.19, %sw.bb2.i.i ], [ @.str.18, %sw.bb1.i.i ], [ @.str.17, %for.body.i.get_dma_direction.exit.i_crit_edge ]
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name.i, i32 noundef %i.068.i, ptr noundef nonnull %cond.i, ptr noundef nonnull %retval.0.i.i) #8
  %inc.i = add nuw nsw i32 %i.068.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %and37.i
  br i1 %exitcond.not.i, label %get_dma_direction.exit.i.show_dma_capability.exit_crit_edge, label %get_dma_direction.exit.i.for.body.i_crit_edge

get_dma_direction.exit.i.for.body.i_crit_edge:    ; preds = %get_dma_direction.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

get_dma_direction.exit.i.show_dma_capability.exit_crit_edge: ; preds = %get_dma_direction.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %show_dma_capability.exit

show_dma_capability.exit:                         ; preds = %get_dma_direction.exit.i.show_dma_capability.exit_crit_edge, %sw.epilog.i.show_dma_capability.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @descriptor_list_create(ptr nocapture noundef readonly %cobalt, ptr noundef %scatter_list, i1 noundef zeroext %to_pci, i32 noundef %sglen, i32 noundef %size, i32 noundef %width, i32 noundef %stride, ptr nocapture noundef %desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %bus = getelementptr inbounds %struct.sg_dma_desc_info, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %scatter_list, i32 0, i32 3
  %4 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_address, align 4
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !46

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 162, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and21 = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end.if.end44_crit_edge, label %do.end38, !prof !46

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 163, i32 noundef 9, ptr noundef null) #5
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end.if.end44_crit_edge
  %and53 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end44.if.end76_crit_edge, label %do.end70, !prof !46

if.end44.if.end76_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

do.end70:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 164, i32 noundef 9, ptr noundef null) #5
  br label %if.end76

if.end76:                                         ; preds = %do.end70, %if.end44.if.end76_crit_edge
  %and85 = and i32 %stride, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end76.if.end108_crit_edge, label %do.end102, !prof !46

if.end76.if.end108_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

do.end102:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef null) #5
  br label %if.end108

if.end108:                                        ; preds = %do.end102, %if.end76.if.end108_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %stride, i32 %width)
  %cmp = icmp ult i32 %stride, %width
  br i1 %cmp, label %do.end132, label %if.end108.if.end138_crit_edge, !prof !47

if.end108.if.end138_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end138

do.end132:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 9, ptr noundef null) #5
  br label %if.end138

if.end138:                                        ; preds = %do.end132, %if.end108.if.end138_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %width, i32 %stride)
  %cmp146.not = icmp ult i32 %width, %stride
  %spec.select = select i1 %cmp146.not, i32 %width, i32 %size
  %spec.select413 = select i1 %cmp146.not, i32 %stride, i32 %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sglen)
  %cmp207 = icmp eq i32 %sglen, 1
  %cond226 = select i1 %to_pci, i32 8, i32 0
  %or284 = select i1 %to_pci, i32 12, i32 4
  %last_desc_virt = getelementptr inbounds %struct.sg_dma_desc_info, ptr %desc, i32 0, i32 3
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select413, i32 %spec.select)
  %cmp248421 = icmp ugt i32 %spec.select413, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool149.not428 = icmp eq i32 %size, 0
  br i1 %tobool149.not428, label %if.end138.cleanup305_crit_edge, label %if.end138.while.body_crit_edge

if.end138.while.body_crit_edge:                   ; preds = %if.end138
  br label %while.body

if.end138.cleanup305_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup305

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end138.while.body_crit_edge
  %scatter_list.addr.0435 = phi ptr [ %scatter_list.addr.3, %cleanup.while.body_crit_edge ], [ %scatter_list, %if.end138.while.body_crit_edge ]
  %size.addr.0434 = phi i32 [ %size.addr.3, %cleanup.while.body_crit_edge ], [ %size, %if.end138.while.body_crit_edge ]
  %d.0433 = phi ptr [ %incdec.ptr302, %cleanup.while.body_crit_edge ], [ %1, %if.end138.while.body_crit_edge ]
  %next.0432 = phi i32 [ %add271, %cleanup.while.body_crit_edge ], [ %3, %if.end138.while.body_crit_edge ]
  %offset.0431 = phi i32 [ %offset.4, %cleanup.while.body_crit_edge ], [ 0, %if.end138.while.body_crit_edge ]
  %first.0.off0430 = phi i1 [ false, %cleanup.while.body_crit_edge ], [ true, %if.end138.while.body_crit_edge ]
  %copied.0429 = phi i32 [ %copied.3, %cleanup.while.body_crit_edge ], [ 0, %if.end138.while.body_crit_edge ]
  %dma_address150 = getelementptr inbounds %struct.scatterlist, ptr %scatter_list.addr.0435, i32 0, i32 3
  %6 = ptrtoint ptr %dma_address150 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_address150, align 4
  %add = add i32 %7, %offset.0431
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp151 = icmp eq i32 %add, 0
  br i1 %cmp151, label %while.body.cleanup305_crit_edge, label %if.end153

while.body.cleanup305_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup305

if.end153:                                        ; preds = %while.body
  %8 = ptrtoint ptr %d.0433 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %d.0433, align 4
  %pci_h = getelementptr inbounds %struct.sg_dma_descriptor, ptr %d.0433, i32 0, i32 1
  %9 = ptrtoint ptr %pci_h to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %pci_h, align 4
  %local = getelementptr inbounds %struct.sg_dma_descriptor, ptr %d.0433, i32 0, i32 2
  %10 = ptrtoint ptr %local to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %local, align 4
  %reserved0 = getelementptr inbounds %struct.sg_dma_descriptor, ptr %d.0433, i32 0, i32 3
  %11 = ptrtoint ptr %reserved0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %reserved0, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %scatter_list.addr.0435, i32 0, i32 4
  %12 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_length, align 4
  %sub = sub i32 %13, %offset.0431
  %sub197 = sub i32 %spec.select, %copied.0429
  %14 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %sub197)
  br i1 %first.0.off0430, label %if.then202, label %if.end153.if.end238_crit_edge

if.end153.if.end238_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end238

if.then202:                                       ; preds = %if.end153
  br i1 %to_pci, label %if.then204, label %if.then202.if.end206_crit_edge

if.then202.if.end206_crit_edge:                   ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end206

if.then204:                                       ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %local to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 286331153, ptr %local, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.then204, %if.then202.if.end206_crit_edge
  br i1 %cmp207, label %if.then209, label %if.end206.if.end238_crit_edge

if.end206.if.end238_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end238

if.then209:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #7
  %div412 = lshr i32 %14, 1
  %and210 = and i32 %div412, 2147483644
  %bytes211 = getelementptr inbounds %struct.sg_dma_descriptor, ptr %d.0433, i32 0, i32 6
  %16 = ptrtoint ptr %bytes211 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and210, ptr %bytes211, align 4
  %reserved1 = getelementptr inbounds %struct.sg_dma_descriptor, ptr %d.0433, i32 0, i32 7
  %17 = ptrtoint ptr %reserved1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %reserved1, align 4
  %sub213 = sub i32 %size.addr.0434, %and210
  %add215 = add i32 %and210, %copied.0429
  %add217 = add i32 %and210, %offset.0431
  %add219 = add i32 %and210, %add
  %add220 = add i32 %next.0432, 32
  %next_h = getelementptr inbounds %struct.sg_dma_descriptor, ptr %d.0433, i32 0, i32 5
  %18 = ptrtoint ptr %next_h to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %next_h, align 4
  %or = or i32 %add220, %cond226
  %next_l = getelementptr inbounds %struct.sg_dma_descriptor, ptr %d.0433, i32 0, i32 4
  %19 = ptrtoint ptr %next_l to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or, ptr %next_l, align 4
  %sub228 = sub i32 %14, %and210
  %incdec.ptr = getelementptr %struct.sg_dma_descriptor, ptr %d.0433, i32 1
  %20 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add219, ptr %incdec.ptr, align 4
  %pci_h234 = getelementptr %struct.sg_dma_descriptor, ptr %d.0433, i32 1, i32 1
  %21 = ptrtoint ptr %pci_h234 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %pci_h234, align 4
  %local235 = getelementptr %struct.sg_dma_descriptor, ptr %d.0433, i32 1, i32 2
  %22 = ptrtoint ptr %local235 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %local235, align 4
  %reserved0236 = getelementptr %struct.sg_dma_descriptor, ptr %d.0433, i32 1, i32 3
  %23 = ptrtoint ptr %reserved0236 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %reserved0236, align 4
  br label %if.end238

if.end238:                                        ; preds = %if.then209, %if.end206.if.end238_crit_edge, %if.end153.if.end238_crit_edge
  %copied.1 = phi i32 [ %add215, %if.then209 ], [ %copied.0429, %if.end206.if.end238_crit_edge ], [ %copied.0429, %if.end153.if.end238_crit_edge ]
  %offset.1 = phi i32 [ %add217, %if.then209 ], [ %offset.0431, %if.end206.if.end238_crit_edge ], [ %offset.0431, %if.end153.if.end238_crit_edge ]
  %next.1 = phi i32 [ %add220, %if.then209 ], [ %next.0432, %if.end206.if.end238_crit_edge ], [ %next.0432, %if.end153.if.end238_crit_edge ]
  %d.1 = phi ptr [ %incdec.ptr, %if.then209 ], [ %d.0433, %if.end206.if.end238_crit_edge ], [ %d.0433, %if.end153.if.end238_crit_edge ]
  %bytes.0 = phi i32 [ %sub228, %if.then209 ], [ %14, %if.end206.if.end238_crit_edge ], [ %14, %if.end153.if.end238_crit_edge ]
  %size.addr.1 = phi i32 [ %sub213, %if.then209 ], [ %size.addr.0434, %if.end206.if.end238_crit_edge ], [ %size.addr.0434, %if.end153.if.end238_crit_edge ]
  %bytes239 = getelementptr inbounds %struct.sg_dma_descriptor, ptr %d.1, i32 0, i32 6
  %24 = ptrtoint ptr %bytes239 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %bytes.0, ptr %bytes239, align 4
  %reserved1240 = getelementptr inbounds %struct.sg_dma_descriptor, ptr %d.1, i32 0, i32 7
  %25 = ptrtoint ptr %reserved1240 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %reserved1240, align 4
  %sub241 = sub i32 %size.addr.1, %bytes.0
  %add242 = add i32 %bytes.0, %copied.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add242, i32 %spec.select)
  %cmp244 = icmp eq i32 %add242, %spec.select
  br i1 %cmp244, label %while.cond247.preheader, label %if.else

while.cond247.preheader:                          ; preds = %if.end238
  %add243 = add i32 %bytes.0, %offset.1
  br i1 %cmp248421, label %while.cond247.preheader.while.body250_crit_edge, label %while.cond247.preheader.if.end270_crit_edge

while.cond247.preheader.if.end270_crit_edge:      ; preds = %while.cond247.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end270

while.cond247.preheader.while.body250_crit_edge:  ; preds = %while.cond247.preheader
  br label %while.body250

while.body250:                                    ; preds = %if.end268.while.body250_crit_edge, %while.cond247.preheader.while.body250_crit_edge
  %scatter_list.addr.1425 = phi ptr [ %scatter_list.addr.2, %if.end268.while.body250_crit_edge ], [ %scatter_list.addr.0435, %while.cond247.preheader.while.body250_crit_edge ]
  %size.addr.2424 = phi i32 [ %sub263, %if.end268.while.body250_crit_edge ], [ %sub241, %while.cond247.preheader.while.body250_crit_edge ]
  %offset.2423 = phi i32 [ %offset.3, %if.end268.while.body250_crit_edge ], [ %add243, %while.cond247.preheader.while.body250_crit_edge ]
  %copied.2422 = phi i32 [ %add261, %if.end268.while.body250_crit_edge ], [ %spec.select, %while.cond247.preheader.while.body250_crit_edge ]
  %dma_length251 = getelementptr inbounds %struct.scatterlist, ptr %scatter_list.addr.1425, i32 0, i32 4
  %26 = ptrtoint ptr %dma_length251 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_length251, align 4
  %sub252 = sub i32 %27, %offset.2423
  %sub253 = sub i32 %spec.select413, %copied.2422
  %28 = tail call i32 @llvm.umin.i32(i32 %sub252, i32 %sub253)
  %add261 = add i32 %28, %copied.2422
  %add262 = add i32 %28, %offset.2423
  %sub263 = sub i32 %size.addr.2424, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %add262)
  %cmp265 = icmp eq i32 %27, %add262
  br i1 %cmp265, label %if.then267, label %while.body250.if.end268_crit_edge

while.body250.if.end268_crit_edge:                ; preds = %while.body250
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end268

if.then267:                                       ; preds = %while.body250
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr @sg_next(ptr noundef %scatter_list.addr.1425) #5
  br label %if.end268

if.end268:                                        ; preds = %if.then267, %while.body250.if.end268_crit_edge
  %offset.3 = phi i32 [ 0, %if.then267 ], [ %add262, %while.body250.if.end268_crit_edge ]
  %scatter_list.addr.2 = phi ptr [ %call, %if.then267 ], [ %scatter_list.addr.1425, %while.body250.if.end268_crit_edge ]
  %cmp248 = icmp ugt i32 %spec.select413, %add261
  br i1 %cmp248, label %if.end268.while.body250_crit_edge, label %if.end268.if.end270_crit_edge

if.end268.if.end270_crit_edge:                    ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end270

if.end268.while.body250_crit_edge:                ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body250

if.else:                                          ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #7
  %call269 = tail call ptr @sg_next(ptr noundef %scatter_list.addr.0435) #5
  br label %if.end270

if.end270:                                        ; preds = %if.else, %if.end268.if.end270_crit_edge, %while.cond247.preheader.if.end270_crit_edge
  %copied.3 = phi i32 [ %add242, %if.else ], [ 0, %while.cond247.preheader.if.end270_crit_edge ], [ 0, %if.end268.if.end270_crit_edge ]
  %offset.4 = phi i32 [ 0, %if.else ], [ %add243, %while.cond247.preheader.if.end270_crit_edge ], [ %offset.3, %if.end268.if.end270_crit_edge ]
  %size.addr.3 = phi i32 [ %sub241, %if.else ], [ %sub241, %while.cond247.preheader.if.end270_crit_edge ], [ %sub263, %if.end268.if.end270_crit_edge ]
  %scatter_list.addr.3 = phi ptr [ %call269, %if.else ], [ %scatter_list.addr.0435, %while.cond247.preheader.if.end270_crit_edge ], [ %scatter_list.addr.2, %if.end268.if.end270_crit_edge ]
  %add271 = add i32 %next.1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.3)
  %cmp272 = icmp eq i32 %size.addr.3, 0
  %next_h279 = getelementptr inbounds %struct.sg_dma_descriptor, ptr %d.1, i32 0, i32 5
  %29 = ptrtoint ptr %next_h279 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %next_h279, align 4
  br i1 %cmp272, label %if.then274, label %if.else291

if.then274:                                       ; preds = %if.end270
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bus, align 4
  %or285 = or i32 %or284, %31
  %next_l286 = getelementptr inbounds %struct.sg_dma_descriptor, ptr %d.1, i32 0, i32 4
  %32 = ptrtoint ptr %next_l286 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or285, ptr %next_l286, align 4
  br i1 %to_pci, label %if.then274.if.end290_crit_edge, label %if.then288

if.then274.if.end290_crit_edge:                   ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end290

if.then288:                                       ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #7
  %local289 = getelementptr inbounds %struct.sg_dma_descriptor, ptr %d.1, i32 0, i32 2
  %33 = ptrtoint ptr %local289 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 572662306, ptr %local289, align 4
  br label %if.end290

if.end290:                                        ; preds = %if.then288, %if.then274.if.end290_crit_edge
  %34 = ptrtoint ptr %last_desc_virt to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %d.1, ptr %last_desc_virt, align 4
  br label %cleanup

if.else291:                                       ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #7
  %or299 = or i32 %add271, %cond226
  %next_l300 = getelementptr inbounds %struct.sg_dma_descriptor, ptr %d.1, i32 0, i32 4
  %35 = ptrtoint ptr %next_l300 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or299, ptr %next_l300, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else291, %if.end290
  %incdec.ptr302 = getelementptr %struct.sg_dma_descriptor, ptr %d.1, i32 1
  %tobool149.not = icmp eq i32 %size.addr.3, 0
  br i1 %tobool149.not, label %cleanup.cleanup305_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup.cleanup305_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup305

cleanup305:                                       ; preds = %cleanup.cleanup305_crit_edge, %while.body.cleanup305_crit_edge, %if.end138.cleanup305_crit_edge
  %retval.2.ph = phi i32 [ 0, %if.end138.cleanup305_crit_edge ], [ 0, %cleanup.cleanup305_crit_edge ], [ -14, %while.body.cleanup305_crit_edge ]
  ret i32 %retval.2.ph
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @descriptor_list_chain(ptr nocapture noundef readonly %this, ptr noundef readonly %next) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %last_desc_virt = getelementptr inbounds %struct.sg_dma_desc_info, ptr %this, i32 0, i32 3
  %0 = ptrtoint ptr %last_desc_virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last_desc_virt, align 4
  %next_l = getelementptr inbounds %struct.sg_dma_descriptor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %next_l to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_l, align 4
  %and = and i32 %3, 8
  %cmp = icmp eq ptr %next, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %next_h = getelementptr inbounds %struct.sg_dma_descriptor, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %next_h to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %next_h, align 4
  %or1 = or i32 %and, 6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bus = getelementptr inbounds %struct.sg_dma_desc_info, ptr %next, i32 0, i32 1
  %next_h4 = getelementptr inbounds %struct.sg_dma_descriptor, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %next_h4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %next_h4, align 4
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus, align 4
  %or6 = or i32 %and, %7
  %or7 = or i32 %or6, 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %or7, %if.else ], [ %or1, %if.then ]
  %8 = ptrtoint ptr %next_l to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge, ptr %next_l, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @descriptor_list_allocate(ptr noundef %desc, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.sg_dma_desc_info, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %bytes, ptr %size, align 4
  %dev = getelementptr inbounds %struct.sg_dma_desc_info, ptr %desc, i32 0, i32 4
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %bus = getelementptr inbounds %struct.sg_dma_desc_info, ptr %desc, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %2, i32 noundef %bytes, ptr noundef %bus, i32 noundef 3264, i32 noundef 0) #5
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %desc, align 4
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @descriptor_list_free(ptr nocapture noundef %desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.sg_dma_desc_info, ptr %desc, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %size = getelementptr inbounds %struct.sg_dma_desc_info, ptr %desc, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %bus = getelementptr inbounds %struct.sg_dma_desc_info, ptr %desc, i32 0, i32 1
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %5, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %desc, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @descriptor_list_interrupt_enable(ptr nocapture noundef readonly %desc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %last_desc_virt = getelementptr inbounds %struct.sg_dma_desc_info, ptr %desc, i32 0, i32 3
  %0 = ptrtoint ptr %last_desc_virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last_desc_virt, align 4
  %next_l = getelementptr inbounds %struct.sg_dma_descriptor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %next_l to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_l, align 4
  %or = or i32 %3, 4
  store i32 %or, ptr %next_l, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @descriptor_list_interrupt_disable(ptr nocapture noundef readonly %desc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %last_desc_virt = getelementptr inbounds %struct.sg_dma_desc_info, ptr %desc, i32 0, i32 3
  %0 = ptrtoint ptr %last_desc_virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last_desc_virt, align 4
  %next_l = getelementptr inbounds %struct.sg_dma_descriptor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %next_l to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_l, align 4
  %and = and i32 %3, -5
  store i32 %and, ptr %next_l, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @descriptor_list_loopback(ptr nocapture noundef readonly %desc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %last_desc_virt = getelementptr inbounds %struct.sg_dma_desc_info, ptr %desc, i32 0, i32 3
  %0 = ptrtoint ptr %last_desc_virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last_desc_virt, align 4
  %bus = getelementptr inbounds %struct.sg_dma_desc_info, ptr %desc, i32 0, i32 1
  %next_h = getelementptr inbounds %struct.sg_dma_descriptor, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %next_h to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %next_h, align 4
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bus, align 4
  %next_l = getelementptr inbounds %struct.sg_dma_descriptor, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %next_l to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %next_l, align 4
  %and = and i32 %6, 14
  %or = or i32 %and, %4
  store i32 %or, ptr %next_l, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @descriptor_list_end_of_chain(ptr nocapture noundef readonly %desc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %last_desc_virt = getelementptr inbounds %struct.sg_dma_desc_info, ptr %desc, i32 0, i32 3
  %0 = ptrtoint ptr %last_desc_virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last_desc_virt, align 4
  %next_l = getelementptr inbounds %struct.sg_dma_descriptor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %next_l to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_l, align 4
  %or = or i32 %3, 2
  store i32 %or, ptr %next_l, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !25, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cobalt/cobalt-omnitek.c", i32 162, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/cobalt/cobalt-omnitek.c", i32 71, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @show_dma_capability._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @show_dma_capability._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/cobalt/cobalt-omnitek.c", i32 77, i32 3}
!9 = !{ptr @show_dma_capability._entry.3, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @show_dma_capability._entry_ptr.5, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/cobalt/cobalt-omnitek.c", i32 80, i32 3}
!13 = !{ptr @show_dma_capability._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @show_dma_capability._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/cobalt/cobalt-omnitek.c", i32 83, i32 3}
!17 = !{ptr @show_dma_capability._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @show_dma_capability._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/cobalt/cobalt-omnitek.c", i32 90, i32 3}
!21 = !{ptr @show_dma_capability._entry.12, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @show_dma_capability._entry_ptr.14, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.16, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/cobalt/cobalt-omnitek.c", i32 58, i32 26}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/cobalt/cobalt-omnitek.c", i32 59, i32 27}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/cobalt/cobalt-omnitek.c", i32 60, i32 29}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/cobalt/cobalt-omnitek.c", i32 62, i32 9}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 2148878553}
!43 = !{i64 706956}
!44 = !{i64 707374}
!45 = !{i64 2148877198}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{!"branch_weights", i32 1, i32 2000}
