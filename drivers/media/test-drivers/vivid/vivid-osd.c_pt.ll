; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vivid/vivid-osd.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-osd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.114, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.115, %struct.anon.116, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
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
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.114 = type { ptr, ptr }
%struct.anon.115 = type { ptr, ptr }
%struct.anon.116 = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.117, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.117 = type { ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.96 }
%struct.anon.96 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.109 }
%union.anon.109 = type { [32 x i32] }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.91, i32, i32 }
%union.anon.91 = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fb_vblank = type { i32, i32, i32, i32, [4 x i32] }

@rgb555 = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 32767, i16 32736, i16 1023, i16 992, i16 31775, i16 31744, i16 31, i16 0, i16 -1, i16 -32, i16 -31745, i16 -31776, i16 -993, i16 -1024, i16 -32737, i16 -32768], [32 x i8] zeroinitializer }, align 32
@rgb565 = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -32, i16 2047, i16 2016, i16 -2017, i16 -2048, i16 31, i16 0, i16 -1, i16 -32, i16 2047, i16 2016, i16 -2017, i16 -2048, i16 31, i16 0], [32 x i8] zeroinitializer }, align 32
@vivid_fb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016Framebuffer at 0x%lx, mapped to 0x%p, size %dk\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vivid_fb_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/test-drivers/vivid/vivid-osd.c\00", [51 x i8] zeroinitializer }, align 32
@vivid_fb_init._entry_ptr = internal global ptr @vivid_fb_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vivid_fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vivid_fb_check_var, ptr @vivid_fb_set_par, ptr @vivid_fb_setcolreg, ptr null, ptr @vivid_fb_blank, ptr @vivid_fb_pan_display, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr @vivid_fb_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vivid_fb_init_vidmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013abort, unable to alloc cmap\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vivid_fb_init_vidmode\00", [42 x i8] zeroinitializer }, align 32
@vivid_fb_init_vidmode._entry_ptr = internal global ptr @vivid_fb_init_vidmode._entry, section ".printk_index", align 4
@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@_vivid_fb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: vivid_fb_check_var\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_vivid_fb_check_var\00", [44 x i8] zeroinitializer }, align 32
@_vivid_fb_check_var._entry_ptr = internal global ptr @_vivid_fb_check_var._entry, section ".printk_index", align 4
@vivid_fb_get_fix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: vivid_fb_get_fix\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vivid_fb_get_fix\00", [47 x i8] zeroinitializer }, align 32
@vivid_fb_get_fix._entry_ptr = internal global ptr @vivid_fb_get_fix._entry, section ".printk_index", align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vioverlay fb\00", [19 x i8] zeroinitializer }, align 32
@vivid_fb_check_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.10, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vivid_fb_check_var\00", [45 x i8] zeroinitializer }, align 32
@vivid_fb_check_var._entry_ptr = internal global ptr @vivid_fb_check_var._entry, section ".printk_index", align 4
@vivid_fb_blank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Set blanking mode : %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vivid_fb_blank\00", [17 x i8] zeroinitializer }, align 32
@vivid_fb_blank._entry_ptr = internal global ptr @vivid_fb_blank._entry, section ".printk_index", align 4
@vivid_fb_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Unknown ioctl %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vivid_fb_ioctl\00", [17 x i8] zeroinitializer }, align 32
@vivid_fb_ioctl._entry_ptr = internal global ptr @vivid_fb_ioctl._entry, section ".printk_index", align 4
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@vivid_fb_set_par._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: vivid_fb_set_par\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vivid_fb_set_par\00", [47 x i8] zeroinitializer }, align 32
@vivid_fb_set_par._entry_ptr = internal global ptr @vivid_fb_set_par._entry, section ".printk_index", align 4
@vivid_fb_set_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: vivid_fb_set_var\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vivid_fb_set_var\00", [47 x i8] zeroinitializer }, align 32
@vivid_fb_set_var._entry_ptr = internal global ptr @vivid_fb_set_var._entry, section ".printk_index", align 4
@vivid_fb_set_var._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: vivid_fb_set_var - Invalid bpp\0A\00", [58 x i8] zeroinitializer }, align 32
@vivid_fb_set_var._entry_ptr.24 = internal global ptr @vivid_fb_set_var._entry.22, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"rgb555\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 38, i32 18 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"rgb565\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 43, i32 18 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 365, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"vivid_fb_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 247, i32 28 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 328, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 131, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 111, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 113, i32 19 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 173, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 234, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 88, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 174, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 187, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 98, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [48 x i8] c"../drivers/media/test-drivers/vivid/vivid-osd.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 101, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @_vivid_fb_check_var._entry, ptr @_vivid_fb_check_var._entry_ptr, ptr @vivid_fb_blank._entry, ptr @vivid_fb_blank._entry_ptr, ptr @vivid_fb_check_var._entry, ptr @vivid_fb_check_var._entry_ptr, ptr @vivid_fb_get_fix._entry, ptr @vivid_fb_get_fix._entry_ptr, ptr @vivid_fb_init._entry, ptr @vivid_fb_init._entry_ptr, ptr @vivid_fb_init_vidmode._entry, ptr @vivid_fb_init_vidmode._entry_ptr, ptr @vivid_fb_ioctl._entry, ptr @vivid_fb_ioctl._entry_ptr, ptr @vivid_fb_set_par._entry, ptr @vivid_fb_set_par._entry_ptr, ptr @vivid_fb_set_var._entry, ptr @vivid_fb_set_var._entry.22, ptr @vivid_fb_set_var._entry_ptr, ptr @vivid_fb_set_var._entry_ptr.24, ptr @rgb555, ptr @rgb565, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @vivid_fb_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgb555 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgb565 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_fb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_fb_init_vidmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_vivid_fb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_fb_get_fix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_fb_check_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_fb_blank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_fb_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_fb_set_par._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_fb_set_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vivid_fb_set_var._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_clear_fb(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 9, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp eq i32 %1, 6
  %spec.select = select i1 %cmp, ptr @rgb565, ptr @rgb555
  %display_height = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %display_height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %display_height, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp124.not = icmp eq i32 %3, 0
  br i1 %cmp124.not, label %entry.for.end9_crit_edge, label %for.cond2.preheader.lr.ph

entry.for.end9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end9

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %video_vbase = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 142
  %4 = ptrtoint ptr %video_vbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %video_vbase, align 4
  %display_width = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 144
  %display_byte_stride = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 146
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.end.for.cond2.preheader_crit_edge, %for.cond2.preheader.lr.ph
  %y.026 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc8, %for.end.for.cond2.preheader_crit_edge ]
  %p.025 = phi ptr [ %5, %for.cond2.preheader.lr.ph ], [ %add.ptr, %for.end.for.cond2.preheader_crit_edge ]
  %6 = ptrtoint ptr %display_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %display_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp322.not = icmp eq i32 %7, 0
  br i1 %cmp322.not, label %for.cond2.preheader.for.end_crit_edge, label %for.body4.lr.ph

for.cond2.preheader.for.end_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %div20 = lshr i32 %y.026, 4
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body4.lr.ph
  %x.023 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.body4.for.body4_crit_edge ]
  %div521 = lshr i32 %x.023, 4
  %add = add nuw nsw i32 %div521, %div20
  %rem = and i32 %add, 15
  %arrayidx = getelementptr i16, ptr %spec.select, i32 %rem
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %arrayidx6 = getelementptr i16, ptr %p.025, i32 %x.023
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %arrayidx6, align 2
  %inc = add nuw i32 %x.023, 1
  %11 = ptrtoint ptr %display_width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %display_width, align 4
  %cmp3 = icmp ult i32 %inc, %12
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.for.end_crit_edge

for.body4.for.end_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4

for.end:                                          ; preds = %for.body4.for.end_crit_edge, %for.cond2.preheader.for.end_crit_edge
  %13 = ptrtoint ptr %display_byte_stride to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %display_byte_stride, align 4
  %add.ptr = getelementptr i8, ptr %p.025, i32 %14
  %inc8 = add nuw i32 %y.026, 1
  %15 = ptrtoint ptr %display_height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %display_height, align 8
  %cmp1 = icmp ult i32 %inc8, %16
  br i1 %cmp1, label %for.end.for.cond2.preheader_crit_edge, label %for.end.for.end9_crit_edge

for.end.for.end9_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end9

for.end.for.cond2.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2.preheader

for.end9:                                         ; preds = %for.end.for.end9_crit_edge, %entry.for.end9_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vivid_fb_release_buffers(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %video_vbase = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 142
  %0 = ptrtoint ptr %video_vbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %video_vbase, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149, i32 12, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then1

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cmap = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  %pseudo_palette = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149, i32 27
  %4 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pseudo_palette, align 4
  tail call void @kfree(ptr noundef %5) #9
  %6 = ptrtoint ptr %video_vbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %video_vbase, align 4
  tail call void @kfree(ptr noundef %7) #9
  br label %return

return:                                           ; preds = %if.end4, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vivid_fb_init(ptr noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %video_buffer_size = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 143
  %0 = ptrtoint ptr %video_buffer_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 829440, ptr %video_buffer_size, align 8
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 829440, i32 noundef 3524, i32 noundef 8) #12
  %video_vbase = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 142
  %1 = ptrtoint ptr %video_vbase to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1.i.i.i, ptr %video_vbase, align 4
  %cmp = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call1.i.i.i to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %2) #9
  %video_pbase = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 141
  %3 = ptrtoint ptr %video_pbase to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.i, ptr %video_pbase, align 8
  %4 = ptrtoint ptr %video_vbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %video_vbase, align 4
  %6 = ptrtoint ptr %video_buffer_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %video_buffer_size, align 8
  %div33 = lshr i32 %7, 10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i, ptr noundef %5, i32 noundef %div33) #13
  %bits_per_pixel.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 147
  %8 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %bits_per_pixel.i, align 8
  %bytes_per_pixel.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 148
  %9 = ptrtoint ptr %bytes_per_pixel.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %bytes_per_pixel.i, align 4
  %display_byte_stride.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 146
  %10 = ptrtoint ptr %display_byte_stride.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1440, ptr %display_byte_stride.i, align 4
  %display_width.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 144
  %11 = ptrtoint ptr %display_width.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 720, ptr %display_width.i, align 4
  %display_height.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 145
  %12 = ptrtoint ptr %display_height.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 576, ptr %display_height.i, align 8
  %fb_defined.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150
  %13 = ptrtoint ptr %fb_defined.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 720, ptr %fb_defined.i, align 4
  %yres.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 1
  %14 = ptrtoint ptr %yres.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 576, ptr %yres.i, align 4
  %xres_virtual.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 2
  %15 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 720, ptr %xres_virtual.i, align 4
  %yres_virtual.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 3
  %16 = ptrtoint ptr %yres_virtual.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 576, ptr %yres_virtual.i, align 4
  %bits_per_pixel15.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 6
  %17 = ptrtoint ptr %bits_per_pixel15.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %bits_per_pixel15.i, align 4
  %vmode.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 25
  %18 = ptrtoint ptr %vmode.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %vmode.i, align 4
  %left_margin.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 18
  %19 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %left_margin.i, align 4
  %upper_margin.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 20
  %20 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %upper_margin.i, align 4
  %accel_flags.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 16
  %21 = ptrtoint ptr %accel_flags.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %accel_flags.i, align 4
  %nonstd.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 12
  %22 = ptrtoint ptr %nonstd.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %nonstd.i, align 4
  %length.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 9, i32 1
  %23 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %length.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %24 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i.i = icmp eq i32 %24, 0
  br i1 %cmp.not.i.i, label %if.end._vivid_fb_check_var.exit.i_crit_edge, label %do.end.i.i

if.end._vivid_fb_check_var.exit.i_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %_vivid_fb_check_var.exit.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %name.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i.i) #13
  br label %_vivid_fb_check_var.exit.i

_vivid_fb_check_var.exit.i:                       ; preds = %do.end.i.i, %if.end._vivid_fb_check_var.exit.i_crit_edge
  %25 = ptrtoint ptr %bits_per_pixel15.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16, ptr %bits_per_pixel15.i, align 4
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %27)
  %cmp3.i.i = icmp eq i32 %27, 5
  %red.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 8
  %..i.i = select i1 %cmp3.i.i, i32 10, i32 11
  %.3.i.i = select i1 %cmp3.i.i, i32 5, i32 6
  %.4.i.i = select i1 %cmp3.i.i, i32 15, i32 0
  %.5.i.i = zext i1 %cmp3.i.i to i32
  %28 = ptrtoint ptr %red.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %..i.i, ptr %red.i.i, align 4
  %length20.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 8, i32 1
  %29 = ptrtoint ptr %length20.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 5, ptr %length20.i.i, align 4
  %green.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 9
  %30 = ptrtoint ptr %green.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 5, ptr %green.i.i, align 4
  %31 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.3.i.i, ptr %length.i, align 4
  %32 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 10
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %32, align 4
  %34 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 10, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 5, ptr %34, align 4
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 11
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.4.i.i, ptr %36, align 4
  %38 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 11, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.5.i.i, ptr %38, align 4
  %yoffset.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 5
  %40 = ptrtoint ptr %yoffset.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %yoffset.i.i, align 4
  %xoffset.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 4
  %41 = ptrtoint ptr %xoffset.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %xoffset.i.i, align 4
  %42 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %upper_margin.i, align 4
  %43 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %left_margin.i, align 4
  %44 = ptrtoint ptr %nonstd.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %nonstd.i, align 4
  %45 = ptrtoint ptr %vmode.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vmode.i, align 4
  %and.i.i = and i32 %46, -256
  store i32 %and.i.i, ptr %vmode.i, align 4
  %hsync_len.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 22
  %47 = ptrtoint ptr %hsync_len.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 24, ptr %hsync_len.i.i, align 4
  %vsync_len.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 23
  %48 = ptrtoint ptr %vsync_len.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %vsync_len.i.i, align 4
  %pixclock.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 17
  %49 = ptrtoint ptr %pixclock.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 84316, ptr %pixclock.i.i, align 4
  %right_margin.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 19
  %50 = ptrtoint ptr %right_margin.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 776, ptr %right_margin.i.i, align 4
  %lower_margin.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 150, i32 21
  %51 = ptrtoint ptr %lower_margin.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 591, ptr %lower_margin.i.i, align 4
  %fb_fix.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 151
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %52 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.not.i95.i = icmp eq i32 %52, 0
  br i1 %cmp.not.i95.i, label %_vivid_fb_check_var.exit.i.vivid_fb_get_fix.exit.i_crit_edge, label %do.end.i98.i

_vivid_fb_check_var.exit.i.vivid_fb_get_fix.exit.i_crit_edge: ; preds = %_vivid_fb_check_var.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vivid_fb_get_fix.exit.i

do.end.i98.i:                                     ; preds = %_vivid_fb_check_var.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i96.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 1, i32 4
  %call.i97.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i96.i) #13
  br label %vivid_fb_get_fix.exit.i

vivid_fb_get_fix.exit.i:                          ; preds = %do.end.i98.i, %_vivid_fb_check_var.exit.i.vivid_fb_get_fix.exit.i_crit_edge
  %53 = call ptr @memset(ptr %fb_fix.i, i32 0, i32 68)
  %call4.i.i = tail call i32 @strscpy(ptr noundef %fb_fix.i, ptr noundef nonnull @.str.9, i32 noundef 16) #9
  %54 = ptrtoint ptr %video_pbase to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %video_pbase, align 8
  %smem_start.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 151, i32 1
  %56 = ptrtoint ptr %smem_start.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %smem_start.i.i, align 4
  %57 = ptrtoint ptr %video_buffer_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %video_buffer_size, align 8
  %smem_len.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 151, i32 2
  %59 = ptrtoint ptr %smem_len.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %smem_len.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 151, i32 3
  %60 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %type.i.i, align 4
  %visual.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 151, i32 5
  %61 = ptrtoint ptr %visual.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %visual.i.i, align 4
  %xpanstep.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 151, i32 6
  %62 = ptrtoint ptr %xpanstep.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %xpanstep.i.i, align 4
  %ypanstep.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 151, i32 7
  %63 = ptrtoint ptr %ypanstep.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 1, ptr %ypanstep.i.i, align 2
  %ywrapstep.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 151, i32 8
  %64 = ptrtoint ptr %ywrapstep.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %ywrapstep.i.i, align 4
  %65 = ptrtoint ptr %display_byte_stride.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %display_byte_stride.i, align 4
  %line_length.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 151, i32 9
  %67 = ptrtoint ptr %line_length.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %line_length.i.i, align 4
  %accel.i.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 151, i32 12
  %68 = ptrtoint ptr %accel.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %accel.i.i, align 4
  %node.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149, i32 1
  %69 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %node.i, align 4
  %flags.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149, i32 2
  %70 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %flags.i, align 8
  %par.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149, i32 30
  %71 = ptrtoint ptr %par.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %dev, ptr %par.i, align 8
  %var.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149, i32 6
  %72 = call ptr @memcpy(ptr %var.i, ptr %fb_defined.i, i32 160)
  %fix.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149, i32 7
  %73 = call ptr @memcpy(ptr %fix.i, ptr %fb_fix.i, i32 68)
  %74 = ptrtoint ptr %video_vbase to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %video_vbase, align 4
  %76 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149, i32 25
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %75, ptr %76, align 4
  %fbops.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149, i32 20
  %78 = ptrtoint ptr %fbops.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @vivid_fb_ops, ptr %fbops.i, align 8
  %hfmin.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149, i32 8, i32 11
  %79 = ptrtoint ptr %hfmin.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 8000, ptr %hfmin.i, align 4
  %hfmax.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149, i32 8, i32 12
  %80 = ptrtoint ptr %hfmax.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 70000, ptr %hfmax.i, align 4
  %vfmin.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149, i32 8, i32 18
  %81 = ptrtoint ptr %vfmin.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 10, ptr %vfmin.i, align 2
  %vfmax.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149, i32 8, i32 19
  %82 = ptrtoint ptr %vfmax.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 100, ptr %vfmax.i, align 4
  %cmap.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149, i32 12
  %call43.i = tail call i32 @fb_alloc_cmap(ptr noundef %cmap.i, i32 noundef 256, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %vivid_fb_get_fix.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %if.then10

if.end.i:                                         ; preds = %vivid_fb_get_fix.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %83 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 3264, i32 noundef 64) #14
  %pseudo_palette.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149, i32 27
  %84 = ptrtoint ptr %pseudo_palette.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call7.i.i.i, ptr %pseudo_palette.i, align 4
  %tobool49.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool49.not.i, label %if.end.i.if.then10_crit_edge, label %if.end11

if.end.i.if.then10_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %if.end.i.if.then10_crit_edge, %do.end.i
  %85 = ptrtoint ptr %video_vbase to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %video_vbase, align 4
  %cmp.i = icmp eq ptr %86, null
  br i1 %cmp.i, label %if.then10.cleanup_crit_edge, label %if.end.i36

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i36:                                       ; preds = %if.then10
  %len.i = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149, i32 12, i32 1
  %87 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i35 = icmp eq i32 %88, 0
  br i1 %tobool.not.i35, label %if.end.i36.if.end4.i_crit_edge, label %if.then1.i

if.end.i36.if.end4.i_crit_edge:                   ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then1.i:                                       ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fb_dealloc_cmap(ptr noundef %cmap.i) #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then1.i, %if.end.i36.if.end4.i_crit_edge
  %pseudo_palette.i38 = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149, i32 27
  %89 = ptrtoint ptr %pseudo_palette.i38 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pseudo_palette.i38, align 4
  tail call void @kfree(ptr noundef %90) #9
  %91 = ptrtoint ptr %video_vbase to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %video_vbase, align 4
  tail call void @kfree(ptr noundef %92) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end.i
  %93 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %94)
  %cmp.i40 = icmp eq i32 %94, 6
  %spec.select.i = select i1 %cmp.i40, ptr @rgb565, ptr @rgb555
  %95 = ptrtoint ptr %display_height.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %display_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp124.not.i = icmp eq i32 %96, 0
  br i1 %cmp124.not.i, label %if.end11.vivid_clear_fb.exit_crit_edge, label %for.cond2.preheader.lr.ph.i

if.end11.vivid_clear_fb.exit_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %vivid_clear_fb.exit

for.cond2.preheader.lr.ph.i:                      ; preds = %if.end11
  %97 = ptrtoint ptr %video_vbase to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %video_vbase, align 4
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.end.i.for.cond2.preheader.i_crit_edge, %for.cond2.preheader.lr.ph.i
  %y.026.i = phi i32 [ 0, %for.cond2.preheader.lr.ph.i ], [ %inc8.i, %for.end.i.for.cond2.preheader.i_crit_edge ]
  %p.025.i = phi ptr [ %98, %for.cond2.preheader.lr.ph.i ], [ %add.ptr.i, %for.end.i.for.cond2.preheader.i_crit_edge ]
  %99 = ptrtoint ptr %display_width.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %display_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp322.not.i = icmp eq i32 %100, 0
  br i1 %cmp322.not.i, label %for.cond2.preheader.i.for.end.i_crit_edge, label %for.body4.lr.ph.i

for.cond2.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body4.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %div20.i = lshr i32 %y.026.i, 4
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %x.023.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc.i, %for.body4.i.for.body4.i_crit_edge ]
  %div521.i = lshr i32 %x.023.i, 4
  %add.i = add nuw nsw i32 %div521.i, %div20.i
  %rem.i = and i32 %add.i, 15
  %arrayidx.i = getelementptr i16, ptr %spec.select.i, i32 %rem.i
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx.i, align 2
  %arrayidx6.i = getelementptr i16, ptr %p.025.i, i32 %x.023.i
  %103 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %arrayidx6.i, align 2
  %inc.i = add nuw i32 %x.023.i, 1
  %104 = ptrtoint ptr %display_width.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %display_width.i, align 4
  %cmp3.i = icmp ult i32 %inc.i, %105
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.for.end.i_crit_edge

for.body4.i.for.end.i_crit_edge:                  ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4.i

for.end.i:                                        ; preds = %for.body4.i.for.end.i_crit_edge, %for.cond2.preheader.i.for.end.i_crit_edge
  %106 = ptrtoint ptr %display_byte_stride.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %display_byte_stride.i, align 4
  %add.ptr.i = getelementptr i8, ptr %p.025.i, i32 %107
  %inc8.i = add nuw i32 %y.026.i, 1
  %108 = ptrtoint ptr %display_height.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %display_height.i, align 8
  %cmp1.i = icmp ult i32 %inc8.i, %109
  br i1 %cmp1.i, label %for.end.i.for.cond2.preheader.i_crit_edge, label %for.end.i.vivid_clear_fb.exit_crit_edge

for.end.i.vivid_clear_fb.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vivid_clear_fb.exit

for.end.i.for.cond2.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2.preheader.i

vivid_clear_fb.exit:                              ; preds = %for.end.i.vivid_clear_fb.exit_crit_edge, %if.end11.vivid_clear_fb.exit_crit_edge
  %fb_info = getelementptr inbounds %struct.vivid_dev, ptr %dev, i32 0, i32 149
  %call12 = tail call i32 @register_framebuffer(ptr noundef %fb_info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %vivid_clear_fb.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vivid_fb_release_buffers(ptr noundef %dev)
  br label %cleanup

if.end15:                                         ; preds = %vivid_clear_fb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 @vivid_fb_set_par(ptr noundef %fb_info)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then14, %if.end4.i, %if.then10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then14 ], [ 0, %if.end15 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.then10.cleanup_crit_edge ], [ -12, %if.end4.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_fb_set_par(ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %2 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end2.i_crit_edge, label %do.end3

entry.do.end2.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2.i

do.end3:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %.pr = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.not.i = icmp eq i32 %.pr, 0
  br i1 %cmp.not.i, label %do.end3.do.end2.i_crit_edge, label %do.end.i

do.end3.do.end2.i_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name) #13
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %do.end3.do.end2.i_crit_edge, %entry.do.end2.i_crit_edge
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %3 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bits_per_pixel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp3.not.i = icmp eq i32 %4, 16
  br i1 %cmp3.not.i, label %if.end17.i, label %do.body5.i

do.body5.i:                                       ; preds = %do.end2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %5 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6.not.i = icmp eq i32 %5, 0
  br i1 %cmp6.not.i, label %do.body5.i.vivid_fb_get_fix.exit_crit_edge, label %do.end9.i

do.body5.i.vivid_fb_get_fix.exit_crit_edge:       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vivid_fb_get_fix.exit

do.end9.i:                                        ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  %name12.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name12.i) #13
  br label %vivid_fb_set_var.exit

if.end17.i:                                       ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  %var18 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %6 = ptrtoint ptr %var18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %var18, align 4
  %bytes_per_pixel.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 148
  %8 = ptrtoint ptr %bytes_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytes_per_pixel.i, align 4
  %mul.i = mul i32 %9, %7
  %display_byte_stride.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 146
  %10 = ptrtoint ptr %display_byte_stride.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul.i, ptr %display_byte_stride.i, align 4
  br label %vivid_fb_set_var.exit

vivid_fb_set_var.exit:                            ; preds = %if.end17.i, %do.end9.i
  %retval.0.i.ph = phi i32 [ -22, %do.end9.i ], [ 0, %if.end17.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %.pr19 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr19)
  %cmp.not.i10 = icmp eq i32 %.pr19, 0
  br i1 %cmp.not.i10, label %vivid_fb_set_var.exit.vivid_fb_get_fix.exit_crit_edge, label %do.end.i13

vivid_fb_set_var.exit.vivid_fb_get_fix.exit_crit_edge: ; preds = %vivid_fb_set_var.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vivid_fb_get_fix.exit

do.end.i13:                                       ; preds = %vivid_fb_set_var.exit
  call void @__sanitizer_cov_trace_pc() #11
  %name.i11 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name.i11) #13
  br label %vivid_fb_get_fix.exit

vivid_fb_get_fix.exit:                            ; preds = %do.end.i13, %vivid_fb_set_var.exit.vivid_fb_get_fix.exit_crit_edge, %do.body5.i.vivid_fb_get_fix.exit_crit_edge
  %retval.0.i23 = phi i32 [ %retval.0.i.ph, %vivid_fb_set_var.exit.vivid_fb_get_fix.exit_crit_edge ], [ %retval.0.i.ph, %do.end.i13 ], [ -22, %do.body5.i.vivid_fb_get_fix.exit_crit_edge ]
  %fix24 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7
  %11 = call ptr @memset(ptr %fix24, i32 0, i32 68)
  %call4.i = tail call i32 @strscpy(ptr noundef %fix24, ptr noundef nonnull @.str.9, i32 noundef 16) #9
  %video_pbase.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 141
  %12 = ptrtoint ptr %video_pbase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %video_pbase.i, align 8
  %smem_start.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %smem_start.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %smem_start.i, align 4
  %video_buffer_size.i = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 143
  %15 = ptrtoint ptr %video_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %video_buffer_size.i, align 8
  %smem_len.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %smem_len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %smem_len.i, align 4
  %type.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 3
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %type.i, align 4
  %visual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %19 = ptrtoint ptr %visual.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %visual.i, align 4
  %xpanstep.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 6
  %20 = ptrtoint ptr %xpanstep.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %xpanstep.i, align 4
  %ypanstep.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 7
  %21 = ptrtoint ptr %ypanstep.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %ypanstep.i, align 2
  %ywrapstep.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 8
  %22 = ptrtoint ptr %ywrapstep.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %ywrapstep.i, align 4
  %display_byte_stride.i14 = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 146
  %23 = ptrtoint ptr %display_byte_stride.i14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %display_byte_stride.i14, align 4
  %line_length.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %25 = ptrtoint ptr %line_length.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %line_length.i, align 4
  %accel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 12
  %26 = ptrtoint ptr %accel.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %accel.i, align 4
  ret i32 %retval.0.i23
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_fb_check_var(ptr nocapture noundef %var, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %0 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry._vivid_fb_check_var.exit_crit_edge, label %do.end3

entry._vivid_fb_check_var.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %_vivid_fb_check_var.exit

do.end3:                                          ; preds = %entry
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %1 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %par, align 4
  %name = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 1, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %.pr = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.not.i = icmp eq i32 %.pr, 0
  br i1 %cmp.not.i, label %do.end3._vivid_fb_check_var.exit_crit_edge, label %do.end.i

do.end3._vivid_fb_check_var.exit_crit_edge:       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %_vivid_fb_check_var.exit

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name) #13
  br label %_vivid_fb_check_var.exit

_vivid_fb_check_var.exit:                         ; preds = %do.end.i, %do.end3._vivid_fb_check_var.exit_crit_edge, %entry._vivid_fb_check_var.exit_crit_edge
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %3 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16, ptr %bits_per_pixel.i, align 4
  %length.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp3.i = icmp eq i32 %5, 5
  %red.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %..i = select i1 %cmp3.i, i32 10, i32 11
  %.3.i = select i1 %cmp3.i, i32 5, i32 6
  %.4.i = select i1 %cmp3.i, i32 15, i32 0
  %.5.i = zext i1 %cmp3.i to i32
  %6 = ptrtoint ptr %red.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %..i, ptr %red.i, align 4
  %length20.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %length20.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5, ptr %length20.i, align 4
  %green.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %8 = ptrtoint ptr %green.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %green.i, align 4
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.3.i, ptr %length.i, align 4
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.4.i, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.5.i, ptr %16, align 4
  %yoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %18 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %yoffset.i, align 4
  %xoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %19 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %xoffset.i, align 4
  %upper_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %20 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %upper_margin.i, align 4
  %left_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %21 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %left_margin.i, align 4
  %nonstd.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 12
  %22 = ptrtoint ptr %nonstd.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %nonstd.i, align 4
  %vmode.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 25
  %23 = ptrtoint ptr %vmode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vmode.i, align 4
  %and.i = and i32 %24, -256
  store i32 %and.i, ptr %vmode.i, align 4
  %hsync_len.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %25 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 24, ptr %hsync_len.i, align 4
  %vsync_len.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %26 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %vsync_len.i, align 4
  %pixclock.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %27 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 84316, ptr %pixclock.i, align 4
  %right_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %28 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 776, ptr %right_margin.i, align 4
  %lower_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %29 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 591, ptr %lower_margin.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vivid_fb_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef readonly %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %regno)
  %cmp.not = icmp ugt i32 %1, %regno
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = shl i32 %transp, 16
  %shl = and i32 %and, -16777216
  %and1 = shl i32 %red, 8
  %shl2 = and i32 %and1, 16711680
  %and3 = and i32 %green, 65280
  %and5 = lshr i32 %blue, 8
  %shr = and i32 %and5, 255
  %or = or i32 %and3, %shl2
  %or4 = or i32 %or, %shr
  %or6 = or i32 %or4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp7 = icmp ugt i32 %regno, 15
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %pseudo_palette = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 27
  %2 = ptrtoint ptr %pseudo_palette to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pseudo_palette, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp10 = icmp eq i32 %5, 16
  br i1 %cmp10, label %if.then11, label %if.end9.if.end31_crit_edge

if.end9.if.end31_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then11:                                        ; preds = %if.end9
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.then11.if.end31_crit_edge [
    i32 6, label %sw.bb
    i32 5, label %sw.bb21
  ]

if.then11.if.end31_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

sw.bb:                                            ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %and14 = and i32 %red, 63488
  %and15 = lshr i32 %green, 5
  %shr16 = and i32 %and15, 2016
  %or17 = or i32 %shr16, %and14
  %and18 = lshr i32 %blue, 11
  %shr19 = and i32 %and18, 31
  %or20 = or i32 %or17, %shr19
  br label %if.end31

sw.bb21:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %and22 = lshr i32 %red, 1
  %shr23 = and i32 %and22, 31744
  %and24 = lshr i32 %green, 6
  %shr25 = and i32 %and24, 992
  %or26 = or i32 %shr25, %shr23
  %and27 = lshr i32 %blue, 11
  %shr28 = and i32 %and27, 31
  %or29 = or i32 %or26, %shr28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %transp)
  %tobool.not = icmp eq i32 %transp, 0
  %cond = select i1 %tobool.not, i32 0, i32 32768
  %or30 = or i32 %or29, %cond
  br label %if.end31

if.end31:                                         ; preds = %sw.bb21, %sw.bb, %if.then11.if.end31_crit_edge, %if.end9.if.end31_crit_edge
  %color.0 = phi i32 [ %or6, %if.then11.if.end31_crit_edge ], [ %or30, %sw.bb21 ], [ %or20, %sw.bb ], [ %or6, %if.end9.if.end31_crit_edge ]
  %arrayidx = getelementptr i32, ptr %3, i32 %regno
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %color.0, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_fb_blank(i32 noundef %blank_mode, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %0 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %1 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %par, align 4
  %name = getelementptr inbounds %struct.vivid_dev, ptr %2, i32 0, i32 1, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name, i32 noundef %blank_mode) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vivid_fb_pan_display(ptr nocapture noundef readnone %var, ptr nocapture noundef readnone %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vivid_fb_ioctl(ptr nocapture noundef readonly %info, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %vblank = alloca %struct.fb_vblank, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2145368558, i32 %cmd)
  %cond = icmp eq i32 %cmd, -2145368558
  br i1 %cond, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vblank) #9
  %2 = getelementptr inbounds %struct.fb_vblank, ptr %vblank, i32 0, i32 1
  %3 = getelementptr inbounds %struct.fb_vblank, ptr %vblank, i32 0, i32 2
  %4 = getelementptr inbounds %struct.fb_vblank, ptr %vblank, i32 0, i32 3
  %5 = getelementptr inbounds i8, ptr %vblank, i32 16
  %6 = call ptr @memset(ptr %5, i32 0, i32 16)
  %7 = ptrtoint ptr %vblank to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 304, ptr %vblank, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %4, align 4
  %11 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %sw.bb.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

sw.bb.copy_to_user.exit.thread_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %sw.bb
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 32, i32 -1226833920) #15, !srcloc !73
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %vblank, i32 noundef 32) #9
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %11, ptr noundef nonnull %vblank, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %sw.bb.copy_to_user.exit.thread_crit_edge
  %13 = phi i32 [ -14, %sw.bb.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vblank) #9
  br label %cleanup7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vivid_debug to i32))
  %14 = load i32, ptr @vivid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %do.body.cleanup7_crit_edge, label %do.end

do.body.cleanup7_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.vivid_dev, ptr %1, i32 0, i32 1, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name, i32 noundef %cmd) #13
  br label %cleanup7

cleanup7:                                         ; preds = %do.end, %do.body.cleanup7_crit_edge, %copy_to_user.exit.thread
  %retval.1 = phi i32 [ %13, %copy_to_user.exit.thread ], [ -22, %do.end ], [ -22, %do.body.cleanup7_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vivid/vivid-osd.c", i32 365, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @vivid_fb_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @vivid_fb_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @rgb555, !7, !"rgb555", i1 false, i1 false}
!7 = !{!"../drivers/media/test-drivers/vivid/vivid-osd.c", i32 38, i32 18}
!8 = !{ptr @rgb565, !9, !"rgb565", i1 false, i1 false}
!9 = !{!"../drivers/media/test-drivers/vivid/vivid-osd.c", i32 43, i32 18}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/test-drivers/vivid/vivid-osd.c", i32 328, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @vivid_fb_init_vidmode._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @vivid_fb_init_vidmode._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/test-drivers/vivid/vivid-osd.c", i32 131, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @_vivid_fb_check_var._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @_vivid_fb_check_var._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/test-drivers/vivid/vivid-osd.c", i32 111, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @vivid_fb_get_fix._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @vivid_fb_get_fix._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/test-drivers/vivid/vivid-osd.c", i32 113, i32 19}
!27 = !{ptr @vivid_fb_ops, !28, !"vivid_fb_ops", i1 false, i1 false}
!28 = !{!"../drivers/media/test-drivers/vivid/vivid-osd.c", i32 247, i32 28}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/test-drivers/vivid/vivid-osd.c", i32 173, i32 2}
!31 = !{ptr @vivid_fb_check_var._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @vivid_fb_check_var._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/test-drivers/vivid/vivid-osd.c", i32 234, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @vivid_fb_blank._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @vivid_fb_blank._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/test-drivers/vivid/vivid-osd.c", i32 88, i32 3}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @vivid_fb_ioctl._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @vivid_fb_ioctl._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!45 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/test-drivers/vivid/vivid-osd.c", i32 187, i32 2}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @vivid_fb_set_par._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @vivid_fb_set_par._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/test-drivers/vivid/vivid-osd.c", i32 98, i32 2}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @vivid_fb_set_var._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @vivid_fb_set_var._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/test-drivers/vivid/vivid-osd.c", i32 101, i32 3}
!62 = !{ptr @vivid_fb_set_var._entry.22, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @vivid_fb_set_var._entry_ptr.24, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2153671014, i64 2153671039}
