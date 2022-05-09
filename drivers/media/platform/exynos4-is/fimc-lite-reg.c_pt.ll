; ModuleID = '/llk/IR_all_yes/drivers/media/platform/exynos4-is/fimc-lite-reg.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-lite-reg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.101 = type { i32, ptr }
%struct.fimc_lite = type { ptr, ptr, %struct.exynos_video_entity, ptr, %struct.v4l2_fh, %struct.v4l2_subdev, %struct.media_pad, [3 x %struct.media_pad], ptr, %struct.v4l2_ctrl_handler, ptr, i32, %struct.mutex, %struct.spinlock, ptr, ptr, %struct.wait_queue_head, [1 x i32], %struct.flite_frame, %struct.flite_frame, %struct.atomic_t, i32, i32, %struct.list_head, %struct.list_head, %struct.vb2_queue, i16, i32, i32, %struct.fimc_lite_events, i8 }
%struct.exynos_video_entity = type { %struct.video_device, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.flite_frame = type { i16, i16, %struct.v4l2_rect, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.fimc_lite_events = type { i32 }
%struct.fimc_source_info = type { i32, i32, i16, i16 }
%struct.flite_drvdata = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.flite_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, i16 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@src_pixfmt_map = internal constant { [8 x [3 x i32]], [32 x i8] } { [8 x [3 x i32]] [[3 x i32] [i32 8200, i32 0, i32 503316480], [3 x i32] [i32 8201, i32 16384, i32 503316480], [3 x i32] [i32 8198, i32 32768, i32 503316480], [3 x i32] [i32 8199, i32 49152, i32 503316480], [3 x i32] [i32 12290, i32 0, i32 704643072], [3 x i32] [i32 12298, i32 0, i32 721420288], [3 x i32] [i32 12305, i32 0, i32 738197504], [3 x i32] [i32 16385, i32 0, i32 805306368]], [32 x i8] zeroinitializer }, align 32
@flite_hw_set_source_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s: Unsupported pixel code, falling back to %#08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"flite_hw_set_source_format\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/media/platform/exynos4-is/fimc-lite-reg.c\00", [46 x i8] zeroinitializer }, align 32
@flite_hw_set_source_format._entry_ptr = internal global ptr @flite_hw_set_source_format._entry, section ".printk_index", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CISRCSIZE\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CIGCTRL\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CIIMGCPT\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CICPTSEQ\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CIWDOFST\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CIWDOFST2\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CIODMAFMT\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CIOCAN\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CIOOFF\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CIOSA\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CISTATUS\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CISTATUS2\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CITHOLD\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CIGENERAL\00", [22 x i8] zeroinitializer }, align 32
@__const.flite_hw_dump_regs.registers = private unnamed_addr constant [14 x %struct.anon.101] [%struct.anon.101 { i32 0, ptr @.str.3 }, %struct.anon.101 { i32 4, ptr @.str.4 }, %struct.anon.101 { i32 8, ptr @.str.5 }, %struct.anon.101 { i32 12, ptr @.str.6 }, %struct.anon.101 { i32 16, ptr @.str.7 }, %struct.anon.101 { i32 20, ptr @.str.8 }, %struct.anon.101 { i32 24, ptr @.str.9 }, %struct.anon.101 { i32 32, ptr @.str.10 }, %struct.anon.101 { i32 36, ptr @.str.11 }, %struct.anon.101 { i32 48, ptr @.str.12 }, %struct.anon.101 { i32 64, ptr @.str.13 }, %struct.anon.101 { i32 68, ptr @.str.14 }, %struct.anon.101 { i32 240, ptr @.str.15 }, %struct.anon.101 { i32 252, ptr @.str.16 }], align 4
@flite_hw_dump_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s: --- %s ---\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"flite_hw_dump_regs\00", [45 x i8] zeroinitializer }, align 32
@flite_hw_dump_regs._entry_ptr = internal global ptr @flite_hw_dump_regs._entry, section ".printk_index", align 4
@flite_hw_dump_regs._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: %9s: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@flite_hw_dump_regs._entry_ptr.21 = internal global ptr @flite_hw_dump_regs._entry.19, section ".printk_index", align 4
@flite_hw_set_out_order.pixcode = internal constant { [4 x [2 x i32]], [32 x i8] } { [4 x [2 x i32]] [[2 x i32] [i32 8200, i32 0], [2 x i32] [i32 8201, i32 16], [2 x i32] [i32 8198, i32 32], [2 x i32] [i32 8199, i32 48]], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 8198, i64 8199, i64 8200, i64 8201, i64 12290, i64 12298, i64 12305, i64 16385]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 8198, i64 8199]
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"src_pixfmt_map\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 111, i32 18 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 139, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 322, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 323, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 324, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 325, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 326, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 327, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 328, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 329, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 330, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 331, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 332, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 333, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 334, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 335, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 339, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 343, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [8 x i8] c"pixcode\00", align 1
@___asan_gen_.96 = private constant [53 x i8] c"../drivers/media/platform/exynos4-is/fimc-lite-reg.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 231, i32 19 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @flite_hw_dump_regs._entry, ptr @flite_hw_dump_regs._entry.19, ptr @flite_hw_dump_regs._entry_ptr, ptr @flite_hw_dump_regs._entry_ptr.21, ptr @flite_hw_set_source_format._entry, ptr @flite_hw_set_source_format._entry_ptr, ptr @src_pixfmt_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @flite_hw_set_out_order.pixcode], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @src_pixfmt_map to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flite_hw_set_source_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flite_hw_dump_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flite_hw_dump_regs._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flite_hw_set_out_order.pixcode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flite_hw_reset(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %regs = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 15
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %4 = or i32 %3, 2048
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr4 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #4, !srcloc !59
  %add.neg = sub i32 -5, %0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub25 = add i32 %add.neg, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub25)
  %cmp26 = icmp slt i32 %sub25, 0
  br i1 %cmp26, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %add.ptr8 = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #4, !srcloc !56
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  %and = and i32 %12, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end:                                           ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %13
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %cfg.1 = phi i32 [ %5, %entry.while.end_crit_edge ], [ %12, %while.body.while.end_crit_edge ], [ %12, %if.end.while.end_crit_edge ]
  %or12 = or i32 %cfg.1, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  %14 = tail call i32 @llvm.bswap.i32(i32 %or12)
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %add.ptr17 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %14) #4, !srcloc !59
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flite_hw_clear_pending_irq(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #4, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @flite_hw_get_interrupt_source(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !56
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  %and = and i32 %3, 240
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flite_hw_clear_last_capture_end(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  %3 = and i32 %2, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #4, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flite_hw_set_interrupt_mask(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %out_path = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %out_path, i32 noundef 4) #4
  %0 = ptrtoint ptr %out_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %out_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %. = select i1 %cmp, i32 -481, i32 -289
  %regs = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %5 = or i32 %4, -536805376
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %and = and i32 %6, %.
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %and)
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr4 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %7) #4, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flite_hw_capture_start(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  %3 = or i32 %2, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #4, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flite_hw_capture_stop(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !71
  %3 = and i32 %2, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !72
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #4, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flite_hw_set_test_pattern(ptr nocapture noundef readonly %dev, i1 noundef zeroext %on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !73
  %3 = and i32 %2, -8388609
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %masksel = select i1 %on, i32 32768, i32 0
  %cfg.0 = or i32 %4, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !74
  tail call void @arm_heavy_mb() #4
  %5 = tail call i32 @llvm.bswap.i32(i32 %cfg.0)
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #4, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flite_hw_set_source_format(ptr noundef %dev, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.flite_frame, ptr %f, i32 0, i32 3
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmt, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 16385, label %entry.if.end9_crit_edge
    i32 12305, label %if.end9.fold.split
    i32 12298, label %if.end9.fold.split62
    i32 12290, label %if.end9.fold.split63
    i32 8199, label %if.end9.fold.split64
    i32 8198, label %if.end9.fold.split65
    i32 8201, label %if.end9.fold.split66
    i32 8200, label %if.end9.fold.split67
  ]

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 2, i32 0, i32 12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef 8200) #7
  br label %if.end9

if.end9.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end9.fold.split62:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end9.fold.split63:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end9.fold.split64:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end9.fold.split65:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end9.fold.split66:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end9.fold.split67:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end9:                                          ; preds = %if.end9.fold.split67, %if.end9.fold.split66, %if.end9.fold.split65, %if.end9.fold.split64, %if.end9.fold.split63, %if.end9.fold.split62, %if.end9.fold.split, %do.end, %entry.if.end9_crit_edge
  %dec61 = phi i32 [ 0, %do.end ], [ 7, %entry.if.end9_crit_edge ], [ 6, %if.end9.fold.split ], [ 5, %if.end9.fold.split62 ], [ 4, %if.end9.fold.split63 ], [ 3, %if.end9.fold.split64 ], [ 2, %if.end9.fold.split65 ], [ 1, %if.end9.fold.split66 ], [ 0, %if.end9.fold.split67 ]
  %regs = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 15
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !75
  %8 = and i32 %7, -64
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %arrayidx14 = getelementptr [8 x [3 x i32]], ptr @src_pixfmt_map, i32 0, i32 %dec61, i32 2
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx14, align 4
  %or = or i32 %9, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !76
  tail call void @arm_heavy_mb() #4
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %add.ptr19 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %12) #4, !srcloc !59
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !56
  %18 = shl i32 %17, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %and27 = and i32 %18, -1073741824
  %19 = ptrtoint ptr %f to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %f, align 4
  %conv = zext i16 %20 to i32
  %shl = shl nuw i32 %conv, 16
  %f_height = getelementptr inbounds %struct.flite_frame, ptr %f, i32 0, i32 1
  %21 = ptrtoint ptr %f_height to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %f_height, align 2
  %conv28 = zext i16 %22 to i32
  %arrayidx32 = getelementptr [8 x [3 x i32]], ptr @src_pixfmt_map, i32 0, i32 %dec61, i32 1
  %23 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx32, align 4
  %or29 = or i32 %and27, %conv28
  %or30 = or i32 %or29, %shl
  %or33 = or i32 %or30, %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %25 = tail call i32 @llvm.bswap.i32(i32 %or33)
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #4, !srcloc !59
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flite_hw_set_window_offset(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  %3 = and i32 %2, 14680160
  %rect = getelementptr inbounds %struct.flite_frame, ptr %f, i32 0, i32 2
  %4 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rect, align 4
  %shl = shl i32 %5, 16
  %top = getelementptr inbounds %struct.flite_frame, ptr %f, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %top, align 4
  %8 = or i32 %3, 128
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %or3 = or i32 %9, %7
  %or4 = or i32 %or3, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !80
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %or4)
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 8
  %add.ptr6 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %10) #4, !srcloc !59
  %13 = ptrtoint ptr %f to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %f, align 4
  %conv = zext i16 %14 to i32
  %width = getelementptr inbounds %struct.flite_frame, ptr %f, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %width, align 4
  %17 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rect, align 4
  %19 = add i32 %16, %18
  %sub10 = sub i32 %conv, %19
  %f_height = getelementptr inbounds %struct.flite_frame, ptr %f, i32 0, i32 1
  %20 = ptrtoint ptr %f_height to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %f_height, align 2
  %conv11 = zext i16 %21 to i32
  %height = getelementptr inbounds %struct.flite_frame, ptr %f, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  %24 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %top, align 4
  %26 = add i32 %23, %25
  %sub16 = sub i32 %conv11, %26
  %shl17 = shl i32 %sub10, 16
  %or18 = or i32 %sub16, %shl17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !81
  tail call void @arm_heavy_mb() #4
  %27 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 8
  %add.ptr23 = getelementptr i8, ptr %29, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %27) #4, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flite_hw_set_camera_bus(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %si) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !56
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  %sensor_bus_type = getelementptr inbounds %struct.fimc_source_info, ptr %si, i32 0, i32 1
  %4 = ptrtoint ptr %sensor_bus_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sensor_bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.not = icmp eq i32 %5, 3
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %flags2 = getelementptr inbounds %struct.fimc_source_info, ptr %si, i32 0, i32 2
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags2, align 4
  %conv = zext i16 %7 to i32
  %and = and i32 %3, -28681
  %and4 = shl nuw nsw i32 %conv, 7
  %8 = and i32 %and4, 16384
  %9 = or i32 %8, %and
  %and6 = shl nuw nsw i32 %conv, 8
  %10 = and i32 %and6, 8192
  %11 = or i32 %9, %10
  %and11 = shl nuw nsw i32 %conv, 9
  %12 = and i32 %and11, 4096
  %13 = or i32 %11, %12
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or16 = or i32 %3, 8
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %cfg.2 = phi i32 [ %or16, %if.else ], [ %13, %if.then ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !83
  tail call void @arm_heavy_mb() #4
  %14 = tail call i32 @llvm.bswap.i32(i32 %cfg.2)
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %add.ptr19 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %14) #4, !srcloc !59
  %mux_id = getelementptr inbounds %struct.fimc_source_info, ptr %si, i32 0, i32 3
  %17 = ptrtoint ptr %mux_id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mux_id, align 2
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %20, i32 252
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.i = icmp ne i16 %18, 0
  %22 = and i32 %21, -16777217
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #4
  %masksel.i = zext i1 %cmp.i to i32
  %cfg.0.i = or i32 %23, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %24 = tail call i32 @llvm.bswap.i32(i32 %cfg.0.i) #4
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 8
  %add.ptr3.i = getelementptr i8, ptr %26, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %24) #4, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flite_hw_set_dma_window(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %3 = and i32 %2, 12583104
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %f_height = getelementptr inbounds %struct.flite_frame, ptr %f, i32 0, i32 1
  %5 = ptrtoint ptr %f_height to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %f_height, align 2
  %conv = zext i16 %6 to i32
  %shl = shl nuw i32 %conv, 16
  %7 = ptrtoint ptr %f to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %f, align 4
  %conv2 = zext i16 %8 to i32
  %or = or i32 %4, %conv2
  %or3 = or i32 %or, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr5 = getelementptr i8, ptr %11, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %9) #4, !srcloc !59
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %add.ptr9 = getelementptr i8, ptr %13, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  %15 = and i32 %14, 12583104
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %rect = getelementptr inbounds %struct.flite_frame, ptr %f, i32 0, i32 2
  %top = getelementptr inbounds %struct.flite_frame, ptr %f, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %top, align 4
  %shl14 = shl i32 %18, 16
  %19 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rect, align 4
  %or16 = or i32 %20, %16
  %or17 = or i32 %or16, %shl14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !89
  tail call void @arm_heavy_mb() #4
  %21 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %add.ptr22 = getelementptr i8, ptr %23, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %21) #4, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flite_hw_set_dma_buffer(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dd = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd, align 4
  %max_dma_bufs = getelementptr inbounds %struct.flite_drvdata, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %max_dma_bufs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_dma_bufs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp = icmp eq i16 %3, 1
  br i1 %cmp, label %entry.do.body_crit_edge, label %if.end

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end:                                           ; preds = %entry
  %index2 = getelementptr inbounds %struct.flite_buffer, ptr %buf, i32 0, i32 3
  %4 = ptrtoint ptr %index2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp4 = icmp eq i16 %5, 0
  br i1 %cmp4, label %if.end.do.body_crit_edge, label %do.body8

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !90
  tail call void @arm_heavy_mb() #4
  %addr = getelementptr inbounds %struct.flite_buffer, ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 8
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %regs = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 15
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #4, !srcloc !59
  br label %if.end14

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv3 = zext i16 %5 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !91
  tail call void @arm_heavy_mb() #4
  %addr11 = getelementptr inbounds %struct.flite_buffer, ptr %buf, i32 0, i32 2
  %11 = ptrtoint ptr %addr11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr11, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %regs12 = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 15
  %14 = ptrtoint ptr %regs12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs12, align 8
  %sub = shl nuw nsw i32 %conv3, 2
  %add = add nuw nsw i32 %sub, 508
  %add.ptr13 = getelementptr i8, ptr %15, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %13) #4, !srcloc !59
  br label %if.end14

if.end14:                                         ; preds = %do.body8, %do.body
  %index.034 = phi i32 [ %conv3, %do.body8 ], [ 0, %do.body ]
  %regs15 = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 15
  %16 = ptrtoint ptr %regs15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs15, align 8
  %add.ptr16 = getelementptr i8, ptr %17, i32 256
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #4, !srcloc !56
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !92
  %shl = shl nuw i32 1, %index.034
  %or = or i32 %19, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  tail call void @arm_heavy_mb() #4
  %20 = tail call i32 @llvm.bswap.i32(i32 %or)
  %21 = ptrtoint ptr %regs15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs15, align 8
  %add.ptr22 = getelementptr i8, ptr %22, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %20) #4, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flite_hw_mask_dma_buffer(ptr nocapture noundef readonly %dev, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dd = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd, align 4
  %max_dma_bufs = getelementptr inbounds %struct.flite_drvdata, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %max_dma_bufs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_dma_bufs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp = icmp eq i16 %3, 1
  %regs = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 15
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 256
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !56
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  %index.op = shl nuw i32 1, %index
  %index.op.op = xor i32 %index.op, -1
  %neg = select i1 %cmp, i32 -2, i32 %index.op.op
  %and = and i32 %7, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !95
  tail call void @arm_heavy_mb() #4
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %add.ptr4 = getelementptr i8, ptr %10, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %8) #4, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flite_hw_set_output_dma(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %f, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !56
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !96
  br i1 %enable, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %3, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !97
  tail call void @arm_heavy_mb() #4
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #4, !srcloc !59
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %3, -1048577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !98
  tail call void @arm_heavy_mb() #4
  %7 = tail call i32 @llvm.bswap.i32(i32 %and)
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr8 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %7) #4, !srcloc !59
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !99
  %fmt.i = getelementptr inbounds %struct.flite_frame, ptr %f, i32 0, i32 3
  %13 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fmt.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %16, label %while.cond.2.i [
    i32 8199, label %if.end.flite_hw_set_out_order.exit_crit_edge
    i32 8198, label %flite_hw_set_out_order.exit.fold.split
  ]

if.end.flite_hw_set_out_order.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %flite_hw_set_out_order.exit

while.cond.2.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8201, i32 %16)
  %cmp.2.i = icmp eq i32 %16, 8201
  %spec.select.i = zext i1 %cmp.2.i to i32
  br label %flite_hw_set_out_order.exit

flite_hw_set_out_order.exit.fold.split:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %flite_hw_set_out_order.exit

flite_hw_set_out_order.exit:                      ; preds = %flite_hw_set_out_order.exit.fold.split, %while.cond.2.i, %if.end.flite_hw_set_out_order.exit_crit_edge
  %dec.lcssa.i = phi i32 [ 3, %if.end.flite_hw_set_out_order.exit_crit_edge ], [ %spec.select.i, %while.cond.2.i ], [ 2, %flite_hw_set_out_order.exit.fold.split ]
  %18 = and i32 %12, -805306369
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !100
  tail call void @arm_heavy_mb() #4
  %arrayidx4.i = getelementptr [4 x [2 x i32]], ptr @flite_hw_set_out_order.pixcode, i32 0, i32 %dec.lcssa.i, i32 1
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i, align 4
  %or.i = or i32 %21, %19
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 8
  %add.ptr6.i = getelementptr i8, ptr %24, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %22) #4, !srcloc !59
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 8
  %add.ptr.i19 = getelementptr i8, ptr %26, i32 32
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %28 = and i32 %27, 12583104
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #4
  %f_height.i = getelementptr inbounds %struct.flite_frame, ptr %f, i32 0, i32 1
  %30 = ptrtoint ptr %f_height.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %f_height.i, align 2
  %conv.i = zext i16 %31 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %32 = ptrtoint ptr %f to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %f, align 4
  %conv2.i = zext i16 %33 to i32
  %or.i20 = or i32 %29, %conv2.i
  %or3.i = or i32 %or.i20, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  tail call void @arm_heavy_mb() #4
  %34 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #4
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 8
  %add.ptr5.i = getelementptr i8, ptr %36, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %34) #4, !srcloc !59
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 8
  %add.ptr9.i = getelementptr i8, ptr %38, i32 36
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  %40 = and i32 %39, 12583104
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #4
  %rect.i = getelementptr inbounds %struct.flite_frame, ptr %f, i32 0, i32 2
  %top.i = getelementptr inbounds %struct.flite_frame, ptr %f, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %top.i, align 4
  %shl14.i = shl i32 %43, 16
  %44 = ptrtoint ptr %rect.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rect.i, align 4
  %or16.i = or i32 %45, %41
  %or17.i = or i32 %or16.i, %shl14.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !89
  tail call void @arm_heavy_mb() #4
  %46 = tail call i32 @llvm.bswap.i32(i32 %or17.i) #4
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 8
  %add.ptr22.i = getelementptr i8, ptr %48, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %46) #4, !srcloc !59
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 8
  %add.ptr.i22 = getelementptr i8, ptr %50, i32 24
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !101
  %52 = and i32 %51, -4194305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !102
  tail call void @arm_heavy_mb() #4
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 8
  %add.ptr3.i = getelementptr i8, ptr %54, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %52) #4, !srcloc !59
  br label %cleanup

cleanup:                                          ; preds = %flite_hw_set_out_order.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flite_hw_dump_regs(ptr noundef %dev, ptr noundef %label) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 5, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name, ptr noundef %label) #7
  %regs = getelementptr inbounds %struct.fimc_lite, ptr %dev, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %arrayidx = getelementptr [14 x %struct.anon.101], ptr @__const.flite_hw_dump_regs.registers, i32 0, i32 %i.019
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !56
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !103
  %name12 = getelementptr [14 x %struct.anon.101], ptr @__const.flite_hw_dump_regs.registers, i32 0, i32 %i.019, i32 1
  %6 = ptrtoint ptr %name12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name12, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name, ptr noundef %7, i32 noundef %5) #7
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/exynos4-is/fimc-lite-reg.c", i32 139, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @flite_hw_set_source_format._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @flite_hw_set_source_format._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/exynos4-is/fimc-lite-reg.c", i32 322, i32 11}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/exynos4-is/fimc-lite-reg.c", i32 323, i32 11}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/exynos4-is/fimc-lite-reg.c", i32 324, i32 11}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/exynos4-is/fimc-lite-reg.c", i32 325, i32 11}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/exynos4-is/fimc-lite-reg.c", i32 326, i32 11}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/exynos4-is/fimc-lite-reg.c", i32 327, i32 11}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/exynos4-is/fimc-lite-reg.c", i32 328, i32 11}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/exynos4-is/fimc-lite-reg.c", i32 329, i32 11}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/exynos4-is/fimc-lite-reg.c", i32 330, i32 11}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/exynos4-is/fimc-lite-reg.c", i32 331, i32 11}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/exynos4-is/fimc-lite-reg.c", i32 332, i32 11}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/exynos4-is/fimc-lite-reg.c", i32 333, i32 11}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/exynos4-is/fimc-lite-reg.c", i32 334, i32 11}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/exynos4-is/fimc-lite-reg.c", i32 335, i32 11}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/exynos4-is/fimc-lite-reg.c", i32 339, i32 2}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @flite_hw_dump_regs._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @flite_hw_dump_regs._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/exynos4-is/fimc-lite-reg.c", i32 343, i32 3}
!41 = !{ptr @flite_hw_dump_regs._entry.19, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @flite_hw_dump_regs._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @src_pixfmt_map, !44, !"src_pixfmt_map", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/exynos4-is/fimc-lite-reg.c", i32 111, i32 18}
!45 = !{ptr @flite_hw_set_out_order.pixcode, !46, !"pixcode", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/exynos4-is/fimc-lite-reg.c", i32 231, i32 19}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 2983906}
!57 = !{i64 2156535575}
!58 = !{i64 2156535877}
!59 = !{i64 2983488}
!60 = !{i64 2156536928}
!61 = !{i64 2156537314}
!62 = !{i64 2156537975}
!63 = !{i64 2156538275}
!64 = !{i64 2156538936}
!65 = !{i64 2156539434}
!66 = !{i64 2156539734}
!67 = !{i64 2156540887}
!68 = !{i64 2156541116}
!69 = !{i64 2156541777}
!70 = !{i64 2156542079}
!71 = !{i64 2156542740}
!72 = !{i64 2156543042}
!73 = !{i64 2156543703}
!74 = !{i64 2156544089}
!75 = !{i64 2156547343}
!76 = !{i64 2156547574}
!77 = !{i64 2156548235}
!78 = !{i64 2156548489}
!79 = !{i64 2156549150}
!80 = !{i64 2156549478}
!81 = !{i64 2156549870}
!82 = !{i64 2156551574}
!83 = !{i64 2156552706}
!84 = !{i64 2156550531}
!85 = !{i64 2156550913}
!86 = !{i64 2156555773}
!87 = !{i64 2156556017}
!88 = !{i64 2156556678}
!89 = !{i64 2156556922}
!90 = !{i64 2156557320}
!91 = !{i64 2156557786}
!92 = !{i64 2156558495}
!93 = !{i64 2156558794}
!94 = !{i64 2156559461}
!95 = !{i64 2156559760}
!96 = !{i64 2156560422}
!97 = !{i64 2156560724}
!98 = !{i64 2156561200}
!99 = !{i64 2156554478}
!100 = !{i64 2156555064}
!101 = !{i64 2156553367}
!102 = !{i64 2156553753}
!103 = !{i64 2156563909}
