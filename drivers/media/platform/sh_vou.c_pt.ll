; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sh_vou.c_pt.bc'
source_filename = "../drivers/media/platform/sh_vou.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.90 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.87], %struct.media_entity_enum, i32 }
%struct.anon.87 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sh_vou_fmt = type { i32, i8, i8, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sh_vou_device = type { %struct.v4l2_device, %struct.video_device, ptr, %struct.spinlock, ptr, %struct.v4l2_pix_format, %struct.v4l2_rect, %struct.list_head, i64, i32, %struct.vb2_queue, ptr, i32, i32, %struct.mutex }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.86, i32, i32 }
%union.anon.86 = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.sh_vou_pdata = type { i32, i32, ptr, i32 }
%struct.sh_vou_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.100, i32 }
%union.anon.100 = type { i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.101 }
%union.anon.101 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.102, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.102 = type { i8 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_output = type { i32, [32 x i8], i32, i32, i32, i64, i32, [3 x i32] }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.sh_vou_geometry = type { %struct.v4l2_rect, i32, i32, i32, i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.94, i16, i16, i16, [10 x i16] }
%union.anon.94 = type { i16 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__initcall__kmod_sh_vou__316_1369_sh_vou_init6 = internal global ptr @sh_vou_init, section ".initcall6.init", align 4
@sh_vou = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @sh_vou_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.25, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sh_vou_exit = internal global ptr @sh_vou_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description317 = internal constant [37 x i8] c"sh_vou.description=SuperH VOU driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author318 = internal constant [60 x i8] c"sh_vou.author=Guennadi Liakhovetski <g.liakhovetski@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file319 = internal constant [42 x i8] c"sh_vou.file=drivers/media/platform/sh_vou\00", section ".modinfo", align 1
@__UNIQUE_ID_license320 = internal constant [22 x i8] c"sh_vou.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version321 = internal constant [21 x i8] c"sh_vou.version=0.1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sh_vou\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.1.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias322 = internal constant [29 x i8] c"sh_vou.alias=platform:sh-vou\00", section ".modinfo", align 1
@sh_vou_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1235, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Insufficient VOU platform information.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sh_vou_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/platform/sh_vou.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sh_vou_probe._entry_ptr = internal global ptr @sh_vou_probe._entry, section ".printk_index", align 4
@sh_vou_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&vou_dev->lock\00", [17 x i8] zeroinitializer }, align 32
@sh_vou_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&vou_dev->fop_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vou\00", [28 x i8] zeroinitializer }, align 32
@sh_vou_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 1277, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error registering v4l2 device\0A\00", [33 x i8] zeroinitializer }, align 32
@sh_vou_probe._entry_ptr.14 = internal global ptr @sh_vou_probe._entry.12, section ".printk_index", align 4
@sh_vou_video_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @sh_vou_fops, i32 83886082, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"sh_vou\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 63744, ptr null, ptr @sh_vou_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@sh_vou_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @sh_vou_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @sh_vou_buf_prepare, ptr null, ptr null, ptr @sh_vou_start_streaming, ptr @sh_vou_stop_streaming, ptr @sh_vou_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@sh_vou_isr.j = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sh_vou_isr.cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sh_vou_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 1026, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IRQ status 0x%x!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sh_vou_isr\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sh_vou_isr._entry_ptr = internal global ptr @sh_vou_isr._entry, section ".printk_index", align 4
@sh_vou_isr._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.5, i32 1034, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IRQ without active buffer: %x!\0A\00", [32 x i8] zeroinitializer }, align 32
@sh_vou_isr._entry_ptr.20 = internal global ptr @sh_vou_isr._entry.18, section ".printk_index", align 4
@sh_vou_isr.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.5, ptr @.str.21, i8 1, i8 5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"IRQ status 0x%x -> 0x%x, VOU status 0x%x, cnt %d\0A\00", [46 x i8] zeroinitializer }, align 32
@sh_vou_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr @vb2_fop_write, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @sh_vou_open, ptr @sh_vou_release }, [60 x i8] zeroinitializer }, align 32
@sh_vou_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @sh_vou_querycap, ptr null, ptr null, ptr @sh_vou_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_vou_g_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_vou_s_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_vou_try_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @sh_vou_g_std, ptr @sh_vou_s_std, ptr null, ptr null, ptr null, ptr null, ptr @sh_vou_enum_output, ptr @sh_vou_g_output, ptr @sh_vou_s_output, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_vou_g_selection, ptr @sh_vou_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_vou_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@sh_vou_querycap.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.5, ptr @.str.23, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sh_vou_querycap\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SuperH VOU\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sh-vou\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"platform:sh-vou\00", [16 x i8] zeroinitializer }, align 32
@sh_vou_enum_fmt_vid_out.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.5, ptr @.str.23, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sh_vou_enum_fmt_vid_out\00", [40 x i8] zeroinitializer }, align 32
@vou_fmt = internal constant { [5 x %struct.sh_vou_fmt], [36 x i8] } { [5 x %struct.sh_vou_fmt] [%struct.sh_vou_fmt { i32 842094158, i8 12, i8 1, i8 0, i8 0, i8 0 }, %struct.sh_vou_fmt { i32 909203022, i8 16, i8 1, i8 0, i8 1, i8 0 }, %struct.sh_vou_fmt { i32 859981650, i8 24, i8 3, i8 1, i8 0, i8 2 }, %struct.sh_vou_fmt { i32 1346520914, i8 16, i8 2, i8 1, i8 0, i8 3 }, %struct.sh_vou_fmt { i32 1380075346, i8 16, i8 2, i8 1, i8 0, i8 3 }], [36 x i8] zeroinitializer }, align 32
@sh_vou_g_fmt_vid_out.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.5, ptr @.str.23, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sh_vou_g_fmt_vid_out\00", [43 x i8] zeroinitializer }, align 32
@sh_vou_set_fmt_vid_out.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.5, ptr @.str.30, i8 0, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sh_vou_set_fmt_vid_out\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(): %ux%u -> %ux%u\0A\00", [42 x i8] zeroinitializer }, align 32
@sh_vou_set_fmt_vid_out.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.5, ptr @.str.31, i8 0, i8 -68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s(): %ux%u\0A\00", [19 x i8] zeroinitializer }, align 32
@vou_scale_h_num = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01\09\02\09\04", [27 x i8] zeroinitializer }, align 32
@vou_scale_h_den = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01\08\01\04\01", [27 x i8] zeroinitializer }, align 32
@vou_adjust_output.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.5, ptr @.str.33, i8 0, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vou_adjust_output\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): W %u * %u/%u = %u\0A\00", [39 x i8] zeroinitializer }, align 32
@vou_scale_v_num = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\01\02\04", [29 x i8] zeroinitializer }, align 32
@vou_scale_v_den = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\01\01\01", [29 x i8] zeroinitializer }, align 32
@vou_adjust_output.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.5, ptr @.str.34, i8 0, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): H %u * %u/%u = %u\0A\00", [39 x i8] zeroinitializer }, align 32
@sh_vou_configure_geometry.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.5, ptr @.str.36, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sh_vou_configure_geometry\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"image %ux%u, black %u:%u, offset %u:%u, display %ux%u\0A\00", [41 x i8] zeroinitializer }, align 32
@vou_scale_h_fld = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\02\01\03", [28 x i8] zeroinitializer }, align 32
@vou_scale_v_fld = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\01", [30 x i8] zeroinitializer }, align 32
@sh_vou_configure_geometry.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.5, ptr @.str.37, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0x%08x: scaling 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@sh_vou_try_fmt_vid_out.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str.5, ptr @.str.23, i8 0, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sh_vou_try_fmt_vid_out\00", [41 x i8] zeroinitializer }, align 32
@sh_vou_g_std.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.5, ptr @.str.23, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sh_vou_g_std\00", [19 x i8] zeroinitializer }, align 32
@sh_vou_s_std.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.5, ptr @.str.41, i8 0, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sh_vou_s_std\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(): 0x%llx\0A\00", [18 x i8] zeroinitializer }, align 32
@sh_vou_ntsc_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.5, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014%s(): Invalid bus-format code %d, using default 8-bit\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sh_vou_ntsc_mode\00", [47 x i8] zeroinitializer }, align 32
@sh_vou_ntsc_mode._entry_ptr = internal global ptr @sh_vou_ntsc_mode._entry, section ".printk_index", align 4
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Video Out\00", [22 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOUER:   0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sh_vou_log_status\00", [46 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr = internal global ptr @sh_vou_log_status._entry, section ".printk_index", align 4
@sh_vou_log_status._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.5, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOUCR:   0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr.49 = internal global ptr @sh_vou_log_status._entry.47, section ".printk_index", align 4
@sh_vou_log_status._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.5, i32 874, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOUSTR:  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr.52 = internal global ptr @sh_vou_log_status._entry.50, section ".printk_index", align 4
@sh_vou_log_status._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.5, i32 875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOUVCR:  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr.55 = internal global ptr @sh_vou_log_status._entry.53, section ".printk_index", align 4
@sh_vou_log_status._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.46, ptr @.str.5, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOUISR:  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr.58 = internal global ptr @sh_vou_log_status._entry.56, section ".printk_index", align 4
@sh_vou_log_status._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.46, ptr @.str.5, i32 877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOUBCR:  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr.61 = internal global ptr @sh_vou_log_status._entry.59, section ".printk_index", align 4
@sh_vou_log_status._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.46, ptr @.str.5, i32 878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOUDPR:  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr.64 = internal global ptr @sh_vou_log_status._entry.62, section ".printk_index", align 4
@sh_vou_log_status._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.46, ptr @.str.5, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOUDSR:  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr.67 = internal global ptr @sh_vou_log_status._entry.65, section ".printk_index", align 4
@sh_vou_log_status._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.46, ptr @.str.5, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOUVPR:  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr.70 = internal global ptr @sh_vou_log_status._entry.68, section ".printk_index", align 4
@sh_vou_log_status._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.46, ptr @.str.5, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOUIR:   0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr.73 = internal global ptr @sh_vou_log_status._entry.71, section ".printk_index", align 4
@sh_vou_log_status._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.46, ptr @.str.5, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOUSRR:  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr.76 = internal global ptr @sh_vou_log_status._entry.74, section ".printk_index", align 4
@sh_vou_log_status._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.46, ptr @.str.5, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOUMSR:  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr.79 = internal global ptr @sh_vou_log_status._entry.77, section ".printk_index", align 4
@sh_vou_log_status._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.46, ptr @.str.5, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOUHIR:  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr.82 = internal global ptr @sh_vou_log_status._entry.80, section ".printk_index", align 4
@sh_vou_log_status._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.46, ptr @.str.5, i32 885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOUDFR:  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr.85 = internal global ptr @sh_vou_log_status._entry.83, section ".printk_index", align 4
@sh_vou_log_status._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.46, ptr @.str.5, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOUAD1R: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr.88 = internal global ptr @sh_vou_log_status._entry.86, section ".printk_index", align 4
@sh_vou_log_status._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.46, ptr @.str.5, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOUAD2R: 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr.91 = internal global ptr @sh_vou_log_status._entry.89, section ".printk_index", align 4
@sh_vou_log_status._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.46, ptr @.str.5, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOUAIR:  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr.94 = internal global ptr @sh_vou_log_status._entry.92, section ".printk_index", align 4
@sh_vou_log_status._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.46, ptr @.str.5, i32 889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOUSWR:  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr.97 = internal global ptr @sh_vou_log_status._entry.95, section ".printk_index", align 4
@sh_vou_log_status._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.46, ptr @.str.5, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOURCR:  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr.100 = internal global ptr @sh_vou_log_status._entry.98, section ".printk_index", align 4
@sh_vou_log_status._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.46, ptr @.str.5, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016VOURPR:  0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_log_status._entry_ptr.103 = internal global ptr @sh_vou_log_status._entry.101, section ".printk_index", align 4
@sh_vou_queue_setup.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.104, ptr @.str.5, ptr @.str.23, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sh_vou_queue_setup\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_buf_prepare.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.105, ptr @.str.5, ptr @.str.23, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sh_vou_buf_prepare\00", [45 x i8] zeroinitializer }, align 32
@sh_vou_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.105, ptr @.str.5, i32 266, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"buffer too small (%lu < %u)\0A\00", [35 x i8] zeroinitializer }, align 32
@sh_vou_buf_prepare._entry_ptr = internal global ptr @sh_vou_buf_prepare._entry, section ".printk_index", align 4
@sh_vou_start_streaming.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.108, ptr @.str.5, ptr @.str.109, i8 0, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sh_vou_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: first buffer status 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sh_vou_hw_init.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.110, ptr @.str.5, ptr @.str.111, i8 1, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sh_vou_hw_init\00", [17 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Reset took %dus\0A\00", [47 x i8] zeroinitializer }, align 32
@switch.table.sh_vou_hw_init = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 536870912, i32 0, i32 1610612736], [20 x i8] zeroinitializer }, align 32
@switch.table.sh_vou_s_std = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 536870912, i32 0, i32 1610612736], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 842094158, i64 909203022]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 842094158, i64 909203022]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 842094158, i64 909203022]
@__sancov_gen_cov_switch_values.114 = internal global [7 x i64] [i64 5, i64 32, i64 842094158, i64 859981650, i64 909203022, i64 1346520914, i64 1380075346]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.119 = internal global [7 x i64] [i64 5, i64 32, i64 842094158, i64 859981650, i64 909203022, i64 1346520914, i64 1380075346]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 842094158, i64 909203022]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 842094158, i64 909203022]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 32, i64 859981650, i64 1346520914, i64 1380075346]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"sh_vou\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 1362, i32 31 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 1374, i32 1 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 1235, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 1244, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 1245, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 1271, i32 57 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 1277, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [22 x i8] c"sh_vou_video_template\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 1208, i32 34 }
@___asan_gen_.180 = private unnamed_addr constant [12 x i8] c"sh_vou_qops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 357, i32 29 }
@___asan_gen_.183 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 1017, i32 23 }
@___asan_gen_.186 = private unnamed_addr constant [4 x i8] c"cnt\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 1019, i32 13 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 1025, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 1033, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 1042, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [12 x i8] c"sh_vou_fops\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 1198, i32 42 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"sh_vou_ioctl_ops\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 1173, i32 36 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 373, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 375, i32 21 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 376, i32 23 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 377, i32 25 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 390, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [8 x i8] c"vou_fmt\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 149, i32 26 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 402, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 724, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 751, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [16 x i8] c"vou_scale_h_num\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 410, i32 28 }
@___asan_gen_.252 = private unnamed_addr constant [16 x i8] c"vou_scale_h_den\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 411, i32 28 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 617, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [16 x i8] c"vou_scale_v_num\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 413, i32 28 }
@___asan_gen_.264 = private unnamed_addr constant [16 x i8] c"vou_scale_v_den\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 414, i32 28 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 647, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 464, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [16 x i8] c"vou_scale_h_fld\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 412, i32 28 }
@___asan_gen_.279 = private unnamed_addr constant [16 x i8] c"vou_scale_v_fld\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 415, i32 28 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 485, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 659, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 861, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 820, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 803, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 782, i32 19 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 872, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 873, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 874, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 875, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 876, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 877, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 878, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 879, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 880, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 881, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 882, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 883, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 884, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 885, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 886, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 887, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 888, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 889, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 890, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 891, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 245, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 261, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 265, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 312, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.454 = private constant [35 x i8] c"../drivers/media/platform/sh_vou.c\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 1101, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant [28 x i8] c"switch.table.sh_vou_hw_init\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [26 x i8] c"switch.table.sh_vou_s_std\00", align 1
@llvm.compiler.used = appending global [148 x ptr] [ptr @__UNIQUE_ID_alias322, ptr @__UNIQUE_ID_author318, ptr @__UNIQUE_ID_description317, ptr @__UNIQUE_ID_file319, ptr @__UNIQUE_ID_license320, ptr @__UNIQUE_ID_version321, ptr @__exitcall_sh_vou_exit, ptr @__initcall__kmod_sh_vou__316_1369_sh_vou_init6, ptr @__modver_attr, ptr @sh_vou_buf_prepare._entry, ptr @sh_vou_buf_prepare._entry_ptr, ptr @sh_vou_exit, ptr @sh_vou_isr._entry, ptr @sh_vou_isr._entry.18, ptr @sh_vou_isr._entry_ptr, ptr @sh_vou_isr._entry_ptr.20, ptr @sh_vou_log_status._entry, ptr @sh_vou_log_status._entry.101, ptr @sh_vou_log_status._entry.47, ptr @sh_vou_log_status._entry.50, ptr @sh_vou_log_status._entry.53, ptr @sh_vou_log_status._entry.56, ptr @sh_vou_log_status._entry.59, ptr @sh_vou_log_status._entry.62, ptr @sh_vou_log_status._entry.65, ptr @sh_vou_log_status._entry.68, ptr @sh_vou_log_status._entry.71, ptr @sh_vou_log_status._entry.74, ptr @sh_vou_log_status._entry.77, ptr @sh_vou_log_status._entry.80, ptr @sh_vou_log_status._entry.83, ptr @sh_vou_log_status._entry.86, ptr @sh_vou_log_status._entry.89, ptr @sh_vou_log_status._entry.92, ptr @sh_vou_log_status._entry.95, ptr @sh_vou_log_status._entry.98, ptr @sh_vou_log_status._entry_ptr, ptr @sh_vou_log_status._entry_ptr.100, ptr @sh_vou_log_status._entry_ptr.103, ptr @sh_vou_log_status._entry_ptr.49, ptr @sh_vou_log_status._entry_ptr.52, ptr @sh_vou_log_status._entry_ptr.55, ptr @sh_vou_log_status._entry_ptr.58, ptr @sh_vou_log_status._entry_ptr.61, ptr @sh_vou_log_status._entry_ptr.64, ptr @sh_vou_log_status._entry_ptr.67, ptr @sh_vou_log_status._entry_ptr.70, ptr @sh_vou_log_status._entry_ptr.73, ptr @sh_vou_log_status._entry_ptr.76, ptr @sh_vou_log_status._entry_ptr.79, ptr @sh_vou_log_status._entry_ptr.82, ptr @sh_vou_log_status._entry_ptr.85, ptr @sh_vou_log_status._entry_ptr.88, ptr @sh_vou_log_status._entry_ptr.91, ptr @sh_vou_log_status._entry_ptr.94, ptr @sh_vou_log_status._entry_ptr.97, ptr @sh_vou_ntsc_mode._entry, ptr @sh_vou_ntsc_mode._entry_ptr, ptr @sh_vou_probe._entry, ptr @sh_vou_probe._entry.12, ptr @sh_vou_probe._entry_ptr, ptr @sh_vou_probe._entry_ptr.14, ptr @sh_vou, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sh_vou_probe.__key, ptr @.str.8, ptr @sh_vou_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @sh_vou_video_template, ptr @sh_vou_qops, ptr @sh_vou_isr.j, ptr @sh_vou_isr.cnt, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @sh_vou_fops, ptr @sh_vou_ioctl_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @vou_fmt, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @vou_scale_h_num, ptr @vou_scale_h_den, ptr @.str.32, ptr @.str.33, ptr @vou_scale_v_num, ptr @vou_scale_v_den, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @vou_scale_h_fld, ptr @vou_scale_v_fld, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @switch.table.sh_vou_hw_init, ptr @switch.table.sh_vou_s_std], section "llvm.metadata"
@0 = internal global [112 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_video_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_isr.j to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_isr.cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_isr._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vou_fmt to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vou_scale_h_num to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vou_scale_h_den to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vou_scale_v_num to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vou_scale_v_den to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vou_scale_h_fld to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vou_scale_v_fld to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_ntsc_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_log_status._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_vou_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sh_vou_hw_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sh_vou_s_std to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @sh_vou, ptr noundef nonnull @sh_vou_probe, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sh_vou_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_vou) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %1, null
  %tobool2.not = icmp eq ptr %call, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  %or.cond173 = select i1 %or.cond, i1 true, i1 %cmp
  br i1 %or.cond173, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2240, i32 noundef 3520) #9
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %buf_list = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %buf_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %buf_list, ptr %buf_list, align 4
  %prev.i = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %buf_list, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @sh_vou_probe.__key, i16 noundef signext 3) #9
  %fop_lock = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %fop_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @sh_vou_probe.__key.9) #9
  %pdata = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %pdata, align 8
  %status = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %status, align 8
  %pix_idx = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 9
  %6 = ptrtoint ptr %pix_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %pix_idx, align 8
  %rect17 = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 6
  %pix18 = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 5
  %std = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 4096, ptr %std, align 8
  %8 = ptrtoint ptr %rect17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rect17, align 4
  %top = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 720, ptr %width, align 4
  %height = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 6, i32 3
  %11 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 480, ptr %height, align 4
  %12 = ptrtoint ptr %pix18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 720, ptr %pix18, align 4
  %height20 = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %height20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 480, ptr %height20, align 4
  %pixelformat = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 909203022, ptr %pixelformat, align 4
  %field = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 5, i32 3
  %15 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %field, align 4
  %bytesperline = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 5, i32 4
  %16 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 720, ptr %bytesperline, align 4
  %sizeimage = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 5, i32 5
  %17 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 691200, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 5, i32 6
  %18 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %colorspace, align 4
  %call22 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call) #9
  %base = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call22, ptr %base, align 8
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end9
  %call.i174 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call1, ptr noundef nonnull @sh_vou_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %cmp31 = icmp slt i32 %call.i174, 0
  br i1 %cmp31, label %if.end28.cleanup_crit_edge, label %if.end33

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %call35 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end40, label %if.end42

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end42:                                         ; preds = %if.end33
  %vdev43 = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 1
  %21 = call ptr @memcpy(ptr %vdev43, ptr @sh_vou_video_template, i32 1352)
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp44 = icmp eq i32 %23, 0
  br i1 %cmp44, label %if.then45, label %if.end42.if.end46_crit_edge

if.end42.if.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %tvnorms = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 1, i32 22
  %24 = ptrtoint ptr %tvnorms to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tvnorms, align 8
  %or = or i64 %25, 255
  store i64 %or, ptr %tvnorms, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end42.if.end46_crit_edge
  %v4l2_dev48 = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 1, i32 7
  %26 = ptrtoint ptr %v4l2_dev48 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %v4l2_dev48, align 4
  %release = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 1, i32 23
  %27 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @video_device_release_empty, ptr %release, align 8
  %lock50 = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 1, i32 26
  %28 = ptrtoint ptr %lock50 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %fop_lock, ptr %lock50, align 8
  %driver_data.i.i = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 1, i32 5, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %queue = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 10
  %30 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %queue, align 4
  %io_modes = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 25, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 10, i32 10
  %32 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 10, i32 12
  %33 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 744, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 10, i32 7
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @sh_vou_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 10, i32 8
  %35 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 10, i32 13
  %36 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8192, ptr %timestamp_flags, align 4
  %min_buffers_needed = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 10, i32 15
  %37 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %min_buffers_needed, align 4
  %lock52 = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 10, i32 5
  %38 = ptrtoint ptr %lock52 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %fop_lock, ptr %lock52, align 4
  %dev54 = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 10, i32 2
  %39 = ptrtoint ptr %dev54 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev, ptr %dev54, align 4
  %call55 = tail call i32 @vb2_queue_init(ptr noundef %queue) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end46.ei2cgadap_crit_edge

if.end46.ei2cgadap_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %ei2cgadap

if.end58:                                         ; preds = %if.end46
  %queue59 = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 1, i32 10
  %40 = ptrtoint ptr %queue59 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %queue, ptr %queue59, align 8
  %41 = ptrtoint ptr %buf_list to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %buf_list, ptr %buf_list, align 4
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %buf_list, ptr %prev.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  %call.i176 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 0) #9
  %i2c_adap64 = getelementptr inbounds %struct.sh_vou_pdata, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %i2c_adap64 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i2c_adap64, align 4
  %call65 = tail call ptr @i2c_get_adapter(i32 noundef %44) #9
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.end58.ei2cgadap_crit_edge, label %if.end68

if.end58.ei2cgadap_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %ei2cgadap

if.end68:                                         ; preds = %if.end58
  %call69 = tail call fastcc i32 @sh_vou_hw_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.end68.ereset_crit_edge, label %if.end72

if.end68.ereset_crit_edge:                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %ereset

if.end72:                                         ; preds = %if.end68
  %board_info = getelementptr inbounds %struct.sh_vou_pdata, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %board_info to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %board_info, align 4
  %call74 = tail call ptr @v4l2_i2c_new_subdev_board(ptr noundef nonnull %call.i, ptr noundef nonnull %call65, ptr noundef %46, ptr noundef null) #9
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %if.end72.ereset_crit_edge, label %if.end77

if.end72.ereset_crit_edge:                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %ereset

if.end77:                                         ; preds = %if.end72
  %fops.i = getelementptr inbounds %struct.sh_vou_device, ptr %call.i, i32 0, i32 1, i32 3
  %47 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fops.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %call.i177 = tail call i32 @__video_register_device(ptr noundef %vdev43, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %cmp79 = icmp slt i32 %call.i177, 0
  br i1 %cmp79, label %if.end77.ereset_crit_edge, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end77.ereset_crit_edge:                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %ereset

ereset:                                           ; preds = %if.end77.ereset_crit_edge, %if.end72.ereset_crit_edge, %if.end68.ereset_crit_edge
  %ret.0 = phi i32 [ %call69, %if.end68.ereset_crit_edge ], [ %call.i177, %if.end77.ereset_crit_edge ], [ -12, %if.end72.ereset_crit_edge ]
  tail call void @i2c_put_adapter(ptr noundef nonnull %call65) #9
  br label %ei2cgadap

ei2cgadap:                                        ; preds = %ereset, %if.end58.ei2cgadap_crit_edge, %if.end46.ei2cgadap_crit_edge
  %ret.1 = phi i32 [ %call55, %if.end46.ei2cgadap_crit_edge ], [ %ret.0, %ereset ], [ -19, %if.end58.ei2cgadap_crit_edge ]
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %ei2cgadap, %if.end77.cleanup_crit_edge, %do.end40, %if.end28.cleanup_crit_edge, %if.then25, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %20, %if.then25 ], [ %call35, %do.end40 ], [ %ret.1, %ei2cgadap ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i174, %if.end28.cleanup_crit_edge ], [ 0, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.sh_vou_device, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !244
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 8
  %add.ptr.i106 = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106) #9, !srcloc !244
  %and = and i32 %2, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %call2 = tail call zeroext i1 @printk_timed_ratelimit(ptr noundef nonnull @sh_vou_isr.j, i32 noundef 500) #9
  br i1 %call2, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.15, i32 noundef %2) #12
  br label %cleanup

if.end4:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.sh_vou_device, ptr %dev_id, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %active = getelementptr inbounds %struct.sh_vou_device, ptr %dev_id, i32 0, i32 11
  %8 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %active, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end4.if.then8_crit_edge, label %lor.lhs.false

if.end4.if.then8_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end4
  %buf_list = getelementptr inbounds %struct.sh_vou_device, ptr %dev_id, i32 0, i32 7
  %10 = ptrtoint ptr %buf_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %buf_list, align 4
  %cmp.i.not = icmp eq ptr %11, %buf_list
  br i1 %cmp.i.not, label %lor.lhs.false.if.then8_crit_edge, label %if.end18

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end4.if.then8_crit_edge
  %call9 = tail call zeroext i1 @printk_timed_ratelimit(ptr noundef nonnull @sh_vou_isr.j, i32 noundef 500) #9
  br i1 %call9, label %do.end13, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.end13:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_id, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.19, i32 noundef %2) #12
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.then8.if.end16_crit_edge
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 8
  %add.ptr.i108 = getelementptr i8, ptr %15, i32 36
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #9, !srcloc !244
  %and1.i = and i32 %16, -769
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %18, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %and1.i) #9, !srcloc !245
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %and21 = and i32 %2, 196612
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_vou_isr.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_vou_isr, %if.then27)) #9
          to label %do.end32 [label %if.then27], !srcloc !246

if.then27:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_id, align 8
  %21 = load i32, ptr @sh_vou_isr.cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_vou_isr.__UNIQUE_ID_ddebug314, ptr noundef %20, ptr noundef nonnull @.str.21, i32 noundef %2, i32 noundef %and21, i32 noundef %5, i32 noundef %21) #9
  br label %do.end32

do.end32:                                         ; preds = %if.then27, %if.end18
  %22 = load i32, ptr @sh_vou_isr.cnt, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr @sh_vou_isr.cnt, align 4
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 8
  %add.ptr.i110 = getelementptr i8, ptr %24, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 %and21) #9, !srcloc !245
  %25 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %active, align 4
  %list = getelementptr inbounds %struct.sh_vou_buffer, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i = icmp eq ptr %28, %list
  br i1 %cmp.i.not.i, label %do.end32.if.end39_crit_edge, label %list_is_singular.exit

do.end32.if.end39_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

list_is_singular.exit:                            ; preds = %do.end32
  %prev.i = getelementptr inbounds %struct.sh_vou_buffer, ptr %26, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i, align 4
  %cmp.i111.not = icmp eq ptr %28, %30
  br i1 %cmp.i111.not, label %if.then36, label %list_is_singular.exit.if.end39_crit_edge

list_is_singular.exit.if.end39_crit_edge:         ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then36:                                        ; preds = %list_is_singular.exit
  %call.i.i = tail call ptr @vb2_plane_cookie(ptr noundef %26, i32 noundef 0) #9
  %31 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call.i.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.sh_vou_device, ptr %dev_id, i32 0, i32 5, i32 2
  %33 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pixelformat.i, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %34, label %if.then36.sh_vou_schedule_next.exit_crit_edge [
    i32 842094158, label %if.then36.sw.bb.i_crit_edge
    i32 909203022, label %if.then36.sw.bb.i_crit_edge147
  ]

if.then36.sw.bb.i_crit_edge147:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.then36.sw.bb.i_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.then36.sh_vou_schedule_next.exit_crit_edge:    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_vou_schedule_next.exit

sw.bb.i:                                          ; preds = %if.then36.sw.bb.i_crit_edge, %if.then36.sw.bb.i_crit_edge147
  %pix.i = getelementptr inbounds %struct.sh_vou_device, ptr %dev_id, i32 0, i32 5
  %36 = ptrtoint ptr %pix.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pix.i, align 4
  %height.i = getelementptr inbounds %struct.sh_vou_device, ptr %dev_id, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height.i, align 4
  %mul.i = mul i32 %39, %37
  %add.i = add i32 %mul.i, %32
  br label %sh_vou_schedule_next.exit

sh_vou_schedule_next.exit:                        ; preds = %sw.bb.i, %if.then36.sh_vou_schedule_next.exit_crit_edge
  %addr2.0.i = phi i32 [ %add.i, %sw.bb.i ], [ 0, %if.then36.sh_vou_schedule_next.exit_crit_edge ]
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %41, i32 8248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %32) #9, !srcloc !245
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 8
  %add.ptr1.i10.i = getelementptr i8, ptr %43, i32 8252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i10.i, i32 %addr2.0.i) #9, !srcloc !245
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end39:                                         ; preds = %list_is_singular.exit.if.end39_crit_edge, %do.end32.if.end39_crit_edge
  %call.i.i112 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i112, label %if.end.i.i, label %if.end39.list_del.exit_crit_edge

if.end39.list_del.exit_crit_edge:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.sh_vou_buffer, ptr %26, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i, align 4
  %46 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end39.list_del.exit_crit_edge
  %50 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i113 = getelementptr inbounds %struct.sh_vou_buffer, ptr %26, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i113, align 4
  %call.i = tail call i64 @ktime_get() #9
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %26, i32 0, i32 5
  %52 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %call.i, ptr %timestamp, align 8
  %sequence = getelementptr inbounds %struct.sh_vou_device, ptr %dev_id, i32 0, i32 13
  %53 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sequence, align 4
  %inc43 = add i32 %54, 1
  store i32 %inc43, ptr %sequence, align 4
  %sequence45 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %26, i32 0, i32 4
  %55 = ptrtoint ptr %sequence45 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %sequence45, align 8
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %26, i32 0, i32 2
  %56 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 4, ptr %field, align 4
  tail call void @vb2_buffer_done(ptr noundef %26, i32 noundef 5) #9
  %57 = ptrtoint ptr %buf_list to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buf_list, align 4
  %add.ptr = getelementptr i8, ptr %58, i32 -736
  %59 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr, ptr %active, align 4
  %60 = load volatile ptr, ptr %buf_list, align 4
  %cmp.i.not.i114 = icmp eq ptr %60, %buf_list
  br i1 %cmp.i.not.i114, label %list_del.exit.if.else_crit_edge, label %list_is_singular.exit119

list_del.exit.if.else_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

list_is_singular.exit119:                         ; preds = %list_del.exit
  %prev.i115 = getelementptr inbounds %struct.sh_vou_device, ptr %dev_id, i32 0, i32 7, i32 1
  %61 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i115, align 4
  %cmp.i116.not = icmp eq ptr %60, %62
  br i1 %cmp.i116.not, label %if.then55, label %list_is_singular.exit119.if.else_crit_edge

list_is_singular.exit119.if.else_crit_edge:       ; preds = %list_is_singular.exit119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then55:                                        ; preds = %list_is_singular.exit119
  %call.i.i120 = tail call ptr @vb2_plane_cookie(ptr noundef %add.ptr, i32 noundef 0) #9
  %63 = ptrtoint ptr %call.i.i120 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call.i.i120, align 4
  %pixelformat.i121 = getelementptr inbounds %struct.sh_vou_device, ptr %dev_id, i32 0, i32 5, i32 2
  %65 = ptrtoint ptr %pixelformat.i121 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pixelformat.i121, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %66, label %if.then55.sh_vou_schedule_next.exit131_crit_edge [
    i32 842094158, label %if.then55.sw.bb.i126_crit_edge
    i32 909203022, label %if.then55.sw.bb.i126_crit_edge148
  ]

if.then55.sw.bb.i126_crit_edge148:                ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i126

if.then55.sw.bb.i126_crit_edge:                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i126

if.then55.sh_vou_schedule_next.exit131_crit_edge: ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_vou_schedule_next.exit131

sw.bb.i126:                                       ; preds = %if.then55.sw.bb.i126_crit_edge, %if.then55.sw.bb.i126_crit_edge148
  %pix.i122 = getelementptr inbounds %struct.sh_vou_device, ptr %dev_id, i32 0, i32 5
  %68 = ptrtoint ptr %pix.i122 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pix.i122, align 4
  %height.i123 = getelementptr inbounds %struct.sh_vou_device, ptr %dev_id, i32 0, i32 5, i32 1
  %70 = ptrtoint ptr %height.i123 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %height.i123, align 4
  %mul.i124 = mul i32 %71, %69
  %add.i125 = add i32 %mul.i124, %64
  br label %sh_vou_schedule_next.exit131

sh_vou_schedule_next.exit131:                     ; preds = %sw.bb.i126, %if.then55.sh_vou_schedule_next.exit131_crit_edge
  %addr2.0.i127 = phi i32 [ %add.i125, %sw.bb.i126 ], [ 0, %if.then55.sh_vou_schedule_next.exit131_crit_edge ]
  %72 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i, align 8
  %add.ptr1.i.i129 = getelementptr i8, ptr %73, i32 8248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i129, i32 %64) #9, !srcloc !245
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 8
  %add.ptr1.i10.i130 = getelementptr i8, ptr %75, i32 8252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i10.i130, i32 %addr2.0.i127) #9, !srcloc !245
  br label %if.end65

if.else:                                          ; preds = %list_is_singular.exit119.if.else_crit_edge, %list_del.exit.if.else_crit_edge
  %76 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %58, align 8
  %add.ptr63 = getelementptr i8, ptr %77, i32 -736
  %call.i.i132 = tail call ptr @vb2_plane_cookie(ptr noundef %add.ptr63, i32 noundef 0) #9
  %78 = ptrtoint ptr %call.i.i132 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %call.i.i132, align 4
  %pixelformat.i133 = getelementptr inbounds %struct.sh_vou_device, ptr %dev_id, i32 0, i32 5, i32 2
  %80 = ptrtoint ptr %pixelformat.i133 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pixelformat.i133, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %81, label %if.else.sh_vou_schedule_next.exit143_crit_edge [
    i32 842094158, label %if.else.sw.bb.i138_crit_edge
    i32 909203022, label %if.else.sw.bb.i138_crit_edge149
  ]

if.else.sw.bb.i138_crit_edge149:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i138

if.else.sw.bb.i138_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i138

if.else.sh_vou_schedule_next.exit143_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_vou_schedule_next.exit143

sw.bb.i138:                                       ; preds = %if.else.sw.bb.i138_crit_edge, %if.else.sw.bb.i138_crit_edge149
  %pix.i134 = getelementptr inbounds %struct.sh_vou_device, ptr %dev_id, i32 0, i32 5
  %83 = ptrtoint ptr %pix.i134 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pix.i134, align 4
  %height.i135 = getelementptr inbounds %struct.sh_vou_device, ptr %dev_id, i32 0, i32 5, i32 1
  %85 = ptrtoint ptr %height.i135 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %height.i135, align 4
  %mul.i136 = mul i32 %86, %84
  %add.i137 = add i32 %mul.i136, %79
  br label %sh_vou_schedule_next.exit143

sh_vou_schedule_next.exit143:                     ; preds = %sw.bb.i138, %if.else.sh_vou_schedule_next.exit143_crit_edge
  %addr2.0.i139 = phi i32 [ %add.i137, %sw.bb.i138 ], [ 0, %if.else.sh_vou_schedule_next.exit143_crit_edge ]
  %87 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i, align 8
  %add.ptr1.i.i141 = getelementptr i8, ptr %88, i32 8248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i141, i32 %79) #9, !srcloc !245
  %89 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base.i, align 8
  %add.ptr1.i10.i142 = getelementptr i8, ptr %90, i32 8252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i10.i142, i32 %addr2.0.i139) #9, !srcloc !245
  br label %if.end65

if.end65:                                         ; preds = %sh_vou_schedule_next.exit143, %sh_vou_schedule_next.exit131
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %sh_vou_schedule_next.exit, %if.end16, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end16 ], [ 1, %sh_vou_schedule_next.exit ], [ 1, %if.end65 ], [ 0, %do.end ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_adapter(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sh_vou_hw_init(ptr noundef %vou_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.sh_vou_device, ptr %vou_dev, i32 0, i32 2
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %3) #12
  br label %sh_vou_ntsc_mode.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.sh_vou_hw_init, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sh_vou_ntsc_mode.exit

sh_vou_ntsc_mode.exit:                            ; preds = %switch.lookup, %do.end.i
  %retval.0.i47 = phi i32 [ 536870912, %do.end.i ], [ %switch.load, %switch.lookup ]
  %base.i = getelementptr inbounds %struct.sh_vou_device, ptr %vou_dev, i32 0, i32 4
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !245
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 8
  %add.ptr.i49 = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 257) #9, !srcloc !245
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 8
  %add.ptr.i5163 = getelementptr i8, ptr %11, i32 40
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5163) #9, !srcloc !244
  %and64 = and i32 %12, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool3.not65 = icmp eq i32 %and64, 0
  br i1 %tobool3.not65, label %sh_vou_ntsc_mode.exit.do.body_crit_edge, label %sh_vou_ntsc_mode.exit.while.body_crit_edge

sh_vou_ntsc_mode.exit.while.body_crit_edge:       ; preds = %sh_vou_ntsc_mode.exit
  br label %while.body

sh_vou_ntsc_mode.exit.do.body_crit_edge:          ; preds = %sh_vou_ntsc_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.rhs:                                         ; preds = %while.body
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 8
  %add.ptr.i51 = getelementptr i8, ptr %14, i32 40
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #9, !srcloc !244
  %and = and i32 %15, 257
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.rhs.do.body_crit_edge, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %sh_vou_ntsc_mode.exit.while.body_crit_edge
  %dec5966 = phi i32 [ %dec, %land.rhs.while.body_crit_edge ], [ 99, %sh_vou_ntsc_mode.exit.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #9
  %dec = add nsw i32 %dec5966, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.cleanup_crit_edge, label %land.rhs

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %sh_vou_ntsc_mode.exit.do.body_crit_edge
  %i.058.lcssa = phi i32 [ 100, %sh_vou_ntsc_mode.exit.do.body_crit_edge ], [ %dec5966, %land.rhs.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_vou_hw_init.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_vou_hw_init, %if.then9)) #9
          to label %do.end [label %if.then9], !srcloc !246

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %vou_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vou_dev, align 8
  %sub = sub i32 101, %i.058.lcssa
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_vou_hw_init.__UNIQUE_ID_ddebug315, ptr noundef %18, ptr noundef nonnull @.str.111, i32 noundef %sub) #9
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %flags = getelementptr inbounds %struct.sh_vou_pdata, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and11 = shl i32 %20, 28
  %21 = and i32 %and11, 268435456
  %22 = or i32 %21, %retval.0.i47
  %and16 = shl i32 %20, 26
  %23 = and i32 %and16, 134217728
  %24 = or i32 %22, %23
  %and22 = shl i32 %20, 24
  %25 = and i32 %and22, 67108864
  %26 = or i32 %24, %25
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !244
  %and1.i.i = and i32 %29, 67108863
  %or.i.i = or i32 %26, %and1.i.i
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %or.i.i) #9, !srcloc !245
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 4100
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !244
  %and1.i.i.i = and i32 %34, 67108863
  %or.i.i.i = or i32 %and1.i.i.i, %26
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 8
  %add.ptr3.i.i.i = getelementptr i8, ptr %36, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 %or.i.i.i) #9, !srcloc !245
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 8
  %add.ptr.i53 = getelementptr i8, ptr %38, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 4) #9, !srcloc !245
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 8
  %add.ptr.i55 = getelementptr i8, ptr %40, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 8388608) #9, !srcloc !245
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %42, i32 4140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 8388608) #9, !srcloc !245
  %pix = getelementptr inbounds %struct.sh_vou_device, ptr %vou_dev, i32 0, i32 5
  %call27 = tail call fastcc i32 @sh_vou_set_fmt_vid_out(ptr noundef %vou_dev, ptr noundef %pix)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -110, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev_board(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @printk_timed_ratelimit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fop_lock = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 14
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %fop_lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @v4l2_fh_open(ptr noundef %file) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.done_open_crit_edge

if.end.done_open_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_open

if.end5:                                          ; preds = %if.end
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i39 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool7.not = icmp eq i32 %call.i39, 0
  br i1 %tobool7.not, label %if.end5.done_open_crit_edge, label %land.lhs.true

if.end5.done_open_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_open

land.lhs.true:                                    ; preds = %if.end5
  %status = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then8, label %land.lhs.true.done_open_crit_edge

land.lhs.true.done_open_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_open

if.then8:                                         ; preds = %land.lhs.true
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i40 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %cmp.i = icmp slt i32 %call.i40, 0
  br i1 %cmp.i, label %if.then.i, label %if.end13

if.then.i:                                        ; preds = %if.then8
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !247
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !248
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.then11_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.then11_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !249
  br label %if.then11

if.then11:                                        ; preds = %do.end11.i.i.i.i.i, %if.then.i.if.then11_crit_edge
  %call12 = tail call i32 @v4l2_fh_release(ptr noundef %file) #9
  br label %done_open

if.end13:                                         ; preds = %if.then8
  %call14 = tail call fastcc i32 @sh_vou_hw_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %call.i41 = tail call i32 @__pm_runtime_idle(ptr noundef %10, i32 noundef 5) #9
  %call20 = tail call i32 @v4l2_fh_release(ptr noundef %file) #9
  br label %done_open

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %status, align 8
  br label %done_open

done_open:                                        ; preds = %if.else, %if.then16, %if.then11, %land.lhs.true.done_open_crit_edge, %if.end5.done_open_crit_edge, %if.end.done_open_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.done_open_crit_edge ], [ %call.i40, %if.then11 ], [ %call14, %if.then16 ], [ %call14, %if.else ], [ 0, %land.lhs.true.done_open_crit_edge ], [ 0, %if.end5.done_open_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %fop_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %done_open, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %done_open ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fop_lock = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %fop_lock, i32 noundef 0) #9
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i12 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool.not = icmp eq i32 %call.i12, 0
  %call2 = tail call i32 @_vb2_fop_release(ptr noundef %file, ptr noundef null) #9
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %status = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %status, align 8
  %base.i = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !244
  %and1.i = and i32 %7, -258
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %and1.i) #9, !srcloc !245
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %call.i13 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %fop_lock) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_vou_querycap.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_vou_querycap, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !246

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_vou_querycap.__UNIQUE_ID_ddebug302, ptr noundef %3, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.24, i32 noundef 32) #9
  %call6 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.25, i32 noundef 16) #9
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call8 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.26, i32 noundef 32) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_enum_fmt_vid_out(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_vou_enum_fmt_vid_out.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_vou_enum_fmt_vid_out, %if.then4)) #9
          to label %do.end [label %if.then4], !srcloc !246

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_vou_enum_fmt_vid_out.__UNIQUE_ID_ddebug303, ptr noundef %5, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.27) #9
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt, align 4
  %arrayidx = getelementptr [5 x %struct.sh_vou_fmt], ptr @vou_fmt, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 4
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_g_fmt_vid_out(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_vou_g_fmt_vid_out.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_vou_g_fmt_vid_out, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !246

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_vou_g_fmt_vid_out.__UNIQUE_ID_ddebug304, ptr noundef %3, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.28) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %fmt, align 4
  %fmt4 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %pix = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 5
  %5 = call ptr @memcpy(ptr %fmt4, ptr %pix, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_s_fmt_vid_out(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @sh_vou_try_fmt_vid_out(ptr noundef %file, ptr noundef %priv, ptr noundef %fmt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %call3 = tail call fastcc i32 @sh_vou_set_fmt_vid_out(ptr noundef %1, ptr noundef %fmt2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_try_fmt_vid_out(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_vou_try_fmt_vid_out.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_vou_try_fmt_vid_out, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !246

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_vou_try_fmt_vid_out.__UNIQUE_ID_ddebug309, ptr noundef %3, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.38) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %field = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %colorspace, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %quantization to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %quantization, align 4
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pixelformat, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %10, label %do.end.cleanup_crit_edge [
    i32 842094158, label %do.end.if.end10_crit_edge
    i32 909203022, label %if.end10.fold.split
    i32 859981650, label %if.end10.fold.split48
    i32 1346520914, label %if.end10.fold.split49
    i32 1380075346, label %if.end10.fold.split50
  ]

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.fold.split:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10.fold.split48:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10.fold.split49:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10.fold.split50:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %if.end10.fold.split50, %if.end10.fold.split49, %if.end10.fold.split48, %if.end10.fold.split, %do.end.if.end10_crit_edge
  %pix_idx.046.lcssa = phi i32 [ 0, %do.end.if.end10_crit_edge ], [ 1, %if.end10.fold.split ], [ 2, %if.end10.fold.split48 ], [ 3, %if.end10.fold.split49 ], [ 4, %if.end10.fold.split50 ]
  %std = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %std, align 8
  %and = and i64 %13, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool11.not = icmp eq i64 %and, 0
  %. = select i1 %tobool11.not, i32 576, i32 480
  %height = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %fmt1, i32 noundef 16, i32 noundef 720, i32 noundef 2, ptr noundef %height, i32 noundef 16, i32 noundef %., i32 noundef 1, i32 noundef 0) #9
  %14 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fmt1, align 4
  %bpl = getelementptr [5 x %struct.sh_vou_fmt], ptr @vou_fmt, i32 0, i32 %pix_idx.046.lcssa, i32 2
  %16 = ptrtoint ptr %bpl to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bpl, align 1
  %conv = zext i8 %17 to i32
  %mul = mul i32 %15, %conv
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %bytesperline, align 4
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 4
  %bpp = getelementptr [5 x %struct.sh_vou_fmt], ptr @vou_fmt, i32 0, i32 %pix_idx.046.lcssa, i32 1
  %21 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bpp, align 4
  %conv19 = zext i8 %22 to i32
  %mul20 = mul i32 %15, %conv19
  %shr = lshr i32 %mul20, 3
  %mul21 = mul i32 %shr, %20
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %23 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul21, ptr %sizeimage, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_vou_g_std.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_vou_g_std, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !246

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_vou_g_std.__UNIQUE_ID_ddebug313, ptr noundef %3, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.39) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %std4 = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %std4 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %std4, align 8
  %6 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %std, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %std_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_vou_s_std.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_vou_s_std, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !246

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_vou_s_std.__UNIQUE_ID_ddebug312, ptr noundef %3, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i64 noundef %std_id) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %std = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %std, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %std_id)
  %cmp = icmp eq i64 %5, %std_id
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %num_buffers.i = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 10, i32 21
  %6 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 0
  br i1 %cmp.i.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %subdevs = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn131 = load ptr, ptr %subdevs, align 4
  %cmp14.not133 = icmp eq ptr %.pn131, %subdevs
  br i1 %cmp14.not133, label %if.end8.if.end43_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.if.end43_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8.for.body_crit_edge
  %.pn135 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn131, %if.end8.for.body_crit_edge ]
  %__err.0134 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %__sd.0136 = getelementptr i8, ptr %.pn135, i32 -80
  %ops = getelementptr i8, ptr %.pn135, i32 24
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %video, align 4
  %tobool17.not = icmp eq ptr %12, null
  br i1 %tobool17.not, label %for.body.if.end26_crit_edge, label %land.lhs.true

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

land.lhs.true:                                    ; preds = %for.body
  %s_std_output = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %s_std_output to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_std_output, align 4
  %tobool20.not = icmp eq ptr %14, null
  br i1 %tobool20.not, label %land.lhs.true.if.end26_crit_edge, label %if.then21

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 %14(ptr noundef %__sd.0136, i64 noundef %std_id) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %land.lhs.true.if.end26_crit_edge, %for.body.if.end26_crit_edge
  %__err.1 = phi i32 [ %call25, %if.then21 ], [ %__err.0134, %land.lhs.true.if.end26_crit_edge ], [ %__err.0134, %for.body.if.end26_crit_edge ]
  %15 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %__err.1, label %if.end26.for.end_crit_edge [
    i32 0, label %if.end26.for.inc_crit_edge
    i32 -515, label %if.end26.for.inc_crit_edge142
  ]

if.end26.for.inc_crit_edge142:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %if.end26.for.inc_crit_edge, %if.end26.for.inc_crit_edge142
  %16 = ptrtoint ptr %.pn135 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn135, align 4
  %cmp14.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end26.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err.1)
  %cmp38 = icmp ne i32 %__err.1, -515
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__err.1)
  %cmp39130 = icmp slt i32 %__err.1, 0
  %cmp39 = and i1 %cmp38, %cmp39130
  br i1 %cmp39, label %for.end.cleanup_crit_edge, label %for.end.if.end43_crit_edge

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end43:                                         ; preds = %for.end.if.end43_crit_edge, %if.end8.if.end43_crit_edge
  %rect = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rect, align 4
  %top = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 6, i32 2
  %19 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 720, ptr %width, align 4
  %and = and i64 %std_id, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool46.not = icmp eq i64 %and, 0
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.end43
  %pdata = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %24 = icmp ult i32 %23, 3
  br i1 %24, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %call.i118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %23) #12
  br label %sh_vou_ntsc_mode.exit

switch.lookup:                                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.sh_vou_s_std, i32 0, i32 %23
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sh_vou_ntsc_mode.exit

sh_vou_ntsc_mode.exit:                            ; preds = %switch.lookup, %do.end.i
  %retval.0.i119 = phi i32 [ 536870912, %do.end.i ], [ %switch.load, %switch.lookup ]
  %base.i.i = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !244
  %and1.i.i = and i32 %28, 536870911
  %or.i.i = or i32 %and1.i.i, %retval.0.i119
  %29 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %or.i.i) #9, !srcloc !245
  %31 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %32, i32 4100
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !244
  %and1.i.i.i = and i32 %33, 536870911
  %or.i.i.i = or i32 %and1.i.i.i, %retval.0.i119
  %34 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i, align 8
  %add.ptr3.i.i.i = getelementptr i8, ptr %35, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 %or.i.i.i) #9, !srcloc !245
  br label %if.end52

if.else:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i120 = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %base.i.i120 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i120, align 8
  %add.ptr.i.i121 = getelementptr i8, ptr %37, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i121) #9, !srcloc !244
  %and1.i.i122 = and i32 %38, 536870911
  %or.i.i123 = or i32 %and1.i.i122, -1610612736
  %39 = ptrtoint ptr %base.i.i120 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i120, align 8
  %add.ptr3.i.i124 = getelementptr i8, ptr %40, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i124, i32 %or.i.i123) #9, !srcloc !245
  %41 = ptrtoint ptr %base.i.i120 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i120, align 8
  %add.ptr.i.i.i125 = getelementptr i8, ptr %42, i32 4100
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i125) #9, !srcloc !244
  %and1.i.i.i126 = and i32 %43, 536870911
  %or.i.i.i127 = or i32 %and1.i.i.i126, -1610612736
  %44 = ptrtoint ptr %base.i.i120 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i120, align 8
  %add.ptr3.i.i.i128 = getelementptr i8, ptr %45, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i128, i32 %or.i.i.i127) #9, !srcloc !245
  br label %if.end52

if.end52:                                         ; preds = %if.else, %sh_vou_ntsc_mode.exit
  %.sink = phi i32 [ 576, %if.else ], [ 480, %sh_vou_ntsc_mode.exit ]
  %height51 = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 6, i32 3
  %46 = ptrtoint ptr %height51 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink, ptr %height51, align 4
  %47 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %width, align 4
  %pix = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 5
  %49 = ptrtoint ptr %pix to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %pix, align 4
  %height59 = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 5, i32 1
  %50 = ptrtoint ptr %height59 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink, ptr %height59, align 4
  %pix_idx = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 9
  %51 = ptrtoint ptr %pix_idx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pix_idx, align 8
  %bpl = getelementptr [5 x %struct.sh_vou_fmt], ptr @vou_fmt, i32 0, i32 %52, i32 2
  %53 = ptrtoint ptr %bpl to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bpl, align 1
  %conv = zext i8 %54 to i32
  %mul = mul i32 %48, %conv
  %bytesperline = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 5, i32 4
  %55 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mul, ptr %bytesperline, align 4
  %bpp = getelementptr [5 x %struct.sh_vou_fmt], ptr @vou_fmt, i32 0, i32 %52, i32 1
  %56 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bpp, align 4
  %conv69 = zext i8 %57 to i32
  %mul70 = mul i32 %48, %conv69
  %shr = lshr i32 %mul70, 3
  %mul71 = mul i32 %shr, %.sink
  %sizeimage = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 5, i32 5
  %58 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul71, ptr %sizeimage, align 4
  %59 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %std_id, ptr %std, align 8
  %call75 = tail call fastcc i32 @sh_vou_set_fmt_vid_out(ptr noundef %1, ptr noundef %pix)
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %for.end.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end52 ], [ 0, %do.end.cleanup_crit_edge ], [ -16, %if.end5.cleanup_crit_edge ], [ %__err.1, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_enum_output(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_output, ptr %a, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.44, i32 noundef 32) #9
  %type = getelementptr inbounds %struct.v4l2_output, ptr %a, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 4
  %tvnorms = getelementptr inbounds %struct.sh_vou_device, ptr %3, i32 0, i32 1, i32 22
  %5 = ptrtoint ptr %tvnorms to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tvnorms, align 8
  %std = getelementptr inbounds %struct.v4l2_output, ptr %a, i32 0, i32 5
  %7 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sh_vou_g_output(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %i) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sh_vou_s_output(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, i32 noundef %i) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %tobool.not = icmp eq i32 %i, 0
  %cond = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_g_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %sel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 256, label %sw.bb
    i32 257, label %if.end.sw.bb1_crit_edge
    i32 258, label %if.end.sw.bb1_crit_edge18
  ]

if.end.sw.bb1_crit_edge18:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %rect = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 6
  %7 = call ptr @memcpy(ptr %r, ptr %rect, i32 16)
  br label %cleanup

sw.bb1:                                           ; preds = %if.end.sw.bb1_crit_edge, %if.end.sw.bb1_crit_edge18
  %r2 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %8 = ptrtoint ptr %r2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %r2, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 720, ptr %width, align 4
  %std = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %std, align 8
  %and = and i64 %12, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %height8 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %height8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 480, ptr %height8, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %height8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 576, ptr %height8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then5 ], [ 0, %if.else ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_s_selection(ptr noundef %file, ptr nocapture noundef readnone %fh, ptr noundef %sel) #2 align 64 {
entry:
  %sd_sel = alloca %struct.v4l2_subdev_selection, align 4
  %geo = alloca %struct.sh_vou_geometry, align 4
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sd_sel) #9
  %2 = getelementptr inbounds i8, ptr %sd_sel, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 60)
  %4 = ptrtoint ptr %sd_sel to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %sd_sel, align 4
  %5 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sd_sel, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 256, ptr %5, align 4
  %pix1 = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geo) #9
  %7 = getelementptr inbounds %struct.v4l2_rect, ptr %geo, i32 0, i32 2
  %8 = getelementptr inbounds %struct.v4l2_rect, ptr %geo, i32 0, i32 3
  %9 = getelementptr inbounds %struct.sh_vou_geometry, ptr %geo, i32 0, i32 1
  %10 = getelementptr inbounds %struct.sh_vou_geometry, ptr %geo, i32 0, i32 2
  %11 = getelementptr inbounds %struct.sh_vou_geometry, ptr %geo, i32 0, i32 3
  %12 = getelementptr inbounds %struct.sh_vou_geometry, ptr %geo, i32 0, i32 4
  %13 = getelementptr inbounds i8, ptr %geo, i32 24
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 -1, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #9
  %15 = getelementptr inbounds i8, ptr %format, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 84)
  %17 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %format, align 4
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8200, ptr %19, align 4
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %21, align 4
  %23 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %23, align 4
  %25 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.not = icmp eq i32 %26, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %27 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %28)
  %cmp2.not = icmp eq i32 %28, 256
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %num_buffers.i = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 10, i32 21
  %29 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.not = icmp eq i32 %30, 0
  br i1 %cmp.i.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %std = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %std, align 8
  %and = and i64 %32, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %. = select i1 %tobool.not, i32 576, i32 480
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  tail call void @v4l_bound_align_image(ptr noundef %width, i32 noundef 16, i32 noundef 720, i32 noundef 1, ptr noundef %height, i32 noundef 16, i32 noundef %., i32 noundef 1, i32 noundef 0) #9
  %33 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %width, align 4
  %35 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %r, align 4
  %add = add i32 %36, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %add)
  %cmp9 = icmp ugt i32 %add, 720
  br i1 %cmp9, label %if.then10, label %if.end5.if.end13_crit_edge

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 720, %34
  %37 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub, ptr %r, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end5.if.end13_crit_edge
  %38 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %top, align 4
  %add15 = add i32 %41, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %.)
  %cmp16 = icmp ugt i32 %add15, %.
  br i1 %cmp16, label %if.then17, label %if.end13.if.end21_crit_edge

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %sub19 = sub i32 %., %39
  %42 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub19, ptr %top, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end13.if.end21_crit_edge
  %43 = call ptr @memcpy(ptr %geo, ptr %r, i32 16)
  %44 = ptrtoint ptr %pix1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pix1, align 4
  %46 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %9, align 4
  %height23 = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %height23 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height23, align 4
  %49 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %10, align 4
  %50 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %7, align 4
  %width27 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sd_sel, i32 0, i32 4, i32 2
  %52 = ptrtoint ptr %width27 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %width27, align 4
  %53 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %8, align 4
  %height31 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sd_sel, i32 0, i32 4, i32 3
  %55 = ptrtoint ptr %height31 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %height31, align 4
  %subdevs = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn201 = load ptr, ptr %subdevs, align 4
  %cmp35.not203 = icmp eq ptr %.pn201, %subdevs
  br i1 %cmp35.not203, label %if.end21.for.end_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end21.for.body_crit_edge
  %.pn205 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn201, %if.end21.for.body_crit_edge ]
  %__err.0204 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end21.for.body_crit_edge ]
  %__sd.0206 = getelementptr i8, ptr %.pn205, i32 -80
  %ops = getelementptr i8, ptr %.pn205, i32 24
  %57 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pad, align 4
  %tobool36.not = icmp eq ptr %60, null
  br i1 %tobool36.not, label %for.body.if.end45_crit_edge, label %land.lhs.true

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true:                                    ; preds = %for.body
  %set_selection = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %set_selection to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_selection, align 4
  %tobool39.not = icmp eq ptr %62, null
  br i1 %tobool39.not, label %land.lhs.true.if.end45_crit_edge, label %if.then40

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then40:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call44 = call i32 %62(ptr noundef %__sd.0206, ptr noundef null, ptr noundef nonnull %sd_sel) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %land.lhs.true.if.end45_crit_edge, %for.body.if.end45_crit_edge
  %__err.1 = phi i32 [ %call44, %if.then40 ], [ %__err.0204, %land.lhs.true.if.end45_crit_edge ], [ %__err.0204, %for.body.if.end45_crit_edge ]
  %63 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %__err.1, label %if.end45.for.end_crit_edge [
    i32 0, label %if.end45.for.inc_crit_edge
    i32 -515, label %if.end45.for.inc_crit_edge218
  ]

if.end45.for.inc_crit_edge218:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %if.end45.for.inc_crit_edge, %if.end45.for.inc_crit_edge218
  %64 = ptrtoint ptr %.pn205 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn = load ptr, ptr %.pn205, align 4
  %cmp35.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp35.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end45.for.end_crit_edge, %if.end21.for.end_crit_edge
  %65 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %7, align 4
  %67 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %18, align 4
  %68 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %8, align 4
  %height65 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %70 = ptrtoint ptr %height65 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %height65, align 4
  %71 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn199207 = load ptr, ptr %subdevs, align 4
  %cmp79.not209 = icmp eq ptr %.pn199207, %subdevs
  br i1 %cmp79.not209, label %for.end.if.end115_crit_edge, label %for.end.for.body81_crit_edge

for.end.for.body81_crit_edge:                     ; preds = %for.end
  br label %for.body81

for.end.if.end115_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

for.body81:                                       ; preds = %for.inc100.for.body81_crit_edge, %for.end.for.body81_crit_edge
  %.pn199211 = phi ptr [ %.pn199, %for.inc100.for.body81_crit_edge ], [ %.pn199207, %for.end.for.body81_crit_edge ]
  %__err68.0210 = phi i32 [ %__err68.1, %for.inc100.for.body81_crit_edge ], [ 0, %for.end.for.body81_crit_edge ]
  %__sd66.0212 = getelementptr i8, ptr %.pn199211, i32 -80
  %ops82 = getelementptr i8, ptr %.pn199211, i32 24
  %72 = ptrtoint ptr %ops82 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops82, align 4
  %pad83 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %pad83 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pad83, align 4
  %tobool84.not = icmp eq ptr %75, null
  br i1 %tobool84.not, label %for.body81.if.end94_crit_edge, label %land.lhs.true85

for.body81.if.end94_crit_edge:                    ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

land.lhs.true85:                                  ; preds = %for.body81
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_fmt, align 4
  %tobool88.not = icmp eq ptr %77, null
  br i1 %tobool88.not, label %land.lhs.true85.if.end94_crit_edge, label %if.then89

land.lhs.true85.if.end94_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then89:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #11
  %call93 = call i32 %77(ptr noundef %__sd66.0212, ptr noundef null, ptr noundef nonnull %format) #9
  br label %if.end94

if.end94:                                         ; preds = %if.then89, %land.lhs.true85.if.end94_crit_edge, %for.body81.if.end94_crit_edge
  %__err68.1 = phi i32 [ %call93, %if.then89 ], [ %__err68.0210, %land.lhs.true85.if.end94_crit_edge ], [ %__err68.0210, %for.body81.if.end94_crit_edge ]
  %78 = zext i32 %__err68.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %__err68.1, label %if.end94.for.end106_crit_edge [
    i32 0, label %if.end94.for.inc100_crit_edge
    i32 -515, label %if.end94.for.inc100_crit_edge219
  ]

if.end94.for.inc100_crit_edge219:                 ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc100

if.end94.for.inc100_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc100

if.end94.for.end106_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end106

for.inc100:                                       ; preds = %if.end94.for.inc100_crit_edge, %if.end94.for.inc100_crit_edge219
  %79 = ptrtoint ptr %.pn199211 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pn199 = load ptr, ptr %.pn199211, align 4
  %cmp79.not = icmp eq ptr %.pn199, %subdevs
  br i1 %cmp79.not, label %for.inc100.for.end106_crit_edge, label %for.inc100.for.body81_crit_edge

for.inc100.for.body81_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body81

for.inc100.for.end106_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end106

for.end106:                                       ; preds = %for.inc100.for.end106_crit_edge, %if.end94.for.end106_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err68.1)
  %cmp108 = icmp ne i32 %__err68.1, -515
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__err68.1)
  %cmp113200 = icmp slt i32 %__err68.1, 0
  %cmp113 = and i1 %cmp108, %cmp113200
  br i1 %cmp113, label %for.end106.cleanup_crit_edge, label %for.end106.if.end115_crit_edge

for.end106.if.end115_crit_edge:                   ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

for.end106.cleanup_crit_edge:                     ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end115:                                        ; preds = %for.end106.if.end115_crit_edge, %for.end.if.end115_crit_edge
  %80 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %81)
  %cmp118 = icmp ugt i32 %81, 720
  br i1 %cmp118, label %if.end115.cleanup_crit_edge, label %lor.lhs.false119

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false119:                                 ; preds = %if.end115
  %82 = ptrtoint ptr %height65 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %height65, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %.)
  %cmp122 = icmp ugt i32 %83, %.
  br i1 %cmp122, label %lor.lhs.false119.cleanup_crit_edge, label %lor.lhs.false123

lor.lhs.false119.cleanup_crit_edge:               ; preds = %lor.lhs.false119
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false123:                                 ; preds = %lor.lhs.false119
  %84 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8200, i32 %85)
  %cmp125.not = icmp eq i32 %85, 8200
  br i1 %cmp125.not, label %if.end127, label %lor.lhs.false123.cleanup_crit_edge

lor.lhs.false123.cleanup_crit_edge:               ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end127:                                        ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %81, ptr %7, align 4
  %87 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %83, ptr %8, align 4
  %88 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %std, align 8
  call fastcc void @vou_adjust_input(ptr noundef nonnull %geo, i64 noundef %89)
  %rect137 = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 6
  %90 = call ptr @memcpy(ptr %rect137, ptr %geo, i32 16)
  %91 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %9, align 4
  %93 = ptrtoint ptr %pix1 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %pix1, align 4
  %94 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %10, align 4
  %96 = ptrtoint ptr %height23 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %height23, align 4
  %pix_idx = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 9
  %97 = ptrtoint ptr %pix_idx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pix_idx, align 8
  %99 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %11, align 4
  %101 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %12, align 4
  call fastcc void @sh_vou_configure_geometry(ptr noundef %1, i32 noundef %98, i32 noundef %100, i32 noundef %102)
  br label %cleanup

cleanup:                                          ; preds = %if.end127, %lor.lhs.false123.cleanup_crit_edge, %lor.lhs.false119.cleanup_crit_edge, %if.end115.cleanup_crit_edge, %for.end106.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end127 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ %__err68.1, %for.end106.cleanup_crit_edge ], [ -5, %lor.lhs.false123.cleanup_crit_edge ], [ -5, %lor.lhs.false119.cleanup_crit_edge ], [ -5, %if.end115.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geo) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sd_sel) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_log_status(ptr noundef %file, ptr nocapture noundef readnone %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %base.i = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !244
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %4) #12
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !244
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %7) #12
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 8
  %add.ptr.i138 = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138) #9, !srcloc !244
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %10) #12
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 8
  %add.ptr.i140 = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140) #9, !srcloc !244
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %13) #12
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 8
  %add.ptr.i142 = getelementptr i8, ptr %15, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142) #9, !srcloc !244
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %16) #12
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 8
  %add.ptr.i144 = getelementptr i8, ptr %18, i32 20
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #9, !srcloc !244
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %19) #12
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 8
  %add.ptr.i146 = getelementptr i8, ptr %21, i32 24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146) #9, !srcloc !244
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %22) #12
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 8
  %add.ptr.i148 = getelementptr i8, ptr %24, i32 28
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148) #9, !srcloc !244
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %25) #12
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 8
  %add.ptr.i150 = getelementptr i8, ptr %27, i32 32
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150) #9, !srcloc !244
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %28) #12
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 8
  %add.ptr.i152 = getelementptr i8, ptr %30, i32 36
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i152) #9, !srcloc !244
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %31) #12
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 8
  %add.ptr.i154 = getelementptr i8, ptr %33, i32 40
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154) #9, !srcloc !244
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %34) #12
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 8
  %add.ptr.i156 = getelementptr i8, ptr %36, i32 44
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i156) #9, !srcloc !244
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %37) #12
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 8
  %add.ptr.i158 = getelementptr i8, ptr %39, i32 48
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i158) #9, !srcloc !244
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %40) #12
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 8
  %add.ptr.i160 = getelementptr i8, ptr %42, i32 52
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i160) #9, !srcloc !244
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %43) #12
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 8
  %add.ptr.i162 = getelementptr i8, ptr %45, i32 56
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i162) #9, !srcloc !244
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %46) #12
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 8
  %add.ptr.i164 = getelementptr i8, ptr %48, i32 60
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i164) #9, !srcloc !244
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %49) #12
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 8
  %add.ptr.i166 = getelementptr i8, ptr %51, i32 64
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i166) #9, !srcloc !244
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %52) #12
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 8
  %add.ptr.i168 = getelementptr i8, ptr %54, i32 68
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i168) #9, !srcloc !244
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %55) #12
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 8
  %add.ptr.i170 = getelementptr i8, ptr %57, i32 72
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i170) #9, !srcloc !244
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %58) #12
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 8
  %add.ptr.i172 = getelementptr i8, ptr %60, i32 80
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i172) #9, !srcloc !244
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef %61) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sh_vou_set_fmt_vid_out(ptr noundef %vou_dev, ptr nocapture noundef %pix) unnamed_addr #2 align 64 {
entry:
  %geo = alloca %struct.sh_vou_geometry, align 4
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geo) #9
  %0 = getelementptr inbounds %struct.v4l2_rect, ptr %geo, i32 0, i32 2
  %1 = getelementptr inbounds %struct.v4l2_rect, ptr %geo, i32 0, i32 3
  %2 = getelementptr inbounds %struct.sh_vou_geometry, ptr %geo, i32 0, i32 1
  %3 = getelementptr inbounds %struct.sh_vou_geometry, ptr %geo, i32 0, i32 2
  %4 = getelementptr inbounds %struct.sh_vou_geometry, ptr %geo, i32 0, i32 3
  %5 = getelementptr inbounds %struct.sh_vou_geometry, ptr %geo, i32 0, i32 4
  %6 = getelementptr inbounds i8, ptr %geo, i32 24
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 -1, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #9
  %8 = getelementptr inbounds i8, ptr %format, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 84)
  %10 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %format, align 4
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %12 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8200, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %16, align 4
  %num_buffers.i = getelementptr inbounds %struct.sh_vou_device, ptr %vou_dev, i32 0, i32 10, i32 21
  %18 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.not = icmp eq i32 %19, 0
  br i1 %cmp.i.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 2
  %20 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pixelformat, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %21, label %for.inc.4 [
    i32 842094158, label %for.cond.preheader.for.end_crit_edge
    i32 909203022, label %for.end.fold.split
    i32 859981650, label %for.end.fold.split184
    i32 1346520914, label %for.end.fold.split185
    i32 1380075346, label %for.end.fold.split186
  ]

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.4:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split:                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split184:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split185:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end.fold.split186:                            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.end.fold.split186, %for.end.fold.split185, %for.end.fold.split184, %for.end.fold.split, %for.inc.4, %for.cond.preheader.for.end_crit_edge
  %pix_idx.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ 5, %for.inc.4 ], [ 1, %for.end.fold.split ], [ 2, %for.end.fold.split184 ], [ 3, %for.end.fold.split185 ], [ 4, %for.end.fold.split186 ]
  %23 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pix, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %2, align 4
  %height = getelementptr inbounds %struct.v4l2_pix_format, ptr %pix, i32 0, i32 1
  %26 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %3, align 4
  %rect = getelementptr inbounds %struct.sh_vou_device, ptr %vou_dev, i32 0, i32 6
  %29 = call ptr @memcpy(ptr %geo, ptr %rect, i32 16)
  %std = getelementptr inbounds %struct.sh_vou_device, ptr %vou_dev, i32 0, i32 8
  %30 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %std, align 8
  call fastcc void @vou_adjust_output(ptr noundef nonnull %geo, i64 noundef %31)
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %0, align 4
  %34 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %11, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %1, align 4
  %height10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %height10 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %height10, align 4
  %subdevs = getelementptr inbounds %struct.v4l2_device, ptr %vou_dev, i32 0, i32 2
  %38 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn173 = load ptr, ptr %subdevs, align 4
  %cmp15.not175 = icmp eq ptr %.pn173, %subdevs
  br i1 %cmp15.not175, label %for.end.do.body_crit_edge, label %for.end.for.body16_crit_edge

for.end.for.body16_crit_edge:                     ; preds = %for.end
  br label %for.body16

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body16:                                       ; preds = %for.inc31.for.body16_crit_edge, %for.end.for.body16_crit_edge
  %.pn177 = phi ptr [ %.pn, %for.inc31.for.body16_crit_edge ], [ %.pn173, %for.end.for.body16_crit_edge ]
  %__err.0176 = phi i32 [ %__err.1, %for.inc31.for.body16_crit_edge ], [ 0, %for.end.for.body16_crit_edge ]
  %__sd.0178 = getelementptr i8, ptr %.pn177, i32 -80
  %ops = getelementptr i8, ptr %.pn177, i32 24
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pad, align 4
  %tobool.not = icmp eq ptr %42, null
  br i1 %tobool.not, label %for.body16.if.end25_crit_edge, label %land.lhs.true

for.body16.if.end25_crit_edge:                    ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true:                                    ; preds = %for.body16
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_fmt, align 4
  %tobool19.not = icmp eq ptr %44, null
  br i1 %tobool19.not, label %land.lhs.true.if.end25_crit_edge, label %if.then20

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = call i32 %44(ptr noundef %__sd.0178, ptr noundef null, ptr noundef nonnull %format) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %land.lhs.true.if.end25_crit_edge, %for.body16.if.end25_crit_edge
  %__err.1 = phi i32 [ %call24, %if.then20 ], [ %__err.0176, %land.lhs.true.if.end25_crit_edge ], [ %__err.0176, %for.body16.if.end25_crit_edge ]
  %45 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %__err.1, label %if.end25.for.end37_crit_edge [
    i32 0, label %if.end25.for.inc31_crit_edge
    i32 -515, label %if.end25.for.inc31_crit_edge187
  ]

if.end25.for.inc31_crit_edge187:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc31

if.end25.for.inc31_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc31

if.end25.for.end37_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37

for.inc31:                                        ; preds = %if.end25.for.inc31_crit_edge, %if.end25.for.inc31_crit_edge187
  %46 = ptrtoint ptr %.pn177 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn = load ptr, ptr %.pn177, align 4
  %cmp15.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp15.not, label %for.inc31.for.end37_crit_edge, label %for.inc31.for.body16_crit_edge

for.inc31.for.body16_crit_edge:                   ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16

for.inc31.for.end37_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end37

for.end37:                                        ; preds = %for.inc31.for.end37_crit_edge, %if.end25.for.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err.1)
  %cmp39 = icmp ne i32 %__err.1, -515
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__err.1)
  %cmp40171 = icmp slt i32 %__err.1, 0
  %cmp40 = and i1 %cmp39, %cmp40171
  br i1 %cmp40, label %for.end37.cleanup_crit_edge, label %for.end37.do.body_crit_edge

for.end37.do.body_crit_edge:                      ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end37.cleanup_crit_edge:                      ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %for.end37.do.body_crit_edge, %for.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_vou_set_fmt_vid_out.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_vou_set_fmt_vid_out, %if.then49)) #9
          to label %do.end [label %if.then49], !srcloc !246

if.then49:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %vou_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vou_dev, align 8
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %0, align 4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %1, align 4
  %53 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %11, align 4
  %55 = ptrtoint ptr %height10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %height10, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_vou_set_fmt_vid_out.__UNIQUE_ID_ddebug310, ptr noundef %48, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56) #9
  br label %do.end

do.end:                                           ; preds = %if.then49, %do.body
  %57 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %std, align 8
  %59 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %60)
  %cmp63 = icmp ugt i32 %60, 720
  br i1 %cmp63, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %and = and i64 %58, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool59.not = icmp eq i64 %and, 0
  %. = select i1 %tobool59.not, i32 576, i32 480
  %61 = ptrtoint ptr %height10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %height10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %.)
  %cmp65 = icmp ugt i32 %62, %.
  br i1 %cmp65, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false66

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false66:                                  ; preds = %lor.lhs.false
  %63 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8200, i32 %64)
  %cmp67.not = icmp eq i32 %64, 8200
  br i1 %cmp67.not, label %if.end69, label %lor.lhs.false66.cleanup_crit_edge

lor.lhs.false66.cleanup_crit_edge:                ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end69:                                         ; preds = %lor.lhs.false66
  %65 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %66)
  %cmp73.not = icmp eq i32 %60, %66
  br i1 %cmp73.not, label %lor.lhs.false74, label %if.end69.if.then79_crit_edge

if.end69.if.then79_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then79

lor.lhs.false74:                                  ; preds = %if.end69
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %68)
  %cmp78.not = icmp eq i32 %62, %68
  br i1 %cmp78.not, label %lor.lhs.false74.if.end87_crit_edge, label %lor.lhs.false74.if.then79_crit_edge

lor.lhs.false74.if.then79_crit_edge:              ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then79

lor.lhs.false74.if.end87_crit_edge:               ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then79:                                        ; preds = %lor.lhs.false74.if.then79_crit_edge, %if.end69.if.then79_crit_edge
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %60, ptr %0, align 4
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %62, ptr %1, align 4
  call fastcc void @vou_adjust_input(ptr noundef nonnull %geo, i64 noundef %58)
  br label %if.end87

if.end87:                                         ; preds = %if.then79, %lor.lhs.false74.if.end87_crit_edge
  %71 = call ptr @memcpy(ptr %rect, ptr %geo, i32 16)
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %2, align 4
  %74 = ptrtoint ptr %pix to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %pix, align 4
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %3, align 4
  %77 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %height, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_vou_set_fmt_vid_out.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_vou_set_fmt_vid_out, %if.then106)) #9
          to label %do.end113 [label %if.then106], !srcloc !246

if.then106:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %vou_dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %vou_dev, align 8
  %80 = ptrtoint ptr %pix to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pix, align 4
  %82 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %height, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_vou_set_fmt_vid_out.__UNIQUE_ID_ddebug311, ptr noundef %79, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef %81, i32 noundef %83) #9
  br label %do.end113

do.end113:                                        ; preds = %if.then106, %if.end87
  %pix_idx114 = getelementptr inbounds %struct.sh_vou_device, ptr %vou_dev, i32 0, i32 9
  %84 = ptrtoint ptr %pix_idx114 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %pix_idx.0.lcssa, ptr %pix_idx114, align 8
  %pix115 = getelementptr inbounds %struct.sh_vou_device, ptr %vou_dev, i32 0, i32 5
  %85 = call ptr @memcpy(ptr %pix115, ptr %pix, i32 48)
  %86 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %4, align 4
  %88 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %5, align 4
  call fastcc void @sh_vou_configure_geometry(ptr noundef %vou_dev, i32 noundef %pix_idx.0.lcssa, i32 noundef %87, i32 noundef %89)
  br label %cleanup

cleanup:                                          ; preds = %do.end113, %lor.lhs.false66.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge, %for.end37.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end113 ], [ -16, %entry.cleanup_crit_edge ], [ %__err.1, %for.end37.cleanup_crit_edge ], [ -5, %lor.lhs.false66.cleanup_crit_edge ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geo) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vou_adjust_output(ptr nocapture noundef %geo, i64 noundef %std) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %in_width = getelementptr inbounds %struct.sh_vou_geometry, ptr %geo, i32 0, i32 1
  %0 = ptrtoint ptr %in_width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_width, align 4
  %and = and i64 %std, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %. = select i1 %tobool.not, i32 576, i32 480
  %.163 = select i1 %tobool.not, i32 624, i32 524
  %.164 = select i1 %tobool.not, i32 864, i32 858
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %geo, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %1)
  %cmp4 = icmp ugt i32 %1, 720
  br i1 %cmp4, label %entry.for.end_crit_edge, label %if.end7

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end7:                                          ; preds = %entry
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %sub = sub i32 %1, %3
  %4 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %tobool15.not = icmp eq i32 %1, %3
  br i1 %tobool15.not, label %if.end7.for.end_crit_edge, label %for.inc

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %if.end7
  %mul.1 = mul nuw nsw i32 %1, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5767, i32 %mul.1)
  %cmp4.1 = icmp ugt i32 %mul.1, 5767
  br i1 %cmp4.1, label %for.inc.for.end_crit_edge, label %if.end7.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end7.1:                                        ; preds = %for.inc
  %div.1191 = lshr i32 %mul.1, 3
  %5 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %width, align 4
  %sub.1 = sub i32 %div.1191, %6
  %7 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %4)
  %cmp11.1 = icmp ult i32 %7, %4
  %idx_h.1.1 = zext i1 %cmp11.1 to i32
  %best.1.1 = select i1 %cmp11.1, i32 %div.1191, i32 %1
  call void @__sanitizer_cov_trace_cmp4(i32 %div.1191, i32 %6)
  %tobool15.not.1 = icmp eq i32 %div.1191, %6
  br i1 %tobool15.not.1, label %if.end7.1.for.end_crit_edge, label %for.inc.1

if.end7.1.for.end_crit_edge:                      ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.1:                                        ; preds = %if.end7.1
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 360, i32 %1)
  %cmp4.2 = icmp ugt i32 %1, 360
  br i1 %cmp4.2, label %for.inc.1.for.end_crit_edge, label %if.end7.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end7.2:                                        ; preds = %for.inc.1
  %mul.2 = shl nuw nsw i32 %1, 1
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %sub.2 = sub i32 %mul.2, %10
  %11 = tail call i32 @llvm.abs.i32(i32 %sub.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %8)
  %cmp11.2 = icmp ult i32 %11, %8
  %idx_h.1.2 = select i1 %cmp11.2, i32 2, i32 %idx_h.1.1
  %best.1.2 = select i1 %cmp11.2, i32 %mul.2, i32 %best.1.1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2, i32 %10)
  %tobool15.not.2 = icmp eq i32 %mul.2, %10
  br i1 %tobool15.not.2, label %if.end7.2.for.end_crit_edge, label %for.inc.2

if.end7.2.for.end_crit_edge:                      ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.2:                                        ; preds = %if.end7.2
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2883, i32 %mul.1)
  %cmp4.3 = icmp ugt i32 %mul.1, 2883
  br i1 %cmp4.3, label %for.inc.2.for.end_crit_edge, label %if.end7.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end7.3:                                        ; preds = %for.inc.2
  %div.3192 = lshr i32 %mul.1, 2
  %13 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width, align 4
  %sub.3 = sub i32 %div.3192, %14
  %15 = tail call i32 @llvm.abs.i32(i32 %sub.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %12)
  %cmp11.3 = icmp ult i32 %15, %12
  %idx_h.1.3 = select i1 %cmp11.3, i32 3, i32 %idx_h.1.2
  %best.1.3 = select i1 %cmp11.3, i32 %div.3192, i32 %best.1.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div.3192, i32 %14)
  %tobool15.not.3 = icmp eq i32 %div.3192, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %1)
  %cmp4.4 = icmp ugt i32 %1, 180
  %or.cond = select i1 %tobool15.not.3, i1 true, i1 %cmp4.4
  br i1 %or.cond, label %if.end7.3.for.end_crit_edge, label %if.end7.4

if.end7.3.for.end_crit_edge:                      ; preds = %if.end7.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end7.4:                                        ; preds = %if.end7.3
  call void @__sanitizer_cov_trace_pc() #11
  %mul.4 = shl nuw nsw i32 %1, 2
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %12)
  %17 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %width, align 4
  %sub.4 = sub i32 %mul.4, %18
  %19 = tail call i32 @llvm.abs.i32(i32 %sub.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %16)
  %cmp11.4 = icmp ult i32 %19, %16
  %idx_h.1.4 = select i1 %cmp11.4, i32 4, i32 %idx_h.1.3
  %best.1.4 = select i1 %cmp11.4, i32 %mul.4, i32 %best.1.3
  br label %for.end

for.end:                                          ; preds = %if.end7.4, %if.end7.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %if.end7.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %if.end7.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end7.for.end_crit_edge, %entry.for.end_crit_edge
  %idx_h.3 = phi i32 [ 0, %entry.for.end_crit_edge ], [ 0, %if.end7.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ], [ %idx_h.1.1, %if.end7.1.for.end_crit_edge ], [ %idx_h.1.1, %for.inc.1.for.end_crit_edge ], [ %idx_h.1.2, %if.end7.2.for.end_crit_edge ], [ %idx_h.1.2, %for.inc.2.for.end_crit_edge ], [ %idx_h.1.3, %if.end7.3.for.end_crit_edge ], [ %idx_h.1.4, %if.end7.4 ]
  %best.3 = phi i32 [ %1, %entry.for.end_crit_edge ], [ %1, %if.end7.for.end_crit_edge ], [ %1, %for.inc.for.end_crit_edge ], [ %best.1.1, %if.end7.1.for.end_crit_edge ], [ %best.1.1, %for.inc.1.for.end_crit_edge ], [ %best.1.2, %if.end7.2.for.end_crit_edge ], [ %best.1.2, %for.inc.2.for.end_crit_edge ], [ %best.1.3, %if.end7.3.for.end_crit_edge ], [ %best.1.4, %if.end7.4 ]
  %20 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %best.3, ptr %width, align 4
  %scale_idx_h = getelementptr inbounds %struct.sh_vou_geometry, ptr %geo, i32 0, i32 3
  %21 = ptrtoint ptr %scale_idx_h to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %idx_h.3, ptr %scale_idx_h, align 4
  %22 = ptrtoint ptr %geo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %geo, align 4
  %add = add i32 %23, %best.3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %.164)
  %cmp22 = icmp ugt i32 %add, %.164
  br i1 %cmp22, label %if.then24, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub25 = sub i32 %.164, %best.3
  %24 = ptrtoint ptr %geo to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub25, ptr %geo, align 4
  br label %do.body

do.body:                                          ; preds = %if.then24, %for.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vou_adjust_output.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vou_adjust_output, %if.then33)) #9
          to label %do.end [label %if.then33], !srcloc !246

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %in_width to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %in_width, align 4
  %arrayidx35 = getelementptr [5 x i8], ptr @vou_scale_h_num, i32 0, i32 %idx_h.3
  %27 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %28 to i32
  %arrayidx37 = getelementptr [5 x i8], ptr @vou_scale_h_den, i32 0, i32 %idx_h.3
  %29 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vou_adjust_output.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %26, i32 noundef %conv36, i32 noundef %conv38, i32 noundef %best.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then33, %do.body
  %in_height = getelementptr inbounds %struct.sh_vou_geometry, ptr %geo, i32 0, i32 2
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %geo, i32 0, i32 3
  %31 = ptrtoint ptr %in_height to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %in_height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %.)
  %cmp52 = icmp ugt i32 %32, %.
  br i1 %cmp52, label %do.end.for.end80_crit_edge, label %if.end55

do.end.for.end80_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end80

if.end55:                                         ; preds = %do.end
  %33 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height, align 4
  %sub58 = sub i32 %32, %34
  %35 = tail call i32 @llvm.abs.i32(i32 %sub58, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %tobool71.not = icmp eq i32 %32, %34
  br i1 %tobool71.not, label %if.end55.for.end80_crit_edge, label %for.inc78

if.end55.for.end80_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end80

for.inc78:                                        ; preds = %if.end55
  %mul48.1 = shl i32 %32, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul48.1, i32 %.)
  %cmp52.1 = icmp ugt i32 %mul48.1, %.
  br i1 %cmp52.1, label %for.inc78.for.end80_crit_edge, label %if.end55.1

for.inc78.for.end80_crit_edge:                    ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end80

if.end55.1:                                       ; preds = %for.inc78
  %36 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height, align 4
  %sub58.1 = sub i32 %mul48.1, %37
  %38 = tail call i32 @llvm.abs.i32(i32 %sub58.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %35)
  %cmp67.1 = icmp ult i32 %38, %35
  %idx_v.1.1 = zext i1 %cmp67.1 to i32
  %best.5.1 = select i1 %cmp67.1, i32 %mul48.1, i32 %32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul48.1, i32 %37)
  %tobool71.not.1 = icmp eq i32 %mul48.1, %37
  br i1 %tobool71.not.1, label %if.end55.1.for.end80_crit_edge, label %for.inc78.1

if.end55.1.for.end80_crit_edge:                   ; preds = %if.end55.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end80

for.inc78.1:                                      ; preds = %if.end55.1
  %mul48.2 = shl i32 %32, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul48.2, i32 %.)
  %cmp52.2 = icmp ugt i32 %mul48.2, %.
  br i1 %cmp52.2, label %for.inc78.1.for.end80_crit_edge, label %if.end55.2

for.inc78.1.for.end80_crit_edge:                  ; preds = %for.inc78.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end80

if.end55.2:                                       ; preds = %for.inc78.1
  call void @__sanitizer_cov_trace_pc() #11
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 %35)
  %40 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height, align 4
  %sub58.2 = sub i32 %mul48.2, %41
  %42 = tail call i32 @llvm.abs.i32(i32 %sub58.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %39)
  %cmp67.2 = icmp ult i32 %42, %39
  %idx_v.1.2 = select i1 %cmp67.2, i32 2, i32 %idx_v.1.1
  %best.5.2 = select i1 %cmp67.2, i32 %mul48.2, i32 %best.5.1
  br label %for.end80

for.end80:                                        ; preds = %if.end55.2, %for.inc78.1.for.end80_crit_edge, %if.end55.1.for.end80_crit_edge, %for.inc78.for.end80_crit_edge, %if.end55.for.end80_crit_edge, %do.end.for.end80_crit_edge
  %idx_v.3 = phi i32 [ 0, %do.end.for.end80_crit_edge ], [ 0, %if.end55.for.end80_crit_edge ], [ 0, %for.inc78.for.end80_crit_edge ], [ %idx_v.1.1, %if.end55.1.for.end80_crit_edge ], [ %idx_v.1.1, %for.inc78.1.for.end80_crit_edge ], [ %idx_v.1.2, %if.end55.2 ]
  %best.7 = phi i32 [ %best.3, %do.end.for.end80_crit_edge ], [ %32, %if.end55.for.end80_crit_edge ], [ %32, %for.inc78.for.end80_crit_edge ], [ %best.5.1, %if.end55.1.for.end80_crit_edge ], [ %best.5.1, %for.inc78.1.for.end80_crit_edge ], [ %best.5.2, %if.end55.2 ]
  %43 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %best.7, ptr %height, align 4
  %scale_idx_v = getelementptr inbounds %struct.sh_vou_geometry, ptr %geo, i32 0, i32 4
  %44 = ptrtoint ptr %scale_idx_v to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %idx_v.3, ptr %scale_idx_v, align 4
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %geo, i32 0, i32 1
  %45 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %top, align 4
  %add84 = add i32 %46, %best.7
  call void @__sanitizer_cov_trace_cmp4(i32 %add84, i32 %.163)
  %cmp85 = icmp ugt i32 %add84, %.163
  br i1 %cmp85, label %if.then87, label %for.end80.do.body92_crit_edge

for.end80.do.body92_crit_edge:                    ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body92

if.then87:                                        ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #11
  %sub88 = sub i32 %.163, %best.7
  %47 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub88, ptr %top, align 4
  br label %do.body92

do.body92:                                        ; preds = %if.then87, %for.end80.do.body92_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vou_adjust_output.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vou_adjust_output, %if.then104)) #9
          to label %do.end112 [label %if.then104], !srcloc !246

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %in_height to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %in_height, align 4
  %arrayidx106 = getelementptr [3 x i8], ptr @vou_scale_v_num, i32 0, i32 %idx_v.3
  %50 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %51 to i32
  %arrayidx108 = getelementptr [3 x i8], ptr @vou_scale_v_den, i32 0, i32 %idx_v.3
  %52 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx108, align 1
  %conv109 = zext i8 %53 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vou_adjust_output.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef %49, i32 noundef %conv107, i32 noundef %conv109, i32 noundef %best.7) #9
  br label %do.end112

do.end112:                                        ; preds = %if.then104, %do.body92
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vou_adjust_input(ptr noundef %geo, i64 noundef %std) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %std, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %. = select i1 %tobool.not, i32 576, i32 480
  %in_width = getelementptr inbounds %struct.sh_vou_geometry, ptr %geo, i32 0, i32 1
  %in_height = getelementptr inbounds %struct.sh_vou_geometry, ptr %geo, i32 0, i32 2
  tail call void @v4l_bound_align_image(ptr noundef %in_width, i32 noundef 16, i32 noundef 720, i32 noundef 2, ptr noundef %in_height, i32 noundef 16, i32 noundef %., i32 noundef 1, i32 noundef 0) #9
  %width = getelementptr inbounds %struct.v4l2_rect, ptr %geo, i32 0, i32 2
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %div119 = lshr i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2883, i32 %1)
  %cmp3 = icmp ugt i32 %1, 2883
  br i1 %cmp3, label %entry.for.end_crit_edge, label %if.end6

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end6:                                          ; preds = %entry
  %2 = ptrtoint ptr %in_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_width, align 4
  %sub = sub i32 %div119, %3
  %4 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %div119, i32 %3)
  %tobool15.not = icmp eq i32 %div119, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1622, i32 %1)
  %cmp3.1 = icmp ugt i32 %1, 1622
  %or.cond127 = or i1 %tobool15.not, %cmp3.1
  br i1 %or.cond127, label %if.end6.for.end_crit_edge, label %if.end6.1

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end6.1:                                        ; preds = %if.end6
  %.tr = trunc i32 %1 to i16
  %div.1.lhs.trunc = shl i16 %.tr, 2
  %div.1123 = udiv i16 %div.1.lhs.trunc, 9
  %div.1.zext = zext i16 %div.1123 to i32
  %5 = ptrtoint ptr %in_width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %in_width, align 4
  %sub.1 = sub i32 %div.1.zext, %6
  %7 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %4)
  %cmp11.1 = icmp ult i32 %7, %4
  %idx.1.1 = select i1 %cmp11.1, i32 3, i32 4
  %best.1.1 = select i1 %cmp11.1, i32 %div.1.zext, i32 %div119
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %div.1.zext)
  %tobool15.not.1 = icmp eq i32 %6, %div.1.zext
  br i1 %tobool15.not.1, label %if.end6.1.for.end_crit_edge, label %for.inc.1

if.end6.1.for.end_crit_edge:                      ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.1:                                        ; preds = %if.end6.1
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1441, i32 %1)
  %cmp3.2 = icmp ugt i32 %1, 1441
  br i1 %cmp3.2, label %for.inc.1.for.end_crit_edge, label %if.end6.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end6.2:                                        ; preds = %for.inc.1
  %div.2120 = lshr i32 %1, 1
  %9 = ptrtoint ptr %in_width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %in_width, align 4
  %sub.2 = sub i32 %div.2120, %10
  %11 = tail call i32 @llvm.abs.i32(i32 %sub.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %8)
  %cmp11.2 = icmp ult i32 %11, %8
  %idx.1.2 = select i1 %cmp11.2, i32 2, i32 %idx.1.1
  %best.1.2 = select i1 %cmp11.2, i32 %div.2120, i32 %best.1.1
  call void @__sanitizer_cov_trace_cmp4(i32 %div.2120, i32 %10)
  %tobool15.not.2 = icmp eq i32 %div.2120, %10
  br i1 %tobool15.not.2, label %if.end6.2.for.end_crit_edge, label %for.inc.2

if.end6.2.for.end_crit_edge:                      ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.2:                                        ; preds = %if.end6.2
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 811, i32 %1)
  %cmp3.3 = icmp ugt i32 %1, 811
  br i1 %cmp3.3, label %for.inc.2.for.end_crit_edge, label %if.end6.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end6.3:                                        ; preds = %for.inc.2
  %.tr126 = trunc i32 %1 to i16
  %div.3.lhs.trunc = shl i16 %.tr126, 3
  %div.3124 = udiv i16 %div.3.lhs.trunc, 9
  %div.3.zext = zext i16 %div.3124 to i32
  %13 = ptrtoint ptr %in_width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %in_width, align 4
  %sub.3 = sub i32 %div.3.zext, %14
  %15 = tail call i32 @llvm.abs.i32(i32 %sub.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %12)
  %cmp11.3 = icmp ult i32 %15, %12
  %idx.1.3 = select i1 %cmp11.3, i32 1, i32 %idx.1.2
  %best.1.3 = select i1 %cmp11.3, i32 %div.3.zext, i32 %best.1.2
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %div.3.zext)
  %tobool15.not.3 = icmp eq i32 %14, %div.3.zext
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %1)
  %cmp3.4 = icmp ugt i32 %1, 720
  %or.cond = select i1 %tobool15.not.3, i1 true, i1 %cmp3.4
  br i1 %or.cond, label %if.end6.3.for.end_crit_edge, label %if.end6.4

if.end6.3.for.end_crit_edge:                      ; preds = %if.end6.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end6.4:                                        ; preds = %if.end6.3
  call void @__sanitizer_cov_trace_pc() #11
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %12)
  %17 = ptrtoint ptr %in_width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %in_width, align 4
  %sub.4 = sub i32 %1, %18
  %19 = tail call i32 @llvm.abs.i32(i32 %sub.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %16)
  %cmp11.4 = icmp ult i32 %19, %16
  %idx.1.4 = select i1 %cmp11.4, i32 0, i32 %idx.1.3
  %best.1.4 = select i1 %cmp11.4, i32 %1, i32 %best.1.3
  br label %for.end

for.end:                                          ; preds = %if.end6.4, %if.end6.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %if.end6.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %if.end6.1.for.end_crit_edge, %if.end6.for.end_crit_edge, %entry.for.end_crit_edge
  %idx.3 = phi i32 [ 0, %entry.for.end_crit_edge ], [ 4, %if.end6.for.end_crit_edge ], [ %idx.1.1, %if.end6.1.for.end_crit_edge ], [ %idx.1.1, %for.inc.1.for.end_crit_edge ], [ %idx.1.2, %if.end6.2.for.end_crit_edge ], [ %idx.1.2, %for.inc.2.for.end_crit_edge ], [ %idx.1.3, %if.end6.3.for.end_crit_edge ], [ %idx.1.4, %if.end6.4 ]
  %best.3 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %div119, %if.end6.for.end_crit_edge ], [ %best.1.1, %if.end6.1.for.end_crit_edge ], [ %best.1.1, %for.inc.1.for.end_crit_edge ], [ %best.1.2, %if.end6.2.for.end_crit_edge ], [ %best.1.2, %for.inc.2.for.end_crit_edge ], [ %best.1.3, %if.end6.3.for.end_crit_edge ], [ %best.1.4, %if.end6.4 ]
  %20 = ptrtoint ptr %in_width to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %best.3, ptr %in_width, align 4
  %scale_idx_h = getelementptr inbounds %struct.sh_vou_geometry, ptr %geo, i32 0, i32 3
  %21 = ptrtoint ptr %scale_idx_h to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %idx.3, ptr %scale_idx_h, align 4
  %height = getelementptr inbounds %struct.v4l2_rect, ptr %geo, i32 0, i32 3
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  %div32121 = lshr i32 %23, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div32121, i32 %.)
  %cmp33 = icmp ugt i32 %div32121, %.
  br i1 %cmp33, label %for.end.for.end61_crit_edge, label %if.end36

for.end.for.end61_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end61

if.end36:                                         ; preds = %for.end
  %24 = ptrtoint ptr %in_height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %in_height, align 4
  %sub39 = sub i32 %div32121, %25
  %26 = tail call i32 @llvm.abs.i32(i32 %sub39, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %div32121, i32 %25)
  %tobool52.not = icmp eq i32 %div32121, %25
  br i1 %tobool52.not, label %if.end36.for.end61_crit_edge, label %for.inc59

if.end36.for.end61_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end61

for.inc59:                                        ; preds = %if.end36
  %div32.1122 = lshr i32 %23, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div32.1122, i32 %.)
  %cmp33.1 = icmp ugt i32 %div32.1122, %.
  br i1 %cmp33.1, label %for.inc59.for.end61_crit_edge, label %if.end36.1

for.inc59.for.end61_crit_edge:                    ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end61

if.end36.1:                                       ; preds = %for.inc59
  %27 = ptrtoint ptr %in_height to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %in_height, align 4
  %sub39.1 = sub i32 %div32.1122, %28
  %29 = tail call i32 @llvm.abs.i32(i32 %sub39.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %26)
  %cmp48.1 = icmp ult i32 %29, %26
  %idx.5.1 = select i1 %cmp48.1, i32 1, i32 2
  %best.5.1 = select i1 %cmp48.1, i32 %div32.1122, i32 %div32121
  call void @__sanitizer_cov_trace_cmp4(i32 %div32.1122, i32 %28)
  %tobool52.not.1 = icmp eq i32 %div32.1122, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %.)
  %cmp33.2 = icmp ugt i32 %23, %.
  %or.cond125 = or i1 %tobool52.not.1, %cmp33.2
  br i1 %or.cond125, label %if.end36.1.for.end61_crit_edge, label %if.end36.2

if.end36.1.for.end61_crit_edge:                   ; preds = %if.end36.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end61

if.end36.2:                                       ; preds = %if.end36.1
  call void @__sanitizer_cov_trace_pc() #11
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %26)
  %31 = ptrtoint ptr %in_height to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %in_height, align 4
  %sub39.2 = sub i32 %23, %32
  %33 = tail call i32 @llvm.abs.i32(i32 %sub39.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %30)
  %cmp48.2 = icmp ult i32 %33, %30
  %idx.5.2 = select i1 %cmp48.2, i32 0, i32 %idx.5.1
  %best.5.2 = select i1 %cmp48.2, i32 %23, i32 %best.5.1
  br label %for.end61

for.end61:                                        ; preds = %if.end36.2, %if.end36.1.for.end61_crit_edge, %for.inc59.for.end61_crit_edge, %if.end36.for.end61_crit_edge, %for.end.for.end61_crit_edge
  %idx.7 = phi i32 [ %idx.3, %for.end.for.end61_crit_edge ], [ 2, %if.end36.for.end61_crit_edge ], [ 2, %for.inc59.for.end61_crit_edge ], [ %idx.5.1, %if.end36.1.for.end61_crit_edge ], [ %idx.5.2, %if.end36.2 ]
  %best.7 = phi i32 [ %best.3, %for.end.for.end61_crit_edge ], [ %div32121, %if.end36.for.end61_crit_edge ], [ %div32121, %for.inc59.for.end61_crit_edge ], [ %best.5.1, %if.end36.1.for.end61_crit_edge ], [ %best.5.2, %if.end36.2 ]
  %34 = ptrtoint ptr %in_height to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %best.7, ptr %in_height, align 4
  %scale_idx_v = getelementptr inbounds %struct.sh_vou_geometry, ptr %geo, i32 0, i32 4
  %35 = ptrtoint ptr %scale_idx_v to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %idx.7, ptr %scale_idx_v, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_vou_configure_geometry(ptr nocapture noundef readonly %vou_dev, i32 noundef %pix_idx, i32 noundef %w_idx, i32 noundef %h_idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.sh_vou_fmt, ptr @vou_fmt, i32 %pix_idx
  %rect1 = getelementptr inbounds %struct.sh_vou_device, ptr %vou_dev, i32 0, i32 6
  %pix2 = getelementptr inbounds %struct.sh_vou_device, ptr %vou_dev, i32 0, i32 5
  %std = getelementptr inbounds %struct.sh_vou_device, ptr %vou_dev, i32 0, i32 8
  %0 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %std, align 8
  %and = and i64 %1, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %. = select i1 %tobool.not, i32 144, i32 138
  %height = getelementptr inbounds %struct.sh_vou_device, ptr %vou_dev, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %div94 = lshr i32 %3, 1
  %height3 = getelementptr inbounds %struct.sh_vou_device, ptr %vou_dev, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %height3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height3, align 4
  %div495 = lshr i32 %5, 1
  %top = getelementptr inbounds %struct.sh_vou_device, ptr %vou_dev, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %top, align 4
  %div5 = sdiv i32 %7, 2
  %width = getelementptr inbounds %struct.sh_vou_device, ptr %vou_dev, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  %10 = ptrtoint ptr %rect1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rect1, align 4
  %add = add i32 %11, %9
  %add6 = add i32 %div5, %div495
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_vou_configure_geometry.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_vou_configure_geometry, %if.then10)) #9
          to label %do.end [label %if.then10], !srcloc !246

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %vou_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vou_dev, align 8
  %14 = ptrtoint ptr %pix2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pix2, align 4
  %16 = ptrtoint ptr %rect1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rect1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_vou_configure_geometry.__UNIQUE_ID_ddebug305, ptr noundef %13, ptr noundef nonnull @.str.36, i32 noundef %15, i32 noundef %div94, i32 noundef %., i32 noundef 20, i32 noundef %17, i32 noundef %div5, i32 noundef %add, i32 noundef %add6) #9
  br label %do.end

do.end:                                           ; preds = %if.then10, %entry
  %18 = ptrtoint ptr %pix2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pix2, align 4
  %shl = shl i32 %19, 16
  %or = or i32 %shl, %div94
  %base.i = getelementptr inbounds %struct.sh_vou_device, ptr %vou_dev, i32 0, i32 4
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #9, !srcloc !245
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %23, i32 4112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %or) #9, !srcloc !245
  %shl15 = shl nuw nsw i32 %., 16
  %or16 = or i32 %shl15, 20
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 8
  %add.ptr.i100 = getelementptr i8, ptr %25, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 %or16) #9, !srcloc !245
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 8
  %add.ptr3.i102 = getelementptr i8, ptr %27, i32 4128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i102, i32 %or16) #9, !srcloc !245
  %28 = ptrtoint ptr %rect1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rect1, align 4
  %shl18 = shl i32 %29, 16
  %or19 = or i32 %shl18, %div5
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 8
  %add.ptr.i104 = getelementptr i8, ptr %31, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %or19) #9, !srcloc !245
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 8
  %add.ptr3.i106 = getelementptr i8, ptr %33, i32 4120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i106, i32 %or19) #9, !srcloc !245
  %shl20 = shl i32 %add, 16
  %or21 = or i32 %shl20, %add6
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 8
  %add.ptr.i108 = getelementptr i8, ptr %35, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %or21) #9, !srcloc !245
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 8
  %add.ptr3.i110 = getelementptr i8, ptr %37, i32 4124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i110, i32 %or21) #9, !srcloc !245
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %w_idx)
  %tobool22.not = icmp eq i32 %w_idx, 0
  br i1 %tobool22.not, label %do.end.if.end28_crit_edge, label %if.then23

do.end.if.end28_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub24 = add i32 %w_idx, -1
  %arrayidx = getelementptr [4 x i8], ptr @vou_scale_h_fld, i32 0, i32 %sub24
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %39 to i32
  %shl25 = shl nuw nsw i32 %conv, 4
  %or26 = or i32 %shl25, 32768
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %do.end.if.end28_crit_edge
  %vouvcr.0 = phi i32 [ %or26, %if.then23 ], [ 0, %do.end.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h_idx)
  %tobool29.not = icmp eq i32 %h_idx, 0
  br i1 %tobool29.not, label %if.end28.do.body37_crit_edge, label %if.then30

if.end28.do.body37_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %sub31 = add i32 %h_idx, -1
  %arrayidx32 = getelementptr [2 x i8], ptr @vou_scale_v_fld, i32 0, i32 %sub31
  %40 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %41 to i32
  %or34 = or i32 %vouvcr.0, %conv33
  %or35 = or i32 %or34, 16384
  br label %do.body37

do.body37:                                        ; preds = %if.then30, %if.end28.do.body37_crit_edge
  %vouvcr.1 = phi i32 [ %or35, %if.then30 ], [ %vouvcr.0, %if.end28.do.body37_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_vou_configure_geometry.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_vou_configure_geometry, %if.then49)) #9
          to label %do.end54 [label %if.then49], !srcloc !246

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %vou_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vou_dev, align 8
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_vou_configure_geometry.__UNIQUE_ID_ddebug306, ptr noundef %43, ptr noundef nonnull @.str.37, i32 noundef %45, i32 noundef %vouvcr.1) #9
  br label %do.end54

do.end54:                                         ; preds = %if.then49, %do.body37
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 8
  %add.ptr.i112 = getelementptr i8, ptr %47, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %vouvcr.1) #9, !srcloc !245
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 8
  %add.ptr3.i114 = getelementptr i8, ptr %49, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i114, i32 %vouvcr.1) #9, !srcloc !245
  %pkf = getelementptr %struct.sh_vou_fmt, ptr @vou_fmt, i32 %pix_idx, i32 5
  %50 = ptrtoint ptr %pkf to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pkf, align 4
  %conv55 = zext i8 %51 to i32
  %yf = getelementptr %struct.sh_vou_fmt, ptr @vou_fmt, i32 %pix_idx, i32 4
  %52 = ptrtoint ptr %yf to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %yf, align 1
  %conv56 = zext i8 %53 to i32
  %shl57 = shl nuw nsw i32 %conv56, 8
  %or58 = or i32 %shl57, %conv55
  %rgb = getelementptr %struct.sh_vou_fmt, ptr @vou_fmt, i32 %pix_idx, i32 3
  %54 = ptrtoint ptr %rgb to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %rgb, align 2
  %conv59 = zext i8 %55 to i32
  %shl60 = shl nuw nsw i32 %conv59, 16
  %or61 = or i32 %or58, %shl60
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 8
  %add.ptr.i116 = getelementptr i8, ptr %57, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %or61) #9, !srcloc !245
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 8
  %add.ptr3.i118 = getelementptr i8, ptr %59, i32 4148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i118, i32 %or61) #9, !srcloc !245
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %pix1 = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 5
  %pix_idx = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pix_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pix_idx, align 8
  %bpp = getelementptr [5 x %struct.sh_vou_fmt], ptr @vou_fmt, i32 0, i32 %3, i32 1
  %4 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bpp, align 4
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %pix1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pix1, align 4
  %mul = mul i32 %7, %conv
  %div23 = lshr i32 %mul, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_vou_queue_setup.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_vou_queue_setup, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !246

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_vou_queue_setup.__UNIQUE_ID_ddebug299, ptr noundef %9, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.104) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %if.end10, label %if.then6

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sizes, align 4
  %height = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %mul8 = mul i32 %15, %div23
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %mul8)
  %cmp = icmp ult i32 %13, %mul8
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %nplanes, align 4
  %height11 = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height11, align 4
  %mul12 = mul i32 %18, %div23
  %19 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul12, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then6
  %retval.0 = phi i32 [ %cond, %if.then6 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %pix1 = getelementptr inbounds %struct.sh_vou_device, ptr %3, i32 0, i32 5
  %pix_idx = getelementptr inbounds %struct.sh_vou_device, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %pix_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pix_idx, align 8
  %bpp = getelementptr [5 x %struct.sh_vou_fmt], ptr @vou_fmt, i32 0, i32 %5, i32 1
  %6 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bpp, align 4
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %pix1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pix1, align 4
  %mul = mul i32 %9, %conv
  %div28 = lshr i32 %mul, 3
  %height = getelementptr inbounds %struct.sh_vou_device, ptr %3, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %mul2 = mul i32 %div28, %11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_vou_buf_prepare.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_vou_buf_prepare, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !246

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_vou_buf_prepare.__UNIQUE_ID_ddebug300, ptr noundef %13, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.105) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %14 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul2)
  %cmp.not = icmp eq i32 %mul2, 0
  br i1 %cmp.not, label %vb2_plane_size.exit.cleanup_crit_edge, label %vb2_plane_size.exit.vb2_plane_size.exit35_crit_edge

vb2_plane_size.exit.vb2_plane_size.exit35_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_plane_size.exit35

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %do.end
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %mul2)
  %cmp42 = icmp ult i32 %17, %mul2
  br i1 %cmp42, label %vb2_plane_size.exit.thread.vb2_plane_size.exit35_crit_edge, label %if.end42.i

vb2_plane_size.exit.thread.vb2_plane_size.exit35_crit_edge: ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_plane_size.exit35

vb2_plane_size.exit35:                            ; preds = %vb2_plane_size.exit.thread.vb2_plane_size.exit35_crit_edge, %vb2_plane_size.exit.vb2_plane_size.exit35_crit_edge
  %retval.0.i34 = phi i32 [ 0, %vb2_plane_size.exit.vb2_plane_size.exit35_crit_edge ], [ %17, %vb2_plane_size.exit.thread.vb2_plane_size.exit35_crit_edge ]
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.106, i32 noundef %retval.0.i34, i32 noundef %mul2) #12
  br label %cleanup

if.end42.i:                                       ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %20 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul2, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %vb2_plane_size.exit35, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit35 ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %if.end42.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sequence = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sequence, align 4
  %subdevs = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn143 = load ptr, ptr %subdevs, align 4
  %cmp.not145 = icmp eq ptr %.pn143, %subdevs
  br i1 %cmp.not145, label %entry.if.end50_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end50_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn147 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn143, %entry.for.body_crit_edge ]
  %__err.0146 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %__sd.0148 = getelementptr i8, ptr %.pn147, i32 -80
  %ops = getelementptr i8, ptr %.pn147, i32 24
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_stream, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 %9(ptr noundef %__sd.0148, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %__err.1 = phi i32 [ %call10, %if.then ], [ %__err.0146, %land.lhs.true.if.end_crit_edge ], [ %__err.0146, %for.body.if.end_crit_edge ]
  %10 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %__err.1, label %for.end.thread [
    i32 0, label %if.end.for.inc_crit_edge
    i32 -515, label %if.end.for.inc_crit_edge164
  ]

if.end.for.inc_crit_edge164:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %if.end.for.inc_crit_edge164
  %11 = ptrtoint ptr %.pn147 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn147, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %__err.1)
  %cmp22 = icmp ne i32 %__err.1, -515
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__err.1)
  %cmp23 = icmp slt i32 %__err.1, 0
  %or.cond = and i1 %cmp22, %cmp23
  br i1 %or.cond, label %for.end.if.then26_crit_edge, label %for.end.if.end50_crit_edge

for.end.if.end50_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

for.end.if.then26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

for.end.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__err.1)
  %cmp23.old = icmp slt i32 %__err.1, 0
  br i1 %cmp23.old, label %for.end.thread.if.then26_crit_edge, label %for.end.thread.if.end50_crit_edge

for.end.thread.if.end50_crit_edge:                ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

for.end.thread.if.then26_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.then26:                                        ; preds = %for.end.thread.if.then26_crit_edge, %for.end.if.then26_crit_edge
  %buf_list = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %buf_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf_list, align 4
  %cmp39.not150 = icmp eq ptr %13, %buf_list
  br i1 %cmp39.not150, label %if.then26.for.end49_crit_edge, label %if.then26.for.body41_crit_edge

if.then26.for.body41_crit_edge:                   ; preds = %if.then26
  br label %for.body41

if.then26.for.end49_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end49

for.body41:                                       ; preds = %list_del.exit.for.body41_crit_edge, %if.then26.for.body41_crit_edge
  %.pn114.in151 = phi ptr [ %.pn114, %list_del.exit.for.body41_crit_edge ], [ %13, %if.then26.for.body41_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn114.in151, i32 -736
  %14 = ptrtoint ptr %.pn114.in151 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn114 = load ptr, ptr %.pn114.in151, align 8
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 3) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn114.in151) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body41.list_del.exit_crit_edge

for.body41.list_del.exit_crit_edge:               ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn114.in151, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %.pn114.in151 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn114.in151, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body41.list_del.exit_crit_edge
  %21 = ptrtoint ptr %.pn114.in151 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn114.in151, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn114.in151, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp39.not = icmp eq ptr %.pn114, %buf_list
  br i1 %cmp39.not, label %list_del.exit.for.end49_crit_edge, label %list_del.exit.for.body41_crit_edge

list_del.exit.for.body41_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41

list_del.exit.for.end49_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end49

for.end49:                                        ; preds = %list_del.exit.for.end49_crit_edge, %if.then26.for.end49_crit_edge
  %active = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %active, align 4
  br label %cleanup

if.end50:                                         ; preds = %for.end.thread.if.end50_crit_edge, %for.end.if.end50_crit_edge, %entry.if.end50_crit_edge
  %buf_list52 = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %buf_list52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf_list52, align 4
  %add.ptr55 = getelementptr i8, ptr %25, i32 -736
  %active56 = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %active56 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr55, ptr %active56, align 4
  %base.i = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %28, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1) #9, !srcloc !245
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_vou_start_streaming.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_vou_start_streaming, %if.then63)) #9
          to label %do.end [label %if.then63], !srcloc !246

if.then63:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 8
  %add.ptr.i117 = getelementptr i8, ptr %32, i32 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #9, !srcloc !244
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_vou_start_streaming.__UNIQUE_ID_ddebug301, ptr noundef %30, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.108, i32 noundef %33) #9
  br label %do.end

do.end:                                           ; preds = %if.then63, %if.end50
  %call.i.i118 = tail call ptr @vb2_plane_cookie(ptr noundef %add.ptr55, i32 noundef 0) #9
  %34 = ptrtoint ptr %call.i.i118 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call.i.i118, align 4
  %pixelformat.i = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 5, i32 2
  %36 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pixelformat.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %37, label %do.end.sh_vou_schedule_next.exit_crit_edge [
    i32 842094158, label %do.end.sw.bb.i_crit_edge
    i32 909203022, label %do.end.sw.bb.i_crit_edge165
  ]

do.end.sw.bb.i_crit_edge165:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

do.end.sw.bb.i_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

do.end.sh_vou_schedule_next.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_vou_schedule_next.exit

sw.bb.i:                                          ; preds = %do.end.sw.bb.i_crit_edge, %do.end.sw.bb.i_crit_edge165
  %pix.i = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 5
  %39 = ptrtoint ptr %pix.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pix.i, align 4
  %height.i = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height.i, align 4
  %mul.i = mul i32 %42, %40
  %add.i = add i32 %mul.i, %35
  br label %sh_vou_schedule_next.exit

sh_vou_schedule_next.exit:                        ; preds = %sw.bb.i, %do.end.sh_vou_schedule_next.exit_crit_edge
  %addr2.0.i = phi i32 [ %add.i, %sw.bb.i ], [ 0, %do.end.sh_vou_schedule_next.exit_crit_edge ]
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %44, i32 8248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %35) #9, !srcloc !245
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 8
  %add.ptr1.i10.i = getelementptr i8, ptr %46, i32 8252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i10.i, i32 %addr2.0.i) #9, !srcloc !245
  %47 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %25, align 8
  %add.ptr72 = getelementptr i8, ptr %48, i32 -736
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 8
  %add.ptr.i120 = getelementptr i8, ptr %50, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 0) #9, !srcloc !245
  %call.i.i121 = tail call ptr @vb2_plane_cookie(ptr noundef %add.ptr72, i32 noundef 0) #9
  %51 = ptrtoint ptr %call.i.i121 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %call.i.i121, align 4
  %53 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pixelformat.i, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %54, label %sh_vou_schedule_next.exit.sh_vou_schedule_next.exit132_crit_edge [
    i32 842094158, label %sh_vou_schedule_next.exit.sw.bb.i127_crit_edge
    i32 909203022, label %sh_vou_schedule_next.exit.sw.bb.i127_crit_edge166
  ]

sh_vou_schedule_next.exit.sw.bb.i127_crit_edge166: ; preds = %sh_vou_schedule_next.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i127

sh_vou_schedule_next.exit.sw.bb.i127_crit_edge:   ; preds = %sh_vou_schedule_next.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i127

sh_vou_schedule_next.exit.sh_vou_schedule_next.exit132_crit_edge: ; preds = %sh_vou_schedule_next.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_vou_schedule_next.exit132

sw.bb.i127:                                       ; preds = %sh_vou_schedule_next.exit.sw.bb.i127_crit_edge, %sh_vou_schedule_next.exit.sw.bb.i127_crit_edge166
  %pix.i123 = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 5
  %56 = ptrtoint ptr %pix.i123 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pix.i123, align 4
  %height.i124 = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %height.i124 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height.i124, align 4
  %mul.i125 = mul i32 %59, %57
  %add.i126 = add i32 %mul.i125, %52
  br label %sh_vou_schedule_next.exit132

sh_vou_schedule_next.exit132:                     ; preds = %sw.bb.i127, %sh_vou_schedule_next.exit.sh_vou_schedule_next.exit132_crit_edge
  %addr2.0.i128 = phi i32 [ %add.i126, %sw.bb.i127 ], [ 0, %sh_vou_schedule_next.exit.sh_vou_schedule_next.exit132_crit_edge ]
  %60 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i, align 8
  %add.ptr1.i.i130 = getelementptr i8, ptr %61, i32 8248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i130, i32 %52) #9, !srcloc !245
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 8
  %add.ptr1.i10.i131 = getelementptr i8, ptr %63, i32 8252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i10.i131, i32 %addr2.0.i128) #9, !srcloc !245
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 8
  %add.ptr.i134 = getelementptr i8, ptr %65, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 5) #9, !srcloc !245
  %66 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pixelformat.i, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %67, label %sh_vou_schedule_next.exit132.sh_vou_stream_config.exit_crit_edge [
    i32 859981650, label %sw.bb3.i
    i32 1380075346, label %sh_vou_schedule_next.exit132.sw.bb2.i_crit_edge
    i32 1346520914, label %sw.bb1.i
  ]

sh_vou_schedule_next.exit132.sw.bb2.i_crit_edge:  ; preds = %sh_vou_schedule_next.exit132
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

sh_vou_schedule_next.exit132.sh_vou_stream_config.exit_crit_edge: ; preds = %sh_vou_schedule_next.exit132
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_vou_stream_config.exit

sw.bb1.i:                                         ; preds = %sh_vou_schedule_next.exit132
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb1.i, %sh_vou_schedule_next.exit132.sw.bb2.i_crit_edge
  %dataswap.0.i = phi i32 [ 1, %sw.bb1.i ], [ 0, %sh_vou_schedule_next.exit132.sw.bb2.i_crit_edge ]
  br label %sh_vou_stream_config.exit

sw.bb3.i:                                         ; preds = %sh_vou_schedule_next.exit132
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_vou_stream_config.exit

sh_vou_stream_config.exit:                        ; preds = %sw.bb3.i, %sw.bb2.i, %sh_vou_schedule_next.exit132.sh_vou_stream_config.exit_crit_edge
  %row_coeff.0.i = phi i32 [ 2, %sw.bb2.i ], [ 3, %sw.bb3.i ], [ 1, %sh_vou_schedule_next.exit132.sh_vou_stream_config.exit_crit_edge ]
  %dataswap.1.i = phi i32 [ %dataswap.0.i, %sw.bb2.i ], [ 0, %sw.bb3.i ], [ 0, %sh_vou_schedule_next.exit132.sh_vou_stream_config.exit_crit_edge ]
  %pix.i136 = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 5
  %69 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %dataswap.1.i) #9, !srcloc !245
  %71 = ptrtoint ptr %pix.i136 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pix.i136, align 4
  %mul.i138 = mul i32 %72, %row_coeff.0.i
  %73 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i, align 8
  %add.ptr.i10.i = getelementptr i8, ptr %74, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %mul.i138) #9, !srcloc !245
  %75 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %76, i32 4160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %mul.i138) #9, !srcloc !245
  %77 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i, align 8
  %add.ptr.i140 = getelementptr i8, ptr %78, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 65540) #9, !srcloc !245
  %status = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 12
  %79 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 2, ptr %status, align 8
  %80 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 263) #9, !srcloc !245
  br label %cleanup

cleanup:                                          ; preds = %sh_vou_stream_config.exit, %for.end49
  %retval.0 = phi i32 [ %__err.1, %for.end49 ], [ 0, %sh_vou_stream_config.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_vou_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %subdevs = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn80 = load ptr, ptr %subdevs, align 4
  %cmp.not82 = icmp eq ptr %.pn80, %subdevs
  br i1 %cmp.not82, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn84 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn80, %entry.for.body_crit_edge ]
  %__err.083 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %__sd.085 = getelementptr i8, ptr %.pn84, i32 -80
  %ops = getelementptr i8, ptr %.pn84, i32 24
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_stream, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 %8(ptr noundef %__sd.085, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %__err.1 = phi i32 [ %call10, %if.then ], [ %__err.083, %land.lhs.true.if.end_crit_edge ], [ %__err.083, %for.body.if.end_crit_edge ]
  %9 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %__err.1, label %if.end.for.end_crit_edge [
    i32 0, label %if.end.for.inc_crit_edge
    i32 -515, label %if.end.for.inc_crit_edge89
  ]

if.end.for.inc_crit_edge89:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %if.end.for.inc_crit_edge89
  %10 = ptrtoint ptr %.pn84 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn84, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %base.i = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !244
  %and1.i = and i32 %13, -2
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %and1.i) #9, !srcloc !245
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %17, i32 36
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !244
  %and1.i79 = and i32 %18, -196609
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %20, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %and1.i79) #9, !srcloc !245
  tail call void @msleep(i32 noundef 50) #9
  %lock = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 3
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %buf_list = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %buf_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf_list, align 4
  %cmp42.not86 = icmp eq ptr %22, %buf_list
  br i1 %cmp42.not86, label %for.end.for.end53_crit_edge, label %for.end.for.body45_crit_edge

for.end.for.body45_crit_edge:                     ; preds = %for.end
  br label %for.body45

for.end.for.end53_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end53

for.body45:                                       ; preds = %list_del.exit.for.body45_crit_edge, %for.end.for.body45_crit_edge
  %.pn76.in87 = phi ptr [ %.pn76, %list_del.exit.for.body45_crit_edge ], [ %22, %for.end.for.body45_crit_edge ]
  %buf.0 = getelementptr i8, ptr %.pn76.in87, i32 -736
  %23 = ptrtoint ptr %.pn76.in87 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn76 = load ptr, ptr %.pn76.in87, align 8
  tail call void @vb2_buffer_done(ptr noundef %buf.0, i32 noundef 6) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn76.in87) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body45.list_del.exit_crit_edge

for.body45.list_del.exit_crit_edge:               ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn76.in87, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %.pn76.in87 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %.pn76.in87, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body45.list_del.exit_crit_edge
  %30 = ptrtoint ptr %.pn76.in87 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn76.in87, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn76.in87, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp42.not = icmp eq ptr %.pn76, %buf_list
  br i1 %cmp42.not, label %list_del.exit.for.end53_crit_edge, label %list_del.exit.for.body45_crit_edge

list_del.exit.for.body45_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body45

list_del.exit.for.end53_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end53

for.end53:                                        ; preds = %list_del.exit.for.end53_crit_edge, %for.end.for.end53_crit_edge
  %active = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %active, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_vou_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %lock = getelementptr inbounds %struct.sh_vou_device, ptr %3, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %list = getelementptr inbounds %struct.sh_vou_buffer, ptr %vb, i32 0, i32 1
  %buf_list = getelementptr inbounds %struct.sh_vou_device, ptr %3, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.sh_vou_device, ptr %3, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %buf_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.sh_vou_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_vou_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %subdevs = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdevs, align 4
  %dev_priv.i = getelementptr i8, ptr %3, i32 72
  %4 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %vdev = getelementptr inbounds %struct.sh_vou_device, ptr %1, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %vdev) #9
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  tail call void @i2c_put_adapter(ptr noundef %7) #9
  tail call void @v4l2_device_unregister(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !31, !32, !34, !36, !37, !38, !40, !42, !44, !45, !46, !47, !48, !50, !51, !52, !54, !55, !57, !59, !61, !63, !64, !65, !67, !69, !71, !73, !74, !76, !78, !79, !81, !82, !83, !85, !86, !88, !89, !90, !92, !93, !95, !97, !99, !101, !103, !104, !105, !107, !108, !110, !112, !114, !115, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !214, !215, !217, !218, !220, !221, !222, !224, !225, !227, !228, !229, !231, !232, !233}
!llvm.module.flags = !{!235, !236, !237, !238, !239, !240, !241, !242}
!llvm.ident = !{!243}

!0 = !{ptr @__initcall__kmod_sh_vou__316_1369_sh_vou_init6, !1, !"__initcall__kmod_sh_vou__316_1369_sh_vou_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sh_vou.c", i32 1369, i32 1}
!2 = !{ptr @__exitcall_sh_vou_exit, !1, !"__exitcall_sh_vou_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description317, !4, !"__UNIQUE_ID_description317", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/sh_vou.c", i32 1371, i32 1}
!5 = !{ptr @__UNIQUE_ID_author318, !6, !"__UNIQUE_ID_author318", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/sh_vou.c", i32 1372, i32 1}
!7 = !{ptr @__UNIQUE_ID_file319, !8, !"__UNIQUE_ID_file319", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/sh_vou.c", i32 1373, i32 1}
!9 = !{ptr @__UNIQUE_ID_license320, !8, !"__UNIQUE_ID_license320", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version321, !11, !"__UNIQUE_ID_version321", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/sh_vou.c", i32 1374, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias322, !17, !"__UNIQUE_ID_alias322", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/sh_vou.c", i32 1375, i32 1}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/sh_vou.c", i32 1235, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sh_vou_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @sh_vou_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @sh_vou_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/sh_vou.c", i32 1244, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sh_vou_probe.__key.9, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/sh_vou.c", i32 1245, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/sh_vou.c", i32 1271, i32 57}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/sh_vou.c", i32 1277, i32 3}
!36 = !{ptr @sh_vou_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sh_vou_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @sh_vou_isr.j, !39, !"j", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/sh_vou.c", i32 1017, i32 23}
!40 = !{ptr @sh_vou_isr.cnt, !41, !"cnt", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/sh_vou.c", i32 1019, i32 13}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/sh_vou.c", i32 1025, i32 4}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @sh_vou_isr._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @sh_vou_isr._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/sh_vou.c", i32 1033, i32 4}
!50 = !{ptr @sh_vou_isr._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sh_vou_isr._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/sh_vou.c", i32 1042, i32 2}
!54 = !{ptr @sh_vou_isr.__UNIQUE_ID_ddebug314, !53, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!55 = !{ptr @sh_vou_video_template, !56, !"sh_vou_video_template", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/sh_vou.c", i32 1208, i32 34}
!57 = !{ptr @sh_vou_fops, !58, !"sh_vou_fops", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/sh_vou.c", i32 1198, i32 42}
!59 = !{ptr @sh_vou_ioctl_ops, !60, !"sh_vou_ioctl_ops", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/sh_vou.c", i32 1173, i32 36}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/sh_vou.c", i32 373, i32 2}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @sh_vou_querycap.__UNIQUE_ID_ddebug302, !62, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/sh_vou.c", i32 375, i32 21}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/sh_vou.c", i32 376, i32 23}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/sh_vou.c", i32 377, i32 25}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/sh_vou.c", i32 390, i32 2}
!73 = !{ptr @sh_vou_enum_fmt_vid_out.__UNIQUE_ID_ddebug303, !72, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!74 = !{ptr @vou_fmt, !75, !"vou_fmt", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/sh_vou.c", i32 149, i32 26}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/sh_vou.c", i32 402, i32 2}
!78 = !{ptr @sh_vou_g_fmt_vid_out.__UNIQUE_ID_ddebug304, !77, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/sh_vou.c", i32 724, i32 2}
!81 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @sh_vou_set_fmt_vid_out.__UNIQUE_ID_ddebug310, !80, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/sh_vou.c", i32 751, i32 2}
!85 = !{ptr @sh_vou_set_fmt_vid_out.__UNIQUE_ID_ddebug311, !84, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/sh_vou.c", i32 617, i32 2}
!88 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @vou_adjust_output.__UNIQUE_ID_ddebug307, !87, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/sh_vou.c", i32 647, i32 2}
!92 = !{ptr @vou_adjust_output.__UNIQUE_ID_ddebug308, !91, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!93 = !{ptr @vou_scale_h_num, !94, !"vou_scale_h_num", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/sh_vou.c", i32 410, i32 28}
!95 = !{ptr @vou_scale_h_den, !96, !"vou_scale_h_den", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/sh_vou.c", i32 411, i32 28}
!97 = !{ptr @vou_scale_v_num, !98, !"vou_scale_v_num", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/sh_vou.c", i32 413, i32 28}
!99 = !{ptr @vou_scale_v_den, !100, !"vou_scale_v_den", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/sh_vou.c", i32 414, i32 28}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/sh_vou.c", i32 464, i32 2}
!103 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @sh_vou_configure_geometry.__UNIQUE_ID_ddebug305, !102, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/sh_vou.c", i32 485, i32 2}
!107 = !{ptr @sh_vou_configure_geometry.__UNIQUE_ID_ddebug306, !106, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!108 = !{ptr @vou_scale_h_fld, !109, !"vou_scale_h_fld", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/sh_vou.c", i32 412, i32 28}
!110 = !{ptr @vou_scale_v_fld, !111, !"vou_scale_v_fld", i1 false, i1 false}
!111 = !{!"../drivers/media/platform/sh_vou.c", i32 415, i32 28}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/sh_vou.c", i32 659, i32 2}
!114 = !{ptr @sh_vou_try_fmt_vid_out.__UNIQUE_ID_ddebug309, !113, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!115 = !{ptr @.str.39, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/sh_vou.c", i32 861, i32 2}
!117 = !{ptr @sh_vou_g_std.__UNIQUE_ID_ddebug313, !116, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/sh_vou.c", i32 820, i32 2}
!120 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @sh_vou_s_std.__UNIQUE_ID_ddebug312, !119, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!122 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/platform/sh_vou.c", i32 803, i32 3}
!124 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @sh_vou_ntsc_mode._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @sh_vou_ntsc_mode._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.44, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/sh_vou.c", i32 782, i32 19}
!129 = !{ptr @.str.45, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/sh_vou.c", i32 872, i32 2}
!131 = !{ptr @.str.46, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @sh_vou_log_status._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @sh_vou_log_status._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.48, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/sh_vou.c", i32 873, i32 2}
!136 = !{ptr @sh_vou_log_status._entry.47, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @sh_vou_log_status._entry_ptr.49, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.51, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/sh_vou.c", i32 874, i32 2}
!140 = !{ptr @sh_vou_log_status._entry.50, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @sh_vou_log_status._entry_ptr.52, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.54, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/platform/sh_vou.c", i32 875, i32 2}
!144 = !{ptr @sh_vou_log_status._entry.53, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @sh_vou_log_status._entry_ptr.55, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.57, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/platform/sh_vou.c", i32 876, i32 2}
!148 = !{ptr @sh_vou_log_status._entry.56, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @sh_vou_log_status._entry_ptr.58, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/platform/sh_vou.c", i32 877, i32 2}
!152 = !{ptr @sh_vou_log_status._entry.59, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @sh_vou_log_status._entry_ptr.61, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.63, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/platform/sh_vou.c", i32 878, i32 2}
!156 = !{ptr @sh_vou_log_status._entry.62, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @sh_vou_log_status._entry_ptr.64, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.66, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/platform/sh_vou.c", i32 879, i32 2}
!160 = !{ptr @sh_vou_log_status._entry.65, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @sh_vou_log_status._entry_ptr.67, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/platform/sh_vou.c", i32 880, i32 2}
!164 = !{ptr @sh_vou_log_status._entry.68, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @sh_vou_log_status._entry_ptr.70, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/platform/sh_vou.c", i32 881, i32 2}
!168 = !{ptr @sh_vou_log_status._entry.71, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @sh_vou_log_status._entry_ptr.73, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/platform/sh_vou.c", i32 882, i32 2}
!172 = !{ptr @sh_vou_log_status._entry.74, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @sh_vou_log_status._entry_ptr.76, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/platform/sh_vou.c", i32 883, i32 2}
!176 = !{ptr @sh_vou_log_status._entry.77, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @sh_vou_log_status._entry_ptr.79, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/platform/sh_vou.c", i32 884, i32 2}
!180 = !{ptr @sh_vou_log_status._entry.80, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @sh_vou_log_status._entry_ptr.82, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/platform/sh_vou.c", i32 885, i32 2}
!184 = !{ptr @sh_vou_log_status._entry.83, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @sh_vou_log_status._entry_ptr.85, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/platform/sh_vou.c", i32 886, i32 2}
!188 = !{ptr @sh_vou_log_status._entry.86, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @sh_vou_log_status._entry_ptr.88, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/platform/sh_vou.c", i32 887, i32 2}
!192 = !{ptr @sh_vou_log_status._entry.89, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @sh_vou_log_status._entry_ptr.91, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.93, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/platform/sh_vou.c", i32 888, i32 2}
!196 = !{ptr @sh_vou_log_status._entry.92, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @sh_vou_log_status._entry_ptr.94, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.96, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/platform/sh_vou.c", i32 889, i32 2}
!200 = !{ptr @sh_vou_log_status._entry.95, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @sh_vou_log_status._entry_ptr.97, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.99, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/platform/sh_vou.c", i32 890, i32 2}
!204 = !{ptr @sh_vou_log_status._entry.98, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @sh_vou_log_status._entry_ptr.100, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/platform/sh_vou.c", i32 891, i32 2}
!208 = !{ptr @sh_vou_log_status._entry.101, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @sh_vou_log_status._entry_ptr.103, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @sh_vou_qops, !211, !"sh_vou_qops", i1 false, i1 false}
!211 = !{!"../drivers/media/platform/sh_vou.c", i32 357, i32 29}
!212 = !{ptr @.str.104, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/platform/sh_vou.c", i32 245, i32 2}
!214 = !{ptr @sh_vou_queue_setup.__UNIQUE_ID_ddebug299, !213, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!215 = !{ptr @.str.105, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/platform/sh_vou.c", i32 261, i32 2}
!217 = !{ptr @sh_vou_buf_prepare.__UNIQUE_ID_ddebug300, !216, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!218 = !{ptr @.str.106, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/platform/sh_vou.c", i32 265, i32 3}
!220 = !{ptr @sh_vou_buf_prepare._entry, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @sh_vou_buf_prepare._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!222 = distinct !{null, !223, !"__already_done", i1 false, i1 false}
!223 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!224 = distinct !{null, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.108, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/platform/sh_vou.c", i32 312, i32 2}
!227 = !{ptr @.str.109, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @sh_vou_start_streaming.__UNIQUE_ID_ddebug301, !226, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!229 = !{ptr @.str.110, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/platform/sh_vou.c", i32 1101, i32 2}
!231 = !{ptr @.str.111, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @sh_vou_hw_init.__UNIQUE_ID_ddebug315, !230, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!233 = !{ptr @sh_vou, !234, !"sh_vou", i1 false, i1 false}
!234 = !{!"../drivers/media/platform/sh_vou.c", i32 1362, i32 31}
!235 = !{i32 1, !"wchar_size", i32 2}
!236 = !{i32 1, !"min_enum_size", i32 4}
!237 = !{i32 8, !"branch-target-enforcement", i32 0}
!238 = !{i32 8, !"sign-return-address", i32 0}
!239 = !{i32 8, !"sign-return-address-all", i32 0}
!240 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!241 = !{i32 7, !"uwtable", i32 1}
!242 = !{i32 7, !"frame-pointer", i32 2}
!243 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!244 = !{i64 6252847}
!245 = !{i64 6252429}
!246 = !{i64 2148357364, i64 2148357369, i64 2148357382, i64 2148357426, i64 2148357460, i64 2148357481}
!247 = !{i64 2148543390}
!248 = !{i64 1029990, i64 1030015, i64 1030037, i64 1030053, i64 1030065, i64 1030085, i64 1030109, i64 1030125, i64 1030137}
!249 = !{i64 2148543578}
