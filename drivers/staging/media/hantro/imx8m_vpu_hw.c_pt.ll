; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/imx8m_vpu_hw.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/imx8m_vpu_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hantro_fmt = type { ptr, i32, i32, i32, i32, i32, %struct.v4l2_frmsize_stepwise, i8 }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.hantro_postproc_ops = type { ptr, ptr }
%struct.hantro_codec_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.hantro_irq = type { ptr, ptr }
%struct.hantro_variant = type { i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hantro_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.delayed_work }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }

@imx8m_vpu_dec_fmts = internal constant { [4 x %struct.hantro_fmt], [48 x i8] } { [4 x %struct.hantro_fmt] [%struct.hantro_fmt { ptr null, i32 842094158, i32 -1, i32 0, i32 0, i32 0, %struct.v4l2_frmsize_stepwise zeroinitializer, i8 0 }, %struct.hantro_fmt { ptr null, i32 1395803981, i32 2, i32 0, i32 2, i32 0, %struct.v4l2_frmsize_stepwise { i32 48, i32 1920, i32 16, i32 48, i32 1088, i32 16 }, i8 0 }, %struct.hantro_fmt { ptr null, i32 1178095702, i32 3, i32 0, i32 2, i32 0, %struct.v4l2_frmsize_stepwise { i32 48, i32 3840, i32 16, i32 48, i32 2160, i32 16 }, i8 0 }, %struct.hantro_fmt { ptr null, i32 875967059, i32 1, i32 0, i32 2, i32 0, %struct.v4l2_frmsize_stepwise { i32 48, i32 3840, i32 16, i32 48, i32 2160, i32 16 }, i8 0 }], [48 x i8] zeroinitializer }, align 32
@imx8m_vpu_postproc_fmts = internal constant { [1 x %struct.hantro_fmt], [44 x i8] } { [1 x %struct.hantro_fmt] [%struct.hantro_fmt { ptr null, i32 1448695129, i32 -1, i32 0, i32 0, i32 0, %struct.v4l2_frmsize_stepwise zeroinitializer, i8 1 }], [44 x i8] zeroinitializer }, align 32
@hantro_g1_postproc_ops = external dso_local constant %struct.hantro_postproc_ops, align 4
@imx8mq_vpu_codec_ops = internal constant { [4 x %struct.hantro_codec_ops], [48 x i8] } { [4 x %struct.hantro_codec_ops] [%struct.hantro_codec_ops zeroinitializer, %struct.hantro_codec_ops { ptr @hantro_h264_dec_init, ptr @hantro_h264_dec_exit, ptr @hantro_g1_h264_dec_run, ptr null, ptr @imx8m_vpu_g1_reset }, %struct.hantro_codec_ops { ptr @hantro_mpeg2_dec_init, ptr @hantro_mpeg2_dec_exit, ptr @hantro_g1_mpeg2_dec_run, ptr null, ptr @imx8m_vpu_g1_reset }, %struct.hantro_codec_ops { ptr @hantro_vp8_dec_init, ptr @hantro_vp8_dec_exit, ptr @hantro_g1_vp8_dec_run, ptr null, ptr @imx8m_vpu_g1_reset }], [48 x i8] zeroinitializer }, align 32
@imx8mq_irqs = internal constant { [1 x %struct.hantro_irq], [24 x i8] } { [1 x %struct.hantro_irq] [%struct.hantro_irq { ptr @.str.5, ptr @imx8m_vpu_g1_irq }], [24 x i8] zeroinitializer }, align 32
@imx8mq_clk_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.5, ptr @.str.10, ptr @.str.11], [20 x i8] zeroinitializer }, align 32
@imx8mq_reg_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.5, ptr @.str.10, ptr @.str.12], [20 x i8] zeroinitializer }, align 32
@imx8mq_vpu_variant = dso_local constant { %struct.hantro_variant, [48 x i8] } { %struct.hantro_variant { i32 0, i32 0, ptr null, i32 0, ptr @imx8m_vpu_dec_fmts, i32 4, ptr @imx8m_vpu_postproc_fmts, i32 1, ptr @hantro_g1_postproc_ops, i32 458752, ptr @imx8mq_vpu_codec_ops, ptr @imx8mq_vpu_hw_init, ptr @imx8mq_runtime_resume, ptr @imx8mq_irqs, i32 1, ptr @imx8mq_clk_names, i32 3, ptr @imx8mq_reg_names, i32 3, i8 0 }, [48 x i8] zeroinitializer }, align 32
@imx8m_vpu_g2_dec_fmts = internal constant { [3 x %struct.hantro_fmt], [36 x i8] } { [3 x %struct.hantro_fmt] [%struct.hantro_fmt { ptr null, i32 842093654, i32 -1, i32 0, i32 0, i32 0, %struct.v4l2_frmsize_stepwise zeroinitializer, i8 0 }, %struct.hantro_fmt { ptr null, i32 892744275, i32 4, i32 0, i32 2, i32 0, %struct.v4l2_frmsize_stepwise { i32 48, i32 3840, i32 16, i32 48, i32 2160, i32 16 }, i8 0 }, %struct.hantro_fmt { ptr null, i32 1178161238, i32 5, i32 0, i32 2, i32 0, %struct.v4l2_frmsize_stepwise { i32 48, i32 3840, i32 16, i32 48, i32 2160, i32 16 }, i8 0 }], [36 x i8] zeroinitializer }, align 32
@imx8m_vpu_g2_postproc_fmts = internal constant { [1 x %struct.hantro_fmt], [44 x i8] } { [1 x %struct.hantro_fmt] [%struct.hantro_fmt { ptr null, i32 842094158, i32 -1, i32 0, i32 0, i32 0, %struct.v4l2_frmsize_stepwise zeroinitializer, i8 1 }], [44 x i8] zeroinitializer }, align 32
@hantro_g2_postproc_ops = external dso_local constant %struct.hantro_postproc_ops, align 4
@imx8mq_vpu_g2_codec_ops = internal constant { [6 x %struct.hantro_codec_ops], [40 x i8] } { [6 x %struct.hantro_codec_ops] [%struct.hantro_codec_ops zeroinitializer, %struct.hantro_codec_ops zeroinitializer, %struct.hantro_codec_ops zeroinitializer, %struct.hantro_codec_ops zeroinitializer, %struct.hantro_codec_ops { ptr @hantro_hevc_dec_init, ptr @hantro_hevc_dec_exit, ptr @hantro_g2_hevc_dec_run, ptr null, ptr @imx8m_vpu_g2_reset }, %struct.hantro_codec_ops { ptr @hantro_vp9_dec_init, ptr @hantro_vp9_dec_exit, ptr @hantro_g2_vp9_dec_run, ptr @hantro_g2_vp9_dec_done, ptr @imx8m_vpu_g2_reset }], [40 x i8] zeroinitializer }, align 32
@imx8mq_g2_irqs = internal constant { [1 x %struct.hantro_irq], [24 x i8] } { [1 x %struct.hantro_irq] [%struct.hantro_irq { ptr @.str.10, ptr @hantro_g2_irq }], [24 x i8] zeroinitializer }, align 32
@imx8mq_vpu_g2_variant = dso_local constant { %struct.hantro_variant, [48 x i8] } { %struct.hantro_variant { i32 0, i32 0, ptr null, i32 0, ptr @imx8m_vpu_g2_dec_fmts, i32 3, ptr @imx8m_vpu_g2_postproc_fmts, i32 1, ptr @hantro_g2_postproc_ops, i32 1572864, ptr @imx8mq_vpu_g2_codec_ops, ptr @imx8mq_vpu_hw_init, ptr @imx8mq_runtime_resume, ptr @imx8mq_g2_irqs, i32 1, ptr @imx8mq_clk_names, i32 3, ptr null, i32 0, i8 0 }, [48 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@imx8mq_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 60, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to enable clocks\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx8mq_runtime_resume\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/staging/media/hantro/imx8m_vpu_hw.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx8mq_runtime_resume._entry_ptr = internal global ptr @imx8mq_runtime_resume._entry, section ".printk_index", align 4
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"g1\00", [29 x i8] zeroinitializer }, align 32
@hantro_debug = external dso_local local_unnamed_addr global i32, align 4
@vdpu_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s:%d: 0x%04x = 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdpu_read\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/media/hantro/hantro.h\00", [58 x i8] zeroinitializer }, align 32
@vdpu_read._entry_ptr = internal global ptr @vdpu_read._entry, section ".printk_index", align 4
@vdpu_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.9, ptr @.str.8, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdpu_write\00", [21 x i8] zeroinitializer }, align 32
@vdpu_write._entry_ptr = internal global ptr @vdpu_write._entry, section ".printk_index", align 4
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"g2\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"imx8m_vpu_dec_fmts\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 89, i32 32 }
@___asan_gen_.16 = private unnamed_addr constant [24 x i8] c"imx8m_vpu_postproc_fmts\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 81, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant [21 x i8] c"imx8mq_vpu_codec_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 219, i32 38 }
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"imx8mq_irqs\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 260, i32 32 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"imx8mq_clk_names\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 268, i32 27 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"imx8mq_reg_names\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 269, i32 27 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"imx8mq_vpu_variant\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 271, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"imx8m_vpu_g2_dec_fmts\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 143, i32 32 }
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"imx8m_vpu_g2_postproc_fmts\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 135, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant [24 x i8] c"imx8mq_vpu_g2_codec_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 240, i32 38 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"imx8mq_g2_irqs\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 264, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"imx8mq_vpu_g2_variant\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 290, i32 29 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 60, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 261, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 413, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [41 x i8] c"../drivers/staging/media/hantro/hantro.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 398, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 268, i32 56 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 268, i32 62 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [47 x i8] c"../drivers/staging/media/hantro/imx8m_vpu_hw.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 269, i32 62 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @imx8mq_runtime_resume._entry, ptr @imx8mq_runtime_resume._entry_ptr, ptr @vdpu_read._entry, ptr @vdpu_read._entry_ptr, ptr @vdpu_write._entry, ptr @vdpu_write._entry_ptr, ptr @imx8m_vpu_dec_fmts, ptr @imx8m_vpu_postproc_fmts, ptr @imx8mq_vpu_codec_ops, ptr @imx8mq_irqs, ptr @imx8mq_clk_names, ptr @imx8mq_reg_names, ptr @imx8mq_vpu_variant, ptr @imx8m_vpu_g2_dec_fmts, ptr @imx8m_vpu_g2_postproc_fmts, ptr @imx8mq_vpu_g2_codec_ops, ptr @imx8mq_g2_irqs, ptr @imx8mq_vpu_g2_variant, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_vpu_dec_fmts to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_vpu_postproc_fmts to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_vpu_codec_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_irqs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_clk_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_reg_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_vpu_variant to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_vpu_g2_dec_fmts to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8m_vpu_g2_postproc_fmts to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_vpu_g2_codec_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_g2_irqs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_vpu_g2_variant to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx8mq_vpu_hw_init(ptr nocapture noundef %vpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_bases = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 9
  %0 = ptrtoint ptr %reg_bases to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_bases, align 8
  %variant = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 15
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 8
  %num_regs = getelementptr inbounds %struct.hantro_variant, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %num_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_regs, align 4
  %sub = add i32 %5, -1
  %arrayidx = getelementptr ptr, ptr %1, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %ctrl_base = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 12
  %8 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %ctrl_base, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mq_runtime_resume(ptr nocapture noundef readonly %vpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 15
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 8
  %num_clocks = getelementptr inbounds %struct.hantro_variant, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clocks, align 4
  %clocks = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 7
  %4 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clocks, align 8
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %3, ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %3, ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %5) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %ctrl_base.i = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 12
  %8 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_base.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %11 = and i32 %10, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #5, !srcloc !62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 429496) #5
  %15 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl_base.i, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %18 = or i32 %17, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #5, !srcloc !62
  %21 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  %24 = or i32 %23, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %24) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr8 = getelementptr i8, ptr %30, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -1) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctrl_base.i, align 4
  %add.ptr13 = getelementptr i8, ptr %32, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 -1) #5, !srcloc !62
  %33 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %variant, align 8
  %num_clocks15 = getelementptr inbounds %struct.hantro_variant, ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %num_clocks15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_clocks15, align 4
  %37 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clocks, align 8
  tail call void @clk_bulk_disable(i32 noundef %36, ptr noundef %38) #5
  tail call void @clk_bulk_unprepare(i32 noundef %36, ptr noundef %38) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_h264_dec_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_h264_dec_exit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_g1_h264_dec_run(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx8m_vpu_g1_reset(ptr nocapture noundef readonly %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %ctrl_base.i = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_base.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %5 = and i32 %4, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #5, !srcloc !62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 429496) #5
  %9 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_base.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %12 = or i32 %11, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #5, !srcloc !62
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_mpeg2_dec_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_mpeg2_dec_exit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_g1_mpeg2_dec_run(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_vp8_dec_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_vp8_dec_exit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_g1_vp8_dec_run(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8m_vpu_g1_irq(i32 noundef %irq, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dec_base.i = getelementptr inbounds %struct.hantro_dev, ptr %dev_id, i32 0, i32 11
  %0 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !59
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %4 = load i32, ptr @hantro_debug, align 4
  %and.i = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.vdpu_read.exit_crit_edge, label %do.end.i

entry.vdpu_read.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 413, i32 noundef 1, i32 noundef %3) #8
  br label %vdpu_read.exit

vdpu_read.exit:                                   ; preds = %do.end.i, %entry.vdpu_read.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %5 = load i32, ptr @hantro_debug, align 4
  %and.i4 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.not.i5 = icmp eq i32 %and.i4, 0
  br i1 %tobool.not.i5, label %vdpu_read.exit.vdpu_write.exit_crit_edge, label %do.end.i6

vdpu_read.exit.vdpu_write.exit_crit_edge:         ; preds = %vdpu_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_write.exit

do.end.i6:                                        ; preds = %vdpu_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, i32 noundef 398, i32 noundef 1, i32 noundef 0) #8
  br label %vdpu_write.exit

vdpu_write.exit:                                  ; preds = %do.end.i6, %vdpu_read.exit.vdpu_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 0) #5, !srcloc !62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %8 = load i32, ptr @hantro_debug, align 4
  %and.i9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i10, label %vdpu_write.exit.vdpu_write.exit15_crit_edge, label %do.end.i12

vdpu_write.exit.vdpu_write.exit15_crit_edge:      ; preds = %vdpu_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vdpu_write.exit15

do.end.i12:                                       ; preds = %vdpu_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, i32 noundef 398, i32 noundef 2, i32 noundef 1024) #8
  br label %vdpu_write.exit15

vdpu_write.exit15:                                ; preds = %do.end.i12, %vdpu_write.exit.vdpu_write.exit15_crit_edge
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 6, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i14 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 262144) #5, !srcloc !62
  tail call void @hantro_irq_done(ptr noundef %dev_id, i32 noundef %cond) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_irq_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_hevc_dec_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_hevc_dec_exit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_g2_hevc_dec_run(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx8m_vpu_g2_reset(ptr nocapture noundef readonly %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %ctrl_base.i = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_base.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #5, !srcloc !62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 429496) #5
  %9 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_base.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %12 = or i32 %11, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #5, !srcloc !62
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_vp9_dec_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_vp9_dec_exit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_g2_vp9_dec_run(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_g2_vp9_dec_done(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_g2_irq(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @imx8mq_vpu_variant, !1, !"imx8mq_vpu_variant", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/imx8m_vpu_hw.c", i32 271, i32 29}
!2 = !{ptr @imx8mq_vpu_g2_variant, !3, !"imx8mq_vpu_g2_variant", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/hantro/imx8m_vpu_hw.c", i32 290, i32 29}
!4 = !{ptr @imx8m_vpu_dec_fmts, !5, !"imx8m_vpu_dec_fmts", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/hantro/imx8m_vpu_hw.c", i32 89, i32 32}
!6 = !{ptr @imx8m_vpu_postproc_fmts, !7, !"imx8m_vpu_postproc_fmts", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/hantro/imx8m_vpu_hw.c", i32 81, i32 32}
!8 = !{ptr @imx8mq_vpu_codec_ops, !9, !"imx8mq_vpu_codec_ops", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/hantro/imx8m_vpu_hw.c", i32 219, i32 38}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/hantro/imx8m_vpu_hw.c", i32 60, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @imx8mq_runtime_resume._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @imx8mq_runtime_resume._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/hantro/imx8m_vpu_hw.c", i32 261, i32 4}
!20 = !{ptr @imx8mq_irqs, !21, !"imx8mq_irqs", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/hantro/imx8m_vpu_hw.c", i32 260, i32 32}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/hantro/hantro.h", i32 413, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @vdpu_read._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @vdpu_read._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/media/hantro/hantro.h", i32 398, i32 2}
!30 = !{ptr @vdpu_write._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @vdpu_write._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/media/hantro/imx8m_vpu_hw.c", i32 268, i32 56}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/media/hantro/imx8m_vpu_hw.c", i32 268, i32 62}
!36 = !{ptr @imx8mq_clk_names, !37, !"imx8mq_clk_names", i1 false, i1 false}
!37 = !{!"../drivers/staging/media/hantro/imx8m_vpu_hw.c", i32 268, i32 27}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/media/hantro/imx8m_vpu_hw.c", i32 269, i32 62}
!40 = !{ptr @imx8mq_reg_names, !41, !"imx8mq_reg_names", i1 false, i1 false}
!41 = !{!"../drivers/staging/media/hantro/imx8m_vpu_hw.c", i32 269, i32 27}
!42 = !{ptr @imx8m_vpu_g2_dec_fmts, !43, !"imx8m_vpu_g2_dec_fmts", i1 false, i1 false}
!43 = !{!"../drivers/staging/media/hantro/imx8m_vpu_hw.c", i32 143, i32 32}
!44 = !{ptr @imx8m_vpu_g2_postproc_fmts, !45, !"imx8m_vpu_g2_postproc_fmts", i1 false, i1 false}
!45 = !{!"../drivers/staging/media/hantro/imx8m_vpu_hw.c", i32 135, i32 32}
!46 = !{ptr @imx8mq_vpu_g2_codec_ops, !47, !"imx8mq_vpu_g2_codec_ops", i1 false, i1 false}
!47 = !{!"../drivers/staging/media/hantro/imx8m_vpu_hw.c", i32 240, i32 38}
!48 = !{ptr @imx8mq_g2_irqs, !49, !"imx8mq_g2_irqs", i1 false, i1 false}
!49 = !{!"../drivers/staging/media/hantro/imx8m_vpu_hw.c", i32 264, i32 32}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 7452854}
!60 = !{i64 2156598584}
!61 = !{i64 2156598807}
!62 = !{i64 7452436}
!63 = !{i64 2156600029}
!64 = !{i64 2156600252}
!65 = !{i64 2156600938}
!66 = !{i64 2156601161}
!67 = !{i64 2156603513}
!68 = !{i64 2156603943}
!69 = !{i64 2156604373}
!70 = !{i64 2156561228}
!71 = !{i64 2156560219}
