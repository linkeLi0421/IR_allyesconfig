; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mediatek/mtk_disp_rdma.c_pt.bc'
source_filename = "../drivers/gpu/drm/mediatek/mtk_disp_rdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.component_ops = type { ptr, ptr }
%struct.mtk_disp_rdma_data = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mtk_disp_rdma = type { ptr, ptr, %struct.cmdq_client_reg, ptr, ptr, ptr, i32 }
%struct.cmdq_client_reg = type { i8, i16, i16 }
%struct.mtk_plane_state = type { %struct.drm_plane_state, %struct.mtk_plane_pending_state }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.mtk_plane_pending_state = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mediatek-disp-rdma\00", [45 x i8] zeroinitializer }, align 32
@mtk_disp_rdma_driver_dt_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-disp-rdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2701_rdma_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-disp-rdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_rdma_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-disp-rdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_rdma_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-disp-rdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8192_rdma_driver_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@mtk_disp_rdma_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_disp_rdma_probe, ptr @mtk_disp_rdma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_disp_rdma_driver_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@mtk_disp_rdma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get rdma clk\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_disp_rdma_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/mediatek/mtk_disp_rdma.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_disp_rdma_probe._entry_ptr = internal global ptr @mtk_disp_rdma_probe._entry, section ".printk_index", align 4
@mtk_disp_rdma_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 296, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to ioremap rdma\0A\00", [40 x i8] zeroinitializer }, align 32
@mtk_disp_rdma_probe._entry_ptr.8 = internal global ptr @mtk_disp_rdma_probe._entry.6, section ".printk_index", align 4
@mtk_disp_rdma_probe.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mediatek_drm\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"get mediatek,gce-client-reg fail!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mediatek,rdma-fifo-size\00", [40 x i8] zeroinitializer }, align 32
@mtk_disp_rdma_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 310, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get rdma fifo size\0A\00", [34 x i8] zeroinitializer }, align 32
@mtk_disp_rdma_probe._entry_ptr.14 = internal global ptr @mtk_disp_rdma_probe._entry.12, section ".printk_index", align 4
@mtk_disp_rdma_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request irq %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mtk_disp_rdma_probe._entry_ptr.17 = internal global ptr @mtk_disp_rdma_probe._entry.15, section ".printk_index", align 4
@mtk_disp_rdma_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @mtk_disp_rdma_bind, ptr @mtk_disp_rdma_unbind }, [24 x i8] zeroinitializer }, align 32
@mtk_disp_rdma_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 332, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to add component: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_disp_rdma_probe._entry_ptr.20 = internal global ptr @mtk_disp_rdma_probe._entry.18, section ".printk_index", align 4
@mt2701_rdma_driver_data = internal constant { %struct.mtk_disp_rdma_data, [28 x i8] } { %struct.mtk_disp_rdma_data { i32 4096 }, [28 x i8] zeroinitializer }, align 32
@mt8173_rdma_driver_data = internal constant { %struct.mtk_disp_rdma_data, [28 x i8] } { %struct.mtk_disp_rdma_data { i32 8192 }, [28 x i8] zeroinitializer }, align 32
@mt8183_rdma_driver_data = internal constant { %struct.mtk_disp_rdma_data, [28 x i8] } { %struct.mtk_disp_rdma_data { i32 5120 }, [28 x i8] zeroinitializer }, align 32
@mt8192_rdma_driver_data = internal constant { %struct.mtk_disp_rdma_data, [28 x i8] } { %struct.mtk_disp_rdma_data { i32 5120 }, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 875708738, i64 875708754, i64 875708993, i64 875709016, i64 875710274, i64 875710290, i64 875713089, i64 875713112, i64 875714626, i64 875714642, i64 909199170, i64 1448695129, i64 1498831189]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 377, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [30 x i8] c"mtk_disp_rdma_driver_dt_match\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 360, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"mtk_disp_rdma_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 373, i32 24 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 289, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 296, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 302, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 305, i32 37 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 310, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 322, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [28 x i8] c"mtk_disp_rdma_component_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 266, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 332, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [24 x i8] c"mt2701_rdma_driver_data\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 344, i32 40 }
@___asan_gen_.87 = private unnamed_addr constant [24 x i8] c"mt8173_rdma_driver_data\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 348, i32 40 }
@___asan_gen_.90 = private unnamed_addr constant [24 x i8] c"mt8183_rdma_driver_data\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 352, i32 40 }
@___asan_gen_.93 = private unnamed_addr constant [24 x i8] c"mt8192_rdma_driver_data\00", align 1
@___asan_gen_.94 = private constant [44 x i8] c"../drivers/gpu/drm/mediatek/mtk_disp_rdma.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 356, i32 40 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @mtk_disp_rdma_probe._entry, ptr @mtk_disp_rdma_probe._entry.12, ptr @mtk_disp_rdma_probe._entry.15, ptr @mtk_disp_rdma_probe._entry.18, ptr @mtk_disp_rdma_probe._entry.6, ptr @mtk_disp_rdma_probe._entry_ptr, ptr @mtk_disp_rdma_probe._entry_ptr.14, ptr @mtk_disp_rdma_probe._entry_ptr.17, ptr @mtk_disp_rdma_probe._entry_ptr.20, ptr @mtk_disp_rdma_probe._entry_ptr.8, ptr @.str, ptr @mtk_disp_rdma_driver_dt_match, ptr @mtk_disp_rdma_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @mtk_disp_rdma_component_ops, ptr @.str.19, ptr @mt2701_rdma_driver_data, ptr @mt8173_rdma_driver_data, ptr @mt8183_rdma_driver_data, ptr @mt8192_rdma_driver_data], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_rdma_driver_dt_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_rdma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_rdma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_rdma_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_rdma_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_rdma_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_rdma_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_disp_rdma_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_rdma_driver_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_rdma_driver_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_rdma_driver_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_rdma_driver_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_rdma_enable_vblank(ptr nocapture noundef readonly %dev, ptr noundef %vblank_cb, ptr noundef %vblank_cb_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vblank_cb1 = getelementptr inbounds %struct.mtk_disp_rdma, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vblank_cb1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %vblank_cb, ptr %vblank_cb1, align 4
  %vblank_cb_data2 = getelementptr inbounds %struct.mtk_disp_rdma, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %vblank_cb_data2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vblank_cb_data, ptr %vblank_cb_data2, align 4
  %4 = load ptr, ptr %driver_data.i, align 4
  %regs.i = getelementptr inbounds %struct.mtk_disp_rdma, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %8 = or i32 %7, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #6, !srcloc !58
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_rdma_disable_vblank(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vblank_cb = getelementptr inbounds %struct.mtk_disp_rdma, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vblank_cb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vblank_cb, align 4
  %vblank_cb_data = getelementptr inbounds %struct.mtk_disp_rdma, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %vblank_cb_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %vblank_cb_data, align 4
  %4 = load ptr, ptr %driver_data.i, align 4
  %regs.i = getelementptr inbounds %struct.mtk_disp_rdma, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %8 = and i32 %7, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #6, !srcloc !58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_rdma_clk_enable(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_rdma_clk_disable(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_rdma_start(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs.i = getelementptr inbounds %struct.mtk_disp_rdma, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %5 = or i32 %4, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %5) #6, !srcloc !58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_rdma_stop(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs.i = getelementptr inbounds %struct.mtk_disp_rdma, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %5) #6, !srcloc !58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_rdma_config(ptr nocapture noundef readonly %dev, i32 noundef %width, i32 noundef %height, i32 noundef %vrefresh, i32 noundef %bpc, ptr noundef %cmdq_pkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmdq_reg = getelementptr inbounds %struct.mtk_disp_rdma, ptr %1, i32 0, i32 2
  %regs = getelementptr inbounds %struct.mtk_disp_rdma, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void @mtk_ddp_write_mask(ptr noundef %cmdq_pkt, i32 noundef %width, ptr noundef %cmdq_reg, ptr noundef %3, i32 noundef 20, i32 noundef 4095) #6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void @mtk_ddp_write_mask(ptr noundef %cmdq_pkt, i32 noundef %height, ptr noundef %cmdq_reg, ptr noundef %5, i32 noundef 24, i32 noundef 1048575) #6
  %fifo_size = getelementptr inbounds %struct.mtk_disp_rdma, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.mtk_disp_rdma, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %rdma_fifo_size.0 = phi i32 [ %11, %if.else ], [ %7, %entry.if.end_crit_edge ]
  %mul = mul i32 %rdma_fifo_size.0, 7
  %12 = shl i32 %rdma_fifo_size.0, 12
  %shl = and i32 %12, 2147418112
  %div6 = udiv i32 %mul, 160
  %or = or i32 %div6, %shl
  %or7 = or i32 %or, -2147483648
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  tail call void @mtk_ddp_write(ptr noundef %cmdq_pkt, i32 noundef %or7, ptr noundef %cmdq_reg, ptr noundef %14, i32 noundef 64) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ddp_write_mask(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ddp_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mtk_rdma_layer_nr(ptr nocapture noundef readnone %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_rdma_layer_config(ptr nocapture noundef readonly %dev, i32 noundef %idx, ptr nocapture noundef readonly %state, ptr noundef %cmdq_pkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %addr2 = getelementptr inbounds %struct.mtk_plane_state, ptr %state, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr2, align 4
  %pitch3 = getelementptr inbounds %struct.mtk_plane_state, ptr %state, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %pitch3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pitch3, align 4
  %format = getelementptr inbounds %struct.mtk_plane_state, ptr %state, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.rdma_fmt_convert.exit_crit_edge [
    i32 1448695129, label %sw.bb9.i
    i32 909199170, label %entry.rdma_fmt_convert.exit.thread_crit_edge
    i32 875710290, label %sw.bb2.i
    i32 875710274, label %sw.bb3.i
    i32 875714642, label %entry.sw.bb4.i_crit_edge
    i32 875708754, label %entry.sw.bb4.i_crit_edge64
    i32 875714626, label %entry.sw.bb5.i_crit_edge
    i32 875708738, label %entry.sw.bb5.i_crit_edge65
    i32 875713112, label %entry.sw.bb6.i_crit_edge
    i32 875713089, label %entry.sw.bb6.i_crit_edge66
    i32 875709016, label %entry.sw.bb7.i_crit_edge
    i32 875708993, label %entry.sw.bb7.i_crit_edge67
    i32 1498831189, label %entry.rdma_fmt_convert.exit.thread56_crit_edge
  ]

entry.rdma_fmt_convert.exit.thread56_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rdma_fmt_convert.exit.thread56

entry.sw.bb7.i_crit_edge67:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i

entry.sw.bb7.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i

entry.sw.bb6.i_crit_edge66:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i

entry.sw.bb6.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i

entry.sw.bb5.i_crit_edge65:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

entry.sw.bb5.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

entry.sw.bb4.i_crit_edge64:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

entry.sw.bb4.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

entry.rdma_fmt_convert.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rdma_fmt_convert.exit.thread

entry.rdma_fmt_convert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rdma_fmt_convert.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rdma_fmt_convert.exit.thread

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rdma_fmt_convert.exit.thread

sw.bb4.i:                                         ; preds = %entry.sw.bb4.i_crit_edge, %entry.sw.bb4.i_crit_edge64
  br label %rdma_fmt_convert.exit

sw.bb5.i:                                         ; preds = %entry.sw.bb5.i_crit_edge, %entry.sw.bb5.i_crit_edge65
  br label %rdma_fmt_convert.exit

sw.bb6.i:                                         ; preds = %entry.sw.bb6.i_crit_edge, %entry.sw.bb6.i_crit_edge66
  br label %rdma_fmt_convert.exit

sw.bb7.i:                                         ; preds = %entry.sw.bb7.i_crit_edge, %entry.sw.bb7.i_crit_edge67
  br label %rdma_fmt_convert.exit

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rdma_fmt_convert.exit.thread56

rdma_fmt_convert.exit.thread:                     ; preds = %sw.bb3.i, %sw.bb2.i, %entry.rdma_fmt_convert.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ 16, %sw.bb2.i ], [ 272, %sw.bb3.i ], [ 256, %entry.rdma_fmt_convert.exit.thread_crit_edge ]
  %cmdq_reg48 = getelementptr inbounds %struct.mtk_disp_rdma, ptr %1, i32 0, i32 2
  %regs49 = getelementptr inbounds %struct.mtk_disp_rdma, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regs49 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs49, align 4
  tail call void @mtk_ddp_write_relaxed(ptr noundef %cmdq_pkt, i32 noundef %retval.0.i.ph, ptr noundef %cmdq_reg48, ptr noundef %10, i32 noundef 36) #6
  br label %if.else

rdma_fmt_convert.exit.thread56:                   ; preds = %sw.bb9.i, %entry.rdma_fmt_convert.exit.thread56_crit_edge
  %retval.0.i.ph55 = phi i32 [ 80, %sw.bb9.i ], [ 64, %entry.rdma_fmt_convert.exit.thread56_crit_edge ]
  %cmdq_reg58 = getelementptr inbounds %struct.mtk_disp_rdma, ptr %1, i32 0, i32 2
  %regs59 = getelementptr inbounds %struct.mtk_disp_rdma, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %regs59 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs59, align 4
  tail call void @mtk_ddp_write_relaxed(ptr noundef %cmdq_pkt, i32 noundef %retval.0.i.ph55, ptr noundef %cmdq_reg58, ptr noundef %12, i32 noundef 36) #6
  br label %if.then

rdma_fmt_convert.exit:                            ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %entry.rdma_fmt_convert.exit_crit_edge
  %retval.0.i = phi i32 [ 288, %sw.bb7.i ], [ 32, %sw.bb6.i ], [ 304, %sw.bb5.i ], [ 48, %sw.bb4.i ], [ 0, %entry.rdma_fmt_convert.exit_crit_edge ]
  %cmdq_reg = getelementptr inbounds %struct.mtk_disp_rdma, ptr %1, i32 0, i32 2
  %regs = getelementptr inbounds %struct.mtk_disp_rdma, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  tail call void @mtk_ddp_write_relaxed(ptr noundef %cmdq_pkt, i32 noundef %retval.0.i, ptr noundef %cmdq_reg, ptr noundef %14, i32 noundef 36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %7)
  %cond = icmp eq i32 %7, 1448695129
  br i1 %cond, label %rdma_fmt_convert.exit.if.then_crit_edge, label %rdma_fmt_convert.exit.if.else_crit_edge

rdma_fmt_convert.exit.if.else_crit_edge:          ; preds = %rdma_fmt_convert.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

rdma_fmt_convert.exit.if.then_crit_edge:          ; preds = %rdma_fmt_convert.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %rdma_fmt_convert.exit.if.then_crit_edge, %rdma_fmt_convert.exit.thread56
  %regs63 = phi ptr [ %regs59, %rdma_fmt_convert.exit.thread56 ], [ %regs, %rdma_fmt_convert.exit.if.then_crit_edge ]
  %cmdq_reg61 = phi ptr [ %cmdq_reg58, %rdma_fmt_convert.exit.thread56 ], [ %cmdq_reg, %rdma_fmt_convert.exit.if.then_crit_edge ]
  %15 = ptrtoint ptr %regs63 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs63, align 4
  tail call void @mtk_ddp_write_mask(ptr noundef %cmdq_pkt, i32 noundef 131072, ptr noundef %cmdq_reg61, ptr noundef %16, i32 noundef 20, i32 noundef 131072) #6
  %17 = ptrtoint ptr %regs63 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs63, align 4
  tail call void @mtk_ddp_write_mask(ptr noundef %cmdq_pkt, i32 noundef 6291456, ptr noundef %cmdq_reg61, ptr noundef %18, i32 noundef 20, i32 noundef 15728640) #6
  br label %if.end

if.else:                                          ; preds = %rdma_fmt_convert.exit.if.else_crit_edge, %rdma_fmt_convert.exit.thread
  %regs53 = phi ptr [ %regs49, %rdma_fmt_convert.exit.thread ], [ %regs, %rdma_fmt_convert.exit.if.else_crit_edge ]
  %cmdq_reg51 = phi ptr [ %cmdq_reg48, %rdma_fmt_convert.exit.thread ], [ %cmdq_reg, %rdma_fmt_convert.exit.if.else_crit_edge ]
  %19 = ptrtoint ptr %regs53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs53, align 4
  tail call void @mtk_ddp_write_mask(ptr noundef %cmdq_pkt, i32 noundef 0, ptr noundef %cmdq_reg51, ptr noundef %20, i32 noundef 20, i32 noundef 131072) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %regs52 = phi ptr [ %regs53, %if.else ], [ %regs63, %if.then ]
  %cmdq_reg50 = phi ptr [ %cmdq_reg51, %if.else ], [ %cmdq_reg61, %if.then ]
  %and = and i32 %5, 65535
  %21 = ptrtoint ptr %regs52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs52, align 4
  tail call void @mtk_ddp_write_relaxed(ptr noundef %cmdq_pkt, i32 noundef %3, ptr noundef %cmdq_reg50, ptr noundef %22, i32 noundef 3840) #6
  %23 = ptrtoint ptr %regs52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs52, align 4
  tail call void @mtk_ddp_write_relaxed(ptr noundef %cmdq_pkt, i32 noundef %and, ptr noundef %cmdq_reg50, ptr noundef %24, i32 noundef 44) #6
  %25 = ptrtoint ptr %regs52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs52, align 4
  tail call void @mtk_ddp_write(ptr noundef %cmdq_pkt, i32 noundef 1077944352, ptr noundef %cmdq_reg50, ptr noundef %26, i32 noundef 48) #6
  %27 = ptrtoint ptr %regs52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs52, align 4
  tail call void @mtk_ddp_write_mask(ptr noundef %cmdq_pkt, i32 noundef 2, ptr noundef %cmdq_reg50, ptr noundef %28, i32 noundef 16, i32 noundef 2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ddp_write_relaxed(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_disp_rdma_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call5, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call.i, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %call12 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call13 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call12) #6
  %regs = getelementptr inbounds %struct.mtk_disp_rdma, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call13, ptr %regs, align 4
  %cmp.i111 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end11
  %cmdq_reg = getelementptr inbounds %struct.mtk_disp_rdma, ptr %call.i, i32 0, i32 2
  %call23 = tail call i32 @cmdq_dev_get_client_reg(ptr noundef %dev1, ptr noundef %cmdq_reg, i32 noundef 0) #6
  %8 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call23, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.if.end35_crit_edge, label %do.body26

if.end22.if.end35_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.body26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_disp_rdma_probe.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_disp_rdma_probe, %if.then31)) #6
          to label %if.end35 [label %if.then31], !srcloc !59

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_disp_rdma_probe.__UNIQUE_ID_ddebug306, ptr noundef %dev1, ptr noundef nonnull @.str.10) #6
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %do.body26, %if.end22.if.end35_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call36 = call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.11, ptr noundef nonnull %ret) #6
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end35.do.body48_crit_edge, label %if.then38

if.end35.do.body48_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body48

if.then38:                                        ; preds = %if.end35
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %fifo_size = getelementptr inbounds %struct.mtk_disp_rdma, ptr %call.i, i32 0, i32 6
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.11, ptr noundef %fifo_size, i32 noundef 1, i32 noundef 0) #6
  %13 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  %14 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool41.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool41.not, label %if.then38.do.body48_crit_edge, label %do.end45

if.then38.do.body48_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body48

do.end45:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  %15 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ret, align 4
  br label %cleanup

do.body48:                                        ; preds = %if.then38.do.body48_crit_edge, %if.end35.do.body48_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #6, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr56 = getelementptr i8, ptr %20, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 0) #6, !srcloc !58
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body48.dev_name.exit_crit_edge

do.body48.dev_name.exit_crit_edge:                ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body48.dev_name.exit_crit_edge
  %retval.0.i112 = phi ptr [ %24, %if.end.i ], [ %22, %do.body48.dev_name.exit_crit_edge ]
  %call.i113 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call2, ptr noundef nonnull @mtk_disp_rdma_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i112, ptr noundef nonnull %call.i) #6
  %25 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i113, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %cmp59 = icmp slt i32 %call.i113, 0
  br i1 %cmp59, label %do.end63, label %if.end64

do.end63:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %call2, i32 noundef %call.i113) #9
  %26 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ret, align 4
  br label %cleanup

if.end64:                                         ; preds = %dev_name.exit
  %call65 = call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %data = getelementptr inbounds %struct.mtk_disp_rdma, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call65, ptr %data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call66 = call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @mtk_disp_rdma_component_ops) #6
  %30 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call66, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end64.if.end72_crit_edge, label %do.end71

if.end64.if.end72_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call66) #9
  br label %if.end72

if.end72:                                         ; preds = %do.end71, %if.end64.if.end72_crit_edge
  %31 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %do.end63, %do.end45, %do.end19, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %do.end ], [ %7, %do.end19 ], [ %16, %do.end45 ], [ %27, %do.end63 ], [ %32, %if.end72 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_disp_rdma_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @mtk_disp_rdma_component_ops) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmdq_dev_get_client_reg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_disp_rdma_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %regs = getelementptr inbounds %struct.mtk_disp_rdma, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !58
  %vblank_cb = getelementptr inbounds %struct.mtk_disp_rdma, ptr %dev_id, i32 0, i32 4
  %2 = ptrtoint ptr %vblank_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vblank_cb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %vblank_cb_data = getelementptr inbounds %struct.mtk_disp_rdma, ptr %dev_id, i32 0, i32 5
  %4 = ptrtoint ptr %vblank_cb_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vblank_cb_data, align 4
  tail call void %3(ptr noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_disp_rdma_bind(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mtk_disp_rdma_unbind(ptr nocapture noundef %dev, ptr nocapture noundef %master, ptr nocapture noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_rdma.c", i32 377, i32 11}
!2 = !{ptr @mtk_disp_rdma_driver, !3, !"mtk_disp_rdma_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_rdma.c", i32 373, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_rdma.c", i32 289, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mtk_disp_rdma_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @mtk_disp_rdma_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_rdma.c", i32 296, i32 3}
!14 = !{ptr @mtk_disp_rdma_probe._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mtk_disp_rdma_probe._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_rdma.c", i32 302, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mtk_disp_rdma_probe.__UNIQUE_ID_ddebug306, !17, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_rdma.c", i32 305, i32 37}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_rdma.c", i32 310, i32 4}
!24 = !{ptr @mtk_disp_rdma_probe._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mtk_disp_rdma_probe._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_rdma.c", i32 322, i32 3}
!28 = !{ptr @mtk_disp_rdma_probe._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mtk_disp_rdma_probe._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_rdma.c", i32 332, i32 3}
!32 = !{ptr @mtk_disp_rdma_probe._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mtk_disp_rdma_probe._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @mtk_disp_rdma_component_ops, !35, !"mtk_disp_rdma_component_ops", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_rdma.c", i32 266, i32 35}
!36 = !{ptr @mtk_disp_rdma_driver_dt_match, !37, !"mtk_disp_rdma_driver_dt_match", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_rdma.c", i32 360, i32 34}
!38 = !{ptr @mt2701_rdma_driver_data, !39, !"mt2701_rdma_driver_data", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_rdma.c", i32 344, i32 40}
!40 = !{ptr @mt8173_rdma_driver_data, !41, !"mt8173_rdma_driver_data", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_rdma.c", i32 348, i32 40}
!42 = !{ptr @mt8183_rdma_driver_data, !43, !"mt8183_rdma_driver_data", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_rdma.c", i32 352, i32 40}
!44 = !{ptr @mt8192_rdma_driver_data, !45, !"mt8192_rdma_driver_data", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/mediatek/mtk_disp_rdma.c", i32 356, i32 40}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 5038297}
!56 = !{i64 2156479491}
!57 = !{i64 2156479704}
!58 = !{i64 5037879}
!59 = !{i64 2148730857, i64 2148730862, i64 2148730875, i64 2148730919, i64 2148730953, i64 2148730974}
!60 = !{i64 2156492832}
!61 = !{i64 2156493232}
!62 = !{i64 2156478832}
