; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.mtk_vcodec_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, [14 x ptr], ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, %struct.mutex, %struct.mutex, %struct.mtk_vcodec_pm, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mtk_vcodec_pm = type { %struct.mtk_vcodec_clk, ptr, %struct.mtk_vcodec_clk, ptr, ptr, ptr }
%struct.mtk_vcodec_clk = type { ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.mtk_vcodec_clk_info = type { ptr, ptr }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mediatek,larb\00", [18 x i8] zeroinitializer }, align 32
@mtk_vcodec_init_enc_pm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] no mediatek,larb found\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_vcodec_init_enc_pm\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c\00", [42 x i8] zeroinitializer }, align 32
@mtk_vcodec_init_enc_pm._entry_ptr = internal global ptr @mtk_vcodec_init_enc_pm._entry, section ".printk_index", align 4
@mtk_vcodec_init_enc_pm._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] no mediatek,larb device found\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_vcodec_init_enc_pm._entry_ptr.6 = internal global ptr @mtk_vcodec_init_enc_pm._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@mtk_vcodec_init_enc_pm._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Failed to get venc clock count\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_vcodec_init_enc_pm._entry_ptr.10 = internal global ptr @mtk_vcodec_init_enc_pm._entry.8, section ".printk_index", align 4
@mtk_vcodec_init_enc_pm._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] venc failed to get clk name %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_vcodec_init_enc_pm._entry_ptr.13 = internal global ptr @mtk_vcodec_init_enc_pm._entry.11, section ".printk_index", align 4
@mtk_vcodec_init_enc_pm._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] venc devm_clk_get (%d)%s fail\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_vcodec_init_enc_pm._entry_ptr.16 = internal global ptr @mtk_vcodec_init_enc_pm._entry.14, section ".printk_index", align 4
@mtk_vcodec_enc_clock_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] venc clk_prepare_enable %d %s fail %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_vcodec_enc_clock_on\00", [40 x i8] zeroinitializer }, align 32
@mtk_vcodec_enc_clock_on._entry_ptr = internal global ptr @mtk_vcodec_enc_clock_on._entry, section ".printk_index", align 4
@mtk_vcodec_enc_clock_on._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] mtk_smi_larb_get larb3 fail %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_vcodec_enc_clock_on._entry_ptr.21 = internal global ptr @mtk_vcodec_enc_clock_on._entry.19, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 34, i32 40 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 36, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 42, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 50, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 60, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 70, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 76, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 105, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [57 x i8] c"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 113, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @mtk_vcodec_enc_clock_on._entry, ptr @mtk_vcodec_enc_clock_on._entry.19, ptr @mtk_vcodec_enc_clock_on._entry_ptr, ptr @mtk_vcodec_enc_clock_on._entry_ptr.21, ptr @mtk_vcodec_init_enc_pm._entry, ptr @mtk_vcodec_init_enc_pm._entry.11, ptr @mtk_vcodec_init_enc_pm._entry.14, ptr @mtk_vcodec_init_enc_pm._entry.4, ptr @mtk_vcodec_init_enc_pm._entry.8, ptr @mtk_vcodec_init_enc_pm._entry_ptr, ptr @mtk_vcodec_init_enc_pm._entry_ptr.10, ptr @mtk_vcodec_init_enc_pm._entry_ptr.13, ptr @mtk_vcodec_init_enc_pm._entry_ptr.16, ptr @mtk_vcodec_init_enc_pm._entry_ptr.6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_init_enc_pm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_init_enc_pm._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_init_enc_pm._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_init_enc_pm._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_init_enc_pm._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_enc_clock_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_enc_clock_on._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_vcodec_init_enc_pm(ptr noundef %mtkdev) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_dev = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %mtkdev, i32 0, i32 6
  %0 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev, align 4
  %pm1 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %mtkdev, i32 0, i32 25
  %2 = call ptr @memset(ptr %pm1, i32 0, i32 24)
  %mtkdev2 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %mtkdev, i32 0, i32 25, i32 5
  %3 = ptrtoint ptr %mtkdev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mtkdev, ptr %mtkdev2, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %dev4 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %mtkdev, i32 0, i32 25, i32 4
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev3, ptr %dev4, align 4
  %venc_clk = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %mtkdev, i32 0, i32 25, i32 2
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %7 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %do.end

of_parse_phandle.exit:                            ; preds = %entry
  %8 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end_crit_edge, label %if.end

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 36) #8
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call7 = call ptr @of_find_device_by_node(ptr noundef nonnull %9) #5
  call void @of_node_put(ptr noundef nonnull %9) #5
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 42) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %dev16 = getelementptr inbounds %struct.platform_device, ptr %call7, i32 0, i32 3
  %larbvenc = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %mtkdev, i32 0, i32 25, i32 3
  %10 = ptrtoint ptr %larbvenc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev16, ptr %larbvenc, align 4
  %11 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %plat_dev, align 4
  %dev18 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev18, ptr %dev4, align 4
  %of_node21 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 27
  %14 = ptrtoint ptr %of_node21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node21, align 8
  %call.i112 = call i32 @of_property_read_string_helper(ptr noundef %15, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0) #5
  %clk_num = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %mtkdev, i32 0, i32 25, i32 2, i32 1
  %16 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.i112, ptr %clk_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %cmp = icmp sgt i32 %call.i112, 0
  br i1 %cmp, label %if.then24, label %do.end35

if.then24:                                        ; preds = %if.end15
  %17 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i112, i32 8) #5
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !44

devm_kcalloc.exit.thread:                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %venc_clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %venc_clk, align 4
  br label %put_larbvenc

devm_kcalloc.exit:                                ; preds = %if.then24
  %20 = extractvalue { i32, i1 } %17, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev18, i32 noundef %20, i32 noundef 3520) #5
  %21 = ptrtoint ptr %venc_clk to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call5.i.i, ptr %venc_clk, align 4
  %tobool30.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool30.not, label %devm_kcalloc.exit.put_larbvenc_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.put_larbvenc_crit_edge:         ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %put_larbvenc

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %22 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clk_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp40122 = icmp sgt i32 %23, 0
  br i1 %cmp40122, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end35:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 60) #8
  br label %put_larbvenc

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0123 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %24 = ptrtoint ptr %venc_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %venc_clk, align 4
  %arrayidx = getelementptr %struct.mtk_vcodec_clk_info, ptr %25, i32 %i.0123
  %26 = ptrtoint ptr %of_node21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node21, align 8
  %call.i113 = call i32 @of_property_read_string_helper(ptr noundef %27, ptr noundef nonnull @.str.7, ptr noundef %arrayidx, i32 noundef 1, i32 noundef %i.0123) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i113)
  %tobool45.not = icmp sgt i32 %call.i113, -1
  br i1 %tobool45.not, label %if.end52, label %do.end49

do.end49:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, i32 noundef 70, i32 noundef %i.0123) #8
  br label %put_larbvenc

if.end52:                                         ; preds = %for.body
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %call55 = call ptr @devm_clk_get(ptr noundef %dev18, ptr noundef %29) #5
  %vcodec_clk = getelementptr %struct.mtk_vcodec_clk_info, ptr %25, i32 %i.0123, i32 1
  %30 = ptrtoint ptr %vcodec_clk to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call55, ptr %vcodec_clk, align 4
  %cmp.i = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end61, label %for.inc

do.end61:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef 77, i32 noundef %i.0123, ptr noundef %32) #8
  %33 = ptrtoint ptr %vcodec_clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vcodec_clk, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %put_larbvenc

for.inc:                                          ; preds = %if.end52
  %inc = add nuw nsw i32 %i.0123, 1
  %36 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %clk_num, align 4
  %cmp40 = icmp slt i32 %inc, %37
  br i1 %cmp40, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

put_larbvenc:                                     ; preds = %do.end61, %do.end49, %do.end35, %devm_kcalloc.exit.put_larbvenc_crit_edge, %devm_kcalloc.exit.thread
  %ret.0 = phi i32 [ %call.i113, %do.end49 ], [ %35, %do.end61 ], [ -22, %do.end35 ], [ -12, %devm_kcalloc.exit.put_larbvenc_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  %38 = ptrtoint ptr %larbvenc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %larbvenc, align 4
  call void @put_device(ptr noundef %39) #5
  br label %cleanup

cleanup:                                          ; preds = %put_larbvenc, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ %ret.0, %put_larbvenc ], [ -19, %do.end12 ], [ -19, %do.end ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_vcodec_release_enc_pm(ptr nocapture noundef readonly %mtkdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %mtkdev, i32 0, i32 25, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #5
  %larbvenc = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %mtkdev, i32 0, i32 25, i32 3
  %2 = ptrtoint ptr %larbvenc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %larbvenc, align 4
  tail call void @put_device(ptr noundef %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_vcodec_enc_clock_on(ptr nocapture noundef readonly %pm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %venc_clk = getelementptr inbounds %struct.mtk_vcodec_pm, ptr %pm, i32 0, i32 2
  %clk_num = getelementptr inbounds %struct.mtk_vcodec_pm, ptr %pm, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp47 = icmp sgt i32 %1, 0
  br i1 %cmp47, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %venc_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %venc_clk, align 4
  %vcodec_clk = getelementptr %struct.mtk_vcodec_clk_info, ptr %3, i32 %i.048, i32 1
  %4 = ptrtoint ptr %vcodec_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vcodec_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %for.body.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %for.body.do.end_crit_edge ]
  %6 = ptrtoint ptr %venc_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %venc_clk, align 4
  %arrayidx2 = getelementptr %struct.mtk_vcodec_clk_info, ptr %7, i32 %i.048
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 106, i32 noundef %i.048, ptr noundef %9, i32 noundef %retval.0.i.ph) #8
  br label %clkerr

for.inc:                                          ; preds = %if.end.i
  %inc = add nuw nsw i32 %i.048, 1
  %10 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_num, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %larbvenc = getelementptr inbounds %struct.mtk_vcodec_pm, ptr %pm, i32 0, i32 3
  %12 = ptrtoint ptr %larbvenc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %larbvenc, align 4
  %call4 = tail call i32 @mtk_smi_larb_get(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.end.cleanup_crit_edge, label %do.end9

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end9:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef 113, i32 noundef %call4) #8
  br label %clkerr

clkerr:                                           ; preds = %do.end9, %do.end
  %i.043 = phi i32 [ %i.0.lcssa, %do.end9 ], [ %i.048, %do.end ]
  %i.149 = add i32 %i.043, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.149)
  %cmp1450 = icmp sgt i32 %i.149, -1
  br i1 %cmp1450, label %clkerr.for.body15_crit_edge, label %clkerr.cleanup_crit_edge

clkerr.cleanup_crit_edge:                         ; preds = %clkerr
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

clkerr.for.body15_crit_edge:                      ; preds = %clkerr
  br label %for.body15

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %clkerr.for.body15_crit_edge
  %i.151 = phi i32 [ %i.1, %for.body15.for.body15_crit_edge ], [ %i.149, %clkerr.for.body15_crit_edge ]
  %14 = ptrtoint ptr %venc_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %venc_clk, align 4
  %vcodec_clk18 = getelementptr %struct.mtk_vcodec_clk_info, ptr %15, i32 %i.151, i32 1
  %16 = ptrtoint ptr %vcodec_clk18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vcodec_clk18, align 4
  tail call void @clk_disable(ptr noundef %17) #5
  tail call void @clk_unprepare(ptr noundef %17) #5
  %i.1 = add nsw i32 %i.151, -1
  %cmp14.not = icmp eq i32 %i.151, 0
  br i1 %cmp14.not, label %for.body15.cleanup_crit_edge, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body15

for.body15.cleanup_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body15.cleanup_crit_edge, %clkerr.cleanup_crit_edge, %for.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_smi_larb_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_vcodec_enc_clock_off(ptr nocapture noundef readonly %pm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %venc_clk = getelementptr inbounds %struct.mtk_vcodec_pm, ptr %pm, i32 0, i32 2
  %larbvenc = getelementptr inbounds %struct.mtk_vcodec_pm, ptr %pm, i32 0, i32 3
  %0 = ptrtoint ptr %larbvenc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %larbvenc, align 4
  tail call void @mtk_smi_larb_put(ptr noundef %1) #5
  %clk_num = getelementptr inbounds %struct.mtk_vcodec_pm, ptr %pm, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_num, align 4
  %i.05 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.05)
  %cmp6 = icmp sgt i32 %i.05, -1
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.05, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %venc_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %venc_clk, align 4
  %vcodec_clk = getelementptr %struct.mtk_vcodec_clk_info, ptr %5, i32 %i.07, i32 1
  %6 = ptrtoint ptr %vcodec_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vcodec_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  %i.0 = add nsw i32 %i.07, -1
  %cmp = icmp sgt i32 %i.07, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_smi_larb_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c", i32 34, i32 40}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c", i32 36, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mtk_vcodec_init_enc_pm._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @mtk_vcodec_init_enc_pm._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c", i32 42, i32 3}
!10 = !{ptr @mtk_vcodec_init_enc_pm._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mtk_vcodec_init_enc_pm._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c", i32 50, i32 3}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c", i32 60, i32 3}
!16 = !{ptr @mtk_vcodec_init_enc_pm._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @mtk_vcodec_init_enc_pm._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c", i32 70, i32 4}
!20 = !{ptr @mtk_vcodec_init_enc_pm._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mtk_vcodec_init_enc_pm._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c", i32 76, i32 4}
!24 = !{ptr @mtk_vcodec_init_enc_pm._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mtk_vcodec_init_enc_pm._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c", i32 105, i32 4}
!28 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mtk_vcodec_enc_clock_on._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @mtk_vcodec_enc_clock_on._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c", i32 113, i32 3}
!33 = !{ptr @mtk_vcodec_enc_clock_on._entry.19, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @mtk_vcodec_enc_clock_on._entry_ptr.21, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 1, i32 2000}
