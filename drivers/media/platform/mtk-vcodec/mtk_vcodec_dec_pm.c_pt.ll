; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c"
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
@mtk_vcodec_init_dec_pm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] of_parse_phandle mediatek,larb fail!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_vcodec_init_dec_pm\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c\00", [42 x i8] zeroinitializer }, align 32
@mtk_vcodec_init_dec_pm._entry_ptr = internal global ptr @mtk_vcodec_init_dec_pm._entry, section ".printk_index", align 4
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@mtk_vcodec_init_dec_pm._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Failed to get vdec clock count\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_vcodec_init_dec_pm._entry_ptr.7 = internal global ptr @mtk_vcodec_init_dec_pm._entry.5, section ".printk_index", align 4
@mtk_vcodec_init_dec_pm._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] Failed to get clock name id = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mtk_vcodec_init_dec_pm._entry_ptr.10 = internal global ptr @mtk_vcodec_init_dec_pm._entry.8, section ".printk_index", align 4
@mtk_vcodec_init_dec_pm._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] devm_clk_get (%d)%s fail\0A\00", [41 x i8] zeroinitializer }, align 32
@mtk_vcodec_init_dec_pm._entry_ptr.13 = internal global ptr @mtk_vcodec_init_dec_pm._entry.11, section ".printk_index", align 4
@mtk_vcodec_dec_pw_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] pm_runtime_resume_and_get fail %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_vcodec_dec_pw_on\00", [43 x i8] zeroinitializer }, align 32
@mtk_vcodec_dec_pw_on._entry_ptr = internal global ptr @mtk_vcodec_dec_pw_on._entry, section ".printk_index", align 4
@mtk_vcodec_dec_pw_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] pm_runtime_put_sync fail %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtk_vcodec_dec_pw_off\00", [42 x i8] zeroinitializer }, align 32
@mtk_vcodec_dec_pw_off._entry_ptr = internal global ptr @mtk_vcodec_dec_pw_off._entry, section ".printk_index", align 4
@mtk_vcodec_dec_clock_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] clk_prepare_enable %d %s fail %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_vcodec_dec_clock_on\00", [40 x i8] zeroinitializer }, align 32
@mtk_vcodec_dec_clock_on._entry_ptr = internal global ptr @mtk_vcodec_dec_clock_on._entry, section ".printk_index", align 4
@mtk_vcodec_dec_clock_on._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s(),%d: [MTK_V4L2][ERROR] mtk_smi_larb_get larbvdec fail %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_vcodec_dec_clock_on._entry_ptr.22 = internal global ptr @mtk_vcodec_dec_clock_on._entry.20, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 29, i32 45 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 31, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 45, i32 48 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 55, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 65, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 71, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 97, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 108, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 119, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [57 x i8] c"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 127, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @mtk_vcodec_dec_clock_on._entry, ptr @mtk_vcodec_dec_clock_on._entry.20, ptr @mtk_vcodec_dec_clock_on._entry_ptr, ptr @mtk_vcodec_dec_clock_on._entry_ptr.22, ptr @mtk_vcodec_dec_pw_off._entry, ptr @mtk_vcodec_dec_pw_off._entry_ptr, ptr @mtk_vcodec_dec_pw_on._entry, ptr @mtk_vcodec_dec_pw_on._entry_ptr, ptr @mtk_vcodec_init_dec_pm._entry, ptr @mtk_vcodec_init_dec_pm._entry.11, ptr @mtk_vcodec_init_dec_pm._entry.5, ptr @mtk_vcodec_init_dec_pm._entry.8, ptr @mtk_vcodec_init_dec_pm._entry_ptr, ptr @mtk_vcodec_init_dec_pm._entry_ptr.10, ptr @mtk_vcodec_init_dec_pm._entry_ptr.13, ptr @mtk_vcodec_init_dec_pm._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_init_dec_pm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_init_dec_pm._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_init_dec_pm._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_init_dec_pm._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_dec_pw_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_dec_pw_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_dec_clock_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_vcodec_dec_clock_on._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_vcodec_init_dec_pm(ptr noundef %mtkdev) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_dev = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %mtkdev, i32 0, i32 6
  %0 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev, align 4
  %pm1 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %mtkdev, i32 0, i32 25
  %mtkdev2 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %mtkdev, i32 0, i32 25, i32 5
  %2 = ptrtoint ptr %mtkdev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mtkdev, ptr %mtkdev2, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %5 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  br label %do.end

of_parse_phandle.exit:                            ; preds = %entry
  %6 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end_crit_edge, label %if.end

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 31) #9
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call4 = call ptr @of_find_device_by_node(ptr noundef nonnull %7) #6
  call void @of_node_put(ptr noundef nonnull %7) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end18, label %if.end34, !prof !50

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 37, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %dev35 = getelementptr inbounds %struct.platform_device, ptr %call4, i32 0, i32 3
  %larbvdec = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %mtkdev, i32 0, i32 25, i32 1
  %8 = ptrtoint ptr %larbvdec to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev35, ptr %larbvdec, align 4
  %9 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %plat_dev, align 4
  %dev37 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %dev38 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %mtkdev, i32 0, i32 25, i32 4
  %11 = ptrtoint ptr %dev38 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev37, ptr %dev38, align 4
  %of_node40 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node40 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node40, align 8
  %call.i130 = call i32 @of_property_read_string_helper(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  %clk_num = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %mtkdev, i32 0, i32 25, i32 0, i32 1
  %14 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i130, ptr %clk_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %cmp = icmp sgt i32 %call.i130, 0
  br i1 %cmp, label %if.then43, label %do.end54

if.then43:                                        ; preds = %if.end34
  %15 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i130, i32 8) #6
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !50

devm_kcalloc.exit.thread:                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %pm1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %pm1, align 4
  br label %put_device

devm_kcalloc.exit:                                ; preds = %if.then43
  %18 = extractvalue { i32, i1 } %15, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev37, i32 noundef %18, i32 noundef 3520) #6
  %19 = ptrtoint ptr %pm1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i.i, ptr %pm1, align 4
  %tobool49.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool49.not, label %devm_kcalloc.exit.put_device_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.put_device_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_device

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %20 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clk_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp59140 = icmp sgt i32 %21, 0
  br i1 %cmp59140, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end54:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 55) #9
  br label %put_device

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0141 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %22 = ptrtoint ptr %pm1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pm1, align 4
  %arrayidx = getelementptr %struct.mtk_vcodec_clk_info, ptr %23, i32 %i.0141
  %24 = ptrtoint ptr %of_node40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node40, align 8
  %call.i131 = call i32 @of_property_read_string_helper(ptr noundef %25, ptr noundef nonnull @.str.4, ptr noundef %arrayidx, i32 noundef 1, i32 noundef %i.0141) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i131)
  %tobool64.not = icmp sgt i32 %call.i131, -1
  br i1 %tobool64.not, label %if.end71, label %do.end68

do.end68:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 65, i32 noundef %i.0141) #9
  br label %put_device

if.end71:                                         ; preds = %for.body
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %call74 = call ptr @devm_clk_get(ptr noundef %dev37, ptr noundef %27) #6
  %vcodec_clk = getelementptr %struct.mtk_vcodec_clk_info, ptr %23, i32 %i.0141, i32 1
  %28 = ptrtoint ptr %vcodec_clk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call74, ptr %vcodec_clk, align 4
  %cmp.i = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end80, label %for.inc

do.end80:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, i32 noundef 72, i32 noundef %i.0141, ptr noundef %30) #9
  %31 = ptrtoint ptr %vcodec_clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vcodec_clk, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %put_device

for.inc:                                          ; preds = %if.end71
  %inc = add nuw nsw i32 %i.0141, 1
  %34 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %clk_num, align 4
  %cmp59 = icmp slt i32 %inc, %35
  br i1 %cmp59, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @pm_runtime_enable(ptr noundef %dev37) #6
  br label %cleanup

put_device:                                       ; preds = %do.end80, %do.end68, %do.end54, %devm_kcalloc.exit.put_device_crit_edge, %devm_kcalloc.exit.thread
  %ret.0 = phi i32 [ %call.i131, %do.end68 ], [ %33, %do.end80 ], [ -22, %do.end54 ], [ -12, %devm_kcalloc.exit.put_device_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  %36 = ptrtoint ptr %larbvdec to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %larbvdec, align 4
  call void @put_device(ptr noundef %37) #6
  br label %cleanup

cleanup:                                          ; preds = %put_device, %for.end, %do.end18, %do.end
  %retval.0 = phi i32 [ -1, %do.end18 ], [ %ret.0, %put_device ], [ 0, %for.end ], [ -1, %do.end ]
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_vcodec_release_dec_pm(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %dev, i32 0, i32 25, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #6
  %larbvdec = getelementptr inbounds %struct.mtk_vcodec_dev, ptr %dev, i32 0, i32 25, i32 1
  %2 = ptrtoint ptr %larbvdec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %larbvdec, align 8
  tail call void @put_device(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_vcodec_dec_pw_on(ptr nocapture noundef readonly %pm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mtk_vcodec_pm, ptr %pm, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !52
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !53
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 97, i32 noundef %call.i) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %retval.0.i7 = phi i32 [ %call.i, %do.end ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %retval.0.i7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_vcodec_dec_pw_off(ptr nocapture noundef readonly %pm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mtk_vcodec_pm, ptr %pm, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef %call.i) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_vcodec_dec_clock_on(ptr nocapture noundef readonly %pm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_num = getelementptr inbounds %struct.mtk_vcodec_clk, ptr %pm, i32 0, i32 1
  %0 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp47 = icmp sgt i32 %1, 0
  br i1 %cmp47, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm, align 4
  %vcodec_clk = getelementptr %struct.mtk_vcodec_clk_info, ptr %3, i32 %i.048, i32 1
  %4 = ptrtoint ptr %vcodec_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vcodec_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %for.body.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %for.body.do.end_crit_edge ]
  %6 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pm, align 4
  %arrayidx2 = getelementptr %struct.mtk_vcodec_clk_info, ptr %7, i32 %i.048
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 120, i32 noundef %i.048, ptr noundef %9, i32 noundef %retval.0.i.ph) #9
  br label %error

for.inc:                                          ; preds = %if.end.i
  %inc = add nuw nsw i32 %i.048, 1
  %10 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_num, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %larbvdec = getelementptr inbounds %struct.mtk_vcodec_pm, ptr %pm, i32 0, i32 1
  %12 = ptrtoint ptr %larbvdec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %larbvdec, align 4
  %call4 = tail call i32 @mtk_smi_larb_get(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.end.cleanup_crit_edge, label %do.end9

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end9:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef 127, i32 noundef %call4) #9
  br label %error

error:                                            ; preds = %do.end9, %do.end
  %i.043 = phi i32 [ %i.0.lcssa, %do.end9 ], [ %i.048, %do.end ]
  %i.149 = add i32 %i.043, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.149)
  %cmp1450 = icmp sgt i32 %i.149, -1
  br i1 %cmp1450, label %error.for.body15_crit_edge, label %error.cleanup_crit_edge

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

error.for.body15_crit_edge:                       ; preds = %error
  br label %for.body15

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %error.for.body15_crit_edge
  %i.151 = phi i32 [ %i.1, %for.body15.for.body15_crit_edge ], [ %i.149, %error.for.body15_crit_edge ]
  %14 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pm, align 4
  %vcodec_clk18 = getelementptr %struct.mtk_vcodec_clk_info, ptr %15, i32 %i.151, i32 1
  %16 = ptrtoint ptr %vcodec_clk18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vcodec_clk18, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  %i.1 = add nsw i32 %i.151, -1
  %cmp14.not = icmp eq i32 %i.151, 0
  br i1 %cmp14.not, label %for.body15.cleanup_crit_edge, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body15

for.body15.cleanup_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body15.cleanup_crit_edge, %error.cleanup_crit_edge, %for.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_smi_larb_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_vcodec_dec_clock_off(ptr nocapture noundef readonly %pm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %larbvdec = getelementptr inbounds %struct.mtk_vcodec_pm, ptr %pm, i32 0, i32 1
  %0 = ptrtoint ptr %larbvdec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %larbvdec, align 4
  tail call void @mtk_smi_larb_put(ptr noundef %1) #6
  %clk_num = getelementptr inbounds %struct.mtk_vcodec_clk, ptr %pm, i32 0, i32 1
  %2 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_num, align 4
  %i.05 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.05)
  %cmp6 = icmp sgt i32 %i.05, -1
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.05, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pm, align 4
  %vcodec_clk = getelementptr %struct.mtk_vcodec_clk_info, ptr %5, i32 %i.07, i32 1
  %6 = ptrtoint ptr %vcodec_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vcodec_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %i.0 = add nsw i32 %i.07, -1
  %cmp = icmp sgt i32 %i.07, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
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
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c", i32 29, i32 45}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c", i32 31, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mtk_vcodec_init_dec_pm._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @mtk_vcodec_init_dec_pm._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c", i32 45, i32 48}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c", i32 55, i32 3}
!12 = !{ptr @mtk_vcodec_init_dec_pm._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @mtk_vcodec_init_dec_pm._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c", i32 65, i32 4}
!16 = !{ptr @mtk_vcodec_init_dec_pm._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @mtk_vcodec_init_dec_pm._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c", i32 71, i32 4}
!20 = !{ptr @mtk_vcodec_init_dec_pm._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mtk_vcodec_init_dec_pm._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c", i32 97, i32 3}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mtk_vcodec_dec_pw_on._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mtk_vcodec_dec_pw_on._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c", i32 108, i32 3}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mtk_vcodec_dec_pw_off._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @mtk_vcodec_dec_pw_off._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c", i32 119, i32 4}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mtk_vcodec_dec_clock_on._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @mtk_vcodec_dec_clock_on._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c", i32 127, i32 3}
!39 = !{ptr @mtk_vcodec_dec_clock_on._entry.20, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mtk_vcodec_dec_clock_on._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 2148240877}
!52 = !{i64 725700, i64 725725, i64 725747, i64 725763, i64 725775, i64 725795, i64 725819, i64 725835, i64 725847}
!53 = !{i64 2148241065}
