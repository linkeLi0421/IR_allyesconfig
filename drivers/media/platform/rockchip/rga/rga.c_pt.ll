; ModuleID = '/llk/IR_all_yes/drivers/media/platform/rockchip/rga/rga.c_pt.bc'
source_filename = "../drivers/media/platform/rockchip/rga/rga.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
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
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.rga_frame = type { i32, i32, i32, %struct.v4l2_rect, ptr, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.rga_fmt = type { i32, i32, i8, i8, i8, i8, i8 }
%struct.rga_ctx = type { %struct.v4l2_fh, ptr, %struct.rga_frame, %struct.rga_frame, %struct.v4l2_ctrl_handler, i32, i32, i32, i32, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rockchip_rga = type { %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rockchip_rga_version, %struct.mutex, %struct.spinlock, ptr, i32, ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.rockchip_rga_version = type { i32, i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.93, %union.anon.94, i32, ptr, i32, %struct.anon.95, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.93 = type { i64 }
%union.anon.94 = type { ptr }
%struct.anon.95 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.101 }
%union.anon.101 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.103, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.103 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }

@__param_str_debug = internal constant [19 x i8] c"rockchip_rga.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype299 = internal constant [32 x i8] c"rockchip_rga.parmtype=debug:int\00", section ".modinfo", align 1
@__initcall__kmod_rockchip_rga__300_995_rga_pdrv_init6 = internal global ptr @rga_pdrv_init, section ".initcall6.init", align 4
@rga_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rga_probe, ptr @rga_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_rga_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rga_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rga_pdrv_exit = internal global ptr @rga_pdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author301 = internal constant [55 x i8] c"rockchip_rga.author=Jacob Chen <jacob-chen@iotwrt.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [70 x i8] c"rockchip_rga.description=Rockchip Raster 2d Graphic Acceleration Unit\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [67 x i8] c"rockchip_rga.file=drivers/media/platform/rockchip/rga/rockchip-rga\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [25 x i8] c"rockchip_rga.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip-rga\00", [19 x i8] zeroinitializer }, align 32
@rockchip_rga_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-rga\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-rga\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@rga_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rga_runtime_suspend, ptr @rga_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rga_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&rga->ctrl_lock\00", [16 x i8] zeroinitializer }, align 32
@rga_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&rga->mutex\00", [20 x i8] zeroinitializer }, align 32
@rga_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 819, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to parse OF data\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rga_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/platform/rockchip/rga/rga.c\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rga_probe._entry_ptr = internal global ptr @rga_probe._entry, section ".printk_index", align 4
@rga_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 838, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@rga_probe._entry_ptr.11 = internal global ptr @rga_probe._entry.9, section ".printk_index", align 4
@rga_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to allocate video device\0A\00", [57 x i8] zeroinitializer }, align 32
@rga_probe._entry_ptr.14 = internal global ptr @rga_probe._entry.12, section ".printk_index", align 4
@rga_videodev = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @rga_fops, i32 67141632, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"rockchip-rga\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release, ptr @rga_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@rga_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @device_run, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@rga_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to init mem2mem device\0A\00", [59 x i8] zeroinitializer }, align 32
@rga_probe._entry_ptr.17 = internal global ptr @rga_probe._entry.15, section ".printk_index", align 4
@rga_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 874, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: HW Version: 0x%02x.%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@rga_probe._entry_ptr.20 = internal global ptr @rga_probe._entry.18, section ".printk_index", align 4
@def_frame = internal global { %struct.rga_frame, [56 x i8] } { %struct.rga_frame { i32 100, i32 100, i32 0, %struct.v4l2_rect { i32 0, i32 0, i32 100, i32 100 }, ptr @formats, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rga_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@rga_probe._entry_ptr.23 = internal global ptr @rga_probe._entry.21, section ".printk_index", align 4
@rga_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.6, i32 910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: Registered %s as /dev/%s\0A\00", [32 x i8] zeroinitializer }, align 32
@rga_probe._entry_ptr.26 = internal global ptr @rga_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@rga_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.6, i32 750, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get core reset controller\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rga_parse_dt\00", [19 x i8] zeroinitializer }, align 32
@rga_parse_dt._entry_ptr = internal global ptr @rga_parse_dt._entry, section ".printk_index", align 4
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"axi\00", [28 x i8] zeroinitializer }, align 32
@rga_parse_dt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.6, i32 756, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get axi reset controller\0A\00", [60 x i8] zeroinitializer }, align 32
@rga_parse_dt._entry_ptr.33 = internal global ptr @rga_parse_dt._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@rga_parse_dt._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.29, ptr @.str.6, i32 762, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get ahb reset controller\0A\00", [60 x i8] zeroinitializer }, align 32
@rga_parse_dt._entry_ptr.37 = internal global ptr @rga_parse_dt._entry.35, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sclk\00", [27 x i8] zeroinitializer }, align 32
@rga_parse_dt._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.6, i32 780, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get sclk clock\0A\00", [38 x i8] zeroinitializer }, align 32
@rga_parse_dt._entry_ptr.41 = internal global ptr @rga_parse_dt._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aclk\00", [27 x i8] zeroinitializer }, align 32
@rga_parse_dt._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.29, ptr @.str.6, i32 786, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get aclk clock\0A\00", [38 x i8] zeroinitializer }, align 32
@rga_parse_dt._entry_ptr.45 = internal global ptr @rga_parse_dt._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@rga_parse_dt._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.29, ptr @.str.6, i32 792, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get hclk clock\0A\00", [38 x i8] zeroinitializer }, align 32
@rga_parse_dt._entry_ptr.49 = internal global ptr @rga_parse_dt._entry.47, section ".printk_index", align 4
@rga_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @rga_open, ptr @rga_release }, [60 x i8] zeroinitializer }, align 32
@rga_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt, ptr null, ptr @vidioc_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt, ptr null, ptr @vidioc_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt, ptr null, ptr @vidioc_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt, ptr null, ptr @vidioc_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_selection, ptr @vidioc_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rga_qops = external dso_local constant %struct.vb2_ops, align 4
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@rga_setup_ctrls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rga:162:(&ctx->ctrl_handler)->_lock\00", [60 x i8] zeroinitializer }, align 32
@rga_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @rga_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@rga_setup_ctrls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.6, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s: %s failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rga_setup_ctrls\00", [16 x i8] zeroinitializer }, align 32
@rga_setup_ctrls._entry_ptr = internal global ptr @rga_setup_ctrls._entry, section ".printk_index", align 4
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"platform:rga\00", [19 x i8] zeroinitializer }, align 32
@formats = internal global { [16 x %struct.rga_fmt], [64 x i8] } { [16 x %struct.rga_fmt] [%struct.rga_fmt { i32 875708738, i32 32, i8 1, i8 1, i8 1, i8 1, i8 0 }, %struct.rga_fmt { i32 875714626, i32 32, i8 1, i8 1, i8 1, i8 1, i8 1 }, %struct.rga_fmt { i32 875713089, i32 32, i8 1, i8 1, i8 1, i8 2, i8 0 }, %struct.rga_fmt { i32 875713112, i32 32, i8 1, i8 1, i8 1, i8 2, i8 1 }, %struct.rga_fmt { i32 859981650, i32 24, i8 1, i8 1, i8 1, i8 0, i8 2 }, %struct.rga_fmt { i32 861030210, i32 24, i8 1, i8 1, i8 1, i8 1, i8 2 }, %struct.rga_fmt { i32 842093121, i32 16, i8 1, i8 1, i8 1, i8 1, i8 6 }, %struct.rga_fmt { i32 892424769, i32 16, i8 1, i8 1, i8 1, i8 1, i8 5 }, %struct.rga_fmt { i32 1346520914, i32 16, i8 1, i8 1, i8 1, i8 1, i8 4 }, %struct.rga_fmt { i32 825382478, i32 12, i8 4, i8 2, i8 1, i8 4, i8 10 }, %struct.rga_fmt { i32 825644622, i32 16, i8 2, i8 1, i8 1, i8 4, i8 8 }, %struct.rga_fmt { i32 842094158, i32 12, i8 4, i8 2, i8 1, i8 0, i8 10 }, %struct.rga_fmt { i32 909203022, i32 16, i8 2, i8 1, i8 1, i8 0, i8 8 }, %struct.rga_fmt { i32 842093913, i32 12, i8 4, i8 2, i8 2, i8 0, i8 11 }, %struct.rga_fmt { i32 1345466932, i32 16, i8 2, i8 1, i8 2, i8 0, i8 9 }, %struct.rga_fmt { i32 842094169, i32 12, i8 4, i8 2, i8 2, i8 4, i8 11 }], [64 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.6, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: queue (%d) bust\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vidioc_s_fmt\00", [19 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr = internal global ptr @vidioc_s_fmt._entry, section ".printk_index", align 4
@vidioc_s_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.6, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: doesn't support negative values for top & left.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vidioc_s_selection\00", [45 x i8] zeroinitializer }, align 32
@vidioc_s_selection._entry_ptr = internal global ptr @vidioc_s_selection._entry, section ".printk_index", align 4
@vidioc_s_selection._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.6, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: unsupported crop value.\0A\00", [33 x i8] zeroinitializer }, align 32
@vidioc_s_selection._entry_ptr.60 = internal global ptr @vidioc_s_selection._entry.58, section ".printk_index", align 4
@rga_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.6, i32 941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016%s: Removing\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rga_remove\00", [21 x i8] zeroinitializer }, align 32
@rga_remove._entry_ptr = internal global ptr @rga_remove._entry, section ".printk_index", align 4
@rga_enable_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.6, i32 711, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot enable rga sclk: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rga_enable_clocks\00", [46 x i8] zeroinitializer }, align 32
@rga_enable_clocks._entry_ptr = internal global ptr @rga_enable_clocks._entry, section ".printk_index", align 4
@rga_enable_clocks._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.6, i32 717, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot enable rga aclk: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rga_enable_clocks._entry_ptr.67 = internal global ptr @rga_enable_clocks._entry.65, section ".printk_index", align 4
@rga_enable_clocks._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.6, i32 723, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot enable rga hclk: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rga_enable_clocks._entry_ptr.70 = internal global ptr @rga_enable_clocks._entry.68, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [6 x i64] [i64 4, i64 32, i64 9963796, i64 9963797, i64 9963810, i64 9963811]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.75 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 256, i64 257, i64 258]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 31, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [9 x i8] c"rga_pdrv\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 985, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 989, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c"rockchip_rga_match\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 973, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"rga_pm\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 968, i32 32 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 814, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 815, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 819, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 838, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 847, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [13 x i8] c"rga_videodev\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 695, i32 34 }
@___asan_gen_.138 = private unnamed_addr constant [12 x i8] c"rga_m2m_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 92, i32 34 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 861, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 873, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [10 x i8] c"def_frame\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 347, i32 25 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 905, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 909, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 748, i32 46 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 750, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 754, i32 45 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 756, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 760, i32 45 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 762, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 778, i32 37 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 780, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 784, i32 37 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 786, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 790, i32 37 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 792, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [9 x i8] c"rga_fops\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 430, i32 42 }
@___asan_gen_.228 = private unnamed_addr constant [14 x i8] c"rga_ioctl_ops\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 664, i32 36 }
@___asan_gen_.231 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 162, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [13 x i8] c"rga_ctrl_ops\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 154, i32 35 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 179, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 444, i32 25 }
@___asan_gen_.252 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 187, i32 23 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 536, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 647, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 655, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 941, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 711, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 717, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.307 = private constant [45 x i8] c"../drivers/media/platform/rockchip/rga/rga.c\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 723, i32 3 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_debugtype299, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_rga_pdrv_exit, ptr @__initcall__kmod_rockchip_rga__300_995_rga_pdrv_init6, ptr @__param_debug, ptr @rga_enable_clocks._entry, ptr @rga_enable_clocks._entry.65, ptr @rga_enable_clocks._entry.68, ptr @rga_enable_clocks._entry_ptr, ptr @rga_enable_clocks._entry_ptr.67, ptr @rga_enable_clocks._entry_ptr.70, ptr @rga_parse_dt._entry, ptr @rga_parse_dt._entry.31, ptr @rga_parse_dt._entry.35, ptr @rga_parse_dt._entry.39, ptr @rga_parse_dt._entry.43, ptr @rga_parse_dt._entry.47, ptr @rga_parse_dt._entry_ptr, ptr @rga_parse_dt._entry_ptr.33, ptr @rga_parse_dt._entry_ptr.37, ptr @rga_parse_dt._entry_ptr.41, ptr @rga_parse_dt._entry_ptr.45, ptr @rga_parse_dt._entry_ptr.49, ptr @rga_pdrv_exit, ptr @rga_probe._entry, ptr @rga_probe._entry.12, ptr @rga_probe._entry.15, ptr @rga_probe._entry.18, ptr @rga_probe._entry.21, ptr @rga_probe._entry.24, ptr @rga_probe._entry.9, ptr @rga_probe._entry_ptr, ptr @rga_probe._entry_ptr.11, ptr @rga_probe._entry_ptr.14, ptr @rga_probe._entry_ptr.17, ptr @rga_probe._entry_ptr.20, ptr @rga_probe._entry_ptr.23, ptr @rga_probe._entry_ptr.26, ptr @rga_remove._entry, ptr @rga_remove._entry_ptr, ptr @rga_setup_ctrls._entry, ptr @rga_setup_ctrls._entry_ptr, ptr @vidioc_s_fmt._entry, ptr @vidioc_s_fmt._entry_ptr, ptr @vidioc_s_selection._entry, ptr @vidioc_s_selection._entry.58, ptr @vidioc_s_selection._entry_ptr, ptr @vidioc_s_selection._entry_ptr.60, ptr @debug, ptr @rga_pdrv, ptr @.str, ptr @rockchip_rga_match, ptr @rga_pm, ptr @rga_probe.__key, ptr @.str.1, ptr @rga_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @rga_videodev, ptr @rga_m2m_ops, ptr @.str.16, ptr @.str.19, ptr @def_frame, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @rga_fops, ptr @rga_ioctl_ops, ptr @rga_setup_ctrls._key, ptr @.str.50, ptr @rga_ctrl_ops, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @formats, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rga_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_videodev to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_frame to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_parse_dt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_parse_dt._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_parse_dt._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_parse_dt._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_parse_dt._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_setup_ctrls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_setup_ctrls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_selection._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_enable_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_enable_clocks._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_enable_clocks._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @rga_get_frame(ptr noundef readnone %ctx, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %in = getelementptr inbounds %struct.rga_ctx, ptr %ctx, i32 0, i32 2
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %out = getelementptr inbounds %struct.rga_ctx, ptr %ctx, i32 0, i32 3
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi ptr [ %out, %sw.bb1 ], [ %in, %sw.bb ], [ inttoptr (i32 -22 to ptr), %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rga_pdrv_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rga_pdrv, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rga_pdrv_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @rga_pdrv) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rga_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 324, i32 noundef 3520) #10
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev6 = getelementptr inbounds %struct.rockchip_rga, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev6, align 4
  %ctrl_lock = getelementptr inbounds %struct.rockchip_rga, ptr %call.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %ctrl_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rga_probe.__key, i16 noundef signext 3) #10
  %mutex = getelementptr inbounds %struct.rockchip_rga, ptr %call.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @rga_probe.__key.2) #10
  %3 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev6, align 4
  %call.i.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %4, ptr noundef nonnull @.str.27, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %cmp.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  %5 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev6, align 4
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.28) #13
  br label %rga_parse_dt.exit

if.end.i:                                         ; preds = %if.end4
  %call.i.i97.i = tail call ptr @__devm_reset_control_get(ptr noundef %6, ptr noundef nonnull @.str.30, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %cmp.i98.i = icmp ugt ptr %call.i.i97.i, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev6, align 4
  br i1 %cmp.i98.i, label %do.end10.i, label %if.end13.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.32) #13
  br label %rga_parse_dt.exit

if.end13.i:                                       ; preds = %if.end.i
  %call.i.i99.i = tail call ptr @__devm_reset_control_get(ptr noundef %8, ptr noundef nonnull @.str.34, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %cmp.i100.i = icmp ugt ptr %call.i.i99.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100.i, label %do.end20.i, label %if.end23.i

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.36) #13
  br label %rga_parse_dt.exit

if.end23.i:                                       ; preds = %if.end13.i
  %call24.i = tail call i32 @reset_control_assert(ptr noundef %call.i.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #10
  %call25.i = tail call i32 @reset_control_deassert(ptr noundef %call.i.i.i) #10
  %call26.i = tail call i32 @reset_control_assert(ptr noundef %call.i.i97.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #10
  %call27.i = tail call i32 @reset_control_deassert(ptr noundef %call.i.i97.i) #10
  %call28.i = tail call i32 @reset_control_assert(ptr noundef %call.i.i99.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #10
  %call29.i = tail call i32 @reset_control_deassert(ptr noundef %call.i.i99.i) #10
  %14 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev6, align 4
  %call31.i = tail call ptr @devm_clk_get(ptr noundef %15, ptr noundef nonnull @.str.38) #10
  %sclk.i = getelementptr inbounds %struct.rockchip_rga, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %sclk.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call31.i, ptr %sclk.i, align 4
  %cmp.i101.i = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  %17 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev6, align 4
  br i1 %cmp.i101.i, label %do.end37.i, label %if.end41.i

do.end37.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.40) #13
  %19 = ptrtoint ptr %sclk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sclk.i, align 4
  br label %rga_parse_dt.exit

if.end41.i:                                       ; preds = %if.end23.i
  %call43.i = tail call ptr @devm_clk_get(ptr noundef %18, ptr noundef nonnull @.str.42) #10
  %aclk.i = getelementptr inbounds %struct.rockchip_rga, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %aclk.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call43.i, ptr %aclk.i, align 4
  %cmp.i102.i = icmp ugt ptr %call43.i, inttoptr (i32 -4096 to ptr)
  %22 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev6, align 4
  br i1 %cmp.i102.i, label %do.end49.i, label %if.end53.i

do.end49.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.44) #13
  %24 = ptrtoint ptr %aclk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %aclk.i, align 4
  br label %rga_parse_dt.exit

if.end53.i:                                       ; preds = %if.end41.i
  %call55.i = tail call ptr @devm_clk_get(ptr noundef %23, ptr noundef nonnull @.str.46) #10
  %hclk.i = getelementptr inbounds %struct.rockchip_rga, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %hclk.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call55.i, ptr %hclk.i, align 4
  %cmp.i103.i = icmp ugt ptr %call55.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103.i, label %do.end61.i, label %if.end53.i.if.end18_crit_edge

if.end53.i.if.end18_crit_edge:                    ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end61.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.48) #13
  %29 = ptrtoint ptr %hclk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hclk.i, align 4
  br label %rga_parse_dt.exit

rga_parse_dt.exit:                                ; preds = %do.end61.i, %do.end49.i, %do.end37.i, %do.end20.i, %do.end10.i, %do.end.i
  %retval.0.i.in = phi ptr [ %call.i.i.i, %do.end.i ], [ %call.i.i97.i, %do.end10.i ], [ %call.i.i99.i, %do.end20.i ], [ %20, %do.end37.i ], [ %25, %do.end49.i ], [ %30, %do.end61.i ]
  %tobool12.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool12.not, label %rga_parse_dt.exit.if.end18_crit_edge, label %do.end16

rga_parse_dt.exit.if.end18_crit_edge:             ; preds = %rga_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end16:                                         ; preds = %rga_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #13
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %rga_parse_dt.exit.if.end18_crit_edge, %if.end53.i.if.end18_crit_edge
  %31 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev6, align 4
  tail call void @pm_runtime_enable(ptr noundef %32) #10
  %call20 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #10
  %regs = getelementptr inbounds %struct.rockchip_rga, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call20, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %call20 to i32
  br label %err_put_clk

if.end26:                                         ; preds = %if.end18
  %call27 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %if.end26.err_put_clk_crit_edge, label %if.end29

if.end26.err_put_clk_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_clk

if.end29:                                         ; preds = %if.end26
  %35 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev6, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.end.i221, label %if.end29.dev_name.exit_crit_edge

if.end29.dev_name.exit_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i221:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i221, %if.end29.dev_name.exit_crit_edge
  %retval.0.i222 = phi ptr [ %40, %if.end.i221 ], [ %38, %if.end29.dev_name.exit_crit_edge ]
  %call.i223 = tail call i32 @devm_request_threaded_irq(ptr noundef %36, i32 noundef %call27, ptr noundef nonnull @rga_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i222, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %cmp34 = icmp slt i32 %call.i223, 0
  br i1 %cmp34, label %do.end38, label %if.end40

do.end38:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.10) #13
  br label %err_put_clk

if.end40:                                         ; preds = %dev_name.exit
  %call42 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end40.err_put_clk_crit_edge

if.end40.err_put_clk_crit_edge:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_clk

if.end45:                                         ; preds = %if.end40
  %call46 = tail call ptr @video_device_alloc() #10
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %do.end51, label %if.end54

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name) #13
  br label %unreg_v4l2_dev

if.end54:                                         ; preds = %if.end45
  %43 = call ptr @memcpy(ptr %call46, ptr @rga_videodev, i32 1352)
  %lock = getelementptr inbounds %struct.video_device, ptr %call46, i32 0, i32 26
  %44 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %mutex, ptr %lock, align 8
  %v4l2_dev57 = getelementptr inbounds %struct.video_device, ptr %call46, i32 0, i32 7
  %45 = ptrtoint ptr %v4l2_dev57 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %v4l2_dev57, align 4
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call46, i32 0, i32 5, i32 8
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %vfd58 = getelementptr inbounds %struct.rockchip_rga, ptr %call.i, i32 0, i32 2
  %47 = ptrtoint ptr %vfd58 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call46, ptr %vfd58, align 4
  %driver_data.i.i224 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %driver_data.i.i224 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %driver_data.i.i224, align 4
  %call59 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @rga_m2m_ops) #10
  %m2m_dev = getelementptr inbounds %struct.rockchip_rga, ptr %call.i, i32 0, i32 1
  %49 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call59, ptr %m2m_dev, align 4
  %cmp.i225 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225, label %do.end65, label %if.end73

do.end65:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %name68 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name68) #13
  %50 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %m2m_dev, align 4
  %52 = ptrtoint ptr %51 to i32
  br label %rel_vdev

if.end73:                                         ; preds = %if.end54
  %53 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev6, align 4
  %call.i226 = tail call i32 @__pm_runtime_resume(ptr noundef %54, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %cmp.i227 = icmp slt i32 %call.i226, 0
  br i1 %cmp.i227, label %if.then.i, label %if.end78

if.then.i:                                        ; preds = %if.end73
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !165
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.rel_vdev_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.rel_vdev_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_vdev

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !166
  br label %rel_vdev

if.end78:                                         ; preds = %if.end73
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %57, i32 40
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !167
  %59 = and i32 %58, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  %version = getelementptr inbounds %struct.rockchip_rga, ptr %call.i, i32 0, i32 9
  %60 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %version, align 4
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 4
  %add.ptr.i230 = getelementptr i8, ptr %62, i32 40
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i230) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  %64 = lshr i32 %63, 12
  %and82 = and i32 %64, 15
  %minor = getelementptr inbounds %struct.rockchip_rga, ptr %call.i, i32 0, i32 9, i32 1
  %65 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and82, ptr %minor, align 4
  %name89 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %66 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %version, align 4
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name89, i32 noundef %67, i32 noundef %and82) #13
  %68 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev6, align 4
  %call.i231 = tail call i32 @__pm_runtime_idle(ptr noundef %69, i32 noundef 5) #10
  %70 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev6, align 4
  %cmdbuf_phy = getelementptr inbounds %struct.rockchip_rga, ptr %call.i, i32 0, i32 13
  %call99 = tail call ptr @dma_alloc_attrs(ptr noundef %71, i32 noundef 32, ptr noundef %cmdbuf_phy, i32 noundef 3264, i32 noundef 4) #10
  %cmdbuf_virt = getelementptr inbounds %struct.rockchip_rga, ptr %call.i, i32 0, i32 14
  %72 = ptrtoint ptr %cmdbuf_virt to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call99, ptr %cmdbuf_virt, align 4
  %tobool101.not = icmp eq ptr %call99, null
  br i1 %tobool101.not, label %if.end78.rel_vdev_crit_edge, label %if.end103

if.end78.rel_vdev_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_vdev

if.end103:                                        ; preds = %if.end78
  %call104 = tail call i32 @__get_free_pages(i32 noundef 3520, i32 noundef 3) #10
  %73 = inttoptr i32 %call104 to ptr
  %src_mmu_pages = getelementptr inbounds %struct.rockchip_rga, ptr %call.i, i32 0, i32 15
  %74 = ptrtoint ptr %src_mmu_pages to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %src_mmu_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool106.not = icmp eq i32 %call104, 0
  br i1 %tobool106.not, label %if.end103.free_dma_crit_edge, label %if.end108

if.end103.free_dma_crit_edge:                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_dma

if.end108:                                        ; preds = %if.end103
  %call109 = tail call i32 @__get_free_pages(i32 noundef 3520, i32 noundef 3) #10
  %75 = inttoptr i32 %call109 to ptr
  %dst_mmu_pages = getelementptr inbounds %struct.rockchip_rga, ptr %call.i, i32 0, i32 16
  %76 = ptrtoint ptr %dst_mmu_pages to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %dst_mmu_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool111.not = icmp eq i32 %call109, 0
  br i1 %tobool111.not, label %if.end113, label %if.end108.free_src_pages_crit_edge

if.end108.free_src_pages_crit_edge:               ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_src_pages

if.end113:                                        ; preds = %if.end108
  %77 = load i32, ptr @def_frame, align 4
  %78 = load ptr, ptr getelementptr inbounds (%struct.rga_frame, ptr @def_frame, i32 0, i32 4), align 4
  %depth = getelementptr inbounds %struct.rga_fmt, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %depth, align 4
  %mul = mul i32 %80, %77
  %shr114 = lshr i32 %mul, 3
  store i32 %shr114, ptr getelementptr inbounds (%struct.rga_frame, ptr @def_frame, i32 0, i32 5), align 4
  %81 = load i32, ptr getelementptr inbounds (%struct.rga_frame, ptr @def_frame, i32 0, i32 1), align 4
  %mul115 = mul i32 %shr114, %81
  store i32 %mul115, ptr getelementptr inbounds (%struct.rga_frame, ptr @def_frame, i32 0, i32 6), align 4
  %fops.i = getelementptr inbounds %struct.video_device, ptr %call46, i32 0, i32 3
  %82 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fops.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %call.i232 = tail call i32 @__video_register_device(ptr noundef nonnull %call46, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %85) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232)
  %tobool117.not = icmp eq i32 %call.i232, 0
  br i1 %tobool117.not, label %do.end130, label %do.end121

do.end121:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name89) #13
  %86 = ptrtoint ptr %dst_mmu_pages to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dst_mmu_pages, align 4
  %88 = ptrtoint ptr %87 to i32
  tail call void @free_pages(i32 noundef %88, i32 noundef 3) #10
  br label %free_src_pages

do.end130:                                        ; preds = %if.end113
  %name135 = getelementptr inbounds %struct.video_device, ptr %call46, i32 0, i32 12
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %call46, i32 0, i32 5, i32 3
  %89 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %90, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end130.video_device_node_name.exit_crit_edge

do.end130.video_device_node_name.exit_crit_edge:  ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i233 = getelementptr inbounds %struct.video_device, ptr %call46, i32 0, i32 5
  %91 = ptrtoint ptr %dev.i233 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i233, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end130.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %92, %if.end.i.i ], [ %90, %do.end130.video_device_node_name.exit_crit_edge ]
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name89, ptr noundef %name135, ptr noundef %retval.0.i.i) #13
  br label %cleanup

free_src_pages:                                   ; preds = %do.end121, %if.end108.free_src_pages_crit_edge
  %ret.0 = phi i32 [ %call.i232, %do.end121 ], [ -12, %if.end108.free_src_pages_crit_edge ]
  %93 = ptrtoint ptr %src_mmu_pages to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %src_mmu_pages, align 4
  %95 = ptrtoint ptr %94 to i32
  tail call void @free_pages(i32 noundef %95, i32 noundef 3) #10
  br label %free_dma

free_dma:                                         ; preds = %free_src_pages, %if.end103.free_dma_crit_edge
  %ret.1 = phi i32 [ %ret.0, %free_src_pages ], [ -12, %if.end103.free_dma_crit_edge ]
  %96 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev6, align 4
  %98 = ptrtoint ptr %cmdbuf_virt to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cmdbuf_virt, align 4
  %100 = ptrtoint ptr %cmdbuf_phy to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cmdbuf_phy, align 4
  tail call void @dma_free_attrs(ptr noundef %97, i32 noundef 32, ptr noundef %99, i32 noundef %101, i32 noundef 4) #10
  br label %rel_vdev

rel_vdev:                                         ; preds = %free_dma, %if.end78.rel_vdev_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.rel_vdev_crit_edge, %do.end65
  %ret.2 = phi i32 [ %52, %do.end65 ], [ %ret.1, %free_dma ], [ -12, %if.end78.rel_vdev_crit_edge ], [ %call.i226, %if.then.i.rel_vdev_crit_edge ], [ %call.i226, %do.end11.i.i.i.i.i ]
  tail call void @video_device_release(ptr noundef nonnull %call46) #10
  br label %unreg_v4l2_dev

unreg_v4l2_dev:                                   ; preds = %rel_vdev, %do.end51
  %ret.3 = phi i32 [ %ret.2, %rel_vdev ], [ -12, %do.end51 ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #10
  br label %err_put_clk

err_put_clk:                                      ; preds = %unreg_v4l2_dev, %if.end40.err_put_clk_crit_edge, %do.end38, %if.end26.err_put_clk_crit_edge, %if.then23
  %ret.4 = phi i32 [ %34, %if.then23 ], [ %call.i223, %do.end38 ], [ %call42, %if.end40.err_put_clk_crit_edge ], [ %ret.3, %unreg_v4l2_dev ], [ %call27, %if.end26.err_put_clk_crit_edge ]
  %102 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev6, align 4
  tail call void @__pm_runtime_disable(ptr noundef %103, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %err_put_clk, %video_device_node_name.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %err_put_clk ], [ 0, %video_device_node_name.exit ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rga_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %cmdbuf_virt = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %cmdbuf_virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmdbuf_virt, align 4
  %cmdbuf_phy = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %cmdbuf_phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmdbuf_phy, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 32, ptr noundef %5, i32 noundef %7, i32 noundef 4) #10
  %src_mmu_pages = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %src_mmu_pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src_mmu_pages, align 4
  %10 = ptrtoint ptr %9 to i32
  tail call void @free_pages(i32 noundef %10, i32 noundef 3) #10
  %dst_mmu_pages = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %dst_mmu_pages to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst_mmu_pages, align 4
  %13 = ptrtoint ptr %12 to i32
  tail call void @free_pages(i32 noundef %13, i32 noundef 3) #10
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name) #13
  %m2m_dev = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %15) #10
  %vfd = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %vfd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vfd, align 4
  tail call void @video_unregister_device(ptr noundef %17) #10
  tail call void @v4l2_device_unregister(ptr noundef %1) #10
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %19, i1 noundef zeroext true) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rga_isr(i32 noundef %irq, ptr nocapture noundef %prv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.rockchip_rga, ptr %prv, i32 0, i32 5
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !167
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  %and = shl i32 %3, 4
  %shl = and i32 %and, 240
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  %7 = and i32 %6, 268435455
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %or.i = or i32 %8, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !169
  tail call void @arm_heavy_mb() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %9) #10, !srcloc !170
  %and1 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.if.end104_crit_edge, label %if.then

entry.if.end104_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then:                                          ; preds = %entry
  %curr = getelementptr inbounds %struct.rockchip_rga, ptr %prv, i32 0, i32 12
  %12 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %curr, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %do.end, label %if.then.if.end_crit_edge, !prof !171

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 69, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %14 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %curr, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %13, i32 0, i32 10
  %15 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %16, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #10
  %17 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %18, i32 0, i32 7
  %call.i125 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #10
  %tobool30.not = icmp eq ptr %call.i, null
  br i1 %tobool30.not, label %do.end48, label %if.end.if.end54_crit_edge, !prof !171

if.end.if.end54_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.end48:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 76, i32 noundef 9, ptr noundef null) #10
  br label %if.end54

if.end54:                                         ; preds = %do.end48, %if.end.if.end54_crit_edge
  %tobool63.not = icmp eq ptr %call.i125, null
  br i1 %tobool63.not, label %do.end81, label %if.end54.if.end87_crit_edge, !prof !171

if.end54.if.end87_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

do.end81:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 77, i32 noundef 9, ptr noundef null) #10
  br label %if.end87

if.end87:                                         ; preds = %do.end81, %if.end54.if.end87_crit_edge
  %timecode = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i125, i32 0, i32 3
  %timecode95 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 3
  %19 = call ptr @memcpy(ptr %timecode, ptr %timecode95, i32 16)
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %timestamp, align 8
  %timestamp97 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i125, i32 0, i32 5
  %22 = ptrtoint ptr %timestamp97 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %timestamp97, align 8
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i125, i32 0, i32 1
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 8
  %and98 = and i32 %24, -458753
  store i32 %and98, ptr %flags, align 8
  %flags99 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %flags99 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags99, align 8
  %and100 = and i32 %26, 458752
  %or = or i32 %and100, %and98
  store i32 %or, ptr %flags, align 8
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef 5) #10
  tail call void @vb2_buffer_done(ptr noundef %call.i125, i32 noundef 5) #10
  %m2m_dev = getelementptr inbounds %struct.rockchip_rga, ptr %prv, i32 0, i32 1
  %27 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %m2m_dev, align 4
  %29 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %28, ptr noundef %30) #10
  br label %if.end104

if.end104:                                        ; preds = %if.end87, %entry.if.end104_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rga_open(ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 480) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rga2 = getelementptr inbounds %struct.rga_ctx, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %rga2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %rga2, align 8
  %in = getelementptr inbounds %struct.rga_ctx, ptr %call7.i.i, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %in, ptr @def_frame, i32 40)
  %out = getelementptr inbounds %struct.rga_ctx, ptr %call7.i.i, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %out, ptr @def_frame, i32 40)
  %mutex = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 10
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %m2m_dev = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_dev, align 4
  %call7 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %7, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @queue_init) #10
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %m2m_ctx, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call7 to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %call18 = tail call ptr @video_devdata(ptr noundef %file) #10
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call18) #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #10
  %11 = ptrtoint ptr %rga2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rga2, align 8
  %ctrl_handler.i = getelementptr inbounds %struct.rga_ctx, ptr %call7.i.i, i32 0, i32 4
  %call.i51 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 4, ptr noundef nonnull @rga_setup_ctrls._key, ptr noundef nonnull @.str.50) #10
  %call3.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @rga_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #10
  %call5.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @rga_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #10
  %call7.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @rga_ctrl_ops, i32 noundef 9963810, i64 noundef 0, i64 noundef 270, i64 noundef 90, i64 noundef 0) #10
  %call9.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @rga_ctrl_ops, i32 noundef 9963811, i64 noundef 0, i64 noundef 4294967295, i64 noundef 1, i64 noundef 0) #10
  %error.i = getelementptr inbounds %struct.rga_ctx, ptr %call7.i.i, i32 0, i32 4, i32 9
  %13 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end16.rga_setup_ctrls.exit_crit_edge, label %if.then.i

if.end16.rga_setup_ctrls.exit_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %rga_setup_ctrls.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %12, i32 0, i32 4
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name.i, ptr noundef nonnull @.str.52) #13
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #10
  br label %rga_setup_ctrls.exit

rga_setup_ctrls.exit:                             ; preds = %if.then.i, %if.end16.rga_setup_ctrls.exit_crit_edge
  %call22 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler.i) #10
  %ctrl_handler25 = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %ctrl_handler25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ctrl_handler.i, ptr %ctrl_handler25, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %rga_setup_ctrls.exit, %if.then11, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %if.then5 ], [ %9, %if.then11 ], [ 0, %rga_setup_ctrls.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rga_release(ptr nocapture noundef readonly %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %rga1 = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rga1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rga1, align 4
  %mutex = getelementptr inbounds %struct.rockchip_rga, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %5) #10
  %ctrl_handler = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #10
  tail call void @v4l2_fh_del(ptr noundef %1) #10
  tail call void @v4l2_fh_exit(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %1) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %1 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 17, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %priv, ptr %drv_priv, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @rga_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %4 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %5 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 744, ptr %buf_struct_size, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %6 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %timestamp_flags, align 4
  %rga = getelementptr inbounds %struct.rga_ctx, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %rga to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rga, align 4
  %mutex = getelementptr inbounds %struct.rockchip_rga, ptr %8, i32 0, i32 10
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mutex, ptr %lock, align 4
  %10 = load ptr, ptr %rga, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev2 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %13 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dev2, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %dst_vq, align 4
  %io_modes4 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %15 = ptrtoint ptr %io_modes4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 17, ptr %io_modes4, align 4
  %drv_priv5 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %16 = ptrtoint ptr %drv_priv5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %priv, ptr %drv_priv5, align 4
  %ops6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %17 = ptrtoint ptr %ops6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rga_qops, ptr %ops6, align 4
  %mem_ops7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %18 = ptrtoint ptr %mem_ops7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops7, align 4
  %buf_struct_size8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %19 = ptrtoint ptr %buf_struct_size8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 744, ptr %buf_struct_size8, align 4
  %timestamp_flags9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %20 = ptrtoint ptr %timestamp_flags9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16384, ptr %timestamp_flags9, align 4
  %21 = ptrtoint ptr %rga to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rga, align 4
  %mutex11 = getelementptr inbounds %struct.rockchip_rga, ptr %22, i32 0, i32 10
  %lock12 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %23 = ptrtoint ptr %lock12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %mutex11, ptr %lock12, align 4
  %24 = load ptr, ptr %rga, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %dev16 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %27 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dev16, align 4
  %call17 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rga_s_ctrl(ptr nocapture noundef readonly %ctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %rga = getelementptr i8, ptr %1, i32 -84
  %2 = ptrtoint ptr %rga to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rga, align 4
  %ctrl_lock = getelementptr inbounds %struct.rockchip_rga, ptr %3, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl_lock) #10
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 9963796, label %entry.sw.epilog.sink.split_crit_edge
    i32 9963797, label %sw.bb6
    i32 9963810, label %sw.bb8
    i32 9963811, label %sw.bb10
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb10, %sw.bb8, %sw.bb6, %entry.sw.epilog.sink.split_crit_edge
  %.sink24 = phi i32 [ 200, %sw.bb10 ], [ 196, %sw.bb8 ], [ 192, %sw.bb6 ], [ 188, %entry.sw.epilog.sink.split_crit_edge ]
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val11, align 4
  %fill_color = getelementptr i8, ptr %1, i32 %.sink24
  %9 = ptrtoint ptr %fill_color to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fill_color, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %10 = ptrtoint ptr %rga to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rga, align 4
  %ctrl_lock13 = getelementptr inbounds %struct.rockchip_rga, ptr %11, i32 0, i32 11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl_lock13, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #10
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str, i32 noundef 32) #10
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.53, i32 noundef 32) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %prv, ptr nocapture noundef %f) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp = icmp ugt i32 %1, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [16 x %struct.rga_fmt], ptr @formats, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt(ptr nocapture noundef readnone %file, ptr noundef %prv, ptr nocapture noundef %f) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %prv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %5, label %if.end.if.then4_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %in.i = getelementptr inbounds %struct.rga_ctx, ptr %prv, i32 0, i32 2
  br label %rga_get_frame.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %out.i = getelementptr inbounds %struct.rga_ctx, ptr %prv, i32 0, i32 3
  br label %rga_get_frame.exit

rga_get_frame.exit:                               ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %out.i, %sw.bb1.i ], [ %in.i, %sw.bb.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %rga_get_frame.exit.if.then4_crit_edge, label %if.end6

rga_get_frame.exit.if.then4_crit_edge:            ; preds = %rga_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.then4:                                         ; preds = %rga_get_frame.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %retval.0.i37 = phi ptr [ %retval.0.i, %rga_get_frame.exit.if.then4_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.if.then4_crit_edge ]
  %7 = ptrtoint ptr %retval.0.i37 to i32
  br label %cleanup

if.end6:                                          ; preds = %rga_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %retval.0.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.rga_frame, ptr %retval.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %height9 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %height9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height9, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %field, align 4
  %fmt11 = getelementptr inbounds %struct.rga_frame, ptr %retval.0.i, i32 0, i32 4
  %15 = ptrtoint ptr %fmt11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fmt11, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pixelformat, align 4
  %stride = getelementptr inbounds %struct.rga_frame, ptr %retval.0.i, i32 0, i32 5
  %20 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stride, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %bytesperline, align 4
  %size = getelementptr inbounds %struct.rga_frame, ptr %retval.0.i, i32 0, i32 6
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %25 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.rga_frame, ptr %retval.0.i, i32 0, i32 2
  %26 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %colorspace, align 4
  %colorspace16 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %colorspace16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %colorspace16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then4 ], [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt(ptr nocapture noundef readnone %file, ptr noundef %prv, ptr nocapture noundef %f) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rga1 = getelementptr inbounds %struct.rga_ctx, ptr %prv, i32 0, i32 1
  %0 = ptrtoint ptr %rga1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rga1, align 4
  %call = tail call i32 @vidioc_try_fmt(ptr noundef %file, ptr noundef %prv, ptr noundef %f)
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %prv, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %call2 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %3, i32 noundef %5) #10
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call2, i32 0, i32 21
  %6 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 0
  br i1 %cmp.i.not, label %if.end7, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name, i32 noundef %9) #13
  br label %cleanup

if.end7:                                          ; preds = %entry
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %11, label %if.end7.if.then11_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end7.if.then11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

sw.bb.i:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %in.i = getelementptr inbounds %struct.rga_ctx, ptr %prv, i32 0, i32 2
  br label %rga_get_frame.exit

sw.bb1.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %out.i = getelementptr inbounds %struct.rga_ctx, ptr %prv, i32 0, i32 3
  br label %rga_get_frame.exit

rga_get_frame.exit:                               ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %out.i, %sw.bb1.i ], [ %in.i, %sw.bb.i ]
  %cmp.i66 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %rga_get_frame.exit.if.then11_crit_edge, label %if.end13

rga_get_frame.exit.if.then11_crit_edge:           ; preds = %rga_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then11:                                        ; preds = %rga_get_frame.exit.if.then11_crit_edge, %if.end7.if.then11_crit_edge
  %retval.0.i70 = phi ptr [ %retval.0.i, %rga_get_frame.exit.if.then11_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end7.if.then11_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i70 to i32
  br label %cleanup

if.end13:                                         ; preds = %rga_get_frame.exit
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixelformat.i, align 4
  %16 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %15)
  %cmp1.i = icmp eq i32 %16, %15
  br i1 %cmp1.i, label %if.end13.if.end17_crit_edge, label %for.cond.i

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.cond.i:                                       ; preds = %if.end13
  %17 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp1.1.i = icmp eq i32 %17, %15
  br i1 %cmp1.1.i, label %for.cond.i.if.end17_crit_edge, label %for.cond.1.i

for.cond.i.if.end17_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.cond.1.i:                                     ; preds = %for.cond.i
  %18 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %15)
  %cmp1.2.i = icmp eq i32 %18, %15
  br i1 %cmp1.2.i, label %for.cond.1.i.if.end17_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end17_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %19 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %15)
  %cmp1.3.i = icmp eq i32 %19, %15
  br i1 %cmp1.3.i, label %for.cond.2.i.if.end17_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end17_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %20 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %15)
  %cmp1.4.i = icmp eq i32 %20, %15
  br i1 %cmp1.4.i, label %for.cond.3.i.if.end17_crit_edge, label %for.cond.4.i

for.cond.3.i.if.end17_crit_edge:                  ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %21 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %15)
  %cmp1.5.i = icmp eq i32 %21, %15
  br i1 %cmp1.5.i, label %for.cond.4.i.if.end17_crit_edge, label %for.cond.5.i

for.cond.4.i.if.end17_crit_edge:                  ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %22 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %15)
  %cmp1.6.i = icmp eq i32 %22, %15
  br i1 %cmp1.6.i, label %for.cond.5.i.if.end17_crit_edge, label %for.cond.6.i

for.cond.5.i.if.end17_crit_edge:                  ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %23 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %15)
  %cmp1.7.i = icmp eq i32 %23, %15
  br i1 %cmp1.7.i, label %for.cond.6.i.if.end17_crit_edge, label %for.cond.7.i

for.cond.6.i.if.end17_crit_edge:                  ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %24 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %15)
  %cmp1.8.i = icmp eq i32 %24, %15
  br i1 %cmp1.8.i, label %for.cond.7.i.if.end17_crit_edge, label %for.cond.8.i

for.cond.7.i.if.end17_crit_edge:                  ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %25 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %15)
  %cmp1.9.i = icmp eq i32 %25, %15
  br i1 %cmp1.9.i, label %for.cond.8.i.if.end17_crit_edge, label %for.cond.9.i

for.cond.8.i.if.end17_crit_edge:                  ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %26 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %15)
  %cmp1.10.i = icmp eq i32 %26, %15
  br i1 %cmp1.10.i, label %for.cond.9.i.if.end17_crit_edge, label %for.cond.10.i

for.cond.9.i.if.end17_crit_edge:                  ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %27 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %15)
  %cmp1.11.i = icmp eq i32 %27, %15
  br i1 %cmp1.11.i, label %for.cond.10.i.if.end17_crit_edge, label %for.cond.11.i

for.cond.10.i.if.end17_crit_edge:                 ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %28 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %15)
  %cmp1.12.i = icmp eq i32 %28, %15
  br i1 %cmp1.12.i, label %for.cond.11.i.if.end17_crit_edge, label %for.cond.12.i

for.cond.11.i.if.end17_crit_edge:                 ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.cond.12.i:                                    ; preds = %for.cond.11.i
  %29 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %15)
  %cmp1.13.i = icmp eq i32 %29, %15
  br i1 %cmp1.13.i, label %for.cond.12.i.if.end17_crit_edge, label %for.cond.13.i

for.cond.12.i.if.end17_crit_edge:                 ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.cond.13.i:                                    ; preds = %for.cond.12.i
  %30 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %15)
  %cmp1.14.i = icmp eq i32 %30, %15
  br i1 %cmp1.14.i, label %for.cond.13.i.if.end17_crit_edge, label %for.cond.14.i

for.cond.13.i.if.end17_crit_edge:                 ; preds = %for.cond.13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.cond.14.i:                                    ; preds = %for.cond.13.i
  %31 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %15)
  %cmp1.15.i = icmp eq i32 %31, %15
  br i1 %cmp1.15.i, label %for.cond.14.i.if.end17_crit_edge, label %for.cond.14.i.cleanup_crit_edge

for.cond.14.i.cleanup_crit_edge:                  ; preds = %for.cond.14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.14.i.if.end17_crit_edge:                 ; preds = %for.cond.14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %for.cond.14.i.if.end17_crit_edge, %for.cond.13.i.if.end17_crit_edge, %for.cond.12.i.if.end17_crit_edge, %for.cond.11.i.if.end17_crit_edge, %for.cond.10.i.if.end17_crit_edge, %for.cond.9.i.if.end17_crit_edge, %for.cond.8.i.if.end17_crit_edge, %for.cond.7.i.if.end17_crit_edge, %for.cond.6.i.if.end17_crit_edge, %for.cond.5.i.if.end17_crit_edge, %for.cond.4.i.if.end17_crit_edge, %for.cond.3.i.if.end17_crit_edge, %for.cond.2.i.if.end17_crit_edge, %for.cond.1.i.if.end17_crit_edge, %for.cond.i.if.end17_crit_edge, %if.end13.if.end17_crit_edge
  %retval.0.i67.ph = phi ptr [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 14), %for.cond.13.i.if.end17_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 13), %for.cond.12.i.if.end17_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 12), %for.cond.11.i.if.end17_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 11), %for.cond.10.i.if.end17_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 10), %for.cond.9.i.if.end17_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 9), %for.cond.8.i.if.end17_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 8), %for.cond.7.i.if.end17_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 7), %for.cond.6.i.if.end17_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 6), %for.cond.5.i.if.end17_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 5), %for.cond.4.i.if.end17_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 4), %for.cond.3.i.if.end17_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 3), %for.cond.2.i.if.end17_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 2), %for.cond.1.i.if.end17_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 1), %for.cond.i.if.end17_crit_edge ], [ @formats, %if.end13.if.end17_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 15), %for.cond.14.i.if.end17_crit_edge ]
  %fmt18 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %32 = ptrtoint ptr %fmt18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fmt18, align 4
  %34 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %retval.0.i, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height, align 4
  %height21 = getelementptr inbounds %struct.rga_frame, ptr %retval.0.i, i32 0, i32 1
  %37 = ptrtoint ptr %height21 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %height21, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %38 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sizeimage, align 4
  %size = getelementptr inbounds %struct.rga_frame, ptr %retval.0.i, i32 0, i32 6
  %40 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %size, align 4
  %fmt23 = getelementptr inbounds %struct.rga_frame, ptr %retval.0.i, i32 0, i32 4
  %41 = ptrtoint ptr %fmt23 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %retval.0.i67.ph, ptr %fmt23, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %42 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bytesperline, align 4
  %stride = getelementptr inbounds %struct.rga_frame, ptr %retval.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %stride, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %45 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %colorspace, align 4
  %colorspace26 = getelementptr inbounds %struct.rga_frame, ptr %retval.0.i, i32 0, i32 2
  %47 = ptrtoint ptr %colorspace26 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %colorspace26, align 4
  %crop = getelementptr inbounds %struct.rga_frame, ptr %retval.0.i, i32 0, i32 3
  %48 = ptrtoint ptr %crop to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %crop, align 4
  %top = getelementptr inbounds %struct.rga_frame, ptr %retval.0.i, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %top, align 4
  %width30 = getelementptr inbounds %struct.rga_frame, ptr %retval.0.i, i32 0, i32 3, i32 2
  %50 = ptrtoint ptr %width30 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %33, ptr %width30, align 4
  %height33 = getelementptr inbounds %struct.rga_frame, ptr %retval.0.i, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %height33 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %36, ptr %height33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %for.cond.14.i.cleanup_crit_edge, %if.then11, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %13, %if.then11 ], [ 0, %if.end17 ], [ -22, %for.cond.14.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_try_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %prv, ptr nocapture noundef %f) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat.i, align 4
  %2 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %1)
  %cmp1.i = icmp eq i32 %2, %1
  br i1 %cmp1.i, label %entry.if.end_crit_edge, label %for.cond.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.i:                                       ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp1.1.i = icmp eq i32 %3, %1
  br i1 %cmp1.1.i, label %for.cond.i.if.end_crit_edge, label %for.cond.1.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.1.i:                                     ; preds = %for.cond.i
  %4 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %1)
  %cmp1.2.i = icmp eq i32 %4, %1
  br i1 %cmp1.2.i, label %for.cond.1.i.if.end_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end_crit_edge:                    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %5 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp1.3.i = icmp eq i32 %5, %1
  br i1 %cmp1.3.i, label %for.cond.2.i.if.end_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end_crit_edge:                    ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %6 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %1)
  %cmp1.4.i = icmp eq i32 %6, %1
  br i1 %cmp1.4.i, label %for.cond.3.i.if.end_crit_edge, label %for.cond.4.i

for.cond.3.i.if.end_crit_edge:                    ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %7 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %1)
  %cmp1.5.i = icmp eq i32 %7, %1
  br i1 %cmp1.5.i, label %for.cond.4.i.if.end_crit_edge, label %for.cond.5.i

for.cond.4.i.if.end_crit_edge:                    ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %8 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %1)
  %cmp1.6.i = icmp eq i32 %8, %1
  br i1 %cmp1.6.i, label %for.cond.5.i.if.end_crit_edge, label %for.cond.6.i

for.cond.5.i.if.end_crit_edge:                    ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %9 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp1.7.i = icmp eq i32 %9, %1
  br i1 %cmp1.7.i, label %for.cond.6.i.if.end_crit_edge, label %for.cond.7.i

for.cond.6.i.if.end_crit_edge:                    ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %10 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %1)
  %cmp1.8.i = icmp eq i32 %10, %1
  br i1 %cmp1.8.i, label %for.cond.7.i.if.end_crit_edge, label %for.cond.8.i

for.cond.7.i.if.end_crit_edge:                    ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %11 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %1)
  %cmp1.9.i = icmp eq i32 %11, %1
  br i1 %cmp1.9.i, label %for.cond.8.i.if.end_crit_edge, label %for.cond.9.i

for.cond.8.i.if.end_crit_edge:                    ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %12 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %1)
  %cmp1.10.i = icmp eq i32 %12, %1
  br i1 %cmp1.10.i, label %for.cond.9.i.if.end_crit_edge, label %for.cond.10.i

for.cond.9.i.if.end_crit_edge:                    ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %13 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %1)
  %cmp1.11.i = icmp eq i32 %13, %1
  br i1 %cmp1.11.i, label %for.cond.10.i.if.end_crit_edge, label %for.cond.11.i

for.cond.10.i.if.end_crit_edge:                   ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %14 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %1)
  %cmp1.12.i = icmp eq i32 %14, %1
  br i1 %cmp1.12.i, label %for.cond.11.i.if.end_crit_edge, label %for.cond.12.i

for.cond.11.i.if.end_crit_edge:                   ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.12.i:                                    ; preds = %for.cond.11.i
  %15 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %1)
  %cmp1.13.i = icmp eq i32 %15, %1
  br i1 %cmp1.13.i, label %for.cond.12.i.if.end_crit_edge, label %for.cond.13.i

for.cond.12.i.if.end_crit_edge:                   ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.13.i:                                    ; preds = %for.cond.12.i
  %16 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %1)
  %cmp1.14.i = icmp eq i32 %16, %1
  br i1 %cmp1.14.i, label %for.cond.13.i.if.end_crit_edge, label %for.cond.14.i

for.cond.13.i.if.end_crit_edge:                   ; preds = %for.cond.13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.14.i:                                    ; preds = %for.cond.13.i
  %17 = load i32, ptr getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %1)
  %cmp1.15.i = icmp eq i32 %17, %1
  br i1 %cmp1.15.i, label %for.cond.14.i.if.end_crit_edge, label %if.then

for.cond.14.i.if.end_crit_edge:                   ; preds = %for.cond.14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.cond.14.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %2, ptr %pixelformat.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond.14.i.if.end_crit_edge, %for.cond.13.i.if.end_crit_edge, %for.cond.12.i.if.end_crit_edge, %for.cond.11.i.if.end_crit_edge, %for.cond.10.i.if.end_crit_edge, %for.cond.9.i.if.end_crit_edge, %for.cond.8.i.if.end_crit_edge, %for.cond.7.i.if.end_crit_edge, %for.cond.6.i.if.end_crit_edge, %for.cond.5.i.if.end_crit_edge, %for.cond.4.i.if.end_crit_edge, %for.cond.3.i.if.end_crit_edge, %for.cond.2.i.if.end_crit_edge, %for.cond.1.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  %fmt.0 = phi ptr [ @formats, %if.then ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 14), %for.cond.13.i.if.end_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 13), %for.cond.12.i.if.end_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 12), %for.cond.11.i.if.end_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 11), %for.cond.10.i.if.end_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 10), %for.cond.9.i.if.end_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 9), %for.cond.8.i.if.end_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 8), %for.cond.7.i.if.end_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 7), %for.cond.6.i.if.end_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 6), %for.cond.5.i.if.end_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 5), %for.cond.4.i.if.end_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 4), %for.cond.3.i.if.end_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 3), %for.cond.2.i.if.end_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 2), %for.cond.1.i.if.end_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 1), %for.cond.i.if.end_crit_edge ], [ @formats, %entry.if.end_crit_edge ], [ getelementptr inbounds ([16 x %struct.rga_fmt], ptr @formats, i32 0, i32 15), %for.cond.14.i.if.end_crit_edge ]
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %field, align 4
  %20 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fmt2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %21)
  %cmp = icmp ugt i32 %21, 8192
  br i1 %cmp, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8192, ptr %fmt2, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %24)
  %cmp9 = icmp ugt i32 %24, 8192
  br i1 %cmp9, label %if.then10, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8192, ptr %height, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge
  %26 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fmt2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %27)
  %cmp16 = icmp ult i32 %27, 34
  br i1 %cmp16, label %if.then17, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 34, ptr %fmt2, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end13.if.end20_crit_edge
  %29 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %30)
  %cmp23 = icmp ult i32 %30, 34
  br i1 %cmp23, label %if.then24, label %if.end20.if.end27_crit_edge

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 34, ptr %height, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  %hw_format = getelementptr inbounds %struct.rga_fmt, ptr %fmt.0, i32 0, i32 6
  %32 = ptrtoint ptr %hw_format to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hw_format, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %33)
  %cmp28 = icmp ugt i8 %33, 7
  %34 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fmt2, align 4
  br i1 %cmp28, label %if.end27.if.end38_crit_edge, label %if.else

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %depth = getelementptr inbounds %struct.rga_fmt, ptr %fmt.0, i32 0, i32 1
  %36 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %depth, align 4
  %mul = mul i32 %37, %35
  %shr = lshr i32 %mul, 3
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.end27.if.end38_crit_edge
  %shr.sink = phi i32 [ %shr, %if.else ], [ %35, %if.end27.if.end38_crit_edge ]
  %38 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shr.sink, ptr %38, align 4
  %40 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height, align 4
  %42 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fmt2, align 4
  %depth43 = getelementptr inbounds %struct.rga_fmt, ptr %fmt.0, i32 0, i32 1
  %44 = ptrtoint ptr %depth43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %depth43, align 4
  %mul44 = mul i32 %43, %41
  %mul45 = mul i32 %mul44, %45
  %shr46 = lshr i32 %mul45, 3
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %46 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shr46, ptr %sizeimage, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_g_selection(ptr nocapture noundef readnone %file, ptr noundef %prv, ptr nocapture noundef %s) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %1, label %entry.if.then_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %in.i = getelementptr inbounds %struct.rga_ctx, ptr %prv, i32 0, i32 2
  br label %rga_get_frame.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %out.i = getelementptr inbounds %struct.rga_ctx, ptr %prv, i32 0, i32 3
  br label %rga_get_frame.exit

rga_get_frame.exit:                               ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %out.i, %sw.bb1.i ], [ %in.i, %sw.bb.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %rga_get_frame.exit.if.then_crit_edge, label %if.end

rga_get_frame.exit.if.then_crit_edge:             ; preds = %rga_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %rga_get_frame.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i48 = phi ptr [ %retval.0.i, %rga_get_frame.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ]
  %3 = ptrtoint ptr %retval.0.i48 to i32
  br label %cleanup

if.end:                                           ; preds = %rga_get_frame.exit
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 257, label %if.end.sw.bb_crit_edge
    i32 258, label %if.end.sw.bb_crit_edge49
    i32 1, label %if.end.sw.bb6_crit_edge
    i32 2, label %if.end.sw.bb6_crit_edge50
    i32 256, label %sw.bb11
    i32 0, label %sw.bb16
  ]

if.end.sw.bb6_crit_edge50:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6

if.end.sw.bb_crit_edge49:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge49
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %sw.bb.if.else_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

sw.bb6:                                           ; preds = %if.end.sw.bb6_crit_edge, %if.end.sw.bb6_crit_edge50
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp8.not = icmp eq i32 %1, 2
  br i1 %cmp8.not, label %sw.bb6.if.else_crit_edge, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb6.if.else_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp13.not = icmp eq i32 %1, 1
  br i1 %cmp13.not, label %sw.bb11.if.then21_crit_edge, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb11.if.then21_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp18.not = icmp eq i32 %1, 2
  br i1 %cmp18.not, label %sw.bb16.if.then21_crit_edge, label %sw.bb16.cleanup_crit_edge

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb16.if.then21_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.then21:                                        ; preds = %sw.bb16.if.then21_crit_edge, %sw.bb11.if.then21_crit_edge
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %crop = getelementptr inbounds %struct.rga_frame, ptr %retval.0.i, i32 0, i32 3
  %7 = call ptr @memcpy(ptr %r, ptr %crop, i32 16)
  br label %cleanup

if.else:                                          ; preds = %sw.bb6.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %r22 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %8 = ptrtoint ptr %r22 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %r22, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %top, align 4
  %10 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %retval.0.i, align 4
  %width25 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %width25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %width25, align 4
  %height = getelementptr inbounds %struct.rga_frame, ptr %retval.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %height27 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %height27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %height27, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then21, %sw.bb16.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %sw.bb11.cleanup_crit_edge ], [ -22, %sw.bb16.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_selection(ptr nocapture noundef readnone %file, ptr noundef %prv, ptr nocapture noundef readonly %s) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rga1 = getelementptr inbounds %struct.rga_ctx, ptr %prv, i32 0, i32 1
  %0 = ptrtoint ptr %rga1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rga1, align 4
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %3, label %entry.if.then_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %in.i = getelementptr inbounds %struct.rga_ctx, ptr %prv, i32 0, i32 2
  br label %rga_get_frame.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %out.i = getelementptr inbounds %struct.rga_ctx, ptr %prv, i32 0, i32 3
  br label %rga_get_frame.exit

rga_get_frame.exit:                               ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %out.i, %sw.bb1.i ], [ %in.i, %sw.bb.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %rga_get_frame.exit.if.then_crit_edge, label %if.end

rga_get_frame.exit.if.then_crit_edge:             ; preds = %rga_get_frame.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %rga_get_frame.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i86 = phi ptr [ %retval.0.i, %rga_get_frame.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ]
  %5 = ptrtoint ptr %retval.0.i86 to i32
  br label %cleanup

if.end:                                           ; preds = %rga_get_frame.exit
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 256, label %sw.bb
    i32 0, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp9.not = icmp eq i32 %3, 2
  br i1 %cmp9.not, label %sw.bb7.sw.epilog_crit_edge, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %top, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp12 = icmp slt i32 %10, 0
  br i1 %cmp12, label %sw.epilog.do.body_crit_edge, label %lor.lhs.false

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %sw.epilog
  %11 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp14 = icmp slt i32 %12, 0
  br i1 %cmp14, label %lor.lhs.false.do.body_crit_edge, label %if.end23

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %sw.epilog.do.body_crit_edge
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp16 = icmp slt i32 %13, 2
  br i1 %cmp16, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name) #13
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 4
  %add = add i32 %15, %12
  %16 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %retval.0.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %17)
  %cmp28 = icmp ugt i32 %add, %17
  br i1 %cmp28, label %if.end23.do.body45_crit_edge, label %lor.lhs.false29

if.end23.do.body45_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

lor.lhs.false29:                                  ; preds = %if.end23
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %add33 = add i32 %19, %10
  %height34 = getelementptr inbounds %struct.rga_frame, ptr %retval.0.i, i32 0, i32 1
  %20 = ptrtoint ptr %height34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add33, i32 %21)
  %cmp35 = icmp ugt i32 %add33, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %15)
  %cmp39 = icmp ult i32 %15, 34
  %or.cond = select i1 %cmp35, i1 true, i1 %cmp39
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %19)
  %cmp43 = icmp ult i32 %19, 34
  %or.cond83 = select i1 %or.cond, i1 true, i1 %cmp43
  br i1 %or.cond83, label %lor.lhs.false29.do.body45_crit_edge, label %if.end59

lor.lhs.false29.do.body45_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

do.body45:                                        ; preds = %lor.lhs.false29.do.body45_crit_edge, %if.end23.do.body45_crit_edge
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp46 = icmp slt i32 %22, 2
  br i1 %cmp46, label %do.end50, label %do.body45.cleanup_crit_edge

do.body45.cleanup_crit_edge:                      ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end50:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  %name53 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name53) #13
  br label %cleanup

if.end59:                                         ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #12
  %crop = getelementptr inbounds %struct.rga_frame, ptr %retval.0.i, i32 0, i32 3
  %23 = call ptr @memcpy(ptr %crop, ptr %r, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %do.end50, %do.body45.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ 0, %if.end59 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb7.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.end50 ], [ -22, %do.body45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @device_run(ptr noundef %prv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rga1 = getelementptr inbounds %struct.rga_ctx, ptr %prv, i32 0, i32 1
  %0 = ptrtoint ptr %rga1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rga1, align 4
  %ctrl_lock = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl_lock) #10
  %curr = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %prv, ptr %curr, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %prv, i32 0, i32 10
  %3 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %4, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #10
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 7
  %call.i18 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #10
  tail call void @rga_buf_map(ptr noundef %call.i) #10
  tail call void @rga_buf_map(ptr noundef %call.i18) #10
  tail call void @rga_hw_start(ptr noundef %1) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl_lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rga_buf_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rga_hw_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rga_runtime_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sclk.i = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sclk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sclk.i, align 4
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  %hclk.i = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %hclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hclk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  %aclk.i = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %aclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aclk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #10
  tail call void @clk_unprepare(ptr noundef %7) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rga_runtime_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sclk.i = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sclk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sclk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %3) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.i, %entry.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %entry.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.63, i32 noundef %retval.0.i.ph.i) #13
  br label %rga_enable_clocks.exit

if.end.i:                                         ; preds = %if.end.i.i
  %aclk.i = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %aclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aclk.i, align 4
  %call.i33.i = tail call i32 @clk_prepare(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %tobool.not.i34.i = icmp eq i32 %call.i33.i, 0
  br i1 %tobool.not.i34.i, label %if.end.i37.i, label %if.end.i.do.end6.i_crit_edge

if.end.i.do.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i

if.end.i37.i:                                     ; preds = %if.end.i
  %call1.i35.i = tail call i32 @clk_enable(ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35.i)
  %tobool2.not.i36.i = icmp eq i32 %call1.i35.i, 0
  br i1 %tobool2.not.i36.i, label %if.end8.i, label %if.then3.i38.i

if.then3.i38.i:                                   ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %7) #10
  br label %do.end6.i

do.end6.i:                                        ; preds = %if.then3.i38.i, %if.end.i.do.end6.i_crit_edge
  %retval.0.i39.ph.i = phi i32 [ %call1.i35.i, %if.then3.i38.i ], [ %call.i33.i, %if.end.i.do.end6.i_crit_edge ]
  %dev7.i = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.66, i32 noundef %retval.0.i39.ph.i) #13
  %10 = ptrtoint ptr %sclk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sclk.i, align 4
  tail call void @clk_disable(ptr noundef %11) #10
  tail call void @clk_unprepare(ptr noundef %11) #10
  br label %err_disable_aclk.i

if.end8.i:                                        ; preds = %if.end.i37.i
  %hclk.i = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %hclk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hclk.i, align 4
  %call.i41.i = tail call i32 @clk_prepare(ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %tobool.not.i42.i = icmp eq i32 %call.i41.i, 0
  br i1 %tobool.not.i42.i, label %if.end.i45.i, label %if.end8.i.do.end14.i_crit_edge

if.end8.i.do.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i

if.end.i45.i:                                     ; preds = %if.end8.i
  %call1.i43.i = tail call i32 @clk_enable(ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43.i)
  %tobool2.not.i44.i = icmp eq i32 %call1.i43.i, 0
  br i1 %tobool2.not.i44.i, label %if.end.i45.i.rga_enable_clocks.exit_crit_edge, label %if.then3.i46.i

if.end.i45.i.rga_enable_clocks.exit_crit_edge:    ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rga_enable_clocks.exit

if.then3.i46.i:                                   ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %13) #10
  br label %do.end14.i

do.end14.i:                                       ; preds = %if.then3.i46.i, %if.end8.i.do.end14.i_crit_edge
  %retval.0.i47.ph.i = phi i32 [ %call1.i43.i, %if.then3.i46.i ], [ %call.i41.i, %if.end8.i.do.end14.i_crit_edge ]
  %dev15.i = getelementptr inbounds %struct.rockchip_rga, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev15.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.69, i32 noundef %retval.0.i47.ph.i) #13
  br label %err_disable_aclk.i

err_disable_aclk.i:                               ; preds = %do.end14.i, %do.end6.i
  %ret.0.i = phi i32 [ %retval.0.i39.ph.i, %do.end6.i ], [ %retval.0.i47.ph.i, %do.end14.i ]
  %16 = ptrtoint ptr %aclk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aclk.i, align 4
  tail call void @clk_disable(ptr noundef %17) #10
  tail call void @clk_unprepare(ptr noundef %17) #10
  br label %rga_enable_clocks.exit

rga_enable_clocks.exit:                           ; preds = %err_disable_aclk.i, %if.end.i45.i.rga_enable_clocks.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %retval.0.i.ph.i, %do.end.i ], [ %ret.0.i, %err_disable_aclk.i ], [ 0, %if.end.i45.i.rga_enable_clocks.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !16, !18, !20, !22, !23, !25, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !65, !67, !69, !70, !71, !73, !75, !76, !77, !79, !81, !82, !83, !85, !87, !88, !89, !91, !93, !94, !95, !97, !99, !101, !102, !104, !105, !106, !107, !109, !111, !113, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !133, !135, !136, !137, !138, !140, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype299, !1, !"__UNIQUE_ID_debugtype299", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_rockchip_rga__300_995_rga_pdrv_init6, !4, !"__initcall__kmod_rockchip_rga__300_995_rga_pdrv_init6", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 995, i32 1}
!5 = !{ptr @__exitcall_rga_pdrv_exit, !4, !"__exitcall_rga_pdrv_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author301, !7, !"__UNIQUE_ID_author301", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 997, i32 1}
!8 = !{ptr @__UNIQUE_ID_description302, !9, !"__UNIQUE_ID_description302", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 998, i32 1}
!10 = !{ptr @__UNIQUE_ID_file303, !11, !"__UNIQUE_ID_file303", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 999, i32 1}
!12 = !{ptr @__UNIQUE_ID_license304, !11, !"__UNIQUE_ID_license304", i1 false, i1 false}
!13 = !{ptr @debug, !14, !"debug", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 31, i32 12}
!15 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 989, i32 11}
!18 = !{ptr @rga_pdrv, !19, !"rga_pdrv", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 985, i32 31}
!20 = !{ptr @rga_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 814, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rga_probe.__key.2, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 815, i32 2}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 819, i32 3}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rga_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @rga_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 838, i32 3}
!36 = !{ptr @rga_probe._entry.9, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @rga_probe._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 847, i32 3}
!40 = !{ptr @rga_probe._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @rga_probe._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 861, i32 3}
!44 = !{ptr @rga_probe._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @rga_probe._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 873, i32 2}
!48 = !{ptr @rga_probe._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @rga_probe._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 905, i32 3}
!52 = !{ptr @rga_probe._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @rga_probe._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 909, i32 2}
!56 = !{ptr @rga_probe._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @rga_probe._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 748, i32 46}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 750, i32 3}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rga_parse_dt._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @rga_parse_dt._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 754, i32 45}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 756, i32 3}
!69 = !{ptr @rga_parse_dt._entry.31, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @rga_parse_dt._entry_ptr.33, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 760, i32 45}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 762, i32 3}
!75 = !{ptr @rga_parse_dt._entry.35, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @rga_parse_dt._entry_ptr.37, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 778, i32 37}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 780, i32 3}
!81 = !{ptr @rga_parse_dt._entry.39, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @rga_parse_dt._entry_ptr.41, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 784, i32 37}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 786, i32 3}
!87 = !{ptr @rga_parse_dt._entry.43, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @rga_parse_dt._entry_ptr.45, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 790, i32 37}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 792, i32 3}
!93 = !{ptr @rga_parse_dt._entry.47, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @rga_parse_dt._entry_ptr.49, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @rga_videodev, !96, !"rga_videodev", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 695, i32 34}
!97 = !{ptr @rga_fops, !98, !"rga_fops", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 430, i32 42}
!99 = !{ptr @rga_setup_ctrls._key, !100, !"_key", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 162, i32 2}
!101 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 179, i32 3}
!104 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @rga_setup_ctrls._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @rga_setup_ctrls._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @rga_ctrl_ops, !108, !"rga_ctrl_ops", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 154, i32 35}
!109 = !{ptr @rga_ioctl_ops, !110, !"rga_ioctl_ops", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 664, i32 36}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 444, i32 25}
!113 = !{ptr @formats, !114, !"formats", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 187, i32 23}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 536, i32 3}
!117 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @vidioc_s_fmt._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @vidioc_s_fmt._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 647, i32 3}
!122 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @vidioc_s_selection._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @vidioc_s_selection._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 655, i32 3}
!127 = !{ptr @vidioc_s_selection._entry.58, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @vidioc_s_selection._entry_ptr.60, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @rga_m2m_ops, !130, !"rga_m2m_ops", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 92, i32 34}
!131 = !{ptr @def_frame, !132, !"def_frame", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 347, i32 25}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 941, i32 2}
!135 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @rga_remove._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @rga_remove._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @rockchip_rga_match, !139, !"rockchip_rga_match", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 973, i32 34}
!140 = !{ptr @rga_pm, !141, !"rga_pm", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 968, i32 32}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 711, i32 3}
!144 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @rga_enable_clocks._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @rga_enable_clocks._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 717, i32 3}
!149 = !{ptr @rga_enable_clocks._entry.65, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @rga_enable_clocks._entry_ptr.67, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/rockchip/rga/rga.c", i32 723, i32 3}
!153 = !{ptr @rga_enable_clocks._entry.68, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @rga_enable_clocks._entry_ptr.70, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{i64 2148260163}
!165 = !{i64 744986, i64 745011, i64 745033, i64 745049, i64 745061, i64 745081, i64 745105, i64 745121, i64 745133}
!166 = !{i64 2148260351}
!167 = !{i64 5245981}
!168 = !{i64 2156583108}
!169 = !{i64 2156582282}
!170 = !{i64 5245563}
!171 = !{!"branch_weights", i32 1, i32 2000}
