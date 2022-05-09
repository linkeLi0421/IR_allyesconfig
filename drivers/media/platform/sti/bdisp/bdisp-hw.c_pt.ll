; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sti/bdisp/bdisp-hw.c_pt.bc'
source_filename = "../drivers/media/platform/sti/bdisp/bdisp-hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bdisp_filter_addr = type { i16, i16, ptr, i32 }
%struct.bdisp_filter_h_spec = type { i16, i16, [64 x i8] }
%struct.bdisp_filter_v_spec = type { i16, i16, [40 x i8] }
%struct.bdisp_dev = type { %struct.v4l2_device, %struct.video_device, ptr, ptr, %struct.spinlock, %struct.mutex, i16, %struct.bdisp_m2m_device, i32, ptr, ptr, %struct.wait_queue_head, ptr, %struct.delayed_work, %struct.bdisp_dbg }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bdisp_m2m_device = type { ptr, ptr, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.bdisp_dbg = type { ptr, [4 x ptr], %struct.bdisp_request, i64, i64, i64, i64, i64 }
%struct.bdisp_request = type { %struct.bdisp_frame, %struct.bdisp_frame, i8, i32 }
%struct.bdisp_frame = type { i32, i32, ptr, i32, i32, i32, i32, %struct.v4l2_rect, [4 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.bdisp_ctx = type { %struct.bdisp_frame, %struct.bdisp_frame, i32, i8, ptr, [4 x ptr], [4 x i32], %struct.v4l2_fh, %struct.v4l2_ctrl_handler, %struct.bdisp_ctrls, i8 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.bdisp_ctrls = type { ptr, ptr }
%struct.bdisp_op_cfg = type { i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.bdisp_fmt = type { i32, i8, i8, i8, i8, i8 }
%struct.bdisp_node = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@bdisp_hw_reset.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bdisp\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bdisp_hw_reset\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/platform/sti/bdisp/bdisp-hw.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bdisp_hw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 388, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Reset timeout\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bdisp_hw_reset._entry_ptr = internal global ptr @bdisp_hw_reset._entry, section ".printk_index", align 4
@bdisp_hw_get_and_clear_irq.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bdisp_hw_get_and_clear_irq\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unexpected IT status: 0x%08X\0A\00", [34 x i8] zeroinitializer }, align 32
@bdisp_hw_alloc_nodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 460, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s no mem\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bdisp_hw_alloc_nodes\00", [43 x i8] zeroinitializer }, align 32
@bdisp_hw_alloc_nodes._entry_ptr = internal global ptr @bdisp_hw_alloc_nodes._entry, section ".printk_index", align 4
@bdisp_hw_alloc_nodes.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"node[%d]=0x%p (paddr=%pad)\0A\00", [36 x i8] zeroinitializer }, align 32
@bdisp_h_filter = internal global { [12 x %struct.bdisp_filter_addr], [48 x i8] } zeroinitializer, align 32
@bdisp_h_spec = internal constant { [12 x %struct.bdisp_filter_h_spec], [208 x i8] } { [12 x %struct.bdisp_filter_h_spec] [%struct.bdisp_filter_h_spec { i16 0, i16 921, [64 x i8] c"\00\00\00\00@\00\00\00\00\00\FF\07=\FC\01\00\00\01\FD\116\F9\02\00\00\01\FB\1B.\F9\02\00\00\01\F9&&\F9\01\00\00\02\F90\19\FB\01\00\00\02\F99\0E\FD\01\00\00\01\FC>\06\FF\00\00" }, %struct.bdisp_filter_h_spec { i16 921, i16 1024, [64 x i8] c"\00\00\00\00@\00\00\00\FF\03\FD\08>\F9\04\FE\FD\06\F8\13;\F4\07\FC\FB\08\F5\1F4\F1\09\FB\FB\09\F2+*\F1\09\FB\FB\09\F25\1E\F4\08\FB\FC\07\F5<\12\F7\06\FD\FE\04\FA?\07\FC\03\FF" }, %struct.bdisp_filter_h_spec { i16 1024, i16 1126, [64 x i8] c"\00\00\00\00@\00\00\00\FF\03\FD\08>\F9\04\FE\FD\06\F8\13;\F4\07\FC\FB\08\F5\1F4\F1\09\FB\FB\09\F2+*\F1\09\FB\FB\09\F25\1E\F4\08\FB\FC\07\F5<\12\F7\06\FD\FE\04\FA?\07\FC\03\FF" }, %struct.bdisp_filter_h_spec { i16 1126, i16 1228, [64 x i8] c"\00\00\00\00@\00\00\00\FF\03\FD\08>\F9\04\FE\FD\06\F8\13;\F4\07\FC\FB\08\F5\1F4\F1\09\FB\FB\09\F2+*\F1\09\FB\FB\09\F25\1E\F4\08\FB\FC\07\F5<\12\F7\06\FD\FE\04\FA?\07\FC\03\FF" }, %struct.bdisp_filter_h_spec { i16 1228, i16 1331, [64 x i8] c"\FD\04\FC\059\05\FC\04\FC\06\F9\0C9\FE\00\02\FB\08\F6\175\F9\02\00\FC\08\F4 0\F4\05\FF\FD\07\F4)(\F3\07\FD\FF\05\F51\1F\F3\08\FC\00\02\F98\14\F6\08\FB\02\00\FF:\0B\F8\06\FC" }, %struct.bdisp_filter_h_spec { i16 1331, i16 1433, [64 x i8] c"\FC\06\F9\094\09\F9\06\FD\07\F7\102\02\FC\05\FE\07\F6\17/\FC\FF\04\FF\06\F5 *\F9\01\02\00\04\F6'%\F6\04\00\02\01\F9-\1D\F5\06\FF\04\FF\FD1\15\F5\07\FE\05\FC\025\0D\F7\07\FD" }, %struct.bdisp_filter_h_spec { i16 1433, i16 1536, [64 x i8] c"\FE\06\F8\0B0\0B\F8\06\FF\06\F7\12-\05\FA\06\00\04\F6\18,\00\FC\06\01\02\F7\1F'\FD\FF\04\03\00\F9$$\F9\00\03\04\FF\FD)\1D\F7\02\01\06\FC\00-\17\F6\04\00\06\FA\050\0F\F7\06\FF" }, %struct.bdisp_filter_h_spec { i16 1536, i16 2048, [64 x i8] c"\05\FD\FB\13%\13\FB\FD\05\FC\FD\17$\0F\F9\FF\04\FA\FF\1B$\0B\F9\00\03\F9\01\1F#\08\F8\01\02\F9\04\22 \04\F9\02\01\F8\08%\1D\01\F9\03\00\F9\0C%\1A\FE\FA\04\FF\F9\10&\15\FC\FC\05" }, %struct.bdisp_filter_h_spec { i16 2048, i16 3072, [64 x i8] c"\FC\FD\06\13\18\13\06\FD\FC\FE\08\15\17\12\04\FC\FB\FE\0A\16\18\10\03\FC\FB\00\0B\18\17\0F\01\FB\FB\00\0D\19\17\0D\00\FB\FB\01\0F\19\16\0B\00\FB\FC\03\11\19\15\09\FE\FB\FC\04\12\1A\12\08\FE\FC" }, %struct.bdisp_filter_h_spec { i16 3072, i16 4096, [64 x i8] c"\FE\02\09\0F\0E\0F\09\02\FF\02\09\0F\10\0E\08\01\FF\03\0A\10\10\0D\07\00\00\04\0B\10\0F\0C\06\00\00\05\0C\10\0E\0C\05\00\00\06\0C\11\0E\0B\04\00\00\07\0D\11\0F\0A\03\FF\01\08\0E\11\0E\09\02\FF" }, %struct.bdisp_filter_h_spec { i16 4096, i16 5120, [64 x i8] c"\00\04\09\0C\0E\0C\09\04\01\05\09\0C\0D\0C\08\04\01\05\0A\0C\0E\0B\08\03\02\06\0A\0D\0C\0B\07\03\02\07\0A\0D\0D\0A\07\02\03\07\0B\0D\0C\0A\06\02\03\08\0B\0D\0D\0A\05\01\04\08\0C\0D\0C\09\05\01" }, %struct.bdisp_filter_h_spec { i16 5120, i16 -1, [64 x i8] c"\03\06\09\0B\09\0B\09\06\03\06\09\0B\0C\0A\08\05\03\06\09\0B\0C\0A\08\05\04\07\09\0B\0B\0A\08\04\04\07\0A\0B\0B\0A\07\04\04\08\0A\0B\0B\09\07\04\05\08\0A\0B\0C\09\06\03\05\08\0A\0B\0C\09\06\03" }], [208 x i8] zeroinitializer }, align 32
@bdisp_v_spec = internal constant { [9 x %struct.bdisp_filter_v_spec], [116 x i8] } { [9 x %struct.bdisp_filter_v_spec] [%struct.bdisp_filter_v_spec { i16 0, i16 1024, [40 x i8] c"\00\00@\00\00\00\06=\FD\00\FE\0F8\FB\00\FD\19/\FB\00\FC$$\FC\00\FB/\19\FD\00\FB8\0F\FE\00\FD=\06\00\00" }, %struct.bdisp_filter_v_spec { i16 1024, i16 1331, [40 x i8] c"\FC\05>\05\FC\F8\0E;\FF\00\F5\188\F9\02\F4!1\F5\05\F4*'\F4\07\F60\1E\F4\08\F95\15\F6\07\FF7\0B\F9\06" }, %struct.bdisp_filter_v_spec { i16 1331, i16 1433, [40 x i8] c"\F8\0A<\0A\F8\F6\12;\02\FB\F4\1B5\FD\FF\F4#0\F8\01\F6)'\F6\04\F9.\1E\F5\06\FD1\16\F6\06\022\0D\F8\07" }, %struct.bdisp_filter_v_spec { i16 1433, i16 1536, [40 x i8] c"\F6\0E8\0E\F6\F5\158\06\F8\F5\1D3\00\FB\F6#-\FC\FE\F9(&\F9\00\FC,\1E\F7\03\00.\18\F6\04\05.\11\F7\05" }, %struct.bdisp_filter_v_spec { i16 1536, i16 2048, [40 x i8] c"\FB\13$\13\FB\FD\17#\0F\FA\FF\1A#\0B\F9\01\1D\22\07\F9\04 \1F\04\F9\07\22\1C\01\FA\0B$\17\FF\FB\0F$\14\FD\FC" }, %struct.bdisp_filter_v_spec { i16 2048, i16 3072, [40 x i8] c"\05\10\16\10\05\06\11\16\0F\04\08\13\15\0E\02\09\14\16\0C\01\0B\15\15\0B\00\0D\16\13\0A\00\0F\17\13\08\FF\11\18\12\07\FE" }, %struct.bdisp_filter_v_spec { i16 3072, i16 4096, [40 x i8] c"\09\0F\10\0F\09\09\0F\12\0E\08\0A\10\11\0E\07\0B\11\11\0D\06\0C\11\12\0C\05\0D\12\11\0C\04\0E\12\11\0B\04\0F\13\11\0A\03" }, %struct.bdisp_filter_v_spec { i16 4096, i16 5120, [40 x i8] c"\0A\0E\10\0E\0A\0B\0E\0F\0E\0A\0B\0F\10\0D\09\0C\0F\10\0D\08\0D\0F\0F\0D\08\0D\10\10\0C\07\0E\10\0F\0C\07\0F\10\10\0B\06" }, %struct.bdisp_filter_v_spec { i16 5120, i16 -1, [40 x i8] c"\0B\0E\0E\0E\0B\0B\0E\0F\0D\0B\0C\0E\0F\0D\0A\0C\0E\0F\0D\0A\0D\0F\0E\0D\09\0D\0F\0F\0C\09\0E\0F\0E\0C\09\0E\0F\0F\0C\08" }], [116 x i8] zeroinitializer }, align 32
@bdisp_v_filter = internal global { [9 x %struct.bdisp_filter_addr], [52 x i8] } zeroinitializer, align 32
@bdisp_hw_update.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.3, i8 1, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bdisp_hw_update\00", [16 x i8] zeroinitializer }, align 32
@bdisp_hw_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.12, ptr @.str.2, i32 1096, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot build nodes (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@bdisp_hw_update._entry_ptr = internal global ptr @bdisp_hw_update._entry, section ".printk_index", align 4
@bdisp_hw_build_all_nodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1000, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"node %d is null\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bdisp_hw_build_all_nodes\00", [39 x i8] zeroinitializer }, align 32
@bdisp_hw_build_all_nodes._entry_ptr = internal global ptr @bdisp_hw_build_all_nodes._entry, section ".printk_index", align 4
@bdisp_hw_get_op_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 665, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Image width out of HW caps\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bdisp_hw_get_op_cfg\00", [44 x i8] zeroinitializer }, align 32
@bdisp_hw_get_op_cfg._entry_ptr = internal global ptr @bdisp_hw_get_op_cfg._entry, section ".printk_index", align 4
@bdisp_hw_get_op_cfg._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 689, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Scale factor out of HW caps\0A\00", [35 x i8] zeroinitializer }, align 32
@bdisp_hw_get_op_cfg._entry_ptr.20 = internal global ptr @bdisp_hw_get_op_cfg._entry.18, section ".printk_index", align 4
@bdisp_hw_get_hv_inc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 641, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"scale factors failed (%dx%d)->(%dx%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bdisp_hw_get_hv_inc\00", [44 x i8] zeroinitializer }, align 32
@bdisp_hw_get_hv_inc._entry_ptr = internal global ptr @bdisp_hw_get_hv_inc._entry, section ".printk_index", align 4
@bdisp_hw_build_node.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.3, i8 0, i8 -63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bdisp_hw_build_node\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 859981650, i64 875713112, i64 1346520914]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 859981650, i64 875713112, i64 1346520914]
@__sancov_gen_cov_switch_values.26 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 859981650, i64 875713112, i64 1346520914]
@__sancov_gen_cov_switch_values.27 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 859981650, i64 875713112, i64 1346520914]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 371, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 388, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 410, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 460, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 469, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"bdisp_h_filter\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 355, i32 33 }
@___asan_gen_.73 = private unnamed_addr constant [13 x i8] c"bdisp_h_spec\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 50, i32 41 }
@___asan_gen_.76 = private unnamed_addr constant [13 x i8] c"bdisp_v_spec\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 224, i32 41 }
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"bdisp_v_filter\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 356, i32 33 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1091, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1096, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 1000, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 665, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 689, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 639, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [47 x i8] c"../drivers/media/platform/sti/bdisp/bdisp-hw.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 772, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @bdisp_hw_alloc_nodes._entry, ptr @bdisp_hw_alloc_nodes._entry_ptr, ptr @bdisp_hw_build_all_nodes._entry, ptr @bdisp_hw_build_all_nodes._entry_ptr, ptr @bdisp_hw_get_hv_inc._entry, ptr @bdisp_hw_get_hv_inc._entry_ptr, ptr @bdisp_hw_get_op_cfg._entry, ptr @bdisp_hw_get_op_cfg._entry.18, ptr @bdisp_hw_get_op_cfg._entry_ptr, ptr @bdisp_hw_get_op_cfg._entry_ptr.20, ptr @bdisp_hw_reset._entry, ptr @bdisp_hw_reset._entry_ptr, ptr @bdisp_hw_update._entry, ptr @bdisp_hw_update._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @bdisp_h_filter, ptr @bdisp_h_spec, ptr @bdisp_v_spec, ptr @bdisp_v_filter, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_hw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_hw_alloc_nodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_h_filter to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_h_spec to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_v_spec to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_v_filter to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_hw_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_hw_build_all_nodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_hw_get_op_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_hw_get_op_cfg._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdisp_hw_get_hv_inc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdisp_hw_reset(ptr nocapture noundef readonly %bdisp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_hw_reset.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_hw_reset, %if.then)) #6
          to label %do.body3 [label %if.then], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_hw_reset.__UNIQUE_ID_ddebug298, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #6
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %regs = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 10
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 2768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %5, i32 2560
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %7 = or i32 %6, 128
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr15 = getelementptr i8, ptr %9, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %7) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr20 = getelementptr i8, ptr %11, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #6, !srcloc !76
  br label %for.body

for.body:                                         ; preds = %if.end30.for.body_crit_edge, %do.body3
  %i.051 = phi i32 [ 0, %do.body3 ], [ %inc, %if.end30.for.body_crit_edge ]
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr24 = getelementptr i8, ptr %13, i32 2568
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool28.not = icmp eq i32 %15, 0
  br i1 %tobool28.not, label %if.end30, label %for.body.if.end37_crit_edge

for.body.if.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end30:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 429496000) #6
  %inc = add nuw nsw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, 500
  br i1 %exitcond.not, label %do.end35, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %dev36 = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 3
  %17 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.4) #9
  br label %if.end37

if.end37:                                         ; preds = %do.end35, %for.body.if.end37_crit_edge
  %cond = phi i32 [ -11, %do.end35 ], [ 0, %for.body.if.end37_crit_edge ]
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdisp_hw_get_and_clear_irq(ptr nocapture noundef readonly %bdisp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 10
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2564
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !78
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %do.body14

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_hw_get_and_clear_irq.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_hw_get_and_clear_irq, %if.then7)) #6
          to label %do.body8 [label %if.then7], !srcloc !74

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %bdisp, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_hw_get_and_clear_irq.__UNIQUE_ID_ddebug299, ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %3) #6
  br label %do.body8

do.body8:                                         ; preds = %if.then7, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %7, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %2) #6, !srcloc !76
  br label %cleanup

do.body14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %9, i32 2564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %2) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr23 = getelementptr i8, ptr %11, i32 2768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 0) #6, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %do.body14, %do.body8
  %retval.0 = phi i32 [ 0, %do.body14 ], [ -1, %do.body8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bdisp_hw_free_nodes(ptr noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %node = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %bdisp_dev = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdisp_dev, align 4
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %node_paddr = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 6
  %6 = ptrtoint ptr %node_paddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node_paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef 912, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 4) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdisp_hw_alloc_nodes(ptr nocapture noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %paddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bdisp_dev = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdisp_dev, align 4
  %dev1 = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr) #6
  %4 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %paddr, align 4, !annotation !86
  %call = call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef 912, ptr noundef nonnull %paddr, i32 noundef 3264, i32 noundef 4) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = call ptr @memset(ptr %call, i32 0, i32 912)
  br label %for.body

for.body:                                         ; preds = %do.end14.for.body_crit_edge, %if.end
  %base.038 = phi ptr [ %call, %if.end ], [ %add.ptr, %do.end14.for.body_crit_edge ]
  %i.036 = phi i32 [ 0, %if.end ], [ %inc, %do.end14.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bdisp_ctx, ptr %ctx, i32 0, i32 5, i32 %i.036
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base.038, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %paddr, align 4
  %arrayidx3 = getelementptr %struct.bdisp_ctx, ptr %ctx, i32 0, i32 6, i32 %i.036
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_hw_alloc_nodes.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_hw_alloc_nodes, %if.then9)) #6
          to label %do.end14 [label %if.then9], !srcloc !74

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_hw_alloc_nodes.__UNIQUE_ID_ddebug300, ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %i.036, ptr noundef %11, ptr noundef nonnull %paddr) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then9, %for.body
  %add.ptr = getelementptr i8, ptr %base.038, i32 228
  %12 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %paddr, align 4
  %add = add i32 %13, 228
  store i32 %add, ptr %paddr, align 4
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %do.end14.cleanup_crit_edge, label %do.end14.for.body_crit_edge

do.end14.for.body_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %do.end14.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %do.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bdisp_hw_free_filters(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 0, i32 2), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = load i32, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 0, i32 3), align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 1128, ptr noundef nonnull %0, i32 noundef %1, i32 noundef 4) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdisp_hw_alloc_filters(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %paddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr) #6
  %0 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %paddr, align 4, !annotation !86
  %call = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 1128, ptr noundef nonnull %paddr, i32 noundef 3264, i32 noundef 4) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %1 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %paddr.promoted = load i32, ptr %paddr, align 4
  br label %for.body

for.cond10.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %paddr, align 4
  store i16 0, ptr @bdisp_v_filter, align 4
  store i16 1024, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 0, i32 1), align 2
  %3 = call ptr @memcpy(ptr %add.ptr, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_v_spec], ptr @bdisp_v_spec, i32 0, i32 0, i32 2), i32 40)
  store ptr %add.ptr, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 0, i32 2), align 4
  store i32 %add, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 0, i32 3), align 4
  %add.ptr28 = getelementptr i8, ptr %base.062, i32 104
  %add29 = add i32 %add5960, 104
  store i16 1024, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 1), align 4
  store i16 1331, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 1, i32 1), align 2
  %4 = call ptr @memcpy(ptr %add.ptr28, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_v_spec], ptr @bdisp_v_spec, i32 0, i32 1, i32 2), i32 40)
  store ptr %add.ptr28, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 1, i32 2), align 4
  store i32 %add29, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 1, i32 3), align 4
  %add.ptr28.1 = getelementptr i8, ptr %base.062, i32 144
  %add29.1 = add i32 %add5960, 144
  store i16 1331, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 2), align 4
  store i16 1433, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 2, i32 1), align 2
  %5 = call ptr @memcpy(ptr %add.ptr28.1, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_v_spec], ptr @bdisp_v_spec, i32 0, i32 2, i32 2), i32 40)
  store ptr %add.ptr28.1, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 2, i32 2), align 4
  store i32 %add29.1, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 2, i32 3), align 4
  %add.ptr28.2 = getelementptr i8, ptr %base.062, i32 184
  %add29.2 = add i32 %add5960, 184
  store i16 1433, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 3), align 4
  store i16 1536, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 3, i32 1), align 2
  %6 = call ptr @memcpy(ptr %add.ptr28.2, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_v_spec], ptr @bdisp_v_spec, i32 0, i32 3, i32 2), i32 40)
  store ptr %add.ptr28.2, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 3, i32 2), align 4
  store i32 %add29.2, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 3, i32 3), align 4
  %add.ptr28.3 = getelementptr i8, ptr %base.062, i32 224
  %add29.3 = add i32 %add5960, 224
  store i16 1536, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 4), align 4
  store i16 2048, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 4, i32 1), align 2
  %7 = call ptr @memcpy(ptr %add.ptr28.3, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_v_spec], ptr @bdisp_v_spec, i32 0, i32 4, i32 2), i32 40)
  store ptr %add.ptr28.3, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 4, i32 2), align 4
  store i32 %add29.3, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 4, i32 3), align 4
  %add.ptr28.4 = getelementptr i8, ptr %base.062, i32 264
  %add29.4 = add i32 %add5960, 264
  store i16 2048, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 5), align 4
  store i16 3072, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 5, i32 1), align 2
  %8 = call ptr @memcpy(ptr %add.ptr28.4, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_v_spec], ptr @bdisp_v_spec, i32 0, i32 5, i32 2), i32 40)
  store ptr %add.ptr28.4, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 5, i32 2), align 4
  store i32 %add29.4, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 5, i32 3), align 4
  %add.ptr28.5 = getelementptr i8, ptr %base.062, i32 304
  %add29.5 = add i32 %add5960, 304
  store i16 3072, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 6), align 4
  store i16 4096, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 6, i32 1), align 2
  %9 = call ptr @memcpy(ptr %add.ptr28.5, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_v_spec], ptr @bdisp_v_spec, i32 0, i32 6, i32 2), i32 40)
  store ptr %add.ptr28.5, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 6, i32 2), align 4
  store i32 %add29.5, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 6, i32 3), align 4
  %add.ptr28.6 = getelementptr i8, ptr %base.062, i32 344
  %add29.6 = add i32 %add5960, 344
  store i16 4096, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 7), align 4
  store i16 5120, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 7, i32 1), align 2
  %10 = call ptr @memcpy(ptr %add.ptr28.6, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_v_spec], ptr @bdisp_v_spec, i32 0, i32 7, i32 2), i32 40)
  store ptr %add.ptr28.6, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 7, i32 2), align 4
  store i32 %add29.6, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 7, i32 3), align 4
  %add.ptr28.7 = getelementptr i8, ptr %base.062, i32 384
  %add29.7 = add i32 %add5960, 384
  store i16 5120, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 8), align 4
  store i16 -1, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 8, i32 1), align 2
  %11 = call ptr @memcpy(ptr %add.ptr28.7, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_v_spec], ptr @bdisp_v_spec, i32 0, i32 8, i32 2), i32 40)
  store ptr %add.ptr28.7, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 8, i32 2), align 4
  store i32 %add29.7, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 8, i32 3), align 4
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %base.062 = phi ptr [ %call, %for.cond.preheader ], [ %add.ptr, %for.body.for.body_crit_edge ]
  %i.061 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %add5960 = phi i32 [ %paddr.promoted, %for.cond.preheader ], [ %add, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [12 x %struct.bdisp_filter_h_spec], ptr @bdisp_h_spec, i32 0, i32 %i.061
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  %arrayidx1 = getelementptr [12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 %i.061
  %14 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayidx1, align 4
  %max = getelementptr [12 x %struct.bdisp_filter_h_spec], ptr @bdisp_h_spec, i32 0, i32 %i.061, i32 1
  %15 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max, align 2
  %max5 = getelementptr [12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 %i.061, i32 1
  %17 = ptrtoint ptr %max5 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %max5, align 2
  %coef = getelementptr [12 x %struct.bdisp_filter_h_spec], ptr @bdisp_h_spec, i32 0, i32 %i.061, i32 2
  %18 = call ptr @memcpy(ptr %base.062, ptr %coef, i32 64)
  %virt = getelementptr [12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 %i.061, i32 2
  %19 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %base.062, ptr %virt, align 4
  %paddr9 = getelementptr [12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 %i.061, i32 3
  %20 = ptrtoint ptr %paddr9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add5960, ptr %paddr9, align 4
  %add.ptr = getelementptr i8, ptr %base.062, i32 64
  %add = add i32 %add5960, 64
  %inc = add nuw nsw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.cond10.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.cond10.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %for.cond10.preheader ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bdisp_hw_update(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %cfg.i = alloca %struct.bdisp_op_cfg, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bdisp_dev = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdisp_dev, align 4
  %dev1 = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_hw_update.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_hw_update, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_hw_update.__UNIQUE_ID_ddebug304, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %cfg.i) #6
  %4 = call ptr @memset(ptr %cfg.i, i32 255, i32 18)
  %arrayidx.i = getelementptr %struct.bdisp_ctx, ptr %ctx, i32 0, i32 5, i32 0
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end.do.end.i_crit_edge, label %for.inc.i

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.2.i.do.end.i_crit_edge, %for.inc.1.i.do.end.i_crit_edge, %for.inc.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %i.079.lcssa.i = phi i32 [ 0, %do.end.do.end.i_crit_edge ], [ 1, %for.inc.i.do.end.i_crit_edge ], [ 2, %for.inc.1.i.do.end.i_crit_edge ], [ 3, %for.inc.2.i.do.end.i_crit_edge ]
  %7 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bdisp_dev, align 4
  %dev.i = getelementptr inbounds %struct.bdisp_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.14, i32 noundef %i.079.lcssa.i) #9
  br label %do.end9

for.inc.i:                                        ; preds = %do.end
  %arrayidx.1.i = getelementptr %struct.bdisp_ctx, ptr %ctx, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %12, null
  br i1 %tobool.not.1.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.1.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.bdisp_ctx, ptr %ctx, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %14, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.do.end.i_crit_edge, label %for.inc.2.i

for.inc.1.i.do.end.i_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.bdisp_ctx, ptr %ctx, i32 0, i32 5, i32 3
  %15 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %16, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.do.end.i_crit_edge, label %for.inc.3.i

for.inc.2.i.do.end.i_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %17 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdisp_dev, align 4
  %dev1.i.i = getelementptr inbounds %struct.bdisp_dev, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1.i.i, align 4
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %22)
  %cmp.i.i = icmp ugt i32 %22, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.16) #9
  br label %do.end9

if.end.i.i:                                       ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %22)
  %cmp5.i.i = icmp ugt i32 %22, 2048
  %wide.i.i = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg.i, i32 0, i32 3
  %frombool.i.i = zext i1 %cmp5.i.i to i8
  %23 = ptrtoint ptr %wide.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool.i.i, ptr %wide.i.i, align 1
  %hflip.i.i = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 3
  %24 = ptrtoint ptr %hflip.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i.i = load i8, ptr %hflip.i.i, align 4
  %hflip6.i.i = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg.i, i32 0, i32 1
  %bf.load.lobit.i.i = lshr i8 %bf.load.i.i, 7
  %25 = ptrtoint ptr %hflip6.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %bf.load.lobit.i.i, ptr %hflip6.i.i, align 1
  %vflip12.i.i = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg.i, i32 0, i32 2
  %26 = lshr i8 %bf.load.i.i, 6
  %.lobit.i.i = and i8 %26, 1
  %27 = ptrtoint ptr %vflip12.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %.lobit.i.i, ptr %vflip12.i.i, align 2
  %field.i.i = getelementptr inbounds %struct.bdisp_frame, ptr %ctx, i32 0, i32 3
  %28 = ptrtoint ptr %field.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %field.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp14.i.i = icmp eq i32 %29, 4
  %src_interlaced.i.i = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg.i, i32 0, i32 7
  %frombool15.i.i = zext i1 %cmp14.i.i to i8
  %30 = ptrtoint ptr %src_interlaced.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool15.i.i, ptr %src_interlaced.i.i, align 2
  %fmt.i.i = getelementptr inbounds %struct.bdisp_frame, ptr %ctx, i32 0, i32 2
  %31 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fmt.i.i, align 4
  %nb_planes.i.i = getelementptr inbounds %struct.bdisp_fmt, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %nb_planes.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %nb_planes.i.i, align 4
  %src_nbp.i.i = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg.i, i32 0, i32 8
  %35 = ptrtoint ptr %src_nbp.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %src_nbp.i.i, align 1
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %37)
  %cmp17.i.i = icmp eq i32 %37, 842094158
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %37)
  %cmp20.i.i = icmp eq i32 %37, 842093913
  %spec.select.i.i = or i1 %cmp17.i.i, %cmp20.i.i
  %src_yuv.i.i = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg.i, i32 0, i32 9
  %frombool21.i.i = zext i1 %spec.select.i.i to i8
  %38 = ptrtoint ptr %src_yuv.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool21.i.i, ptr %src_yuv.i.i, align 2
  %src_420.i.i = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg.i, i32 0, i32 10
  %39 = ptrtoint ptr %src_420.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %frombool21.i.i, ptr %src_420.i.i, align 1
  %fmt25.i.i = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %fmt25.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fmt25.i.i, align 4
  %nb_planes26.i.i = getelementptr inbounds %struct.bdisp_fmt, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %nb_planes26.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %nb_planes26.i.i, align 4
  %dst_nbp.i.i = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg.i, i32 0, i32 11
  %44 = ptrtoint ptr %dst_nbp.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %dst_nbp.i.i, align 2
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %46)
  %cmp29.i.i = icmp eq i32 %46, 842094158
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %46)
  %cmp33.i.i = icmp eq i32 %46, 842093913
  %47 = or i1 %cmp29.i.i, %cmp33.i.i
  %dst_yuv.i.i = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg.i, i32 0, i32 12
  %frombool35.i.i = zext i1 %47 to i8
  %48 = ptrtoint ptr %dst_yuv.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %frombool35.i.i, ptr %dst_yuv.i.i, align 1
  %dst_420.i.i = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg.i, i32 0, i32 13
  %49 = ptrtoint ptr %dst_420.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %frombool35.i.i, ptr %dst_420.i.i, align 2
  %50 = xor i1 %spec.select.i.i, %47
  %51 = zext i1 %50 to i8
  %52 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %cfg.i, align 2
  %h_inc.i.i = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg.i, i32 0, i32 5
  %v_inc.i.i = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg.i, i32 0, i32 6
  %width.i.i.i = getelementptr inbounds %struct.bdisp_frame, ptr %ctx, i32 0, i32 7, i32 2
  %53 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %width.i.i.i, align 4
  %height.i.i.i = getelementptr inbounds %struct.bdisp_frame, ptr %ctx, i32 0, i32 7, i32 3
  %55 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %height.i.i.i, align 4
  %width4.i.i.i = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 1, i32 7, i32 2
  %57 = ptrtoint ptr %width4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %width4.i.i.i, align 4
  %height7.i.i.i = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 1, i32 7, i32 3
  %59 = ptrtoint ptr %height7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %height7.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.i.i.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.do.end51.i.i_crit_edge, label %if.end.i.i.i.i

if.end.i.i.do.end51.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %54)
  %cmp.i.i.i.i = icmp eq i32 %58, %54
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.i.lor.lhs.false.i.i.i_crit_edge, label %if.end2.i.i.i.i

if.end.i.i.i.i.lor.lhs.false.i.i.i_crit_edge:     ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i.i.i

if.end2.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %shl.i.i.i.i = shl i32 %54, 10
  %div.i.i.i.i = udiv i32 %shl.i.i.i.i, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div.i.i.i.i)
  %cmp3.i.i.i.i = icmp ugt i32 %div.i.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i.i.i, i32 %58)
  %tobool4.not.i.i.i.i = icmp ult i32 %shl.i.i.i.i, %58
  %or.cond.i.i.i.i = or i1 %tobool4.not.i.i.i.i, %cmp3.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %if.end2.i.i.i.i.do.end51.i.i_crit_edge, label %if.end6.i.i.i.i

if.end2.i.i.i.i.do.end51.i.i_crit_edge:           ; preds = %if.end2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51.i.i

if.end6.i.i.i.i:                                  ; preds = %if.end2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i = trunc i32 %div.i.i.i.i to i16
  br label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end6.i.i.i.i, %if.end.i.i.i.i.lor.lhs.false.i.i.i_crit_edge
  %conv.sink.i.i.i.i = phi i16 [ %conv.i.i.i.i, %if.end6.i.i.i.i ], [ 1024, %if.end.i.i.i.i.lor.lhs.false.i.i.i_crit_edge ]
  %61 = ptrtoint ptr %h_inc.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.sink.i.i.i.i, ptr %h_inc.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i21.i.i.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i21.i.i.i, label %lor.lhs.false.i.i.i.do.end51.i.i_crit_edge, label %if.end.i23.i.i.i

lor.lhs.false.i.i.i.do.end51.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51.i.i

if.end.i23.i.i.i:                                 ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %56)
  %cmp.i22.i.i.i = icmp eq i32 %60, %56
  br i1 %cmp.i22.i.i.i, label %if.end.i23.i.i.i.if.end52.i.i_crit_edge, label %if.end2.i29.i.i.i

if.end.i23.i.i.i.if.end52.i.i_crit_edge:          ; preds = %if.end.i23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i.i

if.end2.i29.i.i.i:                                ; preds = %if.end.i23.i.i.i
  %shl.i24.i.i.i = shl i32 %56, 10
  %div.i25.i.i.i = udiv i32 %shl.i24.i.i.i, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div.i25.i.i.i)
  %cmp3.i26.i.i.i = icmp ugt i32 %div.i25.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i24.i.i.i, i32 %60)
  %tobool4.not.i27.i.i.i = icmp ult i32 %shl.i24.i.i.i, %60
  %or.cond.i28.i.i.i = or i1 %tobool4.not.i27.i.i.i, %cmp3.i26.i.i.i
  br i1 %or.cond.i28.i.i.i, label %if.end2.i29.i.i.i.do.end51.i.i_crit_edge, label %if.end6.i31.i.i.i

if.end2.i29.i.i.i.do.end51.i.i_crit_edge:         ; preds = %if.end2.i29.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51.i.i

if.end6.i31.i.i.i:                                ; preds = %if.end2.i29.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i30.i.i.i = trunc i32 %div.i25.i.i.i to i16
  br label %if.end52.i.i

do.end51.i.i:                                     ; preds = %if.end2.i29.i.i.i.do.end51.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end51.i.i_crit_edge, %if.end2.i.i.i.i.do.end51.i.i_crit_edge, %if.end.i.i.do.end51.i.i_crit_edge
  %62 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev1.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.21, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.19) #9
  br label %do.end9

if.end52.i.i:                                     ; preds = %if.end6.i31.i.i.i, %if.end.i23.i.i.i.if.end52.i.i_crit_edge
  %conv.sink.i32.i.i.i = phi i16 [ %conv.i30.i.i.i, %if.end6.i31.i.i.i ], [ 1024, %if.end.i23.i.i.i.if.end52.i.i_crit_edge ]
  %64 = zext i1 %cmp14.i.i to i16
  %spec.select.i = lshr i16 %conv.sink.i32.i.i.i, %64
  %65 = ptrtoint ptr %v_inc.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %spec.select.i, ptr %v_inc.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %conv.sink.i.i.i.i)
  %cmp62.not.i.i = icmp ne i16 %conv.sink.i.i.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %spec.select.i)
  %cmp66.not.i.i = icmp ne i16 %spec.select.i, 1024
  %narrow = select i1 %cmp62.not.i.i, i1 true, i1 %cmp66.not.i.i
  %.sink.i = zext i1 %narrow to i8
  %scale69.i.i = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg.i, i32 0, i32 4
  %66 = ptrtoint ptr %scale69.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %.sink.i, ptr %scale69.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cmp9.i = icmp ne i8 %43, 1
  %cond.i = zext i1 %cmp9.i to i32
  call fastcc void @bdisp_hw_build_node(ptr noundef %ctx, ptr noundef nonnull %cfg.i, ptr noundef nonnull %6, i32 noundef %cond.i, i32 noundef 0) #6
  %67 = ptrtoint ptr %dst_nbp.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %dst_nbp.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %68)
  %cmp20.i = icmp ugt i8 %68, 1
  br i1 %cmp20.i, label %if.then22.i, label %if.end52.i.i.if.end32.i_crit_edge

if.end52.i.i.if.end32.i_crit_edge:                ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.end16.1.i:                                     ; preds = %if.end32.i
  %arrayidx8.1.i = getelementptr %struct.bdisp_ctx, ptr %ctx, i32 0, i32 5, i32 %nid.1.i
  %69 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx8.1.i, align 4
  %71 = ptrtoint ptr %dst_nbp.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %dst_nbp.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %72)
  %cmp9.1.i = icmp ne i8 %72, 1
  %cond.1.i = zext i1 %cmp9.1.i to i32
  call fastcc void @bdisp_hw_build_node(ptr noundef %ctx, ptr noundef nonnull %cfg.i, ptr noundef %70, i32 noundef %cond.1.i, i32 noundef 2048) #6
  %arrayidx13.1.i = getelementptr %struct.bdisp_ctx, ptr %ctx, i32 0, i32 6, i32 %nid.1.i
  %73 = ptrtoint ptr %arrayidx13.1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx13.1.i, align 4
  %sub.1.i = add nsw i32 %nid.1.i, -1
  %arrayidx15.1.i = getelementptr %struct.bdisp_ctx, ptr %ctx, i32 0, i32 5, i32 %sub.1.i
  %75 = ptrtoint ptr %arrayidx15.1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx15.1.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %74, ptr %76, align 4
  %inc17.1.i = add nuw nsw i32 %nid.1.i, 1
  %78 = ptrtoint ptr %dst_nbp.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %dst_nbp.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %79)
  %cmp20.1.i = icmp ugt i8 %79, 1
  br i1 %cmp20.1.i, label %if.then22.1.i, label %if.end16.1.i.if.end10_crit_edge

if.end16.1.i.if.end10_crit_edge:                  ; preds = %if.end16.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then22.1.i:                                    ; preds = %if.end16.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx24.1.i = getelementptr %struct.bdisp_ctx, ptr %ctx, i32 0, i32 5, i32 %inc17.1.i
  %80 = ptrtoint ptr %arrayidx24.1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx24.1.i, align 4
  call fastcc void @bdisp_hw_build_node(ptr noundef %ctx, ptr noundef nonnull %cfg.i, ptr noundef %81, i32 noundef 2, i32 noundef 2048) #6
  %arrayidx26.1.i = getelementptr %struct.bdisp_ctx, ptr %ctx, i32 0, i32 6, i32 %inc17.1.i
  %82 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx26.1.i, align 4
  %84 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx8.1.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %83, ptr %85, align 4
  %inc31.1.i = add nuw nsw i32 %nid.1.i, 2
  br label %if.end10

if.then22.i:                                      ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.1.i, align 4
  call fastcc void @bdisp_hw_build_node(ptr noundef %ctx, ptr noundef nonnull %cfg.i, ptr noundef %88, i32 noundef 2, i32 noundef 0) #6
  %arrayidx26.i = getelementptr %struct.bdisp_ctx, ptr %ctx, i32 0, i32 6, i32 1
  %89 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx26.i, align 4
  %91 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %90, ptr %92, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then22.i, %if.end52.i.i.if.end32.i_crit_edge
  %nid.1.i = phi i32 [ 2, %if.then22.i ], [ 1, %if.end52.i.i.if.end32.i_crit_edge ]
  %94 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %width.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %95)
  %cmp33.not.i = icmp ugt i32 %95, 2048
  br i1 %cmp33.not.i, label %if.end16.1.i, label %if.end32.i.if.end10_crit_edge

if.end32.i.if.end10_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end9:                                          ; preds = %do.end51.i.i, %do.end.i.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %cfg.i) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef -22) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end32.i.if.end10_crit_edge, %if.then22.1.i, %if.end16.1.i.if.end10_crit_edge
  %nid.1.lcssa.i = phi i32 [ %nid.1.i, %if.end32.i.if.end10_crit_edge ], [ %inc31.1.i, %if.then22.1.i ], [ %inc17.1.i, %if.end16.1.i.if.end10_crit_edge ]
  %sub41.i = add nsw i32 %nid.1.lcssa.i, -1
  %arrayidx42.i = getelementptr %struct.bdisp_ctx, ptr %ctx, i32 0, i32 5, i32 %sub41.i
  %96 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx42.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %97, align 4
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %cfg.i) #6
  %99 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bdisp_dev, align 4
  %copy_node1.i = getelementptr inbounds %struct.bdisp_dev, ptr %100, i32 0, i32 14, i32 1
  %copy_request.i = getelementptr inbounds %struct.bdisp_dev, ptr %100, i32 0, i32 14, i32 2
  %101 = call ptr @memcpy(ptr %copy_request.i, ptr %ctx, i32 60)
  %dst.i = getelementptr inbounds %struct.bdisp_dev, ptr %100, i32 0, i32 14, i32 2, i32 1
  %dst7.i = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 1
  %102 = call ptr @memcpy(ptr %dst.i, ptr %dst7.i, i32 60)
  %103 = ptrtoint ptr %hflip.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load.i = load i8, ptr %hflip.i.i, align 4
  %bf.lshr.i = and i8 %bf.load.i, -128
  %hflip8.i = getelementptr inbounds %struct.bdisp_dev, ptr %100, i32 0, i32 14, i32 2, i32 2
  %104 = ptrtoint ptr %hflip8.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load9.i = load i8, ptr %hflip8.i, align 4
  %bf.clear.i = and i8 %bf.load9.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.lshr.i
  store i8 %bf.set.i, ptr %hflip8.i, align 4
  %bf.load10.i = load i8, ptr %hflip.i.i, align 4
  %bf.clear12.i = and i8 %bf.load10.i, 64
  %bf.clear18.i = and i8 %bf.set.i, -65
  %bf.set19.i = or i8 %bf.clear18.i, %bf.clear12.i
  store i8 %bf.set19.i, ptr %hflip8.i, align 4
  %nb_req.i = getelementptr inbounds %struct.bdisp_dev, ptr %100, i32 0, i32 14, i32 2, i32 3
  %105 = ptrtoint ptr %nb_req.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %nb_req.i, align 4
  %inc.i = add i32 %106, 1
  store i32 %inc.i, ptr %nb_req.i, align 4
  %107 = ptrtoint ptr %copy_node1.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %copy_node1.i, align 4
  %tobool.not.i55 = icmp eq ptr %108, null
  br i1 %tobool.not.i55, label %if.then.i, label %if.end10.if.end26.i_crit_edge

if.end10.if.end26.i_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then.i:                                        ; preds = %if.end10
  %109 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bdisp_dev, align 4
  %dev.i56 = getelementptr inbounds %struct.bdisp_dev, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %dev.i56 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev.i56, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %112, i32 noundef 228, i32 noundef 2848) #6
  %113 = ptrtoint ptr %copy_node1.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call.i.i, ptr %copy_node1.i, align 4
  %tobool24.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool24.not.i, label %if.then.i.bdisp_hw_save_request.exit_crit_edge, label %if.then.i.if.end26.i_crit_edge

if.then.i.if.end26.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then.i.bdisp_hw_save_request.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_save_request.exit

if.end26.i:                                       ; preds = %if.then.i.if.end26.i_crit_edge, %if.end10.if.end26.i_crit_edge
  %114 = ptrtoint ptr %copy_node1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %copy_node1.i, align 4
  %116 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i, align 4
  %118 = call ptr @memcpy(ptr %115, ptr %117, i32 228)
  %arrayidx.1.i57 = getelementptr %struct.bdisp_dev, ptr %100, i32 0, i32 14, i32 1, i32 1
  %119 = ptrtoint ptr %arrayidx.1.i57 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.1.i57, align 4
  %tobool.not.1.i58 = icmp eq ptr %120, null
  br i1 %tobool.not.1.i58, label %if.then.1.i, label %if.end26.i.if.end26.1.i_crit_edge

if.end26.i.if.end26.1.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.1.i

if.then.1.i:                                      ; preds = %if.end26.i
  %121 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bdisp_dev, align 4
  %dev.1.i = getelementptr inbounds %struct.bdisp_dev, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %dev.1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.1.i, align 4
  %call.i.1.i = tail call noalias ptr @devm_kmalloc(ptr noundef %124, i32 noundef 228, i32 noundef 2848) #6
  %125 = ptrtoint ptr %arrayidx.1.i57 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i.1.i, ptr %arrayidx.1.i57, align 4
  %tobool24.not.1.i = icmp eq ptr %call.i.1.i, null
  br i1 %tobool24.not.1.i, label %if.then.1.i.bdisp_hw_save_request.exit_crit_edge, label %if.then.1.i.if.end26.1.i_crit_edge

if.then.1.i.if.end26.1.i_crit_edge:               ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.1.i

if.then.1.i.bdisp_hw_save_request.exit_crit_edge: ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_save_request.exit

if.end26.1.i:                                     ; preds = %if.then.1.i.if.end26.1.i_crit_edge, %if.end26.i.if.end26.1.i_crit_edge
  %126 = ptrtoint ptr %arrayidx.1.i57 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.1.i57, align 4
  %128 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.1.i, align 4
  %130 = call ptr @memcpy(ptr %127, ptr %129, i32 228)
  %arrayidx.2.i59 = getelementptr %struct.bdisp_dev, ptr %100, i32 0, i32 14, i32 1, i32 2
  %131 = ptrtoint ptr %arrayidx.2.i59 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx.2.i59, align 4
  %tobool.not.2.i60 = icmp eq ptr %132, null
  br i1 %tobool.not.2.i60, label %if.then.2.i, label %if.end26.1.i.if.end26.2.i_crit_edge

if.end26.1.i.if.end26.2.i_crit_edge:              ; preds = %if.end26.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.2.i

if.then.2.i:                                      ; preds = %if.end26.1.i
  %133 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bdisp_dev, align 4
  %dev.2.i = getelementptr inbounds %struct.bdisp_dev, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %dev.2.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev.2.i, align 4
  %call.i.2.i = tail call noalias ptr @devm_kmalloc(ptr noundef %136, i32 noundef 228, i32 noundef 2848) #6
  %137 = ptrtoint ptr %arrayidx.2.i59 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call.i.2.i, ptr %arrayidx.2.i59, align 4
  %tobool24.not.2.i = icmp eq ptr %call.i.2.i, null
  br i1 %tobool24.not.2.i, label %if.then.2.i.bdisp_hw_save_request.exit_crit_edge, label %if.then.2.i.if.end26.2.i_crit_edge

if.then.2.i.if.end26.2.i_crit_edge:               ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.2.i

if.then.2.i.bdisp_hw_save_request.exit_crit_edge: ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_save_request.exit

if.end26.2.i:                                     ; preds = %if.then.2.i.if.end26.2.i_crit_edge, %if.end26.1.i.if.end26.2.i_crit_edge
  %138 = ptrtoint ptr %arrayidx.2.i59 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx.2.i59, align 4
  %140 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx.2.i, align 4
  %142 = call ptr @memcpy(ptr %139, ptr %141, i32 228)
  %arrayidx.3.i61 = getelementptr %struct.bdisp_dev, ptr %100, i32 0, i32 14, i32 1, i32 3
  %143 = ptrtoint ptr %arrayidx.3.i61 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.3.i61, align 4
  %tobool.not.3.i62 = icmp eq ptr %144, null
  br i1 %tobool.not.3.i62, label %if.then.3.i, label %if.end26.2.i.if.end26.3.i_crit_edge

if.end26.2.i.if.end26.3.i_crit_edge:              ; preds = %if.end26.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.3.i

if.then.3.i:                                      ; preds = %if.end26.2.i
  %145 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %bdisp_dev, align 4
  %dev.3.i = getelementptr inbounds %struct.bdisp_dev, ptr %146, i32 0, i32 3
  %147 = ptrtoint ptr %dev.3.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev.3.i, align 4
  %call.i.3.i = tail call noalias ptr @devm_kmalloc(ptr noundef %148, i32 noundef 228, i32 noundef 2848) #6
  %149 = ptrtoint ptr %arrayidx.3.i61 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call.i.3.i, ptr %arrayidx.3.i61, align 4
  %tobool24.not.3.i = icmp eq ptr %call.i.3.i, null
  br i1 %tobool24.not.3.i, label %if.then.3.i.bdisp_hw_save_request.exit_crit_edge, label %if.then.3.i.if.end26.3.i_crit_edge

if.then.3.i.if.end26.3.i_crit_edge:               ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.3.i

if.then.3.i.bdisp_hw_save_request.exit_crit_edge: ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_save_request.exit

if.end26.3.i:                                     ; preds = %if.then.3.i.if.end26.3.i_crit_edge, %if.end26.2.i.if.end26.3.i_crit_edge
  %150 = ptrtoint ptr %arrayidx.3.i61 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.3.i61, align 4
  %152 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx.3.i, align 4
  %154 = call ptr @memcpy(ptr %151, ptr %153, i32 228)
  br label %bdisp_hw_save_request.exit

bdisp_hw_save_request.exit:                       ; preds = %if.end26.3.i, %if.then.3.i.bdisp_hw_save_request.exit_crit_edge, %if.then.2.i.bdisp_hw_save_request.exit_crit_edge, %if.then.1.i.bdisp_hw_save_request.exit_crit_edge, %if.then.i.bdisp_hw_save_request.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %regs = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 10
  %155 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %156, i32 2656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50348160) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %157 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %158, i32 2768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 1048576) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %node_paddr = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 6
  %159 = ptrtoint ptr %node_paddr to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %node_paddr, align 4
  %161 = tail call i32 @llvm.bswap.i32(i32 %160)
  %162 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regs, align 4
  %add.ptr23 = getelementptr i8, ptr %163, i32 2660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %161) #6, !srcloc !76
  %164 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx.i, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool25.not = icmp eq i32 %167, 0
  br i1 %tobool25.not, label %bdisp_hw_save_request.exit.do.body28_crit_edge, label %for.inc

bdisp_hw_save_request.exit.do.body28_crit_edge:   ; preds = %bdisp_hw_save_request.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body28

for.inc:                                          ; preds = %bdisp_hw_save_request.exit
  %168 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx.1.i, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool25.not.1 = icmp eq i32 %171, 0
  br i1 %tobool25.not.1, label %for.inc.do.body28_crit_edge, label %for.inc.1

for.inc.do.body28_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body28

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %172 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx.2.i, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %173, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool25.not.2 = icmp eq i32 %175, 0
  %spec.select = select i1 %tobool25.not.2, i32 2, i32 3
  br label %do.body28

do.body28:                                        ; preds = %for.inc.1, %for.inc.do.body28_crit_edge, %bdisp_hw_save_request.exit.do.body28_crit_edge
  %node_id.0.lcssa = phi i32 [ 0, %bdisp_hw_save_request.exit.do.body28_crit_edge ], [ 1, %for.inc.do.body28_crit_edge ], [ %spec.select, %for.inc.1 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %arrayidx32 = getelementptr %struct.bdisp_ctx, ptr %ctx, i32 0, i32 6, i32 %node_id.0.lcssa
  %176 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx32, align 4
  %178 = tail call i32 @llvm.bswap.i32(i32 %177)
  %179 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %regs, align 4
  %add.ptr34 = getelementptr i8, ptr %180, i32 2664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %178) #6, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %do.body28, %do.end9
  %retval.0 = phi i32 [ -22, %do.end9 ], [ 0, %do.body28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bdisp_hw_build_node(ptr noundef readonly %ctx, ptr nocapture noundef readonly %cfg, ptr noundef %node, i32 noundef %t_plan, i32 noundef %src_x_offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %crop = getelementptr inbounds %struct.bdisp_frame, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %0)
  %src_rect.sroa.0.0.copyload = load i32, ptr %crop, align 4
  %src_rect.sroa.10.0.crop.sroa_idx = getelementptr inbounds %struct.bdisp_frame, ptr %ctx, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %src_rect.sroa.10.0.crop.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %src_rect.sroa.10.0.copyload = load i32, ptr %src_rect.sroa.10.0.crop.sroa_idx, align 4
  %src_rect.sroa.17.0.crop.sroa_idx = getelementptr inbounds %struct.bdisp_frame, ptr %ctx, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %src_rect.sroa.17.0.crop.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %src_rect.sroa.17.0.copyload = load i32, ptr %src_rect.sroa.17.0.crop.sroa_idx, align 4
  %src_rect.sroa.27.0.crop.sroa_idx = getelementptr inbounds %struct.bdisp_frame, ptr %ctx, i32 0, i32 7, i32 3
  %3 = ptrtoint ptr %src_rect.sroa.27.0.crop.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %src_rect.sroa.27.0.copyload = load i32, ptr %src_rect.sroa.27.0.crop.sroa_idx, align 4
  %crop3 = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %crop3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %dst_rect.sroa.0.0.copyload = load i32, ptr %crop3, align 4
  %dst_rect.sroa.9.0.crop3.sroa_idx = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 1, i32 7, i32 1
  %5 = ptrtoint ptr %dst_rect.sroa.9.0.crop3.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %dst_rect.sroa.9.0.copyload = load i32, ptr %dst_rect.sroa.9.0.crop3.sroa_idx, align 4
  %dst_rect.sroa.18.0.crop3.sroa_idx = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 1, i32 7, i32 3
  %6 = ptrtoint ptr %dst_rect.sroa.18.0.crop3.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %dst_rect.sroa.18.0.copyload = load i32, ptr %dst_rect.sroa.18.0.crop3.sroa_idx, align 4
  %width = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 1, i32 7, i32 2
  %7 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bdisp_hw_build_node.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bdisp_hw_build_node, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bdisp_dev = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 4
  %9 = ptrtoint ptr %bdisp_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdisp_dev, align 4
  %dev = getelementptr inbounds %struct.bdisp_dev, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bdisp_hw_build_node.__UNIQUE_ID_ddebug301, ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %13 = call ptr @memset(ptr %node, i32 0, i32 228)
  %add = add i32 %src_rect.sroa.0.0.copyload, %src_x_offset
  %sub = sub i32 %src_rect.sroa.17.0.copyload, %src_x_offset
  %14 = tail call i32 @llvm.smin.i32(i32 %sub, i32 2048)
  %mul = mul i32 %8, %src_x_offset
  %15 = ptrtoint ptr %src_rect.sroa.17.0.crop.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src_rect.sroa.17.0.crop.sroa_idx, align 4
  %div = udiv i32 %mul, %16
  %add15 = add i32 %div, %dst_rect.sroa.0.0.copyload
  %mul17 = mul i32 %8, %14
  %div21 = udiv i32 %mul17, %16
  %fmt = getelementptr inbounds %struct.bdisp_frame, ptr %ctx, i32 0, i32 2
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fmt, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %fmt23 = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %fmt23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fmt23, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %cic = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 1
  %25 = ptrtoint ptr %cic to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1040380, ptr %cic, align 4
  %ack = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 3
  %26 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 7, ptr %ack, align 4
  %src_nbp = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg, i32 0, i32 8
  %27 = ptrtoint ptr %src_nbp to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %src_nbp, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i8 %28, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb25
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %ins = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 2
  %30 = ptrtoint ptr %ins to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %ins, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %do.end
  %ins26 = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %t_plan)
  %cmp27 = icmp eq i32 %t_plan, 1
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %ins26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 56, ptr %ins26, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %ins26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 40, ptr %ins26, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  %ins35 = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %t_plan)
  %cmp36 = icmp eq i32 %t_plan, 1
  br i1 %cmp36, label %if.then38, label %if.else41

if.then38:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %ins35 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 59, ptr %ins35, align 4
  br label %sw.epilog

if.else41:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %ins35 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 41, ptr %ins35, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else41, %if.then38, %if.else, %if.then29, %sw.bb
  %35 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cfg, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool45.not = icmp eq i8 %36, 0
  %cond47 = select i1 %tobool45.not, i32 0, i32 64
  %ins48 = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 2
  %37 = ptrtoint ptr %ins48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ins48, align 4
  %or49 = or i32 %cond47, %38
  store i32 %or49, ptr %ins48, align 4
  %scale = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg, i32 0, i32 4
  %39 = ptrtoint ptr %scale to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %scale, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool50.not = icmp eq i8 %40, 0
  br i1 %tobool50.not, label %lor.lhs.false, label %sw.epilog.lor.end.thread_crit_edge

sw.epilog.lor.end.thread_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.thread

lor.lhs.false:                                    ; preds = %sw.epilog
  %src_420 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg, i32 0, i32 10
  %41 = ptrtoint ptr %src_420 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %src_420, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool52.not = icmp eq i8 %42, 0
  br i1 %tobool52.not, label %lor.end, label %lor.lhs.false.lor.end.thread_crit_edge

lor.lhs.false.lor.end.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.thread

lor.end:                                          ; preds = %lor.lhs.false
  %dst_420 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg, i32 0, i32 13
  %43 = ptrtoint ptr %dst_420 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dst_420, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool54.not = icmp eq i8 %44, 0
  br i1 %tobool54.not, label %lor.end._crit_edge, label %lor.end.lor.end.thread_crit_edge

lor.end.lor.end.thread_crit_edge:                 ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.thread

lor.end._crit_edge:                               ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %45

lor.end.thread:                                   ; preds = %lor.end.lor.end.thread_crit_edge, %lor.lhs.false.lor.end.thread_crit_edge, %sw.epilog.lor.end.thread_crit_edge
  br label %45

45:                                               ; preds = %lor.end.thread, %lor.end._crit_edge
  %46 = phi i32 [ 256, %lor.end.thread ], [ 0, %lor.end._crit_edge ]
  %or58 = or i32 %46, %or49
  %47 = ptrtoint ptr %ins48 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or58, ptr %ins48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %t_plan)
  %cmp59 = icmp eq i32 %t_plan, 2
  %paddr63 = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 1, i32 8
  %arrayidx = getelementptr %struct.bdisp_ctx, ptr %ctx, i32 0, i32 1, i32 8, i32 1
  %cond66.in = select i1 %cmp59, ptr %arrayidx, ptr %paddr63
  %48 = ptrtoint ptr %cond66.in to i32
  call void @__asan_load4_noabort(i32 %48)
  %cond66 = load i32, ptr %cond66.in, align 4
  %tba = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 4
  %49 = ptrtoint ptr %tba to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %cond66, ptr %tba, align 4
  %bytesperline = getelementptr inbounds %struct.bdisp_ctx, ptr %ctx, i32 0, i32 1, i32 4
  %50 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bytesperline, align 4
  %tty = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 5
  %52 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %24, label %sw.default.i [
    i32 842093913, label %.bdisp_hw_color_format.exit_crit_edge
    i32 842094158, label %sw.bb1.i
    i32 1346520914, label %sw.bb2.i
    i32 875713112, label %sw.bb3.i
    i32 859981650, label %sw.bb4.i
  ]

.bdisp_hw_color_format.exit_crit_edge:            ; preds = %45
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit

sw.bb1.i:                                         ; preds = %45
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit

sw.bb2.i:                                         ; preds = %45
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit

sw.bb3.i:                                         ; preds = %45
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit

sw.bb4.i:                                         ; preds = %45
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit

sw.default.i:                                     ; preds = %45
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit

bdisp_hw_color_format.exit:                       ; preds = %sw.default.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %.bdisp_hw_color_format.exit_crit_edge
  %ret.0.i = phi i32 [ 2424832, %sw.default.i ], [ 1073807360, %sw.bb4.i ], [ 131072, %sw.bb3.i ], [ 0, %sw.bb2.i ], [ 1075183616, %sw.bb1.i ], [ 1966080, %.bdisp_hw_color_format.exit_crit_edge ]
  %or69 = select i1 %cmp59, i32 201326592, i32 67108864
  %or71 = or i32 %or69, %51
  %or76 = or i32 %or71, %ret.0.i
  %53 = ptrtoint ptr %tty to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or76, ptr %tty, align 4
  %hflip = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg, i32 0, i32 1
  %54 = ptrtoint ptr %hflip to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %hflip, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool77.not = icmp eq i8 %55, 0
  %cond79 = select i1 %tobool77.not, i32 0, i32 16777216
  %or81 = or i32 %cond79, %or76
  %56 = ptrtoint ptr %tty to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or81, ptr %tty, align 4
  %vflip = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg, i32 0, i32 2
  %57 = ptrtoint ptr %vflip to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %vflip, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool82.not = icmp eq i8 %58, 0
  %cond84 = select i1 %tobool82.not, i32 0, i32 33554432
  %or86 = or i32 %cond84, %or81
  %59 = ptrtoint ptr %tty to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or86, ptr %tty, align 4
  %dst_42087 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg, i32 0, i32 13
  %60 = ptrtoint ptr %dst_42087 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %dst_42087, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool88.not = icmp eq i8 %61, 0
  br i1 %tobool88.not, label %bdisp_hw_color_format.exit.if.end101_crit_edge, label %land.lhs.true

bdisp_hw_color_format.exit.if.end101_crit_edge:   ; preds = %bdisp_hw_color_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

land.lhs.true:                                    ; preds = %bdisp_hw_color_format.exit
  br i1 %cmp59, label %if.then92, label %land.lhs.true.if.end101_crit_edge

land.lhs.true.if.end101_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then92:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %div93513 = lshr i32 %dst_rect.sroa.18.0.copyload, 1
  %div95514 = lshr i32 %div21, 1
  %div97 = sdiv i32 %add15, 2
  %div98 = sdiv i32 %dst_rect.sroa.9.0.copyload, 2
  %div99 = sdiv i32 %div, 2
  %div100 = sdiv i32 %8, 2
  br label %if.end101

if.end101:                                        ; preds = %if.then92, %land.lhs.true.if.end101_crit_edge, %bdisp_hw_color_format.exit.if.end101_crit_edge
  %dst_rect.sroa.18.0 = phi i32 [ %div93513, %if.then92 ], [ %dst_rect.sroa.18.0.copyload, %land.lhs.true.if.end101_crit_edge ], [ %dst_rect.sroa.18.0.copyload, %bdisp_hw_color_format.exit.if.end101_crit_edge ]
  %dst_rect.sroa.13.0 = phi i32 [ %div95514, %if.then92 ], [ %div21, %land.lhs.true.if.end101_crit_edge ], [ %div21, %bdisp_hw_color_format.exit.if.end101_crit_edge ]
  %dst_rect.sroa.9.0 = phi i32 [ %div98, %if.then92 ], [ %dst_rect.sroa.9.0.copyload, %land.lhs.true.if.end101_crit_edge ], [ %dst_rect.sroa.9.0.copyload, %bdisp_hw_color_format.exit.if.end101_crit_edge ]
  %dst_rect.sroa.0.0 = phi i32 [ %div97, %if.then92 ], [ %add15, %land.lhs.true.if.end101_crit_edge ], [ %add15, %bdisp_hw_color_format.exit.if.end101_crit_edge ]
  %dst_x_offset.0 = phi i32 [ %div99, %if.then92 ], [ %div, %land.lhs.true.if.end101_crit_edge ], [ %div, %bdisp_hw_color_format.exit.if.end101_crit_edge ]
  %dst_width.0 = phi i32 [ %div100, %if.then92 ], [ %8, %land.lhs.true.if.end101_crit_edge ], [ %8, %bdisp_hw_color_format.exit.if.end101_crit_edge ]
  %62 = ptrtoint ptr %vflip to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %vflip, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool103.not = icmp eq i8 %63, 0
  %sub107 = add i32 %dst_rect.sroa.18.0, 65535
  %cond111 = select i1 %tobool103.not, i32 %dst_rect.sroa.9.0, i32 %sub107
  %txy = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 6
  %shl = shl i32 %cond111, 16
  %64 = ptrtoint ptr %txy to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %shl, ptr %txy, align 4
  %65 = ptrtoint ptr %hflip to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %hflip, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool114.not = icmp eq i8 %66, 0
  %67 = xor i32 %dst_x_offset.0, -1
  %sub118 = add i32 %dst_width.0, %67
  %cond122 = select i1 %tobool114.not, i32 %dst_rect.sroa.0.0, i32 %sub118
  %or124 = or i32 %cond122, %shl
  %68 = ptrtoint ptr %txy to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or124, ptr %txy, align 4
  %shl126 = shl i32 %dst_rect.sroa.18.0, 16
  %or128 = or i32 %shl126, %dst_rect.sroa.13.0
  %tsz = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 7
  %69 = ptrtoint ptr %tsz to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or128, ptr %tsz, align 4
  %src_interlaced = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg, i32 0, i32 7
  %70 = ptrtoint ptr %src_interlaced to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %src_interlaced, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool129.not = icmp eq i8 %71, 0
  %div132 = sdiv i32 %src_rect.sroa.10.0.copyload, 2
  %not.tobool129.not = xor i1 %tobool129.not, true
  %div134512 = zext i1 %not.tobool129.not to i32
  %src_rect.sroa.27.0 = lshr i32 %src_rect.sroa.27.0.copyload, %div134512
  %src_rect.sroa.10.0 = select i1 %tobool129.not, i32 %src_rect.sroa.10.0.copyload, i32 %div132
  %72 = ptrtoint ptr %src_nbp to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %src_nbp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %73)
  %cmp138 = icmp eq i8 %73, 1
  br i1 %cmp138, label %if.then140, label %if.else161

if.then140:                                       ; preds = %if.end101
  %paddr141 = getelementptr inbounds %struct.bdisp_frame, ptr %ctx, i32 0, i32 8
  %74 = ptrtoint ptr %paddr141 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %paddr141, align 4
  %s2ba = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 14
  %76 = ptrtoint ptr %s2ba to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %s2ba, align 4
  %bytesperline143 = getelementptr inbounds %struct.bdisp_frame, ptr %ctx, i32 0, i32 4
  %77 = ptrtoint ptr %bytesperline143 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bytesperline143, align 4
  %s2ty = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 15
  %79 = ptrtoint ptr %s2ty to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %s2ty, align 4
  %80 = ptrtoint ptr %src_interlaced to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %src_interlaced, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool145.not = icmp eq i8 %81, 0
  br i1 %tobool145.not, label %if.then140.if.end149_crit_edge, label %if.then146

if.then140.if.end149_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end149

if.then146:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #8
  %mul148 = shl i32 %78, 1
  %82 = ptrtoint ptr %s2ty to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %mul148, ptr %s2ty, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then146, %if.then140.if.end149_crit_edge
  %83 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %20, label %sw.default.i520 [
    i32 842093913, label %if.end149.bdisp_hw_color_format.exit522_crit_edge
    i32 842094158, label %sw.bb1.i516
    i32 1346520914, label %sw.bb2.i517
    i32 875713112, label %sw.bb3.i518
    i32 859981650, label %sw.bb4.i519
  ]

if.end149.bdisp_hw_color_format.exit522_crit_edge: ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit522

sw.bb1.i516:                                      ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit522

sw.bb2.i517:                                      ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit522

sw.bb3.i518:                                      ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit522

sw.bb4.i519:                                      ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit522

sw.default.i520:                                  ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit522

bdisp_hw_color_format.exit522:                    ; preds = %sw.default.i520, %sw.bb4.i519, %sw.bb3.i518, %sw.bb2.i517, %sw.bb1.i516, %if.end149.bdisp_hw_color_format.exit522_crit_edge
  %ret.0.i521 = phi i32 [ 2424832, %sw.default.i520 ], [ 1073807360, %sw.bb4.i519 ], [ 131072, %sw.bb3.i518 ], [ 0, %sw.bb2.i517 ], [ 1075183616, %sw.bb1.i516 ], [ 1966080, %if.end149.bdisp_hw_color_format.exit522_crit_edge ]
  %84 = ptrtoint ptr %s2ty to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %s2ty, align 4
  %or152 = or i32 %85, %ret.0.i521
  store i32 %or152, ptr %s2ty, align 4
  %shl154 = shl i32 %src_rect.sroa.10.0, 16
  %or156 = or i32 %shl154, %add
  %s2xy = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 16
  %86 = ptrtoint ptr %s2xy to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %or156, ptr %s2xy, align 4
  %shl158 = shl i32 %src_rect.sroa.27.0, 16
  %or160 = or i32 %shl158, %14
  %s2sz = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 17
  %87 = ptrtoint ptr %s2sz to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or160, ptr %s2sz, align 4
  br label %if.end247

if.else161:                                       ; preds = %if.end101
  %src_420162 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg, i32 0, i32 10
  %88 = ptrtoint ptr %src_420162 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %src_420162, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool163.not = icmp eq i8 %89, 0
  br i1 %tobool163.not, label %if.else161.if.end173_crit_edge, label %if.then164

if.else161.if.end173_crit_edge:                   ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end173

if.then164:                                       ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #8
  %div166 = sdiv i32 %src_rect.sroa.10.0, 2
  %div168 = sdiv i32 %add, 2
  %div170510 = lshr i32 %14, 1
  %div172511 = lshr i32 %src_rect.sroa.27.0, 1
  br label %if.end173

if.end173:                                        ; preds = %if.then164, %if.else161.if.end173_crit_edge
  %src_rect.sroa.27.1 = phi i32 [ %div172511, %if.then164 ], [ %src_rect.sroa.27.0, %if.else161.if.end173_crit_edge ]
  %src_rect.sroa.17.0 = phi i32 [ %div170510, %if.then164 ], [ %14, %if.else161.if.end173_crit_edge ]
  %src_rect.sroa.10.1 = phi i32 [ %div166, %if.then164 ], [ %src_rect.sroa.10.0, %if.else161.if.end173_crit_edge ]
  %src_rect.sroa.0.0 = phi i32 [ %div168, %if.then164 ], [ %add, %if.else161.if.end173_crit_edge ]
  %paddr174 = getelementptr inbounds %struct.bdisp_frame, ptr %ctx, i32 0, i32 8
  %arrayidx175 = getelementptr %struct.bdisp_frame, ptr %ctx, i32 0, i32 8, i32 1
  %90 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx175, align 4
  %s2ba176 = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 14
  %92 = ptrtoint ptr %s2ba176 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %s2ba176, align 4
  %bytesperline177 = getelementptr inbounds %struct.bdisp_frame, ptr %ctx, i32 0, i32 4
  %93 = ptrtoint ptr %bytesperline177 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bytesperline177, align 4
  %s2ty178 = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 15
  %95 = ptrtoint ptr %s2ty178 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %s2ty178, align 4
  %96 = ptrtoint ptr %src_nbp to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %src_nbp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %97)
  %cmp181 = icmp eq i8 %97, 3
  br i1 %cmp181, label %if.then183, label %if.end173.if.end186_crit_edge

if.end173.if.end186_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

if.then183:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #8
  %div185509 = lshr i32 %94, 1
  %98 = ptrtoint ptr %s2ty178 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %div185509, ptr %s2ty178, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.then183, %if.end173.if.end186_crit_edge
  %99 = ptrtoint ptr %src_interlaced to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %src_interlaced, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool188.not = icmp eq i8 %100, 0
  br i1 %tobool188.not, label %if.end186.if.end192_crit_edge, label %if.then189

if.end186.if.end192_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end192

if.then189:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %s2ty178 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %s2ty178, align 4
  %mul191 = shl i32 %102, 1
  store i32 %mul191, ptr %s2ty178, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.then189, %if.end186.if.end192_crit_edge
  %103 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %20, label %sw.default.i527 [
    i32 842093913, label %if.end192.bdisp_hw_color_format.exit529_crit_edge
    i32 842094158, label %sw.bb1.i523
    i32 1346520914, label %sw.bb2.i524
    i32 875713112, label %sw.bb3.i525
    i32 859981650, label %sw.bb4.i526
  ]

if.end192.bdisp_hw_color_format.exit529_crit_edge: ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit529

sw.bb1.i523:                                      ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit529

sw.bb2.i524:                                      ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit529

sw.bb3.i525:                                      ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit529

sw.bb4.i526:                                      ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit529

sw.default.i527:                                  ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit529

bdisp_hw_color_format.exit529:                    ; preds = %sw.default.i527, %sw.bb4.i526, %sw.bb3.i525, %sw.bb2.i524, %sw.bb1.i523, %if.end192.bdisp_hw_color_format.exit529_crit_edge
  %ret.0.i528 = phi i32 [ 2424832, %sw.default.i527 ], [ 1073807360, %sw.bb4.i526 ], [ 131072, %sw.bb3.i525 ], [ 0, %sw.bb2.i524 ], [ 1075183616, %sw.bb1.i523 ], [ 1966080, %if.end192.bdisp_hw_color_format.exit529_crit_edge ]
  %104 = ptrtoint ptr %s2ty178 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %s2ty178, align 4
  %or195 = or i32 %105, %ret.0.i528
  store i32 %or195, ptr %s2ty178, align 4
  %shl197 = shl i32 %src_rect.sroa.10.1, 16
  %or199 = or i32 %shl197, %src_rect.sroa.0.0
  %s2xy200 = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 16
  %106 = ptrtoint ptr %s2xy200 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %or199, ptr %s2xy200, align 4
  %shl202 = shl i32 %src_rect.sroa.27.1, 16
  %or204 = or i32 %shl202, %src_rect.sroa.17.0
  %s2sz205 = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 17
  %107 = ptrtoint ptr %s2sz205 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %or204, ptr %s2sz205, align 4
  %108 = ptrtoint ptr %src_nbp to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %src_nbp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %109)
  %cmp208 = icmp eq i8 %109, 3
  br i1 %cmp208, label %if.then210, label %bdisp_hw_color_format.exit529.if.end215_crit_edge

bdisp_hw_color_format.exit529.if.end215_crit_edge: ; preds = %bdisp_hw_color_format.exit529
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end215

if.then210:                                       ; preds = %bdisp_hw_color_format.exit529
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx212 = getelementptr %struct.bdisp_frame, ptr %ctx, i32 0, i32 8, i32 2
  %110 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx212, align 4
  %s1ba = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 10
  %112 = ptrtoint ptr %s1ba to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %s1ba, align 4
  %s1ty = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 11
  %113 = ptrtoint ptr %s1ty to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %or195, ptr %s1ty, align 4
  %s1xy = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 12
  %114 = ptrtoint ptr %s1xy to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or199, ptr %s1xy, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.then210, %bdisp_hw_color_format.exit529.if.end215_crit_edge
  %115 = ptrtoint ptr %paddr174 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %paddr174, align 4
  %s3ba = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 18
  %117 = ptrtoint ptr %s3ba to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %s3ba, align 4
  %118 = ptrtoint ptr %bytesperline177 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %bytesperline177, align 4
  %s3ty = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 19
  %120 = ptrtoint ptr %s3ty to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %s3ty, align 4
  %121 = ptrtoint ptr %src_interlaced to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %src_interlaced, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool220.not = icmp eq i8 %122, 0
  br i1 %tobool220.not, label %if.end215.if.end224_crit_edge, label %if.then221

if.end215.if.end224_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end224

if.then221:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #8
  %mul223 = shl i32 %119, 1
  %123 = ptrtoint ptr %s3ty to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %mul223, ptr %s3ty, align 4
  br label %if.end224

if.end224:                                        ; preds = %if.then221, %if.end215.if.end224_crit_edge
  %124 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %20, label %sw.default.i534 [
    i32 842093913, label %if.end224.bdisp_hw_color_format.exit536_crit_edge
    i32 842094158, label %sw.bb1.i530
    i32 1346520914, label %sw.bb2.i531
    i32 875713112, label %sw.bb3.i532
    i32 859981650, label %sw.bb4.i533
  ]

if.end224.bdisp_hw_color_format.exit536_crit_edge: ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit536

sw.bb1.i530:                                      ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit536

sw.bb2.i531:                                      ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit536

sw.bb3.i532:                                      ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit536

sw.bb4.i533:                                      ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit536

sw.default.i534:                                  ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_color_format.exit536

bdisp_hw_color_format.exit536:                    ; preds = %sw.default.i534, %sw.bb4.i533, %sw.bb3.i532, %sw.bb2.i531, %sw.bb1.i530, %if.end224.bdisp_hw_color_format.exit536_crit_edge
  %ret.0.i535 = phi i32 [ 2424832, %sw.default.i534 ], [ 1073807360, %sw.bb4.i533 ], [ 131072, %sw.bb3.i532 ], [ 0, %sw.bb2.i531 ], [ 1075183616, %sw.bb1.i530 ], [ 1966080, %if.end224.bdisp_hw_color_format.exit536_crit_edge ]
  %125 = ptrtoint ptr %s3ty to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %s3ty, align 4
  %or227 = or i32 %126, %ret.0.i535
  store i32 %or227, ptr %s3ty, align 4
  br i1 %cmp59, label %bdisp_hw_color_format.exit536.if.else239_crit_edge, label %land.lhs.true230

bdisp_hw_color_format.exit536.if.else239_crit_edge: ; preds = %bdisp_hw_color_format.exit536
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else239

land.lhs.true230:                                 ; preds = %bdisp_hw_color_format.exit536
  %127 = ptrtoint ptr %src_420162 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %src_420162, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool232.not = icmp eq i8 %128, 0
  br i1 %tobool232.not, label %land.lhs.true230.if.else239_crit_edge, label %if.end247.thread

land.lhs.true230.if.else239_crit_edge:            ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else239

if.else239:                                       ; preds = %land.lhs.true230.if.else239_crit_edge, %bdisp_hw_color_format.exit536.if.else239_crit_edge
  %or241 = or i32 %or227, 67108864
  %129 = ptrtoint ptr %s3ty to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %or241, ptr %s3ty, align 4
  %s3xy243 = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 20
  %130 = ptrtoint ptr %s3xy243 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or199, ptr %s3xy243, align 4
  %s3sz245 = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 21
  %131 = ptrtoint ptr %s3sz245 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %or204, ptr %s3sz245, align 4
  br label %if.end247

if.end247:                                        ; preds = %if.else239, %bdisp_hw_color_format.exit522
  %and = and i32 %or58, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool249.not = icmp eq i32 %and, 0
  br i1 %tobool249.not, label %if.end247.if.end324_crit_edge, label %if.then250

if.end247.if.end324_crit_edge:                    ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end324

if.end247.thread:                                 ; preds = %land.lhs.true230
  %mul236 = shl i32 %or199, 1
  %s3xy = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 20
  %132 = ptrtoint ptr %s3xy to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %mul236, ptr %s3xy, align 4
  %mul238 = shl i32 %or204, 1
  %s3sz = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 21
  %133 = ptrtoint ptr %s3sz to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %mul238, ptr %s3sz, align 4
  %and573 = and i32 %or58, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and573)
  %tobool249.not574 = icmp eq i32 %and573, 0
  br i1 %tobool249.not574, label %if.end247.thread.if.end324_crit_edge, label %if.end247.thread.land.end_crit_edge

if.end247.thread.land.end_crit_edge:              ; preds = %if.end247.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

if.end247.thread.if.end324_crit_edge:             ; preds = %if.end247.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end324

if.then250:                                       ; preds = %if.end247
  br i1 %cmp59, label %land.rhs, label %if.then250.land.end_crit_edge

if.then250.land.end_crit_edge:                    ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #8
  %src_yuv = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg, i32 0, i32 9
  %134 = ptrtoint ptr %src_yuv to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %src_yuv, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool253.not = icmp eq i8 %135, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then250.land.end_crit_edge, %if.end247.thread.land.end_crit_edge
  %136 = phi i1 [ false, %if.then250.land.end_crit_edge ], [ %tobool253.not, %land.rhs ], [ false, %if.end247.thread.land.end_crit_edge ]
  %137 = ptrtoint ptr %scale to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %scale, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool258.not = icmp eq i8 %138, 0
  %spec.store.select515 = select i1 %136, i32 68, i32 570425412
  %spec.store.select = select i1 %136, i32 85, i32 855638101
  %spec.store.select.sink = select i1 %tobool258.not, i32 %spec.store.select515, i32 %spec.store.select
  %139 = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 26
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %spec.store.select.sink, ptr %139, align 4
  %h_inc273 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg, i32 0, i32 5
  %141 = ptrtoint ptr %h_inc273 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %h_inc273, align 2
  %v_inc274 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg, i32 0, i32 6
  %143 = ptrtoint ptr %v_inc274 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %v_inc274, align 2
  %src_420275 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg, i32 0, i32 10
  %145 = ptrtoint ptr %src_420275 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %src_420275, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool276.not = icmp eq i8 %146, 0
  %147 = ptrtoint ptr %dst_42087 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %dst_42087, align 2, !range !91
  br i1 %tobool276.not, label %land.lhs.true277, label %land.lhs.true295

land.lhs.true277:                                 ; preds = %land.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool279.not = icmp ne i8 %148, 0
  %149 = and i1 %cmp59, %tobool279.not
  br i1 %149, label %if.then284, label %land.lhs.true277.if.end306_crit_edge

land.lhs.true277.if.end306_crit_edge:             ; preds = %land.lhs.true277
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end306

if.then284:                                       ; preds = %land.lhs.true277
  call void @__sanitizer_cov_trace_pc() #8
  %mul286 = shl i16 %142, 1
  %mul289 = shl i16 %144, 1
  br label %if.end306

land.lhs.true295:                                 ; preds = %land.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool297.not = icmp eq i8 %148, 0
  br i1 %tobool297.not, label %if.then298, label %land.lhs.true295.if.end306_crit_edge

land.lhs.true295.if.end306_crit_edge:             ; preds = %land.lhs.true295
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end306

if.then298:                                       ; preds = %land.lhs.true295
  call void @__sanitizer_cov_trace_pc() #8
  %150 = lshr i16 %142, 1
  %151 = lshr i16 %144, 1
  br label %if.end306

if.end306:                                        ; preds = %if.then298, %land.lhs.true295.if.end306_crit_edge, %if.then284, %land.lhs.true277.if.end306_crit_edge
  %v_inc.0 = phi i16 [ %144, %land.lhs.true295.if.end306_crit_edge ], [ %151, %if.then298 ], [ %mul289, %if.then284 ], [ %144, %land.lhs.true277.if.end306_crit_edge ]
  %h_inc.0 = phi i16 [ %142, %land.lhs.true295.if.end306_crit_edge ], [ %150, %if.then298 ], [ %mul286, %if.then284 ], [ %142, %land.lhs.true277.if.end306_crit_edge ]
  %conv307 = zext i16 %v_inc.0 to i32
  %shl308 = shl nuw i32 %conv307, 16
  %conv309 = zext i16 %h_inc.0 to i32
  %or310 = or i32 %shl308, %conv309
  %rsf = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 28
  %152 = ptrtoint ptr %rsf to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %or310, ptr %rsf, align 4
  %rzi = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 29
  %153 = ptrtoint ptr %rzi to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 536883200, ptr %rzi, align 4
  %call311 = tail call fastcc i32 @bdisp_hw_get_hf_addr(i16 noundef zeroext %h_inc.0)
  %hfp = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 30
  %154 = ptrtoint ptr %hfp to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %call311, ptr %hfp, align 4
  %155 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %155, i16 %v_inc.0)
  %cmp2.i = icmp ult i16 %155, %v_inc.0
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end306.for.inc.i_crit_edge

if.end306.for.inc.i_crit_edge:                    ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end306
  %156 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 8, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %156, i16 %v_inc.0)
  %cmp7.not.i = icmp ult i16 %156, %v_inc.0
  br i1 %cmp7.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.bdisp_hw_get_vf_addr.exit_crit_edge

land.lhs.true.i.bdisp_hw_get_vf_addr.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_get_vf_addr.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end306.for.inc.i_crit_edge
  %157 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %157, i16 %v_inc.0)
  %cmp2.1.i = icmp ult i16 %157, %v_inc.0
  br i1 %cmp2.1.i, label %land.lhs.true.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %158 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 7, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %158, i16 %v_inc.0)
  %cmp7.not.1.i = icmp ult i16 %158, %v_inc.0
  br i1 %cmp7.not.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i.bdisp_hw_get_vf_addr.exit_crit_edge

land.lhs.true.1.i.bdisp_hw_get_vf_addr.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_get_vf_addr.exit

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %159 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %159, i16 %v_inc.0)
  %cmp2.2.i = icmp ult i16 %159, %v_inc.0
  br i1 %cmp2.2.i, label %land.lhs.true.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %160 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 6, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %160, i16 %v_inc.0)
  %cmp7.not.2.i = icmp ult i16 %160, %v_inc.0
  br i1 %cmp7.not.2.i, label %land.lhs.true.2.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i.bdisp_hw_get_vf_addr.exit_crit_edge

land.lhs.true.2.i.bdisp_hw_get_vf_addr.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_get_vf_addr.exit

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %161 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %161, i16 %v_inc.0)
  %cmp2.3.i = icmp ult i16 %161, %v_inc.0
  br i1 %cmp2.3.i, label %land.lhs.true.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %162 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 5, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %162, i16 %v_inc.0)
  %cmp7.not.3.i = icmp ult i16 %162, %v_inc.0
  br i1 %cmp7.not.3.i, label %land.lhs.true.3.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i.bdisp_hw_get_vf_addr.exit_crit_edge

land.lhs.true.3.i.bdisp_hw_get_vf_addr.exit_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_get_vf_addr.exit

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %163 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %163, i16 %v_inc.0)
  %cmp2.4.i = icmp ult i16 %163, %v_inc.0
  br i1 %cmp2.4.i, label %land.lhs.true.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %164 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 4, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %164, i16 %v_inc.0)
  %cmp7.not.4.i = icmp ult i16 %164, %v_inc.0
  br i1 %cmp7.not.4.i, label %land.lhs.true.4.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i.bdisp_hw_get_vf_addr.exit_crit_edge

land.lhs.true.4.i.bdisp_hw_get_vf_addr.exit_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_get_vf_addr.exit

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %165 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %165, i16 %v_inc.0)
  %cmp2.5.i = icmp ult i16 %165, %v_inc.0
  br i1 %cmp2.5.i, label %land.lhs.true.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5.i

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %166 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 3, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %166, i16 %v_inc.0)
  %cmp7.not.5.i = icmp ult i16 %166, %v_inc.0
  br i1 %cmp7.not.5.i, label %land.lhs.true.5.i.for.inc.5.i_crit_edge, label %land.lhs.true.5.i.bdisp_hw_get_vf_addr.exit_crit_edge

land.lhs.true.5.i.bdisp_hw_get_vf_addr.exit_crit_edge: ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_get_vf_addr.exit

land.lhs.true.5.i.for.inc.5.i_crit_edge:          ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %land.lhs.true.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %167 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %167, i16 %v_inc.0)
  %cmp2.6.i = icmp ult i16 %167, %v_inc.0
  br i1 %cmp2.6.i, label %land.lhs.true.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6.i

land.lhs.true.6.i:                                ; preds = %for.inc.5.i
  %168 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 2, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %168, i16 %v_inc.0)
  %cmp7.not.6.i = icmp ult i16 %168, %v_inc.0
  br i1 %cmp7.not.6.i, label %land.lhs.true.6.i.for.inc.6.i_crit_edge, label %land.lhs.true.6.i.bdisp_hw_get_vf_addr.exit_crit_edge

land.lhs.true.6.i.bdisp_hw_get_vf_addr.exit_crit_edge: ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_get_vf_addr.exit

land.lhs.true.6.i.for.inc.6.i_crit_edge:          ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %land.lhs.true.6.i.for.inc.6.i_crit_edge, %for.inc.5.i.for.inc.6.i_crit_edge
  %169 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %169, i16 %v_inc.0)
  %cmp2.7.i = icmp ult i16 %169, %v_inc.0
  br i1 %cmp2.7.i, label %land.lhs.true.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7.i

land.lhs.true.7.i:                                ; preds = %for.inc.6.i
  %170 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 1, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %170, i16 %v_inc.0)
  %cmp7.not.7.i = icmp ult i16 %170, %v_inc.0
  br i1 %cmp7.not.7.i, label %land.lhs.true.7.i.for.inc.7.i_crit_edge, label %land.lhs.true.7.i.bdisp_hw_get_vf_addr.exit_crit_edge

land.lhs.true.7.i.bdisp_hw_get_vf_addr.exit_crit_edge: ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_get_vf_addr.exit

land.lhs.true.7.i.for.inc.7.i_crit_edge:          ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %land.lhs.true.7.i.for.inc.7.i_crit_edge, %for.inc.6.i.for.inc.7.i_crit_edge
  br label %bdisp_hw_get_vf_addr.exit

bdisp_hw_get_vf_addr.exit:                        ; preds = %for.inc.7.i, %land.lhs.true.7.i.bdisp_hw_get_vf_addr.exit_crit_edge, %land.lhs.true.6.i.bdisp_hw_get_vf_addr.exit_crit_edge, %land.lhs.true.5.i.bdisp_hw_get_vf_addr.exit_crit_edge, %land.lhs.true.4.i.bdisp_hw_get_vf_addr.exit_crit_edge, %land.lhs.true.3.i.bdisp_hw_get_vf_addr.exit_crit_edge, %land.lhs.true.2.i.bdisp_hw_get_vf_addr.exit_crit_edge, %land.lhs.true.1.i.bdisp_hw_get_vf_addr.exit_crit_edge, %land.lhs.true.i.bdisp_hw_get_vf_addr.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 8, %land.lhs.true.i.bdisp_hw_get_vf_addr.exit_crit_edge ], [ 7, %land.lhs.true.1.i.bdisp_hw_get_vf_addr.exit_crit_edge ], [ 6, %land.lhs.true.2.i.bdisp_hw_get_vf_addr.exit_crit_edge ], [ 5, %land.lhs.true.3.i.bdisp_hw_get_vf_addr.exit_crit_edge ], [ 4, %land.lhs.true.4.i.bdisp_hw_get_vf_addr.exit_crit_edge ], [ 3, %land.lhs.true.5.i.bdisp_hw_get_vf_addr.exit_crit_edge ], [ 2, %land.lhs.true.6.i.bdisp_hw_get_vf_addr.exit_crit_edge ], [ 1, %land.lhs.true.7.i.bdisp_hw_get_vf_addr.exit_crit_edge ], [ 0, %for.inc.7.i ]
  %paddr.i = getelementptr [9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 %i.0.lcssa.i, i32 3
  %171 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %paddr.i, align 4
  %vfp = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 31
  %173 = ptrtoint ptr %vfp to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %vfp, align 4
  br i1 %136, label %bdisp_hw_get_vf_addr.exit.if.end324_crit_edge, label %if.then314

bdisp_hw_get_vf_addr.exit.if.end324_crit_edge:    ; preds = %bdisp_hw_get_vf_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end324

if.then314:                                       ; preds = %bdisp_hw_get_vf_addr.exit
  %174 = ptrtoint ptr %h_inc273 to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %h_inc273, align 2
  %176 = ptrtoint ptr %v_inc274 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %v_inc274, align 2
  %conv317 = zext i16 %177 to i32
  %shl318 = shl nuw i32 %conv317, 16
  %conv319 = zext i16 %175 to i32
  %or320 = or i32 %shl318, %conv319
  %y_rsf = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 32
  %178 = ptrtoint ptr %y_rsf to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %or320, ptr %y_rsf, align 4
  %y_rzi = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 33
  %179 = ptrtoint ptr %y_rzi to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 536883200, ptr %y_rzi, align 4
  %call321 = tail call fastcc i32 @bdisp_hw_get_hf_addr(i16 noundef zeroext %175)
  %y_hfp = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 34
  %180 = ptrtoint ptr %y_hfp to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %call321, ptr %y_hfp, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %155, i16 %177)
  %cmp2.i537 = icmp ult i16 %155, %177
  br i1 %cmp2.i537, label %land.lhs.true.i539, label %if.then314.for.inc.i541_crit_edge

if.then314.for.inc.i541_crit_edge:                ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i541

land.lhs.true.i539:                               ; preds = %if.then314
  %181 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 8, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %181, i16 %177)
  %cmp7.not.i538 = icmp ult i16 %181, %177
  br i1 %cmp7.not.i538, label %land.lhs.true.i539.for.inc.i541_crit_edge, label %land.lhs.true.i539.bdisp_hw_get_vf_addr.exit571_crit_edge

land.lhs.true.i539.bdisp_hw_get_vf_addr.exit571_crit_edge: ; preds = %land.lhs.true.i539
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_get_vf_addr.exit571

land.lhs.true.i539.for.inc.i541_crit_edge:        ; preds = %land.lhs.true.i539
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i541

for.inc.i541:                                     ; preds = %land.lhs.true.i539.for.inc.i541_crit_edge, %if.then314.for.inc.i541_crit_edge
  %182 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %182, i16 %177)
  %cmp2.1.i540 = icmp ult i16 %182, %177
  br i1 %cmp2.1.i540, label %land.lhs.true.1.i543, label %for.inc.i541.for.inc.1.i545_crit_edge

for.inc.i541.for.inc.1.i545_crit_edge:            ; preds = %for.inc.i541
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i545

land.lhs.true.1.i543:                             ; preds = %for.inc.i541
  %183 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 7, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %183, i16 %177)
  %cmp7.not.1.i542 = icmp ult i16 %183, %177
  br i1 %cmp7.not.1.i542, label %land.lhs.true.1.i543.for.inc.1.i545_crit_edge, label %land.lhs.true.1.i543.bdisp_hw_get_vf_addr.exit571_crit_edge

land.lhs.true.1.i543.bdisp_hw_get_vf_addr.exit571_crit_edge: ; preds = %land.lhs.true.1.i543
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_get_vf_addr.exit571

land.lhs.true.1.i543.for.inc.1.i545_crit_edge:    ; preds = %land.lhs.true.1.i543
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i545

for.inc.1.i545:                                   ; preds = %land.lhs.true.1.i543.for.inc.1.i545_crit_edge, %for.inc.i541.for.inc.1.i545_crit_edge
  %184 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %184, i16 %177)
  %cmp2.2.i544 = icmp ult i16 %184, %177
  br i1 %cmp2.2.i544, label %land.lhs.true.2.i547, label %for.inc.1.i545.for.inc.2.i549_crit_edge

for.inc.1.i545.for.inc.2.i549_crit_edge:          ; preds = %for.inc.1.i545
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i549

land.lhs.true.2.i547:                             ; preds = %for.inc.1.i545
  %185 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 6, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %185, i16 %177)
  %cmp7.not.2.i546 = icmp ult i16 %185, %177
  br i1 %cmp7.not.2.i546, label %land.lhs.true.2.i547.for.inc.2.i549_crit_edge, label %land.lhs.true.2.i547.bdisp_hw_get_vf_addr.exit571_crit_edge

land.lhs.true.2.i547.bdisp_hw_get_vf_addr.exit571_crit_edge: ; preds = %land.lhs.true.2.i547
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_get_vf_addr.exit571

land.lhs.true.2.i547.for.inc.2.i549_crit_edge:    ; preds = %land.lhs.true.2.i547
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i549

for.inc.2.i549:                                   ; preds = %land.lhs.true.2.i547.for.inc.2.i549_crit_edge, %for.inc.1.i545.for.inc.2.i549_crit_edge
  %186 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %186, i16 %177)
  %cmp2.3.i548 = icmp ult i16 %186, %177
  br i1 %cmp2.3.i548, label %land.lhs.true.3.i551, label %for.inc.2.i549.for.inc.3.i553_crit_edge

for.inc.2.i549.for.inc.3.i553_crit_edge:          ; preds = %for.inc.2.i549
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i553

land.lhs.true.3.i551:                             ; preds = %for.inc.2.i549
  %187 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 5, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %187, i16 %177)
  %cmp7.not.3.i550 = icmp ult i16 %187, %177
  br i1 %cmp7.not.3.i550, label %land.lhs.true.3.i551.for.inc.3.i553_crit_edge, label %land.lhs.true.3.i551.bdisp_hw_get_vf_addr.exit571_crit_edge

land.lhs.true.3.i551.bdisp_hw_get_vf_addr.exit571_crit_edge: ; preds = %land.lhs.true.3.i551
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_get_vf_addr.exit571

land.lhs.true.3.i551.for.inc.3.i553_crit_edge:    ; preds = %land.lhs.true.3.i551
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i553

for.inc.3.i553:                                   ; preds = %land.lhs.true.3.i551.for.inc.3.i553_crit_edge, %for.inc.2.i549.for.inc.3.i553_crit_edge
  %188 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %188, i16 %177)
  %cmp2.4.i552 = icmp ult i16 %188, %177
  br i1 %cmp2.4.i552, label %land.lhs.true.4.i555, label %for.inc.3.i553.for.inc.4.i557_crit_edge

for.inc.3.i553.for.inc.4.i557_crit_edge:          ; preds = %for.inc.3.i553
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4.i557

land.lhs.true.4.i555:                             ; preds = %for.inc.3.i553
  %189 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 4, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %189, i16 %177)
  %cmp7.not.4.i554 = icmp ult i16 %189, %177
  br i1 %cmp7.not.4.i554, label %land.lhs.true.4.i555.for.inc.4.i557_crit_edge, label %land.lhs.true.4.i555.bdisp_hw_get_vf_addr.exit571_crit_edge

land.lhs.true.4.i555.bdisp_hw_get_vf_addr.exit571_crit_edge: ; preds = %land.lhs.true.4.i555
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_get_vf_addr.exit571

land.lhs.true.4.i555.for.inc.4.i557_crit_edge:    ; preds = %land.lhs.true.4.i555
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4.i557

for.inc.4.i557:                                   ; preds = %land.lhs.true.4.i555.for.inc.4.i557_crit_edge, %for.inc.3.i553.for.inc.4.i557_crit_edge
  %190 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %190, i16 %177)
  %cmp2.5.i556 = icmp ult i16 %190, %177
  br i1 %cmp2.5.i556, label %land.lhs.true.5.i559, label %for.inc.4.i557.for.inc.5.i561_crit_edge

for.inc.4.i557.for.inc.5.i561_crit_edge:          ; preds = %for.inc.4.i557
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5.i561

land.lhs.true.5.i559:                             ; preds = %for.inc.4.i557
  %191 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 3, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %191, i16 %177)
  %cmp7.not.5.i558 = icmp ult i16 %191, %177
  br i1 %cmp7.not.5.i558, label %land.lhs.true.5.i559.for.inc.5.i561_crit_edge, label %land.lhs.true.5.i559.bdisp_hw_get_vf_addr.exit571_crit_edge

land.lhs.true.5.i559.bdisp_hw_get_vf_addr.exit571_crit_edge: ; preds = %land.lhs.true.5.i559
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_get_vf_addr.exit571

land.lhs.true.5.i559.for.inc.5.i561_crit_edge:    ; preds = %land.lhs.true.5.i559
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5.i561

for.inc.5.i561:                                   ; preds = %land.lhs.true.5.i559.for.inc.5.i561_crit_edge, %for.inc.4.i557.for.inc.5.i561_crit_edge
  %192 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %192, i16 %177)
  %cmp2.6.i560 = icmp ult i16 %192, %177
  br i1 %cmp2.6.i560, label %land.lhs.true.6.i563, label %for.inc.5.i561.for.inc.6.i565_crit_edge

for.inc.5.i561.for.inc.6.i565_crit_edge:          ; preds = %for.inc.5.i561
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6.i565

land.lhs.true.6.i563:                             ; preds = %for.inc.5.i561
  %193 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 2, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %193, i16 %177)
  %cmp7.not.6.i562 = icmp ult i16 %193, %177
  br i1 %cmp7.not.6.i562, label %land.lhs.true.6.i563.for.inc.6.i565_crit_edge, label %land.lhs.true.6.i563.bdisp_hw_get_vf_addr.exit571_crit_edge

land.lhs.true.6.i563.bdisp_hw_get_vf_addr.exit571_crit_edge: ; preds = %land.lhs.true.6.i563
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_get_vf_addr.exit571

land.lhs.true.6.i563.for.inc.6.i565_crit_edge:    ; preds = %land.lhs.true.6.i563
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6.i565

for.inc.6.i565:                                   ; preds = %land.lhs.true.6.i563.for.inc.6.i565_crit_edge, %for.inc.5.i561.for.inc.6.i565_crit_edge
  %194 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %194, i16 %177)
  %cmp2.7.i564 = icmp ult i16 %194, %177
  br i1 %cmp2.7.i564, label %land.lhs.true.7.i567, label %for.inc.6.i565.for.inc.7.i568_crit_edge

for.inc.6.i565.for.inc.7.i568_crit_edge:          ; preds = %for.inc.6.i565
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7.i568

land.lhs.true.7.i567:                             ; preds = %for.inc.6.i565
  %195 = load i16, ptr getelementptr inbounds ([9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 1, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %195, i16 %177)
  %cmp7.not.7.i566 = icmp ult i16 %195, %177
  br i1 %cmp7.not.7.i566, label %land.lhs.true.7.i567.for.inc.7.i568_crit_edge, label %land.lhs.true.7.i567.bdisp_hw_get_vf_addr.exit571_crit_edge

land.lhs.true.7.i567.bdisp_hw_get_vf_addr.exit571_crit_edge: ; preds = %land.lhs.true.7.i567
  call void @__sanitizer_cov_trace_pc() #8
  br label %bdisp_hw_get_vf_addr.exit571

land.lhs.true.7.i567.for.inc.7.i568_crit_edge:    ; preds = %land.lhs.true.7.i567
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7.i568

for.inc.7.i568:                                   ; preds = %land.lhs.true.7.i567.for.inc.7.i568_crit_edge, %for.inc.6.i565.for.inc.7.i568_crit_edge
  br label %bdisp_hw_get_vf_addr.exit571

bdisp_hw_get_vf_addr.exit571:                     ; preds = %for.inc.7.i568, %land.lhs.true.7.i567.bdisp_hw_get_vf_addr.exit571_crit_edge, %land.lhs.true.6.i563.bdisp_hw_get_vf_addr.exit571_crit_edge, %land.lhs.true.5.i559.bdisp_hw_get_vf_addr.exit571_crit_edge, %land.lhs.true.4.i555.bdisp_hw_get_vf_addr.exit571_crit_edge, %land.lhs.true.3.i551.bdisp_hw_get_vf_addr.exit571_crit_edge, %land.lhs.true.2.i547.bdisp_hw_get_vf_addr.exit571_crit_edge, %land.lhs.true.1.i543.bdisp_hw_get_vf_addr.exit571_crit_edge, %land.lhs.true.i539.bdisp_hw_get_vf_addr.exit571_crit_edge
  %i.0.lcssa.i569 = phi i32 [ 8, %land.lhs.true.i539.bdisp_hw_get_vf_addr.exit571_crit_edge ], [ 7, %land.lhs.true.1.i543.bdisp_hw_get_vf_addr.exit571_crit_edge ], [ 6, %land.lhs.true.2.i547.bdisp_hw_get_vf_addr.exit571_crit_edge ], [ 5, %land.lhs.true.3.i551.bdisp_hw_get_vf_addr.exit571_crit_edge ], [ 4, %land.lhs.true.4.i555.bdisp_hw_get_vf_addr.exit571_crit_edge ], [ 3, %land.lhs.true.5.i559.bdisp_hw_get_vf_addr.exit571_crit_edge ], [ 2, %land.lhs.true.6.i563.bdisp_hw_get_vf_addr.exit571_crit_edge ], [ 1, %land.lhs.true.7.i567.bdisp_hw_get_vf_addr.exit571_crit_edge ], [ 0, %for.inc.7.i568 ]
  %paddr.i570 = getelementptr [9 x %struct.bdisp_filter_addr], ptr @bdisp_v_filter, i32 0, i32 %i.0.lcssa.i569, i32 3
  %196 = ptrtoint ptr %paddr.i570 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %paddr.i570, align 4
  %y_vfp = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 35
  %198 = ptrtoint ptr %y_vfp to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %y_vfp, align 4
  br label %if.end324

if.end324:                                        ; preds = %bdisp_hw_get_vf_addr.exit571, %bdisp_hw_get_vf_addr.exit.if.end324_crit_edge, %if.end247.thread.if.end324_crit_edge, %if.end247.if.end324_crit_edge
  %199 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %cfg, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool326.not = icmp eq i8 %200, 0
  br i1 %tobool326.not, label %if.end324.if.end336_crit_edge, label %if.then327

if.end324.if.end336_crit_edge:                    ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end336

if.then327:                                       ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #8
  %src_yuv328 = getelementptr inbounds %struct.bdisp_op_cfg, ptr %cfg, i32 0, i32 9
  %201 = ptrtoint ptr %src_yuv328 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %src_yuv328, align 2, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool329.not = icmp eq i8 %202, 0
  %203 = select i1 %tobool329.not, i32 236882926, i32 858040320
  %ivmx0 = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 44
  %204 = ptrtoint ptr %ivmx0 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %ivmx0, align 4
  %205 = select i1 %tobool329.not, i32 138544153, i32 -435901540
  %ivmx1 = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 45
  %206 = ptrtoint ptr %ivmx1 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %ivmx1, align 4
  %207 = select i1 %tobool329.not, i32 -77671311, i32 305495
  %ivmx2 = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 46
  %208 = ptrtoint ptr %ivmx2 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %207, ptr %ivmx2, align 4
  %209 = select i1 %tobool329.not, i32 134234240, i32 840048363
  %ivmx3 = getelementptr inbounds %struct.bdisp_node, ptr %node, i32 0, i32 47
  %210 = ptrtoint ptr %ivmx3 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %ivmx3, align 4
  br label %if.end336

if.end336:                                        ; preds = %if.then327, %if.end324.if.end336_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bdisp_hw_get_hf_addr(i16 noundef zeroext %inc) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %0, i16 %inc)
  %cmp2 = icmp ult i16 %0, %inc
  br i1 %cmp2, label %land.lhs.true, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %1 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 11, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %inc)
  %cmp7.not = icmp ult i16 %1, %inc
  br i1 %cmp7.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %2 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %inc)
  %cmp2.1 = icmp ult i16 %2, %inc
  br i1 %cmp2.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %3 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 10, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %inc)
  %cmp7.not.1 = icmp ult i16 %3, %inc
  br i1 %cmp7.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.for.end_crit_edge

land.lhs.true.1.for.end_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %4 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %inc)
  %cmp2.2 = icmp ult i16 %4, %inc
  br i1 %cmp2.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %5 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 9, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %inc)
  %cmp7.not.2 = icmp ult i16 %5, %inc
  br i1 %cmp7.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true.2.for.end_crit_edge

land.lhs.true.2.for.end_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %6 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %inc)
  %cmp2.3 = icmp ult i16 %6, %inc
  br i1 %cmp2.3, label %land.lhs.true.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %7 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 8, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %inc)
  %cmp7.not.3 = icmp ult i16 %7, %inc
  br i1 %cmp7.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true.3.for.end_crit_edge

land.lhs.true.3.for.end_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %8 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %inc)
  %cmp2.4 = icmp ult i16 %8, %inc
  br i1 %cmp2.4, label %land.lhs.true.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %9 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 7, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %inc)
  %cmp7.not.4 = icmp ult i16 %9, %inc
  br i1 %cmp7.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true.4.for.end_crit_edge

land.lhs.true.4.for.end_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %10 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %inc)
  %cmp2.5 = icmp ult i16 %10, %inc
  br i1 %cmp2.5, label %land.lhs.true.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %11 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 6, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %inc)
  %cmp7.not.5 = icmp ult i16 %11, %inc
  br i1 %cmp7.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true.5.for.end_crit_edge

land.lhs.true.5.for.end_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %12 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %inc)
  %cmp2.6 = icmp ult i16 %12, %inc
  br i1 %cmp2.6, label %land.lhs.true.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %13 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 5, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %inc)
  %cmp7.not.6 = icmp ult i16 %13, %inc
  br i1 %cmp7.not.6, label %land.lhs.true.6.for.inc.6_crit_edge, label %land.lhs.true.6.for.end_crit_edge

land.lhs.true.6.for.end_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %14 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %inc)
  %cmp2.7 = icmp ult i16 %14, %inc
  br i1 %cmp2.7, label %land.lhs.true.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %15 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 4, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %inc)
  %cmp7.not.7 = icmp ult i16 %15, %inc
  br i1 %cmp7.not.7, label %land.lhs.true.7.for.inc.7_crit_edge, label %land.lhs.true.7.for.end_crit_edge

land.lhs.true.7.for.end_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

for.inc.7:                                        ; preds = %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %16 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %inc)
  %cmp2.8 = icmp ult i16 %16, %inc
  br i1 %cmp2.8, label %land.lhs.true.8, label %for.inc.7.for.inc.8_crit_edge

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.8

land.lhs.true.8:                                  ; preds = %for.inc.7
  %17 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 3, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %inc)
  %cmp7.not.8 = icmp ult i16 %17, %inc
  br i1 %cmp7.not.8, label %land.lhs.true.8.for.inc.8_crit_edge, label %land.lhs.true.8.for.end_crit_edge

land.lhs.true.8.for.end_crit_edge:                ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.8.for.inc.8_crit_edge:              ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.8

for.inc.8:                                        ; preds = %land.lhs.true.8.for.inc.8_crit_edge, %for.inc.7.for.inc.8_crit_edge
  %18 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %inc)
  %cmp2.9 = icmp ult i16 %18, %inc
  br i1 %cmp2.9, label %land.lhs.true.9, label %for.inc.8.for.inc.9_crit_edge

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.9

land.lhs.true.9:                                  ; preds = %for.inc.8
  %19 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 2, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %inc)
  %cmp7.not.9 = icmp ult i16 %19, %inc
  br i1 %cmp7.not.9, label %land.lhs.true.9.for.inc.9_crit_edge, label %land.lhs.true.9.for.end_crit_edge

land.lhs.true.9.for.end_crit_edge:                ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.9.for.inc.9_crit_edge:              ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.9

for.inc.9:                                        ; preds = %land.lhs.true.9.for.inc.9_crit_edge, %for.inc.8.for.inc.9_crit_edge
  %20 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %inc)
  %cmp2.10 = icmp ult i16 %20, %inc
  br i1 %cmp2.10, label %land.lhs.true.10, label %for.inc.9.for.inc.10_crit_edge

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.10

land.lhs.true.10:                                 ; preds = %for.inc.9
  %21 = load i16, ptr getelementptr inbounds ([12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 1, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %inc)
  %cmp7.not.10 = icmp ult i16 %21, %inc
  br i1 %cmp7.not.10, label %land.lhs.true.10.for.inc.10_crit_edge, label %land.lhs.true.10.for.end_crit_edge

land.lhs.true.10.for.end_crit_edge:               ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true.10.for.inc.10_crit_edge:            ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.10

for.inc.10:                                       ; preds = %land.lhs.true.10.for.inc.10_crit_edge, %for.inc.9.for.inc.10_crit_edge
  br label %for.end

for.end:                                          ; preds = %for.inc.10, %land.lhs.true.10.for.end_crit_edge, %land.lhs.true.9.for.end_crit_edge, %land.lhs.true.8.for.end_crit_edge, %land.lhs.true.7.for.end_crit_edge, %land.lhs.true.6.for.end_crit_edge, %land.lhs.true.5.for.end_crit_edge, %land.lhs.true.4.for.end_crit_edge, %land.lhs.true.3.for.end_crit_edge, %land.lhs.true.2.for.end_crit_edge, %land.lhs.true.1.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 11, %land.lhs.true.for.end_crit_edge ], [ 10, %land.lhs.true.1.for.end_crit_edge ], [ 9, %land.lhs.true.2.for.end_crit_edge ], [ 8, %land.lhs.true.3.for.end_crit_edge ], [ 7, %land.lhs.true.4.for.end_crit_edge ], [ 6, %land.lhs.true.5.for.end_crit_edge ], [ 5, %land.lhs.true.6.for.end_crit_edge ], [ 4, %land.lhs.true.7.for.end_crit_edge ], [ 3, %land.lhs.true.8.for.end_crit_edge ], [ 2, %land.lhs.true.9.for.end_crit_edge ], [ 1, %land.lhs.true.10.for.end_crit_edge ], [ 0, %for.inc.10 ]
  %paddr = getelementptr [12 x %struct.bdisp_filter_addr], ptr @bdisp_h_filter, i32 0, i32 %i.0.lcssa, i32 3
  %22 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %paddr, align 4
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sti/bdisp/bdisp-hw.c", i32 371, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @bdisp_hw_reset.__UNIQUE_ID_ddebug298, !1, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/sti/bdisp/bdisp-hw.c", i32 388, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @bdisp_hw_reset._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @bdisp_hw_reset._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/sti/bdisp/bdisp-hw.c", i32 410, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @bdisp_hw_get_and_clear_irq.__UNIQUE_ID_ddebug299, !13, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/sti/bdisp/bdisp-hw.c", i32 460, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @bdisp_hw_alloc_nodes._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @bdisp_hw_alloc_nodes._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/sti/bdisp/bdisp-hw.c", i32 469, i32 3}
!23 = !{ptr @bdisp_hw_alloc_nodes.__UNIQUE_ID_ddebug300, !22, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/sti/bdisp/bdisp-hw.c", i32 1091, i32 2}
!26 = !{ptr @bdisp_hw_update.__UNIQUE_ID_ddebug304, !25, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/sti/bdisp/bdisp-hw.c", i32 1096, i32 3}
!29 = !{ptr @bdisp_hw_update._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @bdisp_hw_update._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @bdisp_h_filter, !32, !"bdisp_h_filter", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/sti/bdisp/bdisp-hw.c", i32 355, i32 33}
!33 = !{ptr @bdisp_v_filter, !34, !"bdisp_v_filter", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/sti/bdisp/bdisp-hw.c", i32 356, i32 33}
!35 = !{ptr @bdisp_h_spec, !36, !"bdisp_h_spec", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/sti/bdisp/bdisp-hw.c", i32 50, i32 41}
!37 = !{ptr @bdisp_v_spec, !38, !"bdisp_v_spec", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/sti/bdisp/bdisp-hw.c", i32 224, i32 41}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/sti/bdisp/bdisp-hw.c", i32 1000, i32 4}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @bdisp_hw_build_all_nodes._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @bdisp_hw_build_all_nodes._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/sti/bdisp/bdisp-hw.c", i32 665, i32 3}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @bdisp_hw_get_op_cfg._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @bdisp_hw_get_op_cfg._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/sti/bdisp/bdisp-hw.c", i32 689, i32 3}
!51 = !{ptr @bdisp_hw_get_op_cfg._entry.18, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @bdisp_hw_get_op_cfg._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/sti/bdisp/bdisp-hw.c", i32 639, i32 3}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @bdisp_hw_get_hv_inc._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @bdisp_hw_get_hv_inc._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/sti/bdisp/bdisp-hw.c", i32 772, i32 2}
!60 = !{ptr @bdisp_hw_build_node.__UNIQUE_ID_ddebug301, !59, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!61 = distinct !{null, !62, !"bdisp_yuv_to_rgb", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/sti/bdisp/bdisp-filter.h", i32 40, i32 18}
!63 = distinct !{null, !64, !"bdisp_rgb_to_yuv", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/sti/bdisp/bdisp-filter.h", i32 36, i32 18}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2148782665, i64 2148782670, i64 2148782683, i64 2148782727, i64 2148782761, i64 2148782782}
!75 = !{i64 2156475156}
!76 = !{i64 7425657}
!77 = !{i64 2156476419}
!78 = !{i64 7426075}
!79 = !{i64 2156477388}
!80 = !{i64 2156477653}
!81 = !{i64 2156478334}
!82 = !{i64 2156481042}
!83 = !{i64 2156483692}
!84 = !{i64 2156484094}
!85 = !{i64 2156484494}
!86 = !{!"auto-init"}
!87 = !{i64 2156509727}
!88 = !{i64 2156510259}
!89 = !{i64 2156510751}
!90 = !{i64 2156511266}
!91 = !{i8 0, i8 2}
