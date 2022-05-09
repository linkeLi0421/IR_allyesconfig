; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/rockchip_vpu_hw.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/rockchip_vpu_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hantro_fmt = type { ptr, i32, i32, i32, i32, i32, %struct.v4l2_frmsize_stepwise, i8 }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.hantro_postproc_ops = type { ptr, ptr }
%struct.hantro_codec_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.hantro_irq = type { ptr, ptr }
%struct.hantro_variant = type { i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i8 }
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
%struct.clk_bulk_data = type { ptr, ptr }

@rk3066_vpu_dec_fmts = internal constant { [4 x %struct.hantro_fmt], [48 x i8] } { [4 x %struct.hantro_fmt] [%struct.hantro_fmt { ptr null, i32 842094158, i32 -1, i32 0, i32 0, i32 0, %struct.v4l2_frmsize_stepwise zeroinitializer, i8 0 }, %struct.hantro_fmt { ptr null, i32 875967059, i32 1, i32 0, i32 2, i32 0, %struct.v4l2_frmsize_stepwise { i32 48, i32 1920, i32 16, i32 48, i32 1088, i32 16 }, i8 0 }, %struct.hantro_fmt { ptr null, i32 1395803981, i32 2, i32 0, i32 2, i32 0, %struct.v4l2_frmsize_stepwise { i32 48, i32 1920, i32 16, i32 48, i32 1088, i32 16 }, i8 0 }, %struct.hantro_fmt { ptr null, i32 1178095702, i32 3, i32 0, i32 2, i32 0, %struct.v4l2_frmsize_stepwise { i32 48, i32 1920, i32 16, i32 48, i32 1088, i32 16 }, i8 0 }], [48 x i8] zeroinitializer }, align 32
@rockchip_vpu1_postproc_fmts = internal constant { [1 x %struct.hantro_fmt], [44 x i8] } { [1 x %struct.hantro_fmt] [%struct.hantro_fmt { ptr null, i32 1448695129, i32 -1, i32 0, i32 0, i32 0, %struct.v4l2_frmsize_stepwise zeroinitializer, i8 1 }], [44 x i8] zeroinitializer }, align 32
@hantro_g1_postproc_ops = external dso_local constant %struct.hantro_postproc_ops, align 4
@rk3036_vpu_codec_ops = internal constant { [4 x %struct.hantro_codec_ops], [48 x i8] } { [4 x %struct.hantro_codec_ops] [%struct.hantro_codec_ops zeroinitializer, %struct.hantro_codec_ops { ptr @hantro_h264_dec_init, ptr @hantro_h264_dec_exit, ptr @hantro_g1_h264_dec_run, ptr null, ptr @hantro_g1_reset }, %struct.hantro_codec_ops { ptr @hantro_mpeg2_dec_init, ptr @hantro_mpeg2_dec_exit, ptr @hantro_g1_mpeg2_dec_run, ptr null, ptr @hantro_g1_reset }, %struct.hantro_codec_ops { ptr @hantro_vp8_dec_init, ptr @hantro_vp8_dec_exit, ptr @hantro_g1_vp8_dec_run, ptr null, ptr @hantro_g1_reset }], [48 x i8] zeroinitializer }, align 32
@rockchip_vdpu1_irqs = internal constant { [1 x %struct.hantro_irq], [24 x i8] } { [1 x %struct.hantro_irq] [%struct.hantro_irq { ptr @.str, ptr @hantro_g1_irq }], [24 x i8] zeroinitializer }, align 32
@rockchip_vpu_clk_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.2], [24 x i8] zeroinitializer }, align 32
@rk3036_vpu_variant = dso_local constant { %struct.hantro_variant, [48 x i8] } { %struct.hantro_variant { i32 0, i32 1024, ptr null, i32 0, ptr @rk3066_vpu_dec_fmts, i32 4, ptr @rockchip_vpu1_postproc_fmts, i32 1, ptr @hantro_g1_postproc_ops, i32 458752, ptr @rk3036_vpu_codec_ops, ptr @rk3036_vpu_hw_init, ptr null, ptr @rockchip_vdpu1_irqs, i32 1, ptr @rockchip_vpu_clk_names, i32 2, ptr null, i32 0, i8 0 }, [48 x i8] zeroinitializer }, align 32
@rockchip_vpu_enc_fmts = internal constant { [5 x %struct.hantro_fmt], [92 x i8] } { [5 x %struct.hantro_fmt] [%struct.hantro_fmt { ptr null, i32 842091865, i32 -1, i32 0, i32 0, i32 0, %struct.v4l2_frmsize_stepwise zeroinitializer, i8 0 }, %struct.hantro_fmt { ptr null, i32 842091854, i32 -1, i32 0, i32 0, i32 1, %struct.v4l2_frmsize_stepwise zeroinitializer, i8 0 }, %struct.hantro_fmt { ptr null, i32 1448695129, i32 -1, i32 0, i32 0, i32 2, %struct.v4l2_frmsize_stepwise zeroinitializer, i8 0 }, %struct.hantro_fmt { ptr null, i32 1498831189, i32 -1, i32 0, i32 0, i32 3, %struct.v4l2_frmsize_stepwise zeroinitializer, i8 0 }, %struct.hantro_fmt { ptr null, i32 1195724874, i32 0, i32 601, i32 2, i32 0, %struct.v4l2_frmsize_stepwise { i32 96, i32 8192, i32 16, i32 32, i32 8192, i32 16 }, i8 0 }], [92 x i8] zeroinitializer }, align 32
@rk3066_vpu_codec_ops = internal constant { [4 x %struct.hantro_codec_ops], [48 x i8] } { [4 x %struct.hantro_codec_ops] [%struct.hantro_codec_ops { ptr @hantro_jpeg_enc_init, ptr @hantro_jpeg_enc_exit, ptr @hantro_h1_jpeg_enc_run, ptr @hantro_h1_jpeg_enc_done, ptr @rockchip_vpu1_enc_reset }, %struct.hantro_codec_ops { ptr @hantro_h264_dec_init, ptr @hantro_h264_dec_exit, ptr @hantro_g1_h264_dec_run, ptr null, ptr @rk3066_vpu_dec_reset }, %struct.hantro_codec_ops { ptr @hantro_mpeg2_dec_init, ptr @hantro_mpeg2_dec_exit, ptr @hantro_g1_mpeg2_dec_run, ptr null, ptr @rk3066_vpu_dec_reset }, %struct.hantro_codec_ops { ptr @hantro_vp8_dec_init, ptr @hantro_vp8_dec_exit, ptr @hantro_g1_vp8_dec_run, ptr null, ptr @rk3066_vpu_dec_reset }], [48 x i8] zeroinitializer }, align 32
@rockchip_vpu1_irqs = internal constant { [2 x %struct.hantro_irq], [16 x i8] } { [2 x %struct.hantro_irq] [%struct.hantro_irq { ptr @.str.7, ptr @rockchip_vpu1_vepu_irq }, %struct.hantro_irq { ptr @.str, ptr @hantro_g1_irq }], [16 x i8] zeroinitializer }, align 32
@rk3066_vpu_clk_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], [16 x i8] zeroinitializer }, align 32
@rk3066_vpu_variant = dso_local constant { %struct.hantro_variant, [48 x i8] } { %struct.hantro_variant { i32 0, i32 1024, ptr @rockchip_vpu_enc_fmts, i32 5, ptr @rk3066_vpu_dec_fmts, i32 4, ptr @rockchip_vpu1_postproc_fmts, i32 1, ptr @hantro_g1_postproc_ops, i32 458753, ptr @rk3066_vpu_codec_ops, ptr @rk3066_vpu_hw_init, ptr null, ptr @rockchip_vpu1_irqs, i32 2, ptr @rk3066_vpu_clk_names, i32 4, ptr null, i32 0, i8 0 }, [48 x i8] zeroinitializer }, align 32
@rk3288_vpu_dec_fmts = internal constant { [4 x %struct.hantro_fmt], [48 x i8] } { [4 x %struct.hantro_fmt] [%struct.hantro_fmt { ptr null, i32 842094158, i32 -1, i32 0, i32 0, i32 0, %struct.v4l2_frmsize_stepwise zeroinitializer, i8 0 }, %struct.hantro_fmt { ptr null, i32 875967059, i32 1, i32 0, i32 2, i32 0, %struct.v4l2_frmsize_stepwise { i32 48, i32 4096, i32 16, i32 48, i32 2304, i32 16 }, i8 0 }, %struct.hantro_fmt { ptr null, i32 1395803981, i32 2, i32 0, i32 2, i32 0, %struct.v4l2_frmsize_stepwise { i32 48, i32 1920, i32 16, i32 48, i32 1088, i32 16 }, i8 0 }, %struct.hantro_fmt { ptr null, i32 1178095702, i32 3, i32 0, i32 2, i32 0, %struct.v4l2_frmsize_stepwise { i32 48, i32 3840, i32 16, i32 48, i32 2160, i32 16 }, i8 0 }], [48 x i8] zeroinitializer }, align 32
@rk3288_vpu_codec_ops = internal constant { [4 x %struct.hantro_codec_ops], [48 x i8] } { [4 x %struct.hantro_codec_ops] [%struct.hantro_codec_ops { ptr @hantro_jpeg_enc_init, ptr @hantro_jpeg_enc_exit, ptr @hantro_h1_jpeg_enc_run, ptr @hantro_h1_jpeg_enc_done, ptr @rockchip_vpu1_enc_reset }, %struct.hantro_codec_ops { ptr @hantro_h264_dec_init, ptr @hantro_h264_dec_exit, ptr @hantro_g1_h264_dec_run, ptr null, ptr @hantro_g1_reset }, %struct.hantro_codec_ops { ptr @hantro_mpeg2_dec_init, ptr @hantro_mpeg2_dec_exit, ptr @hantro_g1_mpeg2_dec_run, ptr null, ptr @hantro_g1_reset }, %struct.hantro_codec_ops { ptr @hantro_vp8_dec_init, ptr @hantro_vp8_dec_exit, ptr @hantro_g1_vp8_dec_run, ptr null, ptr @hantro_g1_reset }], [48 x i8] zeroinitializer }, align 32
@rk3288_vpu_variant = dso_local constant { %struct.hantro_variant, [48 x i8] } { %struct.hantro_variant { i32 0, i32 1024, ptr @rockchip_vpu_enc_fmts, i32 5, ptr @rk3288_vpu_dec_fmts, i32 4, ptr @rockchip_vpu1_postproc_fmts, i32 1, ptr @hantro_g1_postproc_ops, i32 458753, ptr @rk3288_vpu_codec_ops, ptr @rockchip_vpu_hw_init, ptr null, ptr @rockchip_vpu1_irqs, i32 2, ptr @rockchip_vpu_clk_names, i32 2, ptr null, i32 0, i8 0 }, [48 x i8] zeroinitializer }, align 32
@rk3399_vpu_dec_fmts = internal constant { [4 x %struct.hantro_fmt], [48 x i8] } { [4 x %struct.hantro_fmt] [%struct.hantro_fmt { ptr null, i32 842094158, i32 -1, i32 0, i32 0, i32 0, %struct.v4l2_frmsize_stepwise zeroinitializer, i8 0 }, %struct.hantro_fmt { ptr null, i32 875967059, i32 1, i32 0, i32 2, i32 0, %struct.v4l2_frmsize_stepwise { i32 48, i32 1920, i32 16, i32 48, i32 1088, i32 16 }, i8 0 }, %struct.hantro_fmt { ptr null, i32 1395803981, i32 2, i32 0, i32 2, i32 0, %struct.v4l2_frmsize_stepwise { i32 48, i32 1920, i32 16, i32 48, i32 1088, i32 16 }, i8 0 }, %struct.hantro_fmt { ptr null, i32 1178095702, i32 3, i32 0, i32 2, i32 0, %struct.v4l2_frmsize_stepwise { i32 48, i32 3840, i32 16, i32 48, i32 2160, i32 16 }, i8 0 }], [48 x i8] zeroinitializer }, align 32
@rk3399_vpu_codec_ops = internal constant { [4 x %struct.hantro_codec_ops], [48 x i8] } { [4 x %struct.hantro_codec_ops] [%struct.hantro_codec_ops { ptr @hantro_jpeg_enc_init, ptr @hantro_jpeg_enc_exit, ptr @rockchip_vpu2_jpeg_enc_run, ptr @rockchip_vpu2_jpeg_enc_done, ptr @rockchip_vpu2_enc_reset }, %struct.hantro_codec_ops { ptr @hantro_h264_dec_init, ptr @hantro_h264_dec_exit, ptr @rockchip_vpu2_h264_dec_run, ptr null, ptr @rockchip_vpu2_dec_reset }, %struct.hantro_codec_ops { ptr @hantro_mpeg2_dec_init, ptr @hantro_mpeg2_dec_exit, ptr @rockchip_vpu2_mpeg2_dec_run, ptr null, ptr @rockchip_vpu2_dec_reset }, %struct.hantro_codec_ops { ptr @hantro_vp8_dec_init, ptr @hantro_vp8_dec_exit, ptr @rockchip_vpu2_vp8_dec_run, ptr null, ptr @rockchip_vpu2_dec_reset }], [48 x i8] zeroinitializer }, align 32
@rockchip_vdpu2_irqs = internal constant { [1 x %struct.hantro_irq], [24 x i8] } { [1 x %struct.hantro_irq] [%struct.hantro_irq { ptr @.str, ptr @rockchip_vpu2_vdpu_irq }], [24 x i8] zeroinitializer }, align 32
@rk3328_vpu_variant = dso_local constant { %struct.hantro_variant, [48 x i8] } { %struct.hantro_variant { i32 0, i32 1024, ptr null, i32 0, ptr @rk3399_vpu_dec_fmts, i32 4, ptr null, i32 0, ptr null, i32 458752, ptr @rk3399_vpu_codec_ops, ptr @rockchip_vpu_hw_init, ptr null, ptr @rockchip_vdpu2_irqs, i32 1, ptr @rockchip_vpu_clk_names, i32 2, ptr null, i32 0, i8 0 }, [48 x i8] zeroinitializer }, align 32
@rockchip_vpu2_irqs = internal constant { [2 x %struct.hantro_irq], [16 x i8] } { [2 x %struct.hantro_irq] [%struct.hantro_irq { ptr @.str.7, ptr @rockchip_vpu2_vepu_irq }, %struct.hantro_irq { ptr @.str, ptr @rockchip_vpu2_vdpu_irq }], [16 x i8] zeroinitializer }, align 32
@rk3399_vpu_variant = dso_local constant { %struct.hantro_variant, [48 x i8] } { %struct.hantro_variant { i32 0, i32 1024, ptr @rockchip_vpu_enc_fmts, i32 5, ptr @rk3399_vpu_dec_fmts, i32 4, ptr null, i32 0, ptr null, i32 196609, ptr @rk3399_vpu_codec_ops, ptr @rockchip_vpu_hw_init, ptr null, ptr @rockchip_vpu2_irqs, i32 2, ptr @rockchip_vpu_clk_names, i32 2, ptr null, i32 0, i8 0 }, [48 x i8] zeroinitializer }, align 32
@px30_vpu_variant = dso_local constant { %struct.hantro_variant, [48 x i8] } { %struct.hantro_variant { i32 0, i32 1024, ptr @rockchip_vpu_enc_fmts, i32 5, ptr @rk3399_vpu_dec_fmts, i32 4, ptr null, i32 0, ptr null, i32 458753, ptr @rk3399_vpu_codec_ops, ptr @rk3036_vpu_hw_init, ptr null, ptr @rockchip_vpu2_irqs, i32 2, ptr @rockchip_vpu_clk_names, i32 2, ptr null, i32 0, i8 0 }, [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdpu\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aclk\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@hantro_debug = external dso_local local_unnamed_addr global i32, align 4
@vepu_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s:%d: 0x%04x = 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vepu_write\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/media/hantro/hantro.h\00", [58 x i8] zeroinitializer }, align 32
@vepu_write._entry_ptr = internal global ptr @vepu_write._entry, section ".printk_index", align 4
@vdpu_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.6, ptr @.str.5, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdpu_write\00", [21 x i8] zeroinitializer }, align 32
@vdpu_write._entry_ptr = internal global ptr @vdpu_write._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vepu\00", [27 x i8] zeroinitializer }, align 32
@vepu_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.8, ptr @.str.5, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vepu_read\00", [22 x i8] zeroinitializer }, align 32
@vepu_read._entry_ptr = internal global ptr @vepu_read._entry, section ".printk_index", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_vdpu\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_vdpu\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aclk_vepu\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hclk_vepu\00", [22 x i8] zeroinitializer }, align 32
@vdpu_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.13, ptr @.str.5, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdpu_read\00", [22 x i8] zeroinitializer }, align 32
@vdpu_read._entry_ptr = internal global ptr @vdpu_read._entry, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"rk3066_vpu_dec_fmts\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 69, i32 32 }
@___asan_gen_.17 = private unnamed_addr constant [28 x i8] c"rockchip_vpu1_postproc_fmts\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 61, i32 32 }
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"rk3036_vpu_codec_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 321, i32 38 }
@___asan_gen_.23 = private unnamed_addr constant [20 x i8] c"rockchip_vdpu1_irqs\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 430, i32 32 }
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"rockchip_vpu_clk_names\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 453, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"rk3036_vpu_variant\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 459, i32 29 }
@___asan_gen_.32 = private unnamed_addr constant [22 x i8] c"rockchip_vpu_enc_fmts\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 24, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"rk3066_vpu_codec_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 342, i32 38 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"rockchip_vpu1_irqs\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 434, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"rk3066_vpu_clk_names\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 448, i32 27 }
@___asan_gen_.44 = private unnamed_addr constant [19 x i8] c"rk3066_vpu_variant\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 481, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant [20 x i8] c"rk3288_vpu_dec_fmts\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 115, i32 32 }
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"rk3288_vpu_codec_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 370, i32 38 }
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"rk3288_vpu_variant\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 501, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"rk3399_vpu_dec_fmts\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 161, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant [21 x i8] c"rk3399_vpu_codec_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 398, i32 38 }
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"rockchip_vdpu2_irqs\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 439, i32 32 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"rk3328_vpu_variant\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 523, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"rockchip_vpu2_irqs\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 443, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c"rk3399_vpu_variant\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 537, i32 29 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"px30_vpu_variant\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 554, i32 29 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 431, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 454, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 454, i32 10 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 377, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 398, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 435, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 385, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 449, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 449, i32 15 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 450, i32 2 }
@___asan_gen_.123 = private constant [50 x i8] c"../drivers/staging/media/hantro/rockchip_vpu_hw.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 450, i32 15 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [41 x i8] c"../drivers/staging/media/hantro/hantro.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 413, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @vdpu_read._entry, ptr @vdpu_read._entry_ptr, ptr @vdpu_write._entry, ptr @vdpu_write._entry_ptr, ptr @vepu_read._entry, ptr @vepu_read._entry_ptr, ptr @vepu_write._entry, ptr @vepu_write._entry_ptr, ptr @rk3066_vpu_dec_fmts, ptr @rockchip_vpu1_postproc_fmts, ptr @rk3036_vpu_codec_ops, ptr @rockchip_vdpu1_irqs, ptr @rockchip_vpu_clk_names, ptr @rk3036_vpu_variant, ptr @rockchip_vpu_enc_fmts, ptr @rk3066_vpu_codec_ops, ptr @rockchip_vpu1_irqs, ptr @rk3066_vpu_clk_names, ptr @rk3066_vpu_variant, ptr @rk3288_vpu_dec_fmts, ptr @rk3288_vpu_codec_ops, ptr @rk3288_vpu_variant, ptr @rk3399_vpu_dec_fmts, ptr @rk3399_vpu_codec_ops, ptr @rockchip_vdpu2_irqs, ptr @rk3328_vpu_variant, ptr @rockchip_vpu2_irqs, ptr @rk3399_vpu_variant, ptr @px30_vpu_variant, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066_vpu_dec_fmts to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_vpu1_postproc_fmts to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3036_vpu_codec_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_vdpu1_irqs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_vpu_clk_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3036_vpu_variant to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_vpu_enc_fmts to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066_vpu_codec_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_vpu1_irqs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066_vpu_clk_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066_vpu_variant to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_vpu_dec_fmts to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_vpu_codec_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_vpu_variant to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_vpu_dec_fmts to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_vpu_codec_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_vdpu2_irqs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3328_vpu_variant to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_vpu2_irqs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_vpu_variant to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_vpu_variant to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vepu_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vepu_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpu_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3036_vpu_hw_init(ptr nocapture noundef readonly %vpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 7
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks, align 8
  %clk = getelementptr inbounds %struct.clk_bulk_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %3, i32 noundef 300000000) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3066_vpu_hw_init(ptr nocapture noundef readonly %vpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 7
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks, align 8
  %clk = getelementptr inbounds %struct.clk_bulk_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %3, i32 noundef 300000000) #4
  %4 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clocks, align 8
  %clk3 = getelementptr %struct.clk_bulk_data, ptr %5, i32 2, i32 1
  %6 = ptrtoint ptr %clk3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk3, align 4
  %call4 = tail call i32 @clk_set_rate(ptr noundef %7, i32 noundef 300000000) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_vpu_hw_init(ptr nocapture noundef readonly %vpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 7
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks, align 8
  %clk = getelementptr inbounds %struct.clk_bulk_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %3, i32 noundef 400000000) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_h264_dec_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_h264_dec_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_g1_h264_dec_run(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_g1_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_mpeg2_dec_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_mpeg2_dec_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_g1_mpeg2_dec_run(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_vp8_dec_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_vp8_dec_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_g1_vp8_dec_run(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_g1_irq(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_jpeg_enc_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_jpeg_enc_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_h1_jpeg_enc_run(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_h1_jpeg_enc_done(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_vpu1_enc_reset(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2 = load i32, ptr @hantro_debug, align 4
  %and.i = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.vepu_write.exit_crit_edge, label %do.end.i

entry.vepu_write.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %vepu_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 377, i32 noundef 1, i32 noundef 2) #7
  br label %vepu_write.exit

vepu_write.exit:                                  ; preds = %do.end.i, %entry.vepu_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %enc_base.i = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #4, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %5 = load i32, ptr @hantro_debug, align 4
  %and.i3 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3)
  %tobool.not.i4 = icmp eq i32 %and.i3, 0
  br i1 %tobool.not.i4, label %vepu_write.exit.vepu_write.exit9_crit_edge, label %do.end.i6

vepu_write.exit.vepu_write.exit9_crit_edge:       ; preds = %vepu_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vepu_write.exit9

do.end.i6:                                        ; preds = %vepu_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 377, i32 noundef 14, i32 noundef 0) #7
  br label %vepu_write.exit9

vepu_write.exit9:                                 ; preds = %do.end.i6, %vepu_write.exit.vepu_write.exit9_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 0) #4, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %8 = load i32, ptr @hantro_debug, align 4
  %and.i10 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i11 = icmp eq i32 %and.i10, 0
  br i1 %tobool.not.i11, label %vepu_write.exit9.vepu_write.exit16_crit_edge, label %do.end.i13

vepu_write.exit9.vepu_write.exit16_crit_edge:     ; preds = %vepu_write.exit9
  call void @__sanitizer_cov_trace_pc() #6
  br label %vepu_write.exit16

do.end.i13:                                       ; preds = %vepu_write.exit9
  call void @__sanitizer_cov_trace_pc() #6
  %call.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 377, i32 noundef 2, i32 noundef 0) #7
  br label %vepu_write.exit16

vepu_write.exit16:                                ; preds = %do.end.i13, %vepu_write.exit9.vepu_write.exit16_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 0) #4, !srcloc !86
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rk3066_vpu_dec_reset(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2 = load i32, ptr @hantro_debug, align 4
  %and.i = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.vdpu_write.exit_crit_edge, label %do.end.i

entry.vdpu_write.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, i32 noundef 398, i32 noundef 1, i32 noundef 16) #7
  br label %vdpu_write.exit

vdpu_write.exit:                                  ; preds = %do.end.i, %entry.vdpu_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  tail call void @arm_heavy_mb() #4
  %dec_base.i = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 268435456) #4, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %5 = load i32, ptr @hantro_debug, align 4
  %and.i2 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2)
  %tobool.not.i3 = icmp eq i32 %and.i2, 0
  br i1 %tobool.not.i3, label %vdpu_write.exit.vdpu_write.exit8_crit_edge, label %do.end.i5

vdpu_write.exit.vdpu_write.exit8_crit_edge:       ; preds = %vdpu_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write.exit8

do.end.i5:                                        ; preds = %vdpu_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, i32 noundef 398, i32 noundef 2, i32 noundef 1024) #7
  br label %vdpu_write.exit8

vdpu_write.exit8:                                 ; preds = %do.end.i5, %vdpu_write.exit.vdpu_write.exit8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i7 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 262144) #4, !srcloc !86
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_vpu1_vepu_irq(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enc_base.i = getelementptr inbounds %struct.hantro_dev, ptr %dev_id, i32 0, i32 10
  %0 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !88
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %4 = load i32, ptr @hantro_debug, align 4
  %and.i = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.vepu_read.exit_crit_edge, label %do.end.i

entry.vepu_read.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %vepu_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8, i32 noundef 385, i32 noundef 1, i32 noundef %3) #7
  br label %vepu_read.exit

vepu_read.exit:                                   ; preds = %do.end.i, %entry.vepu_read.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %5 = load i32, ptr @hantro_debug, align 4
  %and.i4 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.not.i5 = icmp eq i32 %and.i4, 0
  br i1 %tobool.not.i5, label %vepu_read.exit.vepu_write.exit_crit_edge, label %do.end.i6

vepu_read.exit.vepu_write.exit_crit_edge:         ; preds = %vepu_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vepu_write.exit

do.end.i6:                                        ; preds = %vepu_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 377, i32 noundef 1, i32 noundef 0) #7
  br label %vepu_write.exit

vepu_write.exit:                                  ; preds = %do.end.i6, %vepu_read.exit.vepu_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 0) #4, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %8 = load i32, ptr @hantro_debug, align 4
  %and.i9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i10, label %vepu_write.exit.vepu_write.exit15_crit_edge, label %do.end.i12

vepu_write.exit.vepu_write.exit15_crit_edge:      ; preds = %vepu_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vepu_write.exit15

do.end.i12:                                       ; preds = %vepu_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 377, i32 noundef 2, i32 noundef 0) #7
  br label %vepu_write.exit15

vepu_write.exit15:                                ; preds = %do.end.i12, %vepu_write.exit.vepu_write.exit15_crit_edge
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 6, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 0) #4, !srcloc !86
  tail call void @hantro_irq_done(ptr noundef %dev_id, i32 noundef %cond) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_irq_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rockchip_vpu2_jpeg_enc_run(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_vpu2_jpeg_enc_done(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_vpu2_enc_reset(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2 = load i32, ptr @hantro_debug, align 4
  %and.i = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.vepu_write.exit_crit_edge, label %do.end.i

entry.vepu_write.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %vepu_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 377, i32 noundef 109, i32 noundef 256) #7
  br label %vepu_write.exit

vepu_write.exit:                                  ; preds = %do.end.i, %entry.vepu_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %enc_base.i = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 65536) #4, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %5 = load i32, ptr @hantro_debug, align 4
  %and.i3 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3)
  %tobool.not.i4 = icmp eq i32 %and.i3, 0
  br i1 %tobool.not.i4, label %vepu_write.exit.vepu_write.exit9_crit_edge, label %do.end.i6

vepu_write.exit.vepu_write.exit9_crit_edge:       ; preds = %vepu_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vepu_write.exit9

do.end.i6:                                        ; preds = %vepu_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 377, i32 noundef 103, i32 noundef 0) #7
  br label %vepu_write.exit9

vepu_write.exit9:                                 ; preds = %do.end.i6, %vepu_write.exit.vepu_write.exit9_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 0) #4, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %8 = load i32, ptr @hantro_debug, align 4
  %and.i10 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i11 = icmp eq i32 %and.i10, 0
  br i1 %tobool.not.i11, label %vepu_write.exit9.vepu_write.exit16_crit_edge, label %do.end.i13

vepu_write.exit9.vepu_write.exit16_crit_edge:     ; preds = %vepu_write.exit9
  call void @__sanitizer_cov_trace_pc() #6
  br label %vepu_write.exit16

do.end.i13:                                       ; preds = %vepu_write.exit9
  call void @__sanitizer_cov_trace_pc() #6
  %call.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 377, i32 noundef 54, i32 noundef 0) #7
  br label %vepu_write.exit16

vepu_write.exit16:                                ; preds = %do.end.i13, %vepu_write.exit9.vepu_write.exit16_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %10, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 0) #4, !srcloc !86
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rockchip_vpu2_h264_dec_run(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_vpu2_dec_reset(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %2 = load i32, ptr @hantro_debug, align 4
  %and.i = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.vdpu_write.exit_crit_edge, label %do.end.i

entry.vdpu_write.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, i32 noundef 398, i32 noundef 55, i32 noundef 2) #7
  br label %vdpu_write.exit

vdpu_write.exit:                                  ; preds = %do.end.i, %entry.vdpu_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  tail call void @arm_heavy_mb() #4
  %dec_base.i = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #4, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %5 = load i32, ptr @hantro_debug, align 4
  %and.i3 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3)
  %tobool.not.i4 = icmp eq i32 %and.i3, 0
  br i1 %tobool.not.i4, label %vdpu_write.exit.vdpu_write.exit9_crit_edge, label %do.end.i6

vdpu_write.exit.vdpu_write.exit9_crit_edge:       ; preds = %vdpu_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write.exit9

do.end.i6:                                        ; preds = %vdpu_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, i32 noundef 398, i32 noundef 57, i32 noundef 0) #7
  br label %vdpu_write.exit9

vdpu_write.exit9:                                 ; preds = %do.end.i6, %vdpu_write.exit.vdpu_write.exit9_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 0) #4, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %8 = load i32, ptr @hantro_debug, align 4
  %and.i10 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i11 = icmp eq i32 %and.i10, 0
  br i1 %tobool.not.i11, label %vdpu_write.exit9.vdpu_write.exit16_crit_edge, label %do.end.i13

vdpu_write.exit9.vdpu_write.exit16_crit_edge:     ; preds = %vdpu_write.exit9
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write.exit16

do.end.i13:                                       ; preds = %vdpu_write.exit9
  call void @__sanitizer_cov_trace_pc() #6
  %call.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, i32 noundef 398, i32 noundef 58, i32 noundef 1) #7
  br label %vdpu_write.exit16

vdpu_write.exit16:                                ; preds = %do.end.i13, %vdpu_write.exit9.vdpu_write.exit16_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i15 = getelementptr i8, ptr %10, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 16777216) #4, !srcloc !86
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rockchip_vpu2_mpeg2_dec_run(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rockchip_vpu2_vp8_dec_run(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_vpu2_vdpu_irq(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dec_base.i = getelementptr inbounds %struct.hantro_dev, ptr %dev_id, i32 0, i32 11
  %0 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 220
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !88
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %4 = load i32, ptr @hantro_debug, align 4
  %and.i = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.vdpu_read.exit_crit_edge, label %do.end.i

entry.vdpu_read.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, i32 noundef 413, i32 noundef 55, i32 noundef %3) #7
  br label %vdpu_read.exit

vdpu_read.exit:                                   ; preds = %do.end.i, %entry.vdpu_read.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %5 = load i32, ptr @hantro_debug, align 4
  %and.i4 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.not.i5 = icmp eq i32 %and.i4, 0
  br i1 %tobool.not.i5, label %vdpu_read.exit.vdpu_write.exit_crit_edge, label %do.end.i6

vdpu_read.exit.vdpu_write.exit_crit_edge:         ; preds = %vdpu_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write.exit

do.end.i6:                                        ; preds = %vdpu_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, i32 noundef 398, i32 noundef 55, i32 noundef 0) #7
  br label %vdpu_write.exit

vdpu_write.exit:                                  ; preds = %do.end.i6, %vdpu_read.exit.vdpu_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 0) #4, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %8 = load i32, ptr @hantro_debug, align 4
  %and.i9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i10, label %vdpu_write.exit.vdpu_write.exit15_crit_edge, label %do.end.i12

vdpu_write.exit.vdpu_write.exit15_crit_edge:      ; preds = %vdpu_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vdpu_write.exit15

do.end.i12:                                       ; preds = %vdpu_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, i32 noundef 398, i32 noundef 56, i32 noundef 0) #7
  br label %vdpu_write.exit15

vdpu_write.exit15:                                ; preds = %do.end.i12, %vdpu_write.exit.vdpu_write.exit15_crit_edge
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 6, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %dec_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dec_base.i, align 8
  %add.ptr.i14 = getelementptr i8, ptr %10, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 0) #4, !srcloc !86
  tail call void @hantro_irq_done(ptr noundef %dev_id, i32 noundef %cond) #4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_vpu2_vepu_irq(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enc_base.i = getelementptr inbounds %struct.hantro_dev, ptr %dev_id, i32 0, i32 10
  %0 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 436
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !88
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %4 = load i32, ptr @hantro_debug, align 4
  %and.i = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.vepu_read.exit_crit_edge, label %do.end.i

entry.vepu_read.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %vepu_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8, i32 noundef 385, i32 noundef 109, i32 noundef %3) #7
  br label %vepu_read.exit

vepu_read.exit:                                   ; preds = %do.end.i, %entry.vepu_read.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %5 = load i32, ptr @hantro_debug, align 4
  %and.i4 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.not.i5 = icmp eq i32 %and.i4, 0
  br i1 %tobool.not.i5, label %vepu_read.exit.vepu_write.exit_crit_edge, label %do.end.i6

vepu_read.exit.vepu_write.exit_crit_edge:         ; preds = %vepu_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vepu_write.exit

do.end.i6:                                        ; preds = %vepu_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 377, i32 noundef 109, i32 noundef 0) #7
  br label %vepu_write.exit

vepu_write.exit:                                  ; preds = %do.end.i6, %vepu_read.exit.vepu_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 0) #4, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hantro_debug to i32))
  %8 = load i32, ptr @hantro_debug, align 4
  %and.i9 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i10, label %vepu_write.exit.vepu_write.exit15_crit_edge, label %do.end.i12

vepu_write.exit.vepu_write.exit15_crit_edge:      ; preds = %vepu_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %vepu_write.exit15

do.end.i12:                                       ; preds = %vepu_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 377, i32 noundef 54, i32 noundef 0) #7
  br label %vepu_write.exit15

vepu_write.exit15:                                ; preds = %do.end.i12, %vepu_write.exit.vepu_write.exit15_crit_edge
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 6, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %enc_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enc_base.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %10, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 0) #4, !srcloc !86
  tail call void @hantro_irq_done(ptr noundef %dev_id, i32 noundef %cond) #4
  ret i32 1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @rk3036_vpu_variant, !1, !"rk3036_vpu_variant", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 459, i32 29}
!2 = !{ptr @rk3066_vpu_variant, !3, !"rk3066_vpu_variant", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 481, i32 29}
!4 = !{ptr @rk3288_vpu_variant, !5, !"rk3288_vpu_variant", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 501, i32 29}
!6 = !{ptr @rk3328_vpu_variant, !7, !"rk3328_vpu_variant", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 523, i32 29}
!8 = !{ptr @rk3399_vpu_variant, !9, !"rk3399_vpu_variant", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 537, i32 29}
!10 = !{ptr @px30_vpu_variant, !11, !"px30_vpu_variant", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 554, i32 29}
!12 = !{ptr @rk3066_vpu_dec_fmts, !13, !"rk3066_vpu_dec_fmts", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 69, i32 32}
!14 = !{ptr @rockchip_vpu1_postproc_fmts, !15, !"rockchip_vpu1_postproc_fmts", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 61, i32 32}
!16 = !{ptr @rk3036_vpu_codec_ops, !17, !"rk3036_vpu_codec_ops", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 321, i32 38}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 431, i32 4}
!20 = !{ptr @rockchip_vdpu1_irqs, !21, !"rockchip_vdpu1_irqs", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 430, i32 32}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 454, i32 2}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 454, i32 10}
!26 = !{ptr @rockchip_vpu_clk_names, !27, !"rockchip_vpu_clk_names", i1 false, i1 false}
!27 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 453, i32 27}
!28 = !{ptr @rockchip_vpu_enc_fmts, !29, !"rockchip_vpu_enc_fmts", i1 false, i1 false}
!29 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 24, i32 32}
!30 = !{ptr @rk3066_vpu_codec_ops, !31, !"rk3066_vpu_codec_ops", i1 false, i1 false}
!31 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 342, i32 38}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/media/hantro/hantro.h", i32 377, i32 2}
!34 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @vepu_write._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @vepu_write._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/media/hantro/hantro.h", i32 398, i32 2}
!40 = !{ptr @vdpu_write._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @vdpu_write._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 435, i32 4}
!44 = !{ptr @rockchip_vpu1_irqs, !45, !"rockchip_vpu1_irqs", i1 false, i1 false}
!45 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 434, i32 32}
!46 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/media/hantro/hantro.h", i32 385, i32 2}
!48 = !{ptr @vepu_read._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @vepu_read._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 449, i32 2}
!52 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 449, i32 15}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 450, i32 2}
!56 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 450, i32 15}
!58 = !{ptr @rk3066_vpu_clk_names, !59, !"rk3066_vpu_clk_names", i1 false, i1 false}
!59 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 448, i32 27}
!60 = !{ptr @rk3288_vpu_dec_fmts, !61, !"rk3288_vpu_dec_fmts", i1 false, i1 false}
!61 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 115, i32 32}
!62 = !{ptr @rk3288_vpu_codec_ops, !63, !"rk3288_vpu_codec_ops", i1 false, i1 false}
!63 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 370, i32 38}
!64 = !{ptr @rk3399_vpu_dec_fmts, !65, !"rk3399_vpu_dec_fmts", i1 false, i1 false}
!65 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 161, i32 32}
!66 = !{ptr @rk3399_vpu_codec_ops, !67, !"rk3399_vpu_codec_ops", i1 false, i1 false}
!67 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 398, i32 38}
!68 = !{ptr @rockchip_vdpu2_irqs, !69, !"rockchip_vdpu2_irqs", i1 false, i1 false}
!69 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 439, i32 32}
!70 = !{ptr @.str.13, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/media/hantro/hantro.h", i32 413, i32 2}
!72 = !{ptr @vdpu_read._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @vdpu_read._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @rockchip_vpu2_irqs, !75, !"rockchip_vpu2_irqs", i1 false, i1 false}
!75 = !{!"../drivers/staging/media/hantro/rockchip_vpu_hw.c", i32 443, i32 32}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 2156552620}
!86 = !{i64 7452120}
!87 = !{i64 2156559903}
!88 = !{i64 7452538}
!89 = !{i64 2156553460}
!90 = !{i64 2156560912}
