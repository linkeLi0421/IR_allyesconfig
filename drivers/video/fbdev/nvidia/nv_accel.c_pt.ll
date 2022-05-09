; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/nvidia/nv_accel.c_pt.bc'
source_filename = "../drivers/video/fbdev/nvidia/nv_accel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.nvidia_par = type { %struct._riva_hw_state, %struct._riva_hw_state, %struct._riva_hw_state, ptr, %struct.vgastate, [16 x i32], ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.NVFBLayout, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, [3 x %struct.nvidia_i2c_chan], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._riva_hw_state = type { [21 x i8], [65 x i8], [9 x i8], [5 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vgastate = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.NVFBLayout = type { i32, i32, i32, i32 }
%struct.nvidia_i2c_chan = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }

@NVDmaWait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DMA Get lockup\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NVDmaWait\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/video/fbdev/nvidia/nv_accel.c\00", [58 x i8] zeroinitializer }, align 32
@NVDmaWait._entry_ptr = internal global ptr @NVDmaWait._entry, section ".printk_index", align 4
@NVDmaWait._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvidiafb: DMA Wait Lockup\0A\00", [37 x i8] zeroinitializer }, align 32
@NVDmaWait._entry_ptr.5 = internal global ptr @NVDmaWait._entry.3, section ".printk_index", align 4
@NVCopyROP = internal constant { <{ i32, i32, [14 x i32] }>, [32 x i8] } { <{ i32, i32, [14 x i32] }> <{ i32 204, i32 85, [14 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@NVFlush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nvidiafb: DMA Flush lockup\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NVFlush\00", [24 x i8] zeroinitializer }, align 32
@NVFlush._entry_ptr = internal global ptr @NVFlush._entry, section ".printk_index", align 4
@NVSync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nvidiafb: DMA Sync lockup\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NVSync\00", [25 x i8] zeroinitializer }, align 32
@NVSync._entry_ptr = internal global ptr @NVSync._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 139, i32 7 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 152, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"NVCopyROP\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 64, i32 18 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 91, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [41 x i8] c"../drivers/video/fbdev/nvidia/nv_accel.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 104, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @NVDmaWait._entry, ptr @NVDmaWait._entry.3, ptr @NVDmaWait._entry_ptr, ptr @NVDmaWait._entry_ptr.5, ptr @NVFlush._entry, ptr @NVFlush._entry_ptr, ptr @NVSync._entry, ptr @NVSync._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @NVCopyROP, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVDmaWait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVDmaWait._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVCopyROP to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVFlush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NVSync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @NVResetGraphics(ptr nocapture noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %2 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line_length, align 4
  %FbStart = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %FbStart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %FbStart, align 8
  %FbUsableSize = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %FbUsableSize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %FbUsableSize, align 8
  %arrayidx = getelementptr i8, ptr %5, i32 %7
  %dmaBase = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 47
  %8 = ptrtoint ptr %dmaBase to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx, ptr %dmaBase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 0) #3, !srcloc !33
  %9 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dmaBase, align 4
  %arrayidx3.1 = getelementptr i32, ptr %10, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.1, i32 0) #3, !srcloc !33
  %11 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dmaBase, align 4
  %arrayidx3.2 = getelementptr i32, ptr %12, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.2, i32 0) #3, !srcloc !33
  %13 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dmaBase, align 4
  %arrayidx3.3 = getelementptr i32, ptr %14, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.3, i32 0) #3, !srcloc !33
  %15 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dmaBase, align 4
  %arrayidx3.4 = getelementptr i32, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.4, i32 0) #3, !srcloc !33
  %17 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dmaBase, align 4
  %arrayidx3.5 = getelementptr i32, ptr %18, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.5, i32 0) #3, !srcloc !33
  %19 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dmaBase, align 4
  %arrayidx3.6 = getelementptr i32, ptr %20, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.6, i32 0) #3, !srcloc !33
  %21 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dmaBase, align 4
  %arrayidx3.7 = getelementptr i32, ptr %22, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx3.7, i32 0) #3, !srcloc !33
  %23 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dmaBase, align 4
  %arrayidx5 = getelementptr i32, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx5, i32 262144) #3, !srcloc !33
  %25 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dmaBase, align 4
  %arrayidx8 = getelementptr i32, ptr %26, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx8, i32 -2147483632) #3, !srcloc !33
  %27 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dmaBase, align 4
  %arrayidx11 = getelementptr i32, ptr %28, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx11, i32 270336) #3, !srcloc !33
  %29 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dmaBase, align 4
  %arrayidx14 = getelementptr i32, ptr %30, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx14, i32 -2147483631) #3, !srcloc !33
  %31 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dmaBase, align 4
  %arrayidx17 = getelementptr i32, ptr %32, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx17, i32 278528) #3, !srcloc !33
  %33 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dmaBase, align 4
  %arrayidx20 = getelementptr i32, ptr %34, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx20, i32 -2147483630) #3, !srcloc !33
  %35 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dmaBase, align 4
  %arrayidx23 = getelementptr i32, ptr %36, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx23, i32 286720) #3, !srcloc !33
  %37 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dmaBase, align 4
  %arrayidx26 = getelementptr i32, ptr %38, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx26, i32 -2147483629) #3, !srcloc !33
  %39 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dmaBase, align 4
  %arrayidx29 = getelementptr i32, ptr %40, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx29, i32 294912) #3, !srcloc !33
  %41 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dmaBase, align 4
  %arrayidx32 = getelementptr i32, ptr %42, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx32, i32 -2147483628) #3, !srcloc !33
  %43 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dmaBase, align 4
  %arrayidx35 = getelementptr i32, ptr %44, i32 18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx35, i32 303104) #3, !srcloc !33
  %45 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dmaBase, align 4
  %arrayidx38 = getelementptr i32, ptr %46, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx38, i32 -2147483627) #3, !srcloc !33
  %47 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dmaBase, align 4
  %arrayidx41 = getelementptr i32, ptr %48, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx41, i32 311296) #3, !srcloc !33
  %49 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dmaBase, align 4
  %arrayidx44 = getelementptr i32, ptr %50, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx44, i32 -2147483626) #3, !srcloc !33
  %51 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dmaBase, align 4
  %arrayidx47 = getelementptr i32, ptr %52, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx47, i32 319488) #3, !srcloc !33
  %53 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dmaBase, align 4
  %arrayidx50 = getelementptr i32, ptr %54, i32 23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx50, i32 -2147483625) #3, !srcloc !33
  %dmaPut = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 43
  %55 = ptrtoint ptr %dmaPut to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %dmaPut, align 4
  %dmaCurrent = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 44
  %56 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 24, ptr %dmaCurrent, align 8
  %dmaMax = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 46
  %57 = ptrtoint ptr %dmaMax to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 8191, ptr %dmaMax, align 8
  %dmaFree = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 45
  %58 = ptrtoint ptr %dmaFree to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 8167, ptr %dmaFree, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %59 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bits_per_pixel, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values)
  switch i32 %60, label %sw.default [
    i32 32, label %entry.if.end_crit_edge
    i32 24, label %entry.if.end_crit_edge208
    i32 16, label %sw.bb54
  ]

entry.if.end_crit_edge208:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

sw.bb54:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %sw.default, %sw.bb54, %entry.if.end_crit_edge, %entry.if.end_crit_edge208
  %surfaceFormat.0 = phi i32 [ 1, %sw.default ], [ 4, %sw.bb54 ], [ 6, %entry.if.end_crit_edge ], [ 6, %entry.if.end_crit_edge208 ]
  %lineFormat.0 = phi i32 [ 3, %sw.default ], [ 1, %sw.bb54 ], [ 3, %entry.if.end_crit_edge ], [ 3, %entry.if.end_crit_edge208 ]
  %62 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dmaBase, align 4
  %64 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dmaCurrent, align 8
  %inc59 = add i32 %65, 1
  store i32 %inc59, ptr %dmaCurrent, align 8
  %arrayidx60 = getelementptr i32, ptr %63, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx60, i32 1049344) #3, !srcloc !33
  %66 = ptrtoint ptr %dmaFree to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dmaFree, align 4
  %sub63 = add i32 %67, -5
  store i32 %sub63, ptr %dmaFree, align 4
  %68 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dmaBase, align 4
  %70 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dmaCurrent, align 8
  %inc66 = add i32 %71, 1
  store i32 %inc66, ptr %dmaCurrent, align 8
  %arrayidx67 = getelementptr i32, ptr %69, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx67, i32 %surfaceFormat.0) #3, !srcloc !33
  %shl = shl i32 %3, 16
  %or = or i32 %shl, %3
  %72 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dmaBase, align 4
  %74 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dmaCurrent, align 8
  %inc71 = add i32 %75, 1
  store i32 %inc71, ptr %dmaCurrent, align 8
  %arrayidx72 = getelementptr i32, ptr %73, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx72, i32 %or) #3, !srcloc !33
  %76 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dmaBase, align 4
  %78 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dmaCurrent, align 8
  %inc76 = add i32 %79, 1
  store i32 %inc76, ptr %dmaCurrent, align 8
  %arrayidx77 = getelementptr i32, ptr %77, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx77, i32 0) #3, !srcloc !33
  %80 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dmaBase, align 4
  %82 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dmaCurrent, align 8
  %inc81 = add i32 %83, 1
  store i32 %inc81, ptr %dmaCurrent, align 8
  %arrayidx82 = getelementptr i32, ptr %81, i32 %83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx82, i32 0) #3, !srcloc !33
  %84 = ptrtoint ptr %dmaFree to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dmaFree, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp85 = icmp ult i32 %85, 2
  br i1 %cmp85, label %if.then86, label %if.end.if.end87_crit_edge

if.end.if.end87_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end87

if.then86:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @NVDmaWait(ptr noundef %info, i32 noundef 1)
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end.if.end87_crit_edge
  %86 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dmaBase, align 4
  %88 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dmaCurrent, align 8
  %inc90 = add i32 %89, 1
  store i32 %inc90, ptr %dmaCurrent, align 8
  %arrayidx91 = getelementptr i32, ptr %87, i32 %89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx91, i32 279296) #3, !srcloc !33
  %90 = ptrtoint ptr %dmaFree to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dmaFree, align 4
  %sub94 = add i32 %91, -2
  store i32 %sub94, ptr %dmaFree, align 4
  %92 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dmaBase, align 4
  %94 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dmaCurrent, align 8
  %inc97 = add i32 %95, 1
  store i32 %inc97, ptr %dmaCurrent, align 8
  %arrayidx98 = getelementptr i32, ptr %93, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx98, i32 %lineFormat.0) #3, !srcloc !33
  %96 = ptrtoint ptr %dmaFree to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dmaFree, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp101 = icmp ult i32 %97, 2
  br i1 %cmp101, label %if.then102, label %if.end87.if.end103_crit_edge

if.end87.if.end103_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end103

if.then102:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @NVDmaWait(ptr noundef %info, i32 noundef 1)
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end87.if.end103_crit_edge
  %98 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dmaBase, align 4
  %100 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dmaCurrent, align 8
  %inc106 = add i32 %101, 1
  store i32 %inc106, ptr %dmaCurrent, align 8
  %arrayidx107 = getelementptr i32, ptr %99, i32 %101
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx107, i32 312064) #3, !srcloc !33
  %102 = ptrtoint ptr %dmaFree to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dmaFree, align 4
  %sub110 = add i32 %103, -2
  store i32 %sub110, ptr %dmaFree, align 4
  %104 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dmaBase, align 4
  %106 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dmaCurrent, align 8
  %inc113 = add i32 %107, 1
  store i32 %inc113, ptr %dmaCurrent, align 8
  %arrayidx114 = getelementptr i32, ptr %105, i32 %107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx114, i32 %lineFormat.0) #3, !srcloc !33
  %108 = ptrtoint ptr %dmaFree to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dmaFree, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %cmp117 = icmp ult i32 %109, 2
  br i1 %cmp117, label %if.then118, label %if.end103.if.end119_crit_edge

if.end103.if.end119_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end119

if.then118:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @NVDmaWait(ptr noundef %info, i32 noundef 1)
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %if.end103.if.end119_crit_edge
  %110 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dmaBase, align 4
  %112 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %dmaCurrent, align 8
  %inc122 = add i32 %113, 1
  store i32 %inc122, ptr %dmaCurrent, align 8
  %arrayidx123 = getelementptr i32, ptr %111, i32 %113
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx123, i32 295680) #3, !srcloc !33
  %114 = ptrtoint ptr %dmaFree to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dmaFree, align 4
  %sub126 = add i32 %115, -2
  store i32 %sub126, ptr %dmaFree, align 4
  %116 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dmaBase, align 4
  %118 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dmaCurrent, align 8
  %inc129 = add i32 %119, 1
  store i32 %inc129, ptr %dmaCurrent, align 8
  %arrayidx130 = getelementptr i32, ptr %117, i32 %119
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx130, i32 %lineFormat.0) #3, !srcloc !33
  %currentRop = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 48
  %120 = ptrtoint ptr %currentRop to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %currentRop, align 8
  tail call fastcc void @NVSetRopSolid(ptr noundef %info, i32 noundef 0)
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %121 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %xres_virtual, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 3
  %123 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %yres_virtual, align 4
  %125 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %par1, align 4
  %dmaFree.i = getelementptr inbounds %struct.nvidia_par, ptr %126, i32 0, i32 45
  %127 = ptrtoint ptr %dmaFree.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dmaFree.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %128)
  %cmp.i = icmp ult i32 %128, 3
  br i1 %cmp.i, label %if.then.i, label %if.end119.NVSetClippingRectangle.exit_crit_edge

if.end119.NVSetClippingRectangle.exit_crit_edge:  ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #5
  br label %NVSetClippingRectangle.exit

if.then.i:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @NVDmaWait(ptr noundef %info, i32 noundef 2) #3
  br label %NVSetClippingRectangle.exit

NVSetClippingRectangle.exit:                      ; preds = %if.then.i, %if.end119.NVSetClippingRectangle.exit_crit_edge
  %add3.i = add i32 %122, 1
  %dmaBase.i = getelementptr inbounds %struct.nvidia_par, ptr %126, i32 0, i32 47
  %129 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dmaBase.i, align 4
  %dmaCurrent.i = getelementptr inbounds %struct.nvidia_par, ptr %126, i32 0, i32 44
  %131 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dmaCurrent.i, align 8
  %inc.i = add i32 %132, 1
  store i32 %inc.i, ptr %dmaCurrent.i, align 8
  %arrayidx.i = getelementptr i32, ptr %130, i32 %132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 549632) #3, !srcloc !33
  %133 = ptrtoint ptr %dmaFree.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dmaFree.i, align 4
  %sub5.i = add i32 %134, -3
  store i32 %sub5.i, ptr %dmaFree.i, align 4
  %135 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dmaBase.i, align 4
  %137 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %dmaCurrent.i, align 8
  %inc8.i = add i32 %138, 1
  store i32 %inc8.i, ptr %dmaCurrent.i, align 8
  %arrayidx9.i = getelementptr i32, ptr %136, i32 %138
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx9.i, i32 0) #3, !srcloc !33
  %add.i = shl i32 %124, 16
  %shl11.i = add i32 %add.i, 65536
  %or12.i = or i32 %shl11.i, %add3.i
  %139 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dmaBase.i, align 4
  %141 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %dmaCurrent.i, align 8
  %inc15.i = add i32 %142, 1
  store i32 %inc15.i, ptr %dmaCurrent.i, align 8
  %arrayidx16.i = getelementptr i32, ptr %140, i32 %142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx16.i, i32 %or12.i) #3, !srcloc !33
  %143 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %dmaCurrent, align 8
  %145 = ptrtoint ptr %dmaPut to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dmaPut, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %146)
  %cmp.not.i = icmp eq i32 %144, %146
  br i1 %cmp.not.i, label %NVSetClippingRectangle.exit.NVDmaKickoff.exit_crit_edge, label %if.then.i206

NVSetClippingRectangle.exit.NVDmaKickoff.exit_crit_edge: ; preds = %NVSetClippingRectangle.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %NVDmaKickoff.exit

if.then.i206:                                     ; preds = %NVSetClippingRectangle.exit
  call void @__sanitizer_cov_trace_pc() #5
  %147 = ptrtoint ptr %dmaPut to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %144, ptr %dmaPut, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  %148 = ptrtoint ptr %FbStart to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %FbStart, align 8
  %150 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %149) #3, !srcloc !35
  %151 = ptrtoint ptr %dmaPut to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %dmaPut, align 4
  %shl.i = shl i32 %152, 2
  %FIFO.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 68
  %153 = ptrtoint ptr %FIFO.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %FIFO.i, align 4
  %arrayidx.i205 = getelementptr i32, ptr %154, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i205, i32 %shl.i) #3, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  br label %NVDmaKickoff.exit

NVDmaKickoff.exit:                                ; preds = %if.then.i206, %NVSetClippingRectangle.exit.NVDmaKickoff.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @NVDmaWait(ptr nocapture noundef %info, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %inc = add i32 %size, 1
  %dmaFree = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %dmaFree to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dmaFree, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %inc)
  %cmp108 = icmp ult i32 %3, %inc
  br i1 %cmp108, label %land.lhs.true.lr.ph, label %entry.if.end76_crit_edge

entry.if.end76_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end76

land.lhs.true.lr.ph:                              ; preds = %entry
  %lockup = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 24
  %FIFO = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 68
  %dmaPut = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 43
  %dmaMax = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 46
  %dmaCurrent = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 44
  %dmaBase = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 47
  %FbStart = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end68.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %count.0109 = phi i32 [ 1000000000, %land.lhs.true.lr.ph ], [ %dec, %if.end68.land.lhs.true_crit_edge ]
  %dec = add nsw i32 %count.0109, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end73.critedge, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %4 = ptrtoint ptr %lockup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lockup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %while.body, label %land.rhs.if.end76_crit_edge

land.rhs.if.end76_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end76

while.body:                                       ; preds = %land.rhs
  %6 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %FIFO, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 17
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #3, !srcloc !37
  %shr = lshr i32 %8, 2
  %9 = ptrtoint ptr %dmaPut to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dmaPut, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %shr)
  %cmp3.not = icmp ult i32 %10, %shr
  br i1 %cmp3.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %11 = ptrtoint ptr %dmaMax to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dmaMax, align 8
  %13 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dmaCurrent, align 8
  %sub = sub i32 %12, %14
  %15 = ptrtoint ptr %dmaFree to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %dmaFree, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %inc)
  %cmp6 = icmp ult i32 %sub, %inc
  br i1 %cmp6, label %if.then7, label %if.then.if.end68_crit_edge

if.then.if.end68_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end68

if.then7:                                         ; preds = %if.then
  %16 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dmaBase, align 4
  %inc9 = add i32 %14, 1
  %18 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %inc9, ptr %dmaCurrent, align 8
  %arrayidx10 = getelementptr i32, ptr %17, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx10, i32 536870912) #3, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %8)
  %cmp12 = icmp ult i32 %8, 36
  br i1 %cmp12, label %if.then13, label %if.then7.do.body47_crit_edge

if.then7.do.body47_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body47

if.then13:                                        ; preds = %if.then7
  %19 = ptrtoint ptr %dmaPut to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dmaPut, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %20)
  %cmp15 = icmp ult i32 %20, 9
  br i1 %cmp15, label %do.body, label %if.then13.do.body25.preheader_crit_edge

if.then13.do.body25.preheader_crit_edge:          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body25.preheader

do.body:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  tail call void @arm_heavy_mb() #3
  %21 = ptrtoint ptr %FbStart to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %FbStart, align 8
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %22) #3, !srcloc !35
  %24 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %FIFO, align 4
  %arrayidx20 = getelementptr i32, ptr %25, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx20, i32 36) #3, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  br label %do.body25.preheader

do.body25.preheader:                              ; preds = %do.body, %if.then13.do.body25.preheader_crit_edge
  br label %do.body25

do.body25:                                        ; preds = %do.body25.do.body25_crit_edge, %do.body25.preheader
  %cnt.0 = phi i32 [ %dec32, %do.body25.do.body25_crit_edge ], [ 1000000000, %do.body25.preheader ]
  %26 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %FIFO, align 4
  %arrayidx27 = getelementptr i32, ptr %27, i32 17
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx27) #3, !srcloc !37
  %dec32 = add i32 %cnt.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec32)
  %tobool33.not = icmp eq i32 %dec32, 0
  %tobool33.not.not = xor i1 %tobool33.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %28)
  %cmp35 = icmp ult i32 %28, 36
  %or.cond = select i1 %tobool33.not.not, i1 %cmp35, i1 false
  br i1 %or.cond, label %do.body25.do.body25_crit_edge, label %do.end37

do.body25.do.body25_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body25

do.end37:                                         ; preds = %do.body25
  %shr30.le = lshr i32 %28, 2
  br i1 %tobool33.not, label %do.end42, label %do.end37.do.body47_crit_edge

do.end37.do.body47_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body47

do.end42:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #5
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  %29 = ptrtoint ptr %lockup to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %lockup, align 8
  br label %do.body47

do.body47:                                        ; preds = %do.end42, %do.end37.do.body47_crit_edge, %if.then7.do.body47_crit_edge
  %dmaGet.0 = phi i32 [ %shr30.le, %do.end37.do.body47_crit_edge ], [ %shr30.le, %do.end42 ], [ %shr, %if.then7.do.body47_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  tail call void @arm_heavy_mb() #3
  %30 = ptrtoint ptr %FbStart to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %FbStart, align 8
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %31) #3, !srcloc !35
  %33 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %FIFO, align 4
  %arrayidx54 = getelementptr i32, ptr %34, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx54, i32 32) #3, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %35 = ptrtoint ptr %dmaPut to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 8, ptr %dmaPut, align 4
  %36 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %dmaCurrent, align 8
  %sub61 = add nsw i32 %dmaGet.0, -9
  br label %if.end68.sink.split

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  %37 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dmaCurrent, align 8
  %39 = xor i32 %38, -1
  %sub66 = add i32 %shr, %39
  br label %if.end68.sink.split

if.end68.sink.split:                              ; preds = %if.else, %do.body47
  %sub61.sink = phi i32 [ %sub61, %do.body47 ], [ %sub66, %if.else ]
  %40 = ptrtoint ptr %dmaFree to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub61.sink, ptr %dmaFree, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.end68.sink.split, %if.then.if.end68_crit_edge
  %41 = ptrtoint ptr %dmaFree to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dmaFree, align 4
  %cmp = icmp ult i32 %42, %inc
  br i1 %cmp, label %if.end68.land.lhs.true_crit_edge, label %if.end68.if.end76_crit_edge

if.end68.if.end76_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end76

if.end68.land.lhs.true_crit_edge:                 ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

do.end73.critedge:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  %43 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %par1, align 4
  tail call void @touch_softlockup_watchdog() #3
  %scan_align.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 4
  %45 = ptrtoint ptr %scan_align.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %scan_align.i, align 4
  %lockup.i = getelementptr inbounds %struct.nvidia_par, ptr %44, i32 0, i32 24
  %46 = ptrtoint ptr %lockup.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %lockup.i, align 8
  br label %if.end76

if.end76:                                         ; preds = %do.end73.critedge, %if.end68.if.end76_crit_edge, %land.rhs.if.end76_crit_edge, %entry.if.end76_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @NVSetRopSolid(ptr nocapture noundef %info, i32 noundef %rop) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %currentRop16 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %currentRop16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currentRop16, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rop)
  %cmp17.not = icmp eq i32 %3, %rop
  br i1 %cmp17.not, label %entry.if.end42_crit_edge, label %if.then18

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end42

if.then18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %3)
  %cmp20 = icmp ugt i32 %3, 15
  br i1 %cmp20, label %if.then21, label %if.then18.if.end22_crit_edge

if.then18.if.end22_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

if.then21:                                        ; preds = %if.then18
  %dmaFree.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 45
  %4 = ptrtoint ptr %dmaFree.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dmaFree.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp.i = icmp ult i32 %5, 5
  br i1 %cmp.i, label %if.then.i, label %if.then21.NVSetPattern.exit_crit_edge

if.then21.NVSetPattern.exit_crit_edge:            ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  br label %NVSetPattern.exit

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @NVDmaWait(ptr noundef %info, i32 noundef 4) #3
  br label %NVSetPattern.exit

NVSetPattern.exit:                                ; preds = %if.then.i, %if.then21.NVSetPattern.exit_crit_edge
  %dmaBase.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 47
  %6 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmaBase.i, align 4
  %dmaCurrent.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 44
  %8 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dmaCurrent.i, align 8
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %dmaCurrent.i, align 8
  %arrayidx.i = getelementptr i32, ptr %7, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 1065744) #3, !srcloc !33
  %10 = ptrtoint ptr %dmaFree.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dmaFree.i, align 4
  %sub.i = add i32 %11, -5
  store i32 %sub.i, ptr %dmaFree.i, align 4
  %12 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dmaBase.i, align 4
  %14 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dmaCurrent.i, align 8
  %inc5.i = add i32 %15, 1
  store i32 %inc5.i, ptr %dmaCurrent.i, align 8
  %arrayidx6.i = getelementptr i32, ptr %13, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx6.i, i32 -1) #3, !srcloc !33
  %16 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dmaBase.i, align 4
  %18 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dmaCurrent.i, align 8
  %inc10.i = add i32 %19, 1
  store i32 %inc10.i, ptr %dmaCurrent.i, align 8
  %arrayidx11.i = getelementptr i32, ptr %17, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx11.i, i32 -1) #3, !srcloc !33
  %20 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dmaBase.i, align 4
  %22 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dmaCurrent.i, align 8
  %inc15.i = add i32 %23, 1
  store i32 %inc15.i, ptr %dmaCurrent.i, align 8
  %arrayidx16.i = getelementptr i32, ptr %21, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx16.i, i32 -1) #3, !srcloc !33
  %24 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dmaBase.i, align 4
  %26 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dmaCurrent.i, align 8
  %inc20.i = add i32 %27, 1
  store i32 %inc20.i, ptr %dmaCurrent.i, align 8
  %arrayidx21.i = getelementptr i32, ptr %25, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx21.i, i32 -1) #3, !srcloc !33
  br label %if.end22

if.end22:                                         ; preds = %NVSetPattern.exit, %if.then18.if.end22_crit_edge
  %dmaFree23 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 45
  %28 = ptrtoint ptr %dmaFree23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dmaFree23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp24 = icmp ult i32 %29, 2
  br i1 %cmp24, label %if.then25, label %if.end22.if.end26_crit_edge

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @NVDmaWait(ptr noundef %info, i32 noundef 1)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22.if.end26_crit_edge
  %dmaBase27 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 47
  %30 = ptrtoint ptr %dmaBase27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dmaBase27, align 4
  %dmaCurrent28 = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 44
  %32 = ptrtoint ptr %dmaCurrent28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dmaCurrent28, align 8
  %inc29 = add i32 %33, 1
  store i32 %inc29, ptr %dmaCurrent28, align 8
  %arrayidx30 = getelementptr i32, ptr %31, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx30, i32 271104) #3, !srcloc !33
  %34 = ptrtoint ptr %dmaFree23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dmaFree23, align 4
  %sub33 = add i32 %35, -2
  store i32 %sub33, ptr %dmaFree23, align 4
  %arrayidx34 = getelementptr [16 x i32], ptr @NVCopyROP, i32 0, i32 %rop
  %36 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx34, align 4
  %38 = ptrtoint ptr %dmaBase27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dmaBase27, align 4
  %40 = ptrtoint ptr %dmaCurrent28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dmaCurrent28, align 8
  %inc37 = add i32 %41, 1
  store i32 %inc37, ptr %dmaCurrent28, align 8
  %arrayidx38 = getelementptr i32, ptr %39, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx38, i32 %37) #3, !srcloc !33
  %42 = ptrtoint ptr %currentRop16 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %rop, ptr %currentRop16, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.end26, %entry.if.end42_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvidiafb_sync(ptr nocapture noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %lockup = getelementptr inbounds %struct.nvidia_par, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %lockup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lockup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %FIFO.i = getelementptr inbounds %struct.nvidia_par, ptr %3, i32 0, i32 68
  %dmaPut.i = getelementptr inbounds %struct.nvidia_par, ptr %3, i32 0, i32 43
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.then2
  %count.0.i = phi i32 [ 1000000000, %if.then2 ], [ %dec.i, %land.rhs.i.while.cond.i_crit_edge ]
  %dec.i = add nsw i32 %count.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.critedge.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.i
  %6 = ptrtoint ptr %FIFO.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %FIFO.i, align 4
  %arrayidx.i = getelementptr i32, ptr %7, i32 17
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #3, !srcloc !37
  %shr.i = lshr i32 %8, 2
  %9 = ptrtoint ptr %dmaPut.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dmaPut.i, align 4
  %cmp.not.i = icmp eq i32 %shr.i, %10
  br i1 %cmp.not.i, label %land.rhs.i.if.end3_crit_edge, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i

land.rhs.i.if.end3_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3

do.end.critedge.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #6
  %11 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %par1, align 4
  tail call void @touch_softlockup_watchdog() #3
  %scan_align.i.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 4
  %13 = ptrtoint ptr %scan_align.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %scan_align.i.i, align 4
  %lockup.i.i = getelementptr inbounds %struct.nvidia_par, ptr %12, i32 0, i32 24
  %14 = ptrtoint ptr %lockup.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %lockup.i.i, align 8
  br label %if.end3

if.end3:                                          ; preds = %do.end.critedge.i, %land.rhs.i.if.end3_crit_edge
  %15 = ptrtoint ptr %lockup to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %lockup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool5.not = icmp eq i32 %.pr, 0
  br i1 %tobool5.not, label %if.then6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  %16 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par1, align 4
  %PGRAPH.i = getelementptr inbounds %struct.nvidia_par, ptr %17, i32 0, i32 63
  br label %while.cond.i16

while.cond.i16:                                   ; preds = %land.rhs.i17.while.cond.i16_crit_edge, %if.then6
  %count.0.i13 = phi i32 [ 1000000000, %if.then6 ], [ %dec.i14, %land.rhs.i17.while.cond.i16_crit_edge ]
  %dec.i14 = add nsw i32 %count.0.i13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i14)
  %tobool.not.i15 = icmp eq i32 %dec.i14, 0
  br i1 %tobool.not.i15, label %do.end.critedge.i20, label %land.rhs.i17

land.rhs.i17:                                     ; preds = %while.cond.i16
  %18 = ptrtoint ptr %PGRAPH.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %PGRAPH.i, align 8
  %add.ptr.i = getelementptr i8, ptr %19, i32 1792
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !37
  %tobool2.not.i = icmp eq i32 %20, 0
  br i1 %tobool2.not.i, label %land.rhs.i17.cleanup_crit_edge, label %land.rhs.i17.while.cond.i16_crit_edge

land.rhs.i17.while.cond.i16_crit_edge:            ; preds = %land.rhs.i17
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i16

land.rhs.i17.cleanup_crit_edge:                   ; preds = %land.rhs.i17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end.critedge.i20:                              ; preds = %while.cond.i16
  call void @__sanitizer_cov_trace_pc() #5
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #6
  %21 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %par1, align 4
  tail call void @touch_softlockup_watchdog() #3
  %scan_align.i.i18 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 10, i32 4
  %23 = ptrtoint ptr %scan_align.i.i18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %scan_align.i.i18, align 4
  %lockup.i.i19 = getelementptr inbounds %struct.nvidia_par, ptr %22, i32 0, i32 24
  %24 = ptrtoint ptr %lockup.i.i19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %lockup.i.i19, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end.critedge.i20, %land.rhs.i17.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvidiafb_copyarea(ptr noundef %info, ptr noundef %region) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %lockup = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %lockup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lockup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @cfb_copyarea(ptr noundef %info, ptr noundef %region) #3
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dmaFree = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 45
  %6 = ptrtoint ptr %dmaFree to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dmaFree, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp4 = icmp ult i32 %7, 4
  br i1 %cmp4, label %if.then5, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @NVDmaWait(ptr noundef %info, i32 noundef 3)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %dmaBase = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 47
  %8 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dmaBase, align 4
  %dmaCurrent = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 44
  %10 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dmaCurrent, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %dmaCurrent, align 8
  %arrayidx = getelementptr i32, ptr %9, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 828160) #3, !srcloc !33
  %12 = ptrtoint ptr %dmaFree to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dmaFree, align 4
  %sub = add i32 %13, -4
  store i32 %sub, ptr %dmaFree, align 4
  %sy = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 5
  %14 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sy, align 4
  %shl = shl i32 %15, 16
  %sx = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 4
  %16 = ptrtoint ptr %sx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sx, align 4
  %or = or i32 %shl, %17
  %18 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dmaBase, align 4
  %20 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dmaCurrent, align 8
  %inc10 = add i32 %21, 1
  store i32 %inc10, ptr %dmaCurrent, align 8
  %arrayidx11 = getelementptr i32, ptr %19, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx11, i32 %or) #3, !srcloc !33
  %dy = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 1
  %22 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dy, align 4
  %shl13 = shl i32 %23, 16
  %24 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %region, align 4
  %or14 = or i32 %shl13, %25
  %26 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dmaBase, align 4
  %28 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dmaCurrent, align 8
  %inc17 = add i32 %29, 1
  store i32 %inc17, ptr %dmaCurrent, align 8
  %arrayidx18 = getelementptr i32, ptr %27, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx18, i32 %or14) #3, !srcloc !33
  %height = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 3
  %30 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height, align 4
  %shl20 = shl i32 %31, 16
  %width = getelementptr inbounds %struct.fb_copyarea, ptr %region, i32 0, i32 2
  %32 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %width, align 4
  %or21 = or i32 %shl20, %33
  %34 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dmaBase, align 4
  %36 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dmaCurrent, align 8
  %inc24 = add i32 %37, 1
  store i32 %inc24, ptr %dmaCurrent, align 8
  %arrayidx25 = getelementptr i32, ptr %35, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx25, i32 %or21) #3, !srcloc !33
  %38 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dmaCurrent, align 8
  %dmaPut.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 43
  %40 = ptrtoint ptr %dmaPut.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dmaPut.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp.not.i = icmp eq i32 %39, %41
  br i1 %cmp.not.i, label %if.end6.cleanup_crit_edge, label %if.then.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %42 = ptrtoint ptr %dmaPut.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %dmaPut.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  %FbStart.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 11
  %43 = ptrtoint ptr %FbStart.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %FbStart.i, align 8
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %44) #3, !srcloc !35
  %46 = ptrtoint ptr %dmaPut.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dmaPut.i, align 4
  %shl.i = shl i32 %47, 2
  %FIFO.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 68
  %48 = ptrtoint ptr %FIFO.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %FIFO.i, align 4
  %arrayidx.i = getelementptr i32, ptr %49, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %shl.i) #3, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end6.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvidiafb_fillrect(ptr noundef %info, ptr noundef %rect) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %lockup = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %lockup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lockup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @cfb_fillrect(ptr noundef %info, ptr noundef %rect) #3
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %6 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp4 = icmp eq i32 %7, 8
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  %color6 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  br label %if.end8

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %8 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pseudo_palette, align 4
  %color7 = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 4
  %10 = ptrtoint ptr %color7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %color7, align 4
  %arrayidx = getelementptr i32, ptr %9, i32 %11
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %color.0.in = phi ptr [ %color6, %if.then5 ], [ %arrayidx, %if.else ]
  %12 = ptrtoint ptr %color.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %color.0 = load i32, ptr %color.0.in, align 4
  %rop = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 5
  %13 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp9.not = icmp eq i32 %14, 0
  br i1 %cmp9.not, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @NVSetRopSolid(ptr noundef %info, i32 noundef %14)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %dmaFree = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 45
  %15 = ptrtoint ptr %dmaFree to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dmaFree, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp13 = icmp ult i32 %16, 2
  br i1 %cmp13, label %if.then14, label %if.end12.if.end15_crit_edge

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @NVDmaWait(ptr noundef %info, i32 noundef 1)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  %dmaBase = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 47
  %17 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dmaBase, align 4
  %dmaCurrent = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 44
  %19 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dmaCurrent, align 8
  %inc = add i32 %20, 1
  store i32 %inc, ptr %dmaCurrent, align 8
  %arrayidx16 = getelementptr i32, ptr %18, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx16, i32 312316) #3, !srcloc !33
  %21 = ptrtoint ptr %dmaFree to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dmaFree, align 4
  %sub = add i32 %22, -2
  store i32 %sub, ptr %dmaFree, align 4
  %23 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dmaBase, align 4
  %25 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dmaCurrent, align 8
  %inc20 = add i32 %26, 1
  store i32 %inc20, ptr %dmaCurrent, align 8
  %arrayidx21 = getelementptr i32, ptr %24, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx21, i32 %color.0) #3, !srcloc !33
  %27 = ptrtoint ptr %dmaFree to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dmaFree, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp24 = icmp ult i32 %28, 3
  br i1 %cmp24, label %if.then25, label %if.end15.if.end26_crit_edge

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.then25:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @NVDmaWait(ptr noundef %info, i32 noundef 2)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end15.if.end26_crit_edge
  %29 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dmaBase, align 4
  %31 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dmaCurrent, align 8
  %inc29 = add i32 %32, 1
  store i32 %inc29, ptr %dmaCurrent, align 8
  %arrayidx30 = getelementptr i32, ptr %30, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx30, i32 574464) #3, !srcloc !33
  %33 = ptrtoint ptr %dmaFree to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dmaFree, align 4
  %sub33 = add i32 %34, -3
  store i32 %sub33, ptr %dmaFree, align 4
  %35 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rect, align 4
  %shl = shl i32 %36, 16
  %dy = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 1
  %37 = ptrtoint ptr %dy to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dy, align 4
  %or = or i32 %shl, %38
  %39 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dmaBase, align 4
  %41 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dmaCurrent, align 8
  %inc36 = add i32 %42, 1
  store i32 %inc36, ptr %dmaCurrent, align 8
  %arrayidx37 = getelementptr i32, ptr %40, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx37, i32 %or) #3, !srcloc !33
  %width = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 2
  %43 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %width, align 4
  %shl39 = shl i32 %44, 16
  %height = getelementptr inbounds %struct.fb_fillrect, ptr %rect, i32 0, i32 3
  %45 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height, align 4
  %or40 = or i32 %shl39, %46
  %47 = ptrtoint ptr %dmaBase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dmaBase, align 4
  %49 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dmaCurrent, align 8
  %inc43 = add i32 %50, 1
  store i32 %inc43, ptr %dmaCurrent, align 8
  %arrayidx44 = getelementptr i32, ptr %48, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx44, i32 %or40) #3, !srcloc !33
  %51 = ptrtoint ptr %dmaCurrent to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dmaCurrent, align 8
  %dmaPut.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 43
  %53 = ptrtoint ptr %dmaPut.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dmaPut.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp.not.i = icmp eq i32 %52, %54
  br i1 %cmp.not.i, label %if.end26.NVDmaKickoff.exit_crit_edge, label %if.then.i

if.end26.NVDmaKickoff.exit_crit_edge:             ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %NVDmaKickoff.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  %55 = ptrtoint ptr %dmaPut.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %52, ptr %dmaPut.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  %FbStart.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 11
  %56 = ptrtoint ptr %FbStart.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %FbStart.i, align 8
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %57) #3, !srcloc !35
  %59 = ptrtoint ptr %dmaPut.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dmaPut.i, align 4
  %shl.i = shl i32 %60, 2
  %FIFO.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 68
  %61 = ptrtoint ptr %FIFO.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %FIFO.i, align 4
  %arrayidx.i = getelementptr i32, ptr %62, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %shl.i) #3, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  br label %NVDmaKickoff.exit

NVDmaKickoff.exit:                                ; preds = %if.then.i, %if.end26.NVDmaKickoff.exit_crit_edge
  %63 = ptrtoint ptr %rop to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp47.not = icmp eq i32 %64, 0
  br i1 %cmp47.not, label %NVDmaKickoff.exit.cleanup_crit_edge, label %if.then48

NVDmaKickoff.exit.cleanup_crit_edge:              ; preds = %NVDmaKickoff.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then48:                                        ; preds = %NVDmaKickoff.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @NVSetRopSolid(ptr noundef %info, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %NVDmaKickoff.exit.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvidiafb_imageblit(ptr noundef %info, ptr noundef %image) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %depth = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 6
  %4 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp2 = icmp eq i8 %5, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %lockup = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %lockup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lockup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then4, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then4:                                         ; preds = %land.lhs.true
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %8 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits_per_pixel.i, align 4
  %data2.i = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 7
  %10 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data2.i, align 4
  %width3.i = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 2
  %12 = ptrtoint ptr %width3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width3.i, align 4
  %add.i = add i32 %13, 31
  %and.i = and i32 %add.i, -32
  %height.i = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 3
  %14 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height.i, align 4
  %mul.i = mul i32 %and.i, %15
  %shr4.i = lshr exact i32 %mul.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp.i = icmp eq i32 %9, 8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  %fg_color.i = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %bg_color.i = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  br label %if.end.i

if.else.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  %pseudo_palette.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %16 = ptrtoint ptr %pseudo_palette.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pseudo_palette.i, align 4
  %fg_color8.i = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 4
  %18 = ptrtoint ptr %fg_color8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fg_color8.i, align 4
  %arrayidx.i = getelementptr i32, ptr %17, i32 %19
  %bg_color11.i = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 5
  %20 = ptrtoint ptr %bg_color11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bg_color11.i, align 4
  %arrayidx12.i = getelementptr i32, ptr %17, i32 %21
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %fg.0.in.i = phi ptr [ %fg_color.i, %if.then.i ], [ %arrayidx.i, %if.else.i ]
  %bg.0.in.i = phi ptr [ %bg_color.i, %if.then.i ], [ %arrayidx12.i, %if.else.i ]
  %22 = ptrtoint ptr %bg.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %bg.0.i = load i32, ptr %bg.0.in.i, align 4
  %23 = ptrtoint ptr %fg.0.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %fg.0.i = load i32, ptr %fg.0.in.i, align 4
  %dmaFree.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 45
  %24 = ptrtoint ptr %dmaFree.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dmaFree.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %25)
  %cmp14.i = icmp ult i32 %25, 8
  br i1 %cmp14.i, label %if.then15.i, label %if.end.i.if.end16.i_crit_edge

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @NVDmaWait(ptr noundef %info, i32 noundef 7) #3
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %if.end.i.if.end16.i_crit_edge
  %dmaBase.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 47
  %26 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dmaBase.i, align 4
  %dmaCurrent.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 44
  %28 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dmaCurrent.i, align 8
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %dmaCurrent.i, align 8
  %arrayidx17.i = getelementptr i32, ptr %27, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx17.i, i32 1887204) #3, !srcloc !33
  %30 = ptrtoint ptr %dmaFree.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dmaFree.i, align 4
  %sub19.i = add i32 %31, -8
  store i32 %sub19.i, ptr %dmaFree.i, align 4
  %dy.i = getelementptr inbounds %struct.fb_image, ptr %image, i32 0, i32 1
  %32 = ptrtoint ptr %dy.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dy.i, align 4
  %shl.i = shl i32 %33, 16
  %34 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %image, align 4
  %and20.i = and i32 %35, 65535
  %or21.i = or i32 %and20.i, %shl.i
  %36 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dmaBase.i, align 4
  %38 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dmaCurrent.i, align 8
  %inc24.i = add i32 %39, 1
  store i32 %inc24.i, ptr %dmaCurrent.i, align 8
  %arrayidx25.i = getelementptr i32, ptr %37, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx25.i, i32 %or21.i) #3, !srcloc !33
  %40 = ptrtoint ptr %dy.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dy.i, align 4
  %42 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height.i, align 4
  %add29.i = add i32 %43, %41
  %shl30.i = shl i32 %add29.i, 16
  %44 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %image, align 4
  %46 = ptrtoint ptr %width3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %width3.i, align 4
  %add33.i = add i32 %47, %45
  %and34.i = and i32 %add33.i, 65535
  %or35.i = or i32 %and34.i, %shl30.i
  %48 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dmaBase.i, align 4
  %50 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dmaCurrent.i, align 8
  %inc38.i = add i32 %51, 1
  store i32 %inc38.i, ptr %dmaCurrent.i, align 8
  %arrayidx39.i = getelementptr i32, ptr %49, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx39.i, i32 %or35.i) #3, !srcloc !33
  %52 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dmaBase.i, align 4
  %54 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dmaCurrent.i, align 8
  %inc43.i = add i32 %55, 1
  store i32 %inc43.i, ptr %dmaCurrent.i, align 8
  %arrayidx44.i = getelementptr i32, ptr %53, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx44.i, i32 %bg.0.i) #3, !srcloc !33
  %56 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dmaBase.i, align 4
  %58 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dmaCurrent.i, align 8
  %inc48.i = add i32 %59, 1
  store i32 %inc48.i, ptr %dmaCurrent.i, align 8
  %arrayidx49.i = getelementptr i32, ptr %57, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx49.i, i32 %fg.0.i) #3, !srcloc !33
  %60 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %height.i, align 4
  %shl52.i = shl i32 %61, 16
  %or53.i = or i32 %shl52.i, %and.i
  %62 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dmaBase.i, align 4
  %64 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dmaCurrent.i, align 8
  %inc56.i = add i32 %65, 1
  store i32 %inc56.i, ptr %dmaCurrent.i, align 8
  %arrayidx57.i = getelementptr i32, ptr %63, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx57.i, i32 %or53.i) #3, !srcloc !33
  %66 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %height.i, align 4
  %shl60.i = shl i32 %67, 16
  %or61.i = or i32 %shl60.i, %and.i
  %68 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dmaBase.i, align 4
  %70 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dmaCurrent.i, align 8
  %inc64.i = add i32 %71, 1
  store i32 %inc64.i, ptr %dmaCurrent.i, align 8
  %arrayidx65.i = getelementptr i32, ptr %69, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx65.i, i32 %or61.i) #3, !srcloc !33
  %72 = ptrtoint ptr %dy.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dy.i, align 4
  %shl68.i = shl i32 %73, 16
  %74 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %image, align 4
  %and70.i = and i32 %75, 65535
  %or71.i = or i32 %and70.i, %shl68.i
  %76 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dmaBase.i, align 4
  %78 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dmaCurrent.i, align 8
  %inc74.i = add i32 %79, 1
  store i32 %inc74.i, ptr %dmaCurrent.i, align 8
  %arrayidx75.i = getelementptr i32, ptr %77, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx75.i, i32 %or71.i) #3, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 4064, i32 %mul.i)
  %cmp77200.i = icmp ugt i32 %mul.i, 4064
  br i1 %cmp77200.i, label %if.end16.i.while.body.i_crit_edge, label %if.end16.i.while.end.i_crit_edge

if.end16.i.while.end.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i

if.end16.i.while.body.i_crit_edge:                ; preds = %if.end16.i
  br label %while.body.i

while.body.i:                                     ; preds = %for.end.i.while.body.i_crit_edge, %if.end16.i.while.body.i_crit_edge
  %k.0202.i = phi i32 [ %inc89.i, %for.end.i.while.body.i_crit_edge ], [ 0, %if.end16.i.while.body.i_crit_edge ]
  %dsize.0201.i = phi i32 [ %sub96.i, %for.end.i.while.body.i_crit_edge ], [ %shr4.i, %if.end16.i.while.body.i_crit_edge ]
  %80 = ptrtoint ptr %dmaFree.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dmaFree.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %81)
  %cmp79.i = icmp ult i32 %81, 129
  br i1 %cmp79.i, label %if.then80.i, label %while.body.i.if.end81.i_crit_edge

while.body.i.if.end81.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end81.i

if.then80.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @NVDmaWait(ptr noundef %info, i32 noundef 128) #3
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then80.i, %while.body.i.if.end81.i_crit_edge
  %82 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dmaBase.i, align 4
  %84 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dmaCurrent.i, align 8
  %inc84.i = add i32 %85, 1
  store i32 %inc84.i, ptr %dmaCurrent.i, align 8
  %arrayidx85.i = getelementptr i32, ptr %83, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx85.i, i32 33606656) #3, !srcloc !33
  %86 = ptrtoint ptr %dmaFree.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dmaFree.i, align 4
  %sub88.i = add i32 %87, -129
  store i32 %sub88.i, ptr %dmaFree.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end81.i
  %k.1199.i = phi i32 [ %k.0202.i, %if.end81.i ], [ %inc89.i, %for.body.i.for.body.i_crit_edge ]
  %j.0198.i = phi i32 [ 128, %if.end81.i ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %dec.i = add nsw i32 %j.0198.i, -1
  %inc89.i = add i32 %k.1199.i, 1
  %arrayidx90.i = getelementptr i32, ptr %11, i32 %k.1199.i
  %88 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx90.i, align 4
  %90 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dmaBase.i, align 4
  %92 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dmaCurrent.i, align 8
  %inc93.i = add i32 %93, 1
  store i32 %inc93.i, ptr %dmaCurrent.i, align 8
  %arrayidx94.i = getelementptr i32, ptr %91, i32 %93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx94.i, i32 %89) #3, !srcloc !33
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %sub96.i = add i32 %dsize.0201.i, -128
  %cmp77.i = icmp ugt i32 %sub96.i, 127
  br i1 %cmp77.i, label %for.end.i.while.body.i_crit_edge, label %for.end.i.while.end.i_crit_edge

for.end.i.while.end.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

while.end.i:                                      ; preds = %for.end.i.while.end.i_crit_edge, %if.end16.i.while.end.i_crit_edge
  %dsize.0.lcssa.i = phi i32 [ %shr4.i, %if.end16.i.while.end.i_crit_edge ], [ %sub96.i, %for.end.i.while.end.i_crit_edge ]
  %k.0.lcssa.i = phi i32 [ 0, %if.end16.i.while.end.i_crit_edge ], [ %inc89.i, %for.end.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dsize.0.lcssa.i)
  %tobool97.not.i = icmp eq i32 %dsize.0.lcssa.i, 0
  br i1 %tobool97.not.i, label %while.end.i.if.end128.i_crit_edge, label %if.then98.i

while.end.i.if.end128.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end128.i

if.then98.i:                                      ; preds = %while.end.i
  %94 = ptrtoint ptr %dmaFree.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dmaFree.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %dsize.0.lcssa.i)
  %cmp100.not.i = icmp ugt i32 %95, %dsize.0.lcssa.i
  br i1 %cmp100.not.i, label %if.then98.i.for.body116.preheader.i_crit_edge, label %if.then101.i

if.then98.i.for.body116.preheader.i_crit_edge:    ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body116.preheader.i

if.then101.i:                                     ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @NVDmaWait(ptr noundef %info, i32 noundef %dsize.0.lcssa.i) #3
  br label %for.body116.preheader.i

for.body116.preheader.i:                          ; preds = %if.then101.i, %if.then98.i.for.body116.preheader.i_crit_edge
  %shl103.i = shl nuw nsw i32 %dsize.0.lcssa.i, 18
  %or104.i = or i32 %shl103.i, 52224
  %96 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dmaBase.i, align 4
  %98 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dmaCurrent.i, align 8
  %inc107.i = add i32 %99, 1
  store i32 %inc107.i, ptr %dmaCurrent.i, align 8
  %arrayidx108.i = getelementptr i32, ptr %97, i32 %99
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx108.i, i32 %or104.i) #3, !srcloc !33
  %add110.neg.i = xor i32 %dsize.0.lcssa.i, -1
  %100 = ptrtoint ptr %dmaFree.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dmaFree.i, align 4
  %sub112.i = add i32 %101, %add110.neg.i
  store i32 %sub112.i, ptr %dmaFree.i, align 4
  br label %for.body116.i

for.body116.i:                                    ; preds = %for.body116.i.for.body116.i_crit_edge, %for.body116.preheader.i
  %k.2206.i = phi i32 [ %inc117.i, %for.body116.i.for.body116.i_crit_edge ], [ %k.0.lcssa.i, %for.body116.preheader.i ]
  %j.1205.i = phi i32 [ %dec114.i, %for.body116.i.for.body116.i_crit_edge ], [ %dsize.0.lcssa.i, %for.body116.preheader.i ]
  %dec114.i = add i32 %j.1205.i, -1
  %inc117.i = add i32 %k.2206.i, 1
  %arrayidx118.i = getelementptr i32, ptr %11, i32 %k.2206.i
  %102 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx118.i, align 4
  %104 = ptrtoint ptr %dmaBase.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dmaBase.i, align 4
  %106 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dmaCurrent.i, align 8
  %inc124.i = add i32 %107, 1
  store i32 %inc124.i, ptr %dmaCurrent.i, align 8
  %arrayidx125.i = getelementptr i32, ptr %105, i32 %107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx125.i, i32 %103) #3, !srcloc !33
  %tobool115.not.i = icmp eq i32 %dec114.i, 0
  br i1 %tobool115.not.i, label %for.body116.i.if.end128.i_crit_edge, label %for.body116.i.for.body116.i_crit_edge

for.body116.i.for.body116.i_crit_edge:            ; preds = %for.body116.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body116.i

for.body116.i.if.end128.i_crit_edge:              ; preds = %for.body116.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end128.i

if.end128.i:                                      ; preds = %for.body116.i.if.end128.i_crit_edge, %while.end.i.if.end128.i_crit_edge
  %108 = ptrtoint ptr %dmaCurrent.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dmaCurrent.i, align 8
  %dmaPut.i.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 43
  %110 = ptrtoint ptr %dmaPut.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dmaPut.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %111)
  %cmp.not.i.i = icmp eq i32 %109, %111
  br i1 %cmp.not.i.i, label %if.end128.i.cleanup_crit_edge, label %if.then.i.i

if.end128.i.cleanup_crit_edge:                    ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #5
  %112 = ptrtoint ptr %dmaPut.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %109, ptr %dmaPut.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  %FbStart.i.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 11
  %113 = ptrtoint ptr %FbStart.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %FbStart.i.i, align 8
  %115 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %114) #3, !srcloc !35
  %116 = ptrtoint ptr %dmaPut.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dmaPut.i.i, align 4
  %shl.i.i = shl i32 %117, 2
  %FIFO.i.i = getelementptr inbounds %struct.nvidia_par, ptr %1, i32 0, i32 68
  %118 = ptrtoint ptr %FIFO.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %FIFO.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %119, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 %shl.i.i) #3, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  tail call void @cfb_imageblit(ptr noundef %info, ptr noundef %image) #3
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.i.i, %if.end128.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/nvidia/nv_accel.c", i32 139, i32 7}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @NVDmaWait._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @NVDmaWait._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/nvidia/nv_accel.c", i32 152, i32 3}
!8 = !{ptr @NVDmaWait._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @NVDmaWait._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"NVCopyROP_PM", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/nvidia/nv_accel.c", i32 69, i32 18}
!12 = !{ptr @NVCopyROP, !13, !"NVCopyROP", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/nvidia/nv_accel.c", i32 64, i32 18}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/nvidia/nv_accel.c", i32 91, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @NVFlush._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @NVFlush._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/nvidia/nv_accel.c", i32 104, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @NVSync._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @NVSync._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 4307416}
!34 = !{i64 2155891703}
!35 = !{i64 4307614}
!36 = !{i64 2155892024}
!37 = !{i64 4307834}
!38 = !{i64 2155892737}
!39 = !{i64 2155893052}
!40 = !{i64 2155894853}
!41 = !{i64 2155895164}
