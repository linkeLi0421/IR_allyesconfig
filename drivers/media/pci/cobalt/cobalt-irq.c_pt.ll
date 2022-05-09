; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cobalt/cobalt-irq.c_pt.bc'
source_filename = "../drivers/media/pci/cobalt/cobalt-irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cobalt = type { i32, ptr, %struct.v4l2_device, %struct.mutex, ptr, ptr, i8, i16, [16 x %struct.cobalt_stream], [5 x %struct.i2c_adapter], [5 x %struct.cobalt_i2c_data], i8, i8, ptr, %struct.work_struct, i32, i32, i32, i32, [12 x i32], i32, i32, i32, i32, i8, [512 x i8], ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cobalt_stream = type { %struct.video_device, %struct.vb2_queue, %struct.list_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [32 x %struct.sg_dma_desc_info], i32, i8, i8, i8, i32, i8, i8, i8, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.82 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.79], %struct.media_entity_enum, i32 }
%struct.anon.79 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.107 }
%union.anon.107 = type { [32 x i32] }
%struct.sg_dma_desc_info = type { ptr, i32, i32, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.cobalt_i2c_data = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.m00233_video_measure_regmap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.m00479_clk_loss_detector_regmap = type { i32, i32, i32, i32 }
%struct.m00389_cvi_regmap = type { i32, i32, i32, i32, i32, i32 }
%struct.m00473_freewheel_regmap = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@cobalt_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: full rx FIFO %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cobalt_irq_handler\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/pci/cobalt/cobalt-irq.c\00", [58 x i8] zeroinitializer }, align 32
@cobalt_irq_handler._entry_ptr = internal global ptr @cobalt_irq_handler._entry, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@cobalt_irq_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s: irq: adv1=%u adv2=%u advout=%u none=%u full=%u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cobalt_irq_log_status\00", [42 x i8] zeroinitializer }, align 32
@cobalt_irq_log_status._entry_ptr = internal global ptr @cobalt_irq_log_status._entry, section ".printk_index", align 4
@cobalt_irq_log_status._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: irq: dma_tot=%u (\00", [40 x i8] zeroinitializer }, align 32
@cobalt_irq_log_status._entry_ptr.7 = internal global ptr @cobalt_irq_log_status._entry.5, section ".printk_index", align 4
@cobalt_irq_log_status._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c%s%u\00", [25 x i8] zeroinitializer }, align 32
@cobalt_irq_log_status._entry_ptr.10 = internal global ptr @cobalt_irq_log_status._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@cobalt_irq_log_status._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c)\0A\00", [27 x i8] zeroinitializer }, align 32
@cobalt_irq_log_status._entry_ptr.15 = internal global ptr @cobalt_irq_log_status._entry.13, section ".printk_index", align 4
@cobalt_dma_stream_queue_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013no buffers!\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cobalt_dma_stream_queue_handler\00", [32 x i8] zeroinitializer }, align 32
@cobalt_dma_stream_queue_handler._entry_ptr = internal global ptr @cobalt_dma_stream_queue_handler._entry, section ".printk_index", align 4
@cobalt_debug = external dso_local local_unnamed_addr global i32, align 4
@cobalt_dma_stream_queue_handler._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: !init_done\0A\00", [46 x i8] zeroinitializer }, align 32
@cobalt_dma_stream_queue_handler._entry_ptr.20 = internal global ptr @cobalt_dma_stream_queue_handler._entry.18, section ".printk_index", align 4
@cobalt_dma_stream_queue_handler._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: no clock\0A\00", [16 x i8] zeroinitializer }, align 32
@cobalt_dma_stream_queue_handler._entry_ptr.23 = internal global ptr @cobalt_dma_stream_queue_handler._entry.21, section ".printk_index", align 4
@cobalt_dma_stream_queue_handler._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: unstable\0A\00", [16 x i8] zeroinitializer }, align 32
@cobalt_dma_stream_queue_handler._entry_ptr.26 = internal global ptr @cobalt_dma_stream_queue_handler._entry.24, section ".printk_index", align 4
@cobalt_dma_stream_queue_handler._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: cvi no lock\0A\00", [45 x i8] zeroinitializer }, align 32
@cobalt_dma_stream_queue_handler._entry_ptr.29 = internal global ptr @cobalt_dma_stream_queue_handler._entry.27, section ".printk_index", align 4
@cobalt_dma_stream_queue_handler._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.17, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s: stable\0A\00", [18 x i8] zeroinitializer }, align 32
@cobalt_dma_stream_queue_handler._entry_ptr.32 = internal global ptr @cobalt_dma_stream_queue_handler._entry.30, section ".printk_index", align 4
@cobalt_dma_stream_queue_handler._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.17, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: enabled fw\0A\00", [46 x i8] zeroinitializer }, align 32
@cobalt_dma_stream_queue_handler._entry_ptr.35 = internal global ptr @cobalt_dma_stream_queue_handler._entry.33, section ".printk_index", align 4
@cobalt_dma_stream_queue_handler._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.17, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: lost lock\0A\00", [47 x i8] zeroinitializer }, align 32
@cobalt_dma_stream_queue_handler._entry_ptr.38 = internal global ptr @cobalt_dma_stream_queue_handler._entry.36, section ".printk_index", align 4
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 168, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 225, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 228, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 230, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 231, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 33, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 55, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 65, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 74, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 85, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 91, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 96, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [41 x i8] c"../drivers/media/pci/cobalt/cobalt-irq.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 109, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @cobalt_dma_stream_queue_handler._entry, ptr @cobalt_dma_stream_queue_handler._entry.18, ptr @cobalt_dma_stream_queue_handler._entry.21, ptr @cobalt_dma_stream_queue_handler._entry.24, ptr @cobalt_dma_stream_queue_handler._entry.27, ptr @cobalt_dma_stream_queue_handler._entry.30, ptr @cobalt_dma_stream_queue_handler._entry.33, ptr @cobalt_dma_stream_queue_handler._entry.36, ptr @cobalt_dma_stream_queue_handler._entry_ptr, ptr @cobalt_dma_stream_queue_handler._entry_ptr.20, ptr @cobalt_dma_stream_queue_handler._entry_ptr.23, ptr @cobalt_dma_stream_queue_handler._entry_ptr.26, ptr @cobalt_dma_stream_queue_handler._entry_ptr.29, ptr @cobalt_dma_stream_queue_handler._entry_ptr.32, ptr @cobalt_dma_stream_queue_handler._entry_ptr.35, ptr @cobalt_dma_stream_queue_handler._entry_ptr.38, ptr @cobalt_irq_handler._entry, ptr @cobalt_irq_handler._entry_ptr, ptr @cobalt_irq_log_status._entry, ptr @cobalt_irq_log_status._entry.13, ptr @cobalt_irq_log_status._entry.5, ptr @cobalt_irq_log_status._entry.8, ptr @cobalt_irq_log_status._entry_ptr, ptr @cobalt_irq_log_status._entry_ptr.10, ptr @cobalt_irq_log_status._entry_ptr.15, ptr @cobalt_irq_log_status._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_irq_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_irq_log_status._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_irq_log_status._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_irq_log_status._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_dma_stream_queue_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_dma_stream_queue_handler._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_dma_stream_queue_handler._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_dma_stream_queue_handler._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_dma_stream_queue_handler._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_dma_stream_queue_handler._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_dma_stream_queue_handler._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_dma_stream_queue_handler._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cobalt_irq_handler(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bar0.i = getelementptr inbounds %struct.cobalt, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %bar0.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar0.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  %3 = and i32 %2, -65536
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %bar1.i = getelementptr inbounds %struct.cobalt, ptr %dev_id, i32 0, i32 5
  %5 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i117 = getelementptr i8, ptr %6, i32 1288
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #4, !srcloc !67
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  %9 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i119 = getelementptr i8, ptr %10, i32 1292
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #4, !srcloc !67
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  %13 = ptrtoint ptr %bar0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bar0.i, align 4
  %add.ptr.i121 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121, i32 %3) #4, !srcloc !70
  %neg = xor i32 %12, -1
  %and3 = and i32 %8, %neg
  %15 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i123 = getelementptr i8, ptr %16, i32 1288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  %17 = tail call i32 @llvm.bswap.i32(i32 %and3) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 %17) #4, !srcloc !70
  %18 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i125 = getelementptr i8, ptr %19, i32 1292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 %11) #4, !srcloc !70
  %name = getelementptr inbounds %struct.cobalt, ptr %dev_id, i32 0, i32 2, i32 4
  %irq_full_fifo = getelementptr inbounds %struct.cobalt, ptr %dev_id, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.0137 = phi i32 [ 0, %entry ], [ %inc32, %cleanup.for.body_crit_edge ]
  %edge.0136 = phi i32 [ %12, %entry ], [ %edge.1, %cleanup.for.body_crit_edge ]
  %dma_fifo_mask4 = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 22
  %20 = ptrtoint ptr %dma_fifo_mask4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_fifo_mask4, align 4
  %dma_channel = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 20
  %22 = ptrtoint ptr %dma_channel to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dma_channel, align 4
  %conv = zext i8 %23 to i32
  %shl = shl nuw i32 1, %conv
  %and5 = and i32 %shl, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %for.body.if.end13_crit_edge, label %if.then

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then:                                          ; preds = %for.body
  %arrayidx6 = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 19, i32 %i.0137
  %24 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx6, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %arrayidx6, align 4
  %cobalt1.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 33
  %26 = ptrtoint ptr %cobalt1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cobalt1.i, align 4
  %video_channel.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 21
  %28 = ptrtoint ptr %video_channel.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %video_channel.i, align 8
  %bar1.i126 = getelementptr inbounds %struct.cobalt, ptr %27, i32 0, i32 5
  %30 = ptrtoint ptr %bar1.i126 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bar1.i126, align 8
  %add.ptr.i127 = getelementptr i8, ptr %31, i32 65536
  %mul.i = shl i32 %29, 12
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i127, i32 %mul.i
  %add.ptr4.i = getelementptr i8, ptr %add.ptr3.i, i32 768
  %add.ptr10.i = getelementptr i8, ptr %add.ptr3.i, i32 256
  %add.ptr21.i = getelementptr i8, ptr %add.ptr3.i, i32 1024
  %irqlock.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 6
  tail call void @_raw_spin_lock(ptr noundef %irqlock.i) #4
  %bufs.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 2
  %32 = ptrtoint ptr %bufs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %bufs.i, align 4
  %cmp.i.not.i = icmp eq ptr %33, %bufs.i
  br i1 %cmp.i.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #7
  tail call void @_raw_spin_unlock(ptr noundef %irqlock.i) #4
  br label %cobalt_dma_stream_queue_handler.exit

if.end.i:                                         ; preds = %if.then
  %add.ptr26.i = getelementptr i8, ptr %33, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %33) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %33, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %irqlock.i) #4
  %is_audio.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 31
  %42 = ptrtoint ptr %is_audio.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %is_audio.i, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool28.not.i = icmp eq i8 %43, 0
  br i1 %tobool28.not.i, label %lor.lhs.false.i, label %list_del.exit.i.done.i_crit_edge

list_del.exit.i.done.i_crit_edge:                 ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done.i

lor.lhs.false.i:                                  ; preds = %list_del.exit.i
  %is_output.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 30
  %44 = ptrtoint ptr %is_output.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %is_output.i, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool29.not.i = icmp eq i8 %45, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %lor.lhs.false.i.done.i_crit_edge

lor.lhs.false.i.done.i_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done.i

if.end31.i:                                       ; preds = %lor.lhs.false.i
  %unstable_frame.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 26
  %46 = ptrtoint ptr %unstable_frame.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %unstable_frame.i, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool32.not.i = icmp eq i8 %47, 0
  br i1 %tobool32.not.i, label %if.end173.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.end31.i
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #4, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %48) #4, !srcloc !70
  %status.i = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr10.i, i32 0, i32 12
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status.i) #4, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  %50 = and i32 %49, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool37.not.i = icmp eq i32 %50, 0
  br i1 %tobool37.not.i, label %do.body39.i, label %if.end52.i

do.body39.i:                                      ; preds = %if.then33.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cobalt_debug to i32))
  %51 = load i32, ptr @cobalt_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i = icmp sgt i32 %51, 0
  br i1 %cmp.i, label %do.end43.i, label %do.body39.i.do.end48.i_crit_edge

do.body39.i.do.end48.i_crit_edge:                 ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end48.i

do.end43.i:                                       ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.cobalt, ptr %27, i32 0, i32 2, i32 4
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i) #7
  br label %do.end48.i

do.end48.i:                                       ; preds = %do.end43.i, %do.body39.i.do.end48.i_crit_edge
  %enable_freewheel.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 28
  %52 = ptrtoint ptr %enable_freewheel.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %enable_freewheel.i, align 2, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool49.not.i = icmp eq i8 %53, 0
  br i1 %tobool49.not.i, label %do.end48.i.done.i_crit_edge, label %do.end48.i.do.body179.i_crit_edge

do.end48.i.do.body179.i_crit_edge:                ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body179.i

do.end48.i.done.i_crit_edge:                      ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done.i

if.end52.i:                                       ; preds = %if.then33.i
  %status53.i = getelementptr inbounds %struct.m00479_clk_loss_detector_regmap, ptr %add.ptr21.i, i32 0, i32 1
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status53.i) #4, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  %55 = and i32 %54, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool56.not.i = icmp eq i32 %55, 0
  br i1 %tobool56.not.i, label %if.end77.i, label %if.then57.i

if.then57.i:                                      ; preds = %if.end52.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 0) #4, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 16777216) #4, !srcloc !70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cobalt_debug to i32))
  %56 = load i32, ptr @cobalt_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp60.i = icmp sgt i32 %56, 0
  br i1 %cmp60.i, label %do.end64.i, label %if.then57.i.do.end72.i_crit_edge

if.then57.i.do.end72.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end72.i

do.end64.i:                                       ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #6
  %name67.i = getelementptr inbounds %struct.cobalt, ptr %27, i32 0, i32 2, i32 4
  %call69.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name67.i) #7
  br label %do.end72.i

do.end72.i:                                       ; preds = %do.end64.i, %if.then57.i.do.end72.i_crit_edge
  %enable_freewheel73.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 28
  %57 = ptrtoint ptr %enable_freewheel73.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %enable_freewheel73.i, align 2, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool74.not.i = icmp eq i8 %58, 0
  br i1 %tobool74.not.i, label %do.end72.i.done.i_crit_edge, label %do.end72.i.do.body179.i_crit_edge

do.end72.i.do.body179.i_crit_edge:                ; preds = %do.end72.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body179.i

do.end72.i.done.i_crit_edge:                      ; preds = %do.end72.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done.i

if.end77.i:                                       ; preds = %if.end52.i
  %59 = and i32 %48, 1140850688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool79.not.i = icmp eq i32 %59, 0
  br i1 %tobool79.not.i, label %lor.lhs.false80.i, label %if.end77.i.do.body88.i_crit_edge

if.end77.i.do.body88.i_crit_edge:                 ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body88.i

lor.lhs.false80.i:                                ; preds = %if.end77.i
  %vactive_area.i = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr10.i, i32 0, i32 3
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %vactive_area.i) #4, !srcloc !67
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  %height.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 7, i32 1, i32 0, i32 1
  %62 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp82.not.i = icmp eq i32 %61, %63
  br i1 %cmp82.not.i, label %lor.lhs.false83.i, label %lor.lhs.false80.i.do.body88.i_crit_edge

lor.lhs.false80.i.do.body88.i_crit_edge:          ; preds = %lor.lhs.false80.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body88.i

lor.lhs.false83.i:                                ; preds = %lor.lhs.false80.i
  %64 = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 7, i32 1
  %hactive_area.i = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr10.i, i32 0, i32 7
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %hactive_area.i) #4, !srcloc !67
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp86.not.i = icmp eq i32 %66, %68
  br i1 %cmp86.not.i, label %if.end106.i, label %lor.lhs.false83.i.do.body88.i_crit_edge

lor.lhs.false83.i.do.body88.i_crit_edge:          ; preds = %lor.lhs.false83.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body88.i

do.body88.i:                                      ; preds = %lor.lhs.false83.i.do.body88.i_crit_edge, %lor.lhs.false80.i.do.body88.i_crit_edge, %if.end77.i.do.body88.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cobalt_debug to i32))
  %69 = load i32, ptr @cobalt_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp89.i = icmp sgt i32 %69, 0
  br i1 %cmp89.i, label %do.end93.i, label %do.body88.i.do.end101.i_crit_edge

do.body88.i.do.end101.i_crit_edge:                ; preds = %do.body88.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end101.i

do.end93.i:                                       ; preds = %do.body88.i
  call void @__sanitizer_cov_trace_pc() #6
  %name96.i = getelementptr inbounds %struct.cobalt, ptr %27, i32 0, i32 2, i32 4
  %call98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name96.i) #7
  br label %do.end101.i

do.end101.i:                                      ; preds = %do.end93.i, %do.body88.i.do.end101.i_crit_edge
  %enable_freewheel102.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 28
  %70 = ptrtoint ptr %enable_freewheel102.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %enable_freewheel102.i, align 2, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool103.not.i = icmp eq i8 %71, 0
  br i1 %tobool103.not.i, label %do.end101.i.done.i_crit_edge, label %do.end101.i.do.body179.i_crit_edge

do.end101.i.do.body179.i_crit_edge:               ; preds = %do.end101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body179.i

do.end101.i.done.i_crit_edge:                     ; preds = %do.end101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done.i

if.end106.i:                                      ; preds = %lor.lhs.false83.i
  %enable_cvi.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 27
  %72 = ptrtoint ptr %enable_cvi.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %enable_cvi.i, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool107.not.i = icmp eq i8 %73, 0
  br i1 %tobool107.not.i, label %if.then108.i, label %if.end110.i

if.then108.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #6
  %74 = ptrtoint ptr %enable_cvi.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %enable_cvi.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 16777216) #4, !srcloc !70
  br label %done.i

if.end110.i:                                      ; preds = %if.end106.i
  %status111.i = getelementptr inbounds %struct.m00389_cvi_regmap, ptr %add.ptr3.i, i32 0, i32 5
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status111.i) #4, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  %76 = and i32 %75, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool114.not.i = icmp eq i32 %76, 0
  br i1 %tobool114.not.i, label %do.body116.i, label %if.end134.i

do.body116.i:                                     ; preds = %if.end110.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cobalt_debug to i32))
  %77 = load i32, ptr @cobalt_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp117.i = icmp sgt i32 %77, 0
  br i1 %cmp117.i, label %do.end121.i, label %do.body116.i.do.end129.i_crit_edge

do.body116.i.do.end129.i_crit_edge:               ; preds = %do.body116.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end129.i

do.end121.i:                                      ; preds = %do.body116.i
  call void @__sanitizer_cov_trace_pc() #6
  %name124.i = getelementptr inbounds %struct.cobalt, ptr %27, i32 0, i32 2, i32 4
  %call126.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name124.i) #7
  br label %do.end129.i

do.end129.i:                                      ; preds = %do.end121.i, %do.body116.i.do.end129.i_crit_edge
  %enable_freewheel130.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 28
  %78 = ptrtoint ptr %enable_freewheel130.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %enable_freewheel130.i, align 2, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool131.not.i = icmp eq i8 %79, 0
  br i1 %tobool131.not.i, label %do.end129.i.done.i_crit_edge, label %do.end129.i.do.body179.i_crit_edge

do.end129.i.do.body179.i_crit_edge:               ; preds = %do.end129.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body179.i

do.end129.i.done.i_crit_edge:                     ; preds = %do.end129.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done.i

if.end134.i:                                      ; preds = %if.end110.i
  %enable_freewheel135.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 28
  %80 = ptrtoint ptr %enable_freewheel135.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %enable_freewheel135.i, align 2, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool136.not.i = icmp eq i8 %81, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cobalt_debug to i32))
  %82 = load i32, ptr @cobalt_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp139.i = icmp sgt i32 %82, 0
  br i1 %tobool136.not.i, label %do.body138.i, label %do.body155.i

do.body138.i:                                     ; preds = %if.end134.i
  br i1 %cmp139.i, label %do.end143.i, label %do.body138.i.do.end151.i_crit_edge

do.body138.i.do.end151.i_crit_edge:               ; preds = %do.body138.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end151.i

do.end143.i:                                      ; preds = %do.body138.i
  call void @__sanitizer_cov_trace_pc() #6
  %name146.i = getelementptr inbounds %struct.cobalt, ptr %27, i32 0, i32 2, i32 4
  %call148.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name146.i) #7
  br label %do.end151.i

do.end151.i:                                      ; preds = %do.end143.i, %do.body138.i.do.end151.i_crit_edge
  %83 = ptrtoint ptr %enable_freewheel135.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %enable_freewheel135.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #4, !srcloc !70
  br label %done.i

do.body155.i:                                     ; preds = %if.end134.i
  br i1 %cmp139.i, label %do.end160.i, label %do.body155.i.do.end168.i_crit_edge

do.body155.i.do.end168.i_crit_edge:               ; preds = %do.body155.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end168.i

do.end160.i:                                      ; preds = %do.body155.i
  call void @__sanitizer_cov_trace_pc() #6
  %name163.i = getelementptr inbounds %struct.cobalt, ptr %27, i32 0, i32 2, i32 4
  %call165.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name163.i) #7
  br label %do.end168.i

do.end168.i:                                      ; preds = %do.end160.i, %do.body155.i.do.end168.i_crit_edge
  %control169.i = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr10.i, i32 0, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control169.i, i32 201326592) #4, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 16777216) #4, !srcloc !70
  %84 = ptrtoint ptr %enable_freewheel135.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %enable_freewheel135.i, align 2
  %85 = ptrtoint ptr %unstable_frame.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %unstable_frame.i, align 8
  %skip_first_frames.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 29
  %86 = ptrtoint ptr %skip_first_frames.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 2, ptr %skip_first_frames.i, align 4
  br label %done.i

if.end173.i:                                      ; preds = %if.end31.i
  %status174.i = getelementptr inbounds %struct.m00473_freewheel_regmap, ptr %add.ptr4.i, i32 0, i32 1
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %status174.i) #4, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  %88 = and i32 %87, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool177.not.i = icmp eq i32 %88, 0
  br i1 %tobool177.not.i, label %if.end173.i.done.i_crit_edge, label %if.end173.i.do.body179.i_crit_edge

if.end173.i.do.body179.i_crit_edge:               ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body179.i

if.end173.i.done.i_crit_edge:                     ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done.i

do.body179.i:                                     ; preds = %if.end173.i.do.body179.i_crit_edge, %do.end129.i.do.body179.i_crit_edge, %do.end101.i.do.body179.i_crit_edge, %do.end72.i.do.body179.i_crit_edge, %do.end48.i.do.body179.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cobalt_debug to i32))
  %89 = load i32, ptr @cobalt_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp180.i = icmp sgt i32 %89, 0
  br i1 %cmp180.i, label %do.end184.i, label %do.body179.i.do.end192.i_crit_edge

do.body179.i.do.end192.i_crit_edge:               ; preds = %do.body179.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end192.i

do.end184.i:                                      ; preds = %do.body179.i
  call void @__sanitizer_cov_trace_pc() #6
  %name187.i = getelementptr inbounds %struct.cobalt, ptr %27, i32 0, i32 2, i32 4
  %call189.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name187.i) #7
  br label %do.end192.i

do.end192.i:                                      ; preds = %do.end184.i, %do.body179.i.do.end192.i_crit_edge
  %control193.i = getelementptr inbounds %struct.m00233_video_measure_regmap, ptr %add.ptr10.i, i32 0, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control193.i, i32 67108864) #4, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 50331648) #4, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #4, !srcloc !70
  %90 = ptrtoint ptr %unstable_frame.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %unstable_frame.i, align 8
  %enable_freewheel197.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 28
  %91 = ptrtoint ptr %enable_freewheel197.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %enable_freewheel197.i, align 2
  %enable_cvi198.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 27
  %92 = ptrtoint ptr %enable_cvi198.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %enable_cvi198.i, align 1
  br label %done.i

done.i:                                           ; preds = %do.end192.i, %if.end173.i.done.i_crit_edge, %do.end168.i, %do.end151.i, %do.end129.i.done.i_crit_edge, %if.then108.i, %do.end101.i.done.i_crit_edge, %do.end72.i.done.i_crit_edge, %do.end48.i.done.i_crit_edge, %lor.lhs.false.i.done.i_crit_edge, %list_del.exit.i.done.i_crit_edge
  %skip.2.off0.i = phi i1 [ false, %list_del.exit.i.done.i_crit_edge ], [ false, %lor.lhs.false.i.done.i_crit_edge ], [ false, %do.end192.i ], [ false, %if.end173.i.done.i_crit_edge ], [ false, %if.then108.i ], [ false, %do.end151.i ], [ true, %do.end168.i ], [ false, %do.end48.i.done.i_crit_edge ], [ false, %do.end72.i.done.i_crit_edge ], [ false, %do.end101.i.done.i_crit_edge ], [ false, %do.end129.i.done.i_crit_edge ]
  %skip_first_frames200.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 29
  %93 = ptrtoint ptr %skip_first_frames200.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %skip_first_frames200.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool201.not.i = icmp eq i32 %94, 0
  br i1 %tobool201.not.i, label %if.end204.i, label %if.then202.i

if.then202.i:                                     ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #6
  %dec.i = add i32 %94, -1
  %95 = ptrtoint ptr %skip_first_frames200.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %dec.i, ptr %skip_first_frames200.i, align 4
  %call.i.i = tail call i64 @ktime_get() #4
  %timestamp.c.i = getelementptr i8, ptr %33, i32 -712
  %96 = ptrtoint ptr %timestamp.c.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %call.i.i, ptr %timestamp.c.i, align 8
  %sequence.c.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 15
  %97 = ptrtoint ptr %sequence.c.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sequence.c.i, align 8
  %inc.c.i = add i32 %98, 1
  store i32 %inc.c.i, ptr %sequence.c.i, align 8
  %sequence207.c.i = getelementptr i8, ptr %33, i32 -272
  %99 = ptrtoint ptr %sequence207.c.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %sequence207.c.i, align 8
  br label %lor.end.i

if.end204.i:                                      ; preds = %done.i
  %call.i286.i = tail call i64 @ktime_get() #4
  %timestamp.i = getelementptr i8, ptr %33, i32 -712
  %100 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %call.i286.i, ptr %timestamp.i, align 8
  %sequence.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 15
  %101 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %sequence.i, align 8
  %inc.i = add i32 %102, 1
  store i32 %inc.i, ptr %sequence.i, align 8
  %sequence207.i = getelementptr i8, ptr %33, i32 -272
  %103 = ptrtoint ptr %sequence207.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %sequence207.i, align 8
  br i1 %skip.2.off0.i, label %if.end204.i.lor.end.i_crit_edge, label %lor.rhs.i

if.end204.i.lor.end.i_crit_edge:                  ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #6
  %unstable_frame211.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 26
  %104 = ptrtoint ptr %unstable_frame211.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %unstable_frame211.i, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool212.not.i = icmp eq i8 %105, 0
  %phi.sel.i = select i1 %tobool212.not.i, i32 5, i32 6
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.end204.i.lor.end.i_crit_edge, %if.then202.i
  %106 = phi i32 [ 6, %if.end204.i.lor.end.i_crit_edge ], [ %phi.sel.i, %lor.rhs.i ], [ 6, %if.then202.i ]
  tail call void @vb2_buffer_done(ptr noundef %add.ptr26.i, i32 noundef %106) #4
  br label %cobalt_dma_stream_queue_handler.exit

cobalt_dma_stream_queue_handler.exit:             ; preds = %lor.end.i, %do.end.i
  %is_audio = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 31
  %107 = ptrtoint ptr %is_audio to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %is_audio, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool7.not = icmp eq i8 %108, 0
  br i1 %tobool7.not, label %if.then8, label %cobalt_dma_stream_queue_handler.exit.if.end13_crit_edge

cobalt_dma_stream_queue_handler.exit.if.end13_crit_edge: ; preds = %cobalt_dma_stream_queue_handler.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then8:                                         ; preds = %cobalt_dma_stream_queue_handler.exit
  call void @__sanitizer_cov_trace_pc() #6
  %neg9 = xor i32 %21, -1
  %and10 = and i32 %edge.0136, %neg9
  %neg11 = xor i32 %and10, -1
  %and12 = and i32 %8, %neg11
  %109 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i129 = getelementptr i8, ptr %110, i32 1288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  %111 = tail call i32 @llvm.bswap.i32(i32 %and12) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 %111) #4, !srcloc !70
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %cobalt_dma_stream_queue_handler.exit.if.end13_crit_edge, %for.body.if.end13_crit_edge
  %edge.1 = phi i32 [ %edge.0136, %cobalt_dma_stream_queue_handler.exit.if.end13_crit_edge ], [ %and10, %if.then8 ], [ %edge.0136, %for.body.if.end13_crit_edge ]
  %is_audio14 = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 31
  %112 = ptrtoint ptr %is_audio14 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %is_audio14, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool15.not = icmp eq i8 %113, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %adv_irq_mask = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 23
  %114 = ptrtoint ptr %adv_irq_mask to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %adv_irq_mask, align 8
  %and18 = and i32 %115, %edge.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end21_crit_edge, label %if.then20

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %flags = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 25
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  %and22 = and i32 %21, %8
  %and23 = and i32 %and22, %edge.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.cleanup_crit_edge, label %land.lhs.true

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end21
  %streaming.i = getelementptr %struct.cobalt, ptr %dev_id, i32 0, i32 8, i32 %i.0137, i32 1, i32 28
  %116 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %do.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %i.0137) #7
  %117 = ptrtoint ptr %irq_full_fifo to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %irq_full_fifo, align 8
  %inc29 = add i32 %118, 1
  store i32 %inc29, ptr %irq_full_fifo, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.lhs.true.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end13.cleanup_crit_edge
  %inc32 = add nuw nsw i32 %i.0137, 1
  %exitcond.not = icmp eq i32 %inc32, 12
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %cleanup
  %irq_work_queues = getelementptr inbounds %struct.cobalt, ptr %dev_id, i32 0, i32 13
  %119 = ptrtoint ptr %irq_work_queues to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %irq_work_queues, align 4
  %irq_work_queue = getelementptr inbounds %struct.cobalt, ptr %dev_id, i32 0, i32 14
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %120, ptr noundef %irq_work_queue) #4
  %and34 = and i32 %edge.1, %8
  %and35 = and i32 %and34, 19014176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %for.end.if.end39_crit_edge, label %if.then37

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %irq_adv1 = getelementptr inbounds %struct.cobalt, ptr %dev_id, i32 0, i32 15
  %121 = ptrtoint ptr %irq_adv1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %irq_adv1, align 4
  %inc38 = add i32 %122, 1
  store i32 %inc38, ptr %irq_adv1, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %for.end.if.end39_crit_edge
  %and41 = and i32 %and34, 4473920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end45_crit_edge, label %if.then43

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %irq_adv2 = getelementptr inbounds %struct.cobalt, ptr %dev_id, i32 0, i32 16
  %123 = ptrtoint ptr %irq_adv2 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %irq_adv2, align 8
  %inc44 = add i32 %124, 1
  store i32 %inc44, ptr %irq_adv2, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end39.if.end45_crit_edge
  %and47 = and i32 %and34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end45.if.end51_crit_edge, label %if.then49

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  %irq_advout = getelementptr inbounds %struct.cobalt, ptr %dev_id, i32 0, i32 17
  %125 = ptrtoint ptr %irq_advout to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %irq_advout, align 4
  %inc50 = add i32 %126, 1
  store i32 %inc50, ptr %irq_advout, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end45.if.end51_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool52.not = icmp eq i32 %3, 0
  br i1 %tobool52.not, label %if.end55, label %if.end55.thread

if.end55.thread:                                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  %irq_dma_tot = getelementptr inbounds %struct.cobalt, ptr %dev_id, i32 0, i32 18
  %127 = ptrtoint ptr %irq_dma_tot to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %irq_dma_tot, align 8
  %inc54 = add i32 %128, 1
  store i32 %inc54, ptr %irq_dma_tot, align 8
  br label %if.end62

if.end55:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool57.not.not = icmp eq i32 %and34, 0
  br i1 %tobool57.not.not, label %if.then60, label %if.end55.if.end62_crit_edge

if.end55.if.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  %irq_none = getelementptr inbounds %struct.cobalt, ptr %dev_id, i32 0, i32 20
  %129 = ptrtoint ptr %irq_none to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %irq_none, align 4
  %inc61 = add i32 %130, 1
  store i32 %inc61, ptr %irq_none, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end55.if.end62_crit_edge, %if.end55.thread
  %131 = ptrtoint ptr %bar0.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %bar0.i, align 4
  %add.ptr.i131 = getelementptr i8, ptr %132, i32 8
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131) #4, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cobalt_irq_work_handler(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %streams = getelementptr i8, ptr %work, i32 -52928
  %bar1.i = getelementptr i8, ptr %work, i32 -52936
  br label %for.body

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %entry
  %i.045 = phi i32 [ 0, %entry ], [ %inc, %if.end27.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.cobalt_stream], ptr %streams, i32 0, i32 %i.045
  %flags = getelementptr inbounds %struct.cobalt_stream, ptr %arrayidx, i32 0, i32 25
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %flags) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.if.end27_crit_edge, label %if.then

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then:                                          ; preds = %for.body
  %sd = getelementptr inbounds %struct.cobalt_stream, ptr %arrayidx, i32 0, i32 4
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.then.if.end24_crit_edge, label %if.else

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.else:                                          ; preds = %if.then
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.else.if.end24_crit_edge, label %land.lhs.true

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

land.lhs.true:                                    ; preds = %if.else
  %interrupt_service_routine = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %interrupt_service_routine to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interrupt_service_routine, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %land.lhs.true.if.end24_crit_edge, label %if.else10

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.else10:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %8 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %if.else10.if.else18_crit_edge, label %land.lhs.true12

if.else10.if.else18_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else18

land.lhs.true12:                                  ; preds = %if.else10
  %interrupt_service_routine13 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %interrupt_service_routine13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interrupt_service_routine13, align 4
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %land.lhs.true12.if.else18_crit_edge, label %land.lhs.true12.if.end24.sink.split_crit_edge

land.lhs.true12.if.end24.sink.split_crit_edge:    ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24.sink.split

land.lhs.true12.if.else18_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else18

if.else18:                                        ; preds = %land.lhs.true12.if.else18_crit_edge, %if.else10.if.else18_crit_edge
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %if.else18, %land.lhs.true12.if.end24.sink.split_crit_edge
  %.sink = phi ptr [ %7, %if.else18 ], [ %10, %land.lhs.true12.if.end24.sink.split_crit_edge ]
  %call22 = tail call i32 %.sink(ptr noundef nonnull %1, i32 noundef 0, ptr noundef null) #4
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %land.lhs.true.if.end24_crit_edge, %if.else.if.end24_crit_edge, %if.then.if.end24_crit_edge
  %11 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i = getelementptr i8, ptr %12, i32 1288
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !67
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  %adv_irq_mask = getelementptr inbounds %struct.cobalt_stream, ptr %arrayidx, i32 0, i32 23
  %15 = ptrtoint ptr %adv_irq_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %adv_irq_mask, align 8
  %or = or i32 %16, %14
  %17 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i44 = getelementptr i8, ptr %18, i32 1288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %or) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %19) #4, !srcloc !70
  br label %if.end27

if.end27:                                         ; preds = %if.end24, %for.body.if.end27_crit_edge
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %if.end27.for.body_crit_edge

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cobalt_irq_log_status(ptr noundef %cobalt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %irq_adv1 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 15
  %0 = ptrtoint ptr %irq_adv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_adv1, align 4
  %irq_adv2 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 16
  %2 = ptrtoint ptr %irq_adv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_adv2, align 8
  %irq_advout = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 17
  %4 = ptrtoint ptr %irq_advout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_advout, align 4
  %irq_none = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 20
  %6 = ptrtoint ptr %irq_none to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_none, align 4
  %irq_full_fifo = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 21
  %8 = ptrtoint ptr %irq_full_fifo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_full_fifo, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #7
  %irq_dma_tot = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 18
  %10 = ptrtoint ptr %irq_dma_tot to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_dma_tot, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %11) #7
  %arrayidx = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 19, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i32 noundef %13) #7
  %arrayidx.1 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 19, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1, align 4
  %call13.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %15) #7
  %arrayidx.2 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 19, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.2, align 4
  %call13.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %17) #7
  %arrayidx.3 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 19, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.3, align 4
  %call13.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %19) #7
  %arrayidx.4 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 19, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.4, align 4
  %call13.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %21) #7
  %arrayidx.5 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 19, i32 5
  %22 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.5, align 4
  %call13.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %23) #7
  %arrayidx.6 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 19, i32 6
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.6, align 4
  %call13.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %25) #7
  %arrayidx.7 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 19, i32 7
  %26 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.7, align 4
  %call13.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %27) #7
  %arrayidx.8 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 19, i32 8
  %28 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.8, align 4
  %call13.8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %29) #7
  %arrayidx.9 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 19, i32 9
  %30 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.9, align 4
  %call13.9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %31) #7
  %arrayidx.10 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 19, i32 10
  %32 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.10, align 4
  %call13.10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %33) #7
  %arrayidx.11 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 19, i32 11
  %34 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.11, align 4
  %call13.11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %35) #7
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #7
  %bar1.i = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 5
  %36 = call ptr @memset(ptr %irq_adv1, i32 0, i32 72)
  %37 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i = getelementptr i8, ptr %38, i32 1288
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  %40 = or i32 %39, -2138535836
  %41 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bar1.i, align 8
  %add.ptr.i56 = getelementptr i8, ptr %42, i32 1288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %40) #4, !srcloc !70
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cobalt/cobalt-irq.c", i32 168, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cobalt_irq_handler._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cobalt_irq_handler._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cobalt/cobalt-irq.c", i32 225, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cobalt_irq_log_status._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @cobalt_irq_log_status._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/cobalt/cobalt-irq.c", i32 228, i32 2}
!13 = !{ptr @cobalt_irq_log_status._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @cobalt_irq_log_status._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/cobalt/cobalt-irq.c", i32 230, i32 3}
!17 = !{ptr @cobalt_irq_log_status._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @cobalt_irq_log_status._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/cobalt/cobalt-irq.c", i32 231, i32 2}
!23 = !{ptr @cobalt_irq_log_status._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @cobalt_irq_log_status._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/cobalt/cobalt-irq.c", i32 33, i32 3}
!27 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cobalt_dma_stream_queue_handler._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @cobalt_dma_stream_queue_handler._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/cobalt/cobalt-irq.c", i32 55, i32 4}
!32 = !{ptr @cobalt_dma_stream_queue_handler._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cobalt_dma_stream_queue_handler._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/cobalt/cobalt-irq.c", i32 65, i32 4}
!36 = !{ptr @cobalt_dma_stream_queue_handler._entry.21, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @cobalt_dma_stream_queue_handler._entry_ptr.23, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/cobalt/cobalt-irq.c", i32 74, i32 4}
!40 = !{ptr @cobalt_dma_stream_queue_handler._entry.24, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @cobalt_dma_stream_queue_handler._entry_ptr.26, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.28, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/cobalt/cobalt-irq.c", i32 85, i32 4}
!44 = !{ptr @cobalt_dma_stream_queue_handler._entry.27, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @cobalt_dma_stream_queue_handler._entry_ptr.29, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.31, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/cobalt/cobalt-irq.c", i32 91, i32 4}
!48 = !{ptr @cobalt_dma_stream_queue_handler._entry.30, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @cobalt_dma_stream_queue_handler._entry_ptr.32, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.34, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/cobalt/cobalt-irq.c", i32 96, i32 3}
!52 = !{ptr @cobalt_dma_stream_queue_handler._entry.33, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @cobalt_dma_stream_queue_handler._entry_ptr.35, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.37, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/cobalt/cobalt-irq.c", i32 109, i32 3}
!56 = !{ptr @cobalt_dma_stream_queue_handler._entry.36, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @cobalt_dma_stream_queue_handler._entry_ptr.38, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 4999870}
!68 = !{i64 2152540219}
!69 = !{i64 2152541574}
!70 = !{i64 4999452}
!71 = !{i8 0, i8 2}
