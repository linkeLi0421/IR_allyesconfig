; ModuleID = '/llk/IR_all_yes/drivers/media/pci/dt3155/dt3155.c_pt.bc'
source_filename = "../drivers/media/pci/dt3155/dt3155.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.dt3155_priv = type { %struct.v4l2_device, %struct.video_device, ptr, %struct.vb2_queue, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, i64, i32, i32, i32, i32, ptr, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.93, i32 }
%union.anon.93 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.94 }
%union.anon.94 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.96, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.96 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }

@__initcall__kmod_dt3155__300_599_pci_driver_init6 = internal global ptr @pci_driver_init, section ".initcall6.init", align 4
@pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @pci_ids, ptr @dt3155_probe, ptr @dt3155_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pci_driver_exit = internal global ptr @pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description301 = internal constant [67 x i8] c"dt3155.description=video4linux pci-driver for dt3155 frame grabber\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [46 x i8] c"dt3155.author=Marin Mitov <mitov@issp.bas.bg>\00", section ".modinfo", align 1
@__UNIQUE_ID_version303 = internal constant [21 x i8] c"dt3155.version=2.0.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt3155\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.0.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file304 = internal constant [44 x i8] c"dt3155.file=drivers/media/pci/dt3155/dt3155\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [19 x i8] c"dt3155.license=GPL\00", section ".modinfo", align 1
@pci_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 4643, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@dt3155_vdev = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @dt3155_fops, i32 83886081, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"dt3155\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 16777215, ptr @video_device_release_empty, ptr @dt3155_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@dt3155_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&pd->mux\00", [23 x i8] zeroinitializer }, align 32
@q_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @dt3155_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @dt3155_buf_prepare, ptr null, ptr null, ptr @dt3155_start_streaming, ptr @dt3155_stop_streaming, ptr @dt3155_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@dt3155_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&pd->lock\00", [22 x i8] zeroinitializer }, align 32
@dt3155_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 556, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"/dev/video%i is ready\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dt3155_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/pci/dt3155/dt3155.c\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dt3155_probe._entry_ptr = internal global ptr @dt3155_probe._entry, section ".printk_index", align 4
@dt3155_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@dt3155_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @dt3155_querycap, ptr @dt3155_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dt3155_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dt3155_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dt3155_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @dt3155_g_std, ptr @dt3155_s_std, ptr null, ptr @dt3155_enum_input, ptr @dt3155_g_input, ptr @dt3155_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dt3155 frame grabber\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VID%d\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"J2/VID0\00", [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.16 = private unnamed_addr constant [11 x i8] c"pci_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 592, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 603, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [8 x i8] c"pci_ids\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 586, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"dt3155_vdev\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 482, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 517, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"q_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 225, i32 29 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 533, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 556, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"dt3155_fops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 282, i32 42 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"dt3155_ioctl_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 391, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 298, i32 21 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 299, i32 25 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 361, i32 46 }
@___asan_gen_.83 = private constant [37 x i8] c"../drivers/media/pci/dt3155/dt3155.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 364, i32 24 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 1163, i32 7 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__UNIQUE_ID_version303, ptr @__exitcall_pci_driver_exit, ptr @__initcall__kmod_dt3155__300_599_pci_driver_init6, ptr @__modver_attr, ptr @dt3155_probe._entry, ptr @dt3155_probe._entry_ptr, ptr @pci_driver_exit, ptr @pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pci_ids, ptr @dt3155_vdev, ptr @dt3155_probe.__key, ptr @.str.3, ptr @q_ops, ptr @dt3155_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @dt3155_fops, ptr @dt3155_ioctl_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt3155_vdev to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt3155_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt3155_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt3155_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt3155_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt3155_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3155_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #8
  %call.i157 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2176, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i157, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef nonnull %call.i157) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %vdev = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %vdev, ptr @dt3155_vdev, i32 1352)
  %v4l2_dev13 = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 1, i32 7
  %1 = ptrtoint ptr %v4l2_dev13 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i157, ptr %v4l2_dev13, align 4
  %driver_data.i.i = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 1, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i157, ptr %driver_data.i.i, align 4
  %pdev15 = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 2
  %3 = ptrtoint ptr %pdev15 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %pdev15, align 8
  %std = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 8
  %4 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 16713471, ptr %std, align 8
  %csr2 = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 14
  %5 = ptrtoint ptr %csr2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %csr2, align 4
  %width = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 9
  %6 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 768, ptr %width, align 8
  %height = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 10
  %7 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 576, ptr %height, align 4
  %dmaq = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 6
  %8 = ptrtoint ptr %dmaq to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %dmaq, ptr %dmaq, align 4
  %prev.i = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dmaq, ptr %prev.i, align 4
  %mux = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mux, ptr noundef nonnull @.str.3, ptr noundef nonnull @dt3155_probe.__key) #8
  %lock = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 1, i32 26
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mux, ptr %lock, align 8
  %vidq = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 3
  %11 = ptrtoint ptr %vidq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %vidq, align 4
  %timestamp_flags = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 3, i32 13
  %12 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8192, ptr %timestamp_flags, align 4
  %io_modes = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 21, ptr %io_modes, align 4
  %ops = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 3, i32 7
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @q_ops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %drv_priv = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 3, i32 10
  %16 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i157, ptr %drv_priv, align 4
  %min_buffers_needed = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 3, i32 15
  %17 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %min_buffers_needed, align 4
  %gfp_flags = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 3, i32 14
  %18 = ptrtoint ptr %gfp_flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %gfp_flags, align 4
  %lock27 = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 3, i32 5
  %19 = ptrtoint ptr %lock27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %mux, ptr %lock27, align 4
  %dev30 = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %dev30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %dev30, align 4
  %queue = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 1, i32 10
  %21 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %vidq, ptr %queue, align 8
  %call34 = tail call i32 @vb2_queue_init(ptr noundef %vidq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp = icmp slt i32 %call34, 0
  br i1 %cmp, label %if.end10.err_v4l2_dev_unreg_crit_edge, label %do.body37

if.end10.err_v4l2_dev_unreg_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_v4l2_dev_unreg

do.body37:                                        ; preds = %if.end10
  %lock38 = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock38, ptr noundef nonnull @.str.5, ptr noundef nonnull @dt3155_probe.__key.4, i16 noundef signext 3) #8
  %config = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 15
  %22 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %config, align 1
  %call42 = tail call i32 @pci_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %do.body37.err_v4l2_dev_unreg_crit_edge

do.body37.err_v4l2_dev_unreg_crit_edge:           ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_v4l2_dev_unreg

if.end45:                                         ; preds = %do.body37
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %23 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end45.pci_name.exit_crit_edge

if.end45.pci_name.exit_crit_edge:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end45.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %26, %if.end.i.i ], [ %24, %if.end45.pci_name.exit_crit_edge ]
  %call47 = tail call i32 @pci_request_region(ptr noundef %pdev, i32 noundef 0, ptr noundef %retval.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %pci_name.exit.err_pci_disable_crit_edge

pci_name.exit.err_pci_disable_crit_edge:          ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pci_disable

if.end50:                                         ; preds = %pci_name.exit
  %27 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev15, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 47, i32 0, i32 1
  %29 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp52 = icmp eq i32 %30, 0
  br i1 %cmp52, label %if.end50.cond.end_crit_edge, label %cond.false

if.end50.cond.end_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %resource = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 47
  %31 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %resource, align 8
  %sub = add i32 %30, 1
  %add = sub i32 %sub, %32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end50.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end50.cond.end_crit_edge ]
  %call60 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef %cond) #8
  %regs = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 13
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call60, ptr %regs, align 8
  %tobool62.not = icmp eq ptr %call60, null
  br i1 %tobool62.not, label %cond.end.err_free_reg_crit_edge, label %if.end64

cond.end.err_free_reg_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_reg

if.end64:                                         ; preds = %cond.end
  %call65 = tail call fastcc i32 @dt3155_init_board(ptr noundef nonnull %call.i157)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.err_iounmap_crit_edge

if.end64.err_iounmap_crit_edge:                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_iounmap

if.end68:                                         ; preds = %if.end64
  %34 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev15, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 46
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  %call.i158 = tail call i32 @request_threaded_irq(i32 noundef %37, ptr noundef nonnull @dt3155_irq_handler_even, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i157) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool71.not = icmp eq i32 %call.i158, 0
  br i1 %tobool71.not, label %if.end73, label %if.end68.err_iounmap_crit_edge

if.end68.err_iounmap_crit_edge:                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_iounmap

if.end73:                                         ; preds = %if.end68
  %fops.i = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fops.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call.i159 = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %tobool76.not = icmp eq i32 %call.i159, 0
  br i1 %tobool76.not, label %do.end81, label %err_free_irq

do.end81:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %minor = getelementptr inbounds %struct.dt3155_priv, ptr %call.i157, i32 0, i32 1, i32 15
  %42 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %minor, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %43) #11
  br label %cleanup

err_free_irq:                                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev15, align 8
  %irq85 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 46
  %46 = ptrtoint ptr %irq85 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq85, align 4
  %call86 = tail call ptr @free_irq(i32 noundef %47, ptr noundef nonnull %call.i157) #8
  br label %err_iounmap

err_iounmap:                                      ; preds = %err_free_irq, %if.end68.err_iounmap_crit_edge, %if.end64.err_iounmap_crit_edge
  %err.0 = phi i32 [ %call65, %if.end64.err_iounmap_crit_edge ], [ %call.i158, %if.end68.err_iounmap_crit_edge ], [ %call.i159, %err_free_irq ]
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 8
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %49) #8
  br label %err_free_reg

err_free_reg:                                     ; preds = %err_iounmap, %cond.end.err_free_reg_crit_edge
  %err.1 = phi i32 [ %err.0, %err_iounmap ], [ -12, %cond.end.err_free_reg_crit_edge ]
  tail call void @pci_release_region(ptr noundef %pdev, i32 noundef 0) #8
  br label %err_pci_disable

err_pci_disable:                                  ; preds = %err_free_reg, %pci_name.exit.err_pci_disable_crit_edge
  %err.2 = phi i32 [ %call47, %pci_name.exit.err_pci_disable_crit_edge ], [ %err.1, %err_free_reg ]
  tail call void @pci_disable_device(ptr noundef %pdev) #8
  br label %err_v4l2_dev_unreg

err_v4l2_dev_unreg:                               ; preds = %err_pci_disable, %do.body37.err_v4l2_dev_unreg_crit_edge, %if.end10.err_v4l2_dev_unreg_crit_edge
  %err.3 = phi i32 [ %call34, %if.end10.err_v4l2_dev_unreg_crit_edge ], [ %call42, %do.body37.err_v4l2_dev_unreg_crit_edge ], [ %err.2, %err_pci_disable ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call.i157) #8
  br label %cleanup

cleanup:                                          ; preds = %err_v4l2_dev_unreg, %do.end81, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %err_v4l2_dev_unreg ], [ 0, %do.end81 ], [ -12, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dt3155_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vdev = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 1
  tail call void @vb2_video_unregister_device(ptr noundef %vdev) #8
  %pdev1 = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #8
  tail call void @v4l2_device_unregister(ptr noundef %1) #8
  %regs = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %7) #8
  tail call void @pci_release_region(ptr noundef %pdev, i32 noundef 0) #8
  tail call void @pci_disable_device(ptr noundef %pdev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dt3155_init_board(ptr noundef readonly %pd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.dt3155_priv, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  tail call void @pci_set_master(ptr noundef %1) #8
  %regs = getelementptr inbounds %struct.dt3155_priv, ptr %pd, i32 0, i32 13
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 806289408) #8, !srcloc !63
  tail call void @msleep(i32 noundef 20) #8
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 -1073741824) #8, !srcloc !63
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr5 = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 32435950) #8, !srcloc !63
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr7 = getelementptr i8, ptr %9, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 32435950) #8, !srcloc !63
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr9 = getelementptr i8, ptr %11, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 536870912) #8, !srcloc !63
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %add.ptr11 = getelementptr i8, ptr %13, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 50397184) #8, !srcloc !63
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  %add.ptr13 = getelementptr i8, ptr %15, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #8, !srcloc !63
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %add.ptr15 = getelementptr i8, ptr %17, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #8, !srcloc !63
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 8
  %add.ptr17 = getelementptr i8, ptr %19, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 16777216) #8, !srcloc !63
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 8
  %add.ptr19 = getelementptr i8, ptr %21, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 16777216) #8, !srcloc !63
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %add.ptr21 = getelementptr i8, ptr %23, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 0) #8, !srcloc !63
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 8
  %add.ptr23 = getelementptr i8, ptr %25, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 2080376064) #8, !srcloc !63
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 8
  %add.ptr25 = getelementptr i8, ptr %27, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 16843009) #8, !srcloc !63
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %29, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16129) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 9663660) #8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %32 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %add.ptr2.i = getelementptr i8, ptr %29, i32 96
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !64
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %and4.i = and i32 %34, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %read_i2c_reg.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 131072) #8, !srcloc !63
  br label %cleanup

read_i2c_reg.exit:                                ; preds = %if.end.i
  %shr.i.mask = and i32 %34, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shr.i.mask)
  %cmp.not = icmp eq i32 %shr.i.mask, 536870912
  br i1 %cmp.not, label %if.end, label %read_i2c_reg.exit.cleanup_crit_edge

read_i2c_reg.exit.cleanup_crit_edge:              ; preds = %read_i2c_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %read_i2c_reg.exit
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 8
  %add.ptr.i140 = getelementptr i8, ptr %36, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 24577) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 13958620) #8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %39 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i141 = icmp eq i32 %39, 0
  br i1 %tobool.not.i141, label %if.end.i142, label %if.end.for.body.preheader_crit_edge

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

if.end.i142:                                      ; preds = %if.end
  %add.ptr4.i = getelementptr i8, ptr %36, i32 96
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %41 = and i32 %40, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool7.not.i = icmp eq i32 %41, 0
  br i1 %tobool7.not.i, label %if.end.i142.for.body.preheader_crit_edge, label %if.then8.i

if.end.i142.for.body.preheader_crit_edge:         ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

if.then8.i:                                       ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 131072) #8, !srcloc !63
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then8.i, %if.end.i142.for.body.preheader_crit_edge, %if.end.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %write_i2c_reg.exit149.for.body_crit_edge, %for.body.preheader
  %i.0278 = phi i32 [ %inc, %write_i2c_reg.exit149.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 8
  %or2.i = or i32 %i.0278, 23199744
  %add.ptr.i143 = getelementptr i8, ptr %43, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %44 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %44) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 13958620) #8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i143) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %47 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i144 = icmp eq i32 %47, 0
  br i1 %tobool.not.i144, label %if.end.i147, label %for.body.write_i2c_reg.exit149_crit_edge

for.body.write_i2c_reg.exit149_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit149

if.end.i147:                                      ; preds = %for.body
  %add.ptr4.i145 = getelementptr i8, ptr %43, i32 96
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i145) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %49 = and i32 %48, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool7.not.i146 = icmp eq i32 %49, 0
  br i1 %tobool7.not.i146, label %if.end.i147.write_i2c_reg.exit149_crit_edge, label %if.then8.i148

if.end.i147.write_i2c_reg.exit149_crit_edge:      ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit149

if.then8.i148:                                    ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i145, i32 131072) #8, !srcloc !63
  br label %write_i2c_reg.exit149

write_i2c_reg.exit149:                            ; preds = %if.then8.i148, %if.end.i147.write_i2c_reg.exit149_crit_edge, %for.body.write_i2c_reg.exit149_crit_edge
  %inc = add nuw nsw i32 %i.0278, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %write_i2c_reg.exit149.for.body_crit_edge

write_i2c_reg.exit149.for.body_crit_edge:         ; preds = %write_i2c_reg.exit149
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %write_i2c_reg.exit149
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 8
  %add.ptr.i150 = getelementptr i8, ptr %51, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 24577) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 13958620) #8
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %54 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i151 = icmp eq i32 %54, 0
  br i1 %tobool.not.i151, label %if.end.i154, label %for.end.write_i2c_reg.exit156_crit_edge

for.end.write_i2c_reg.exit156_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit156

if.end.i154:                                      ; preds = %for.end
  %add.ptr4.i152 = getelementptr i8, ptr %51, i32 96
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i152) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %56 = and i32 %55, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool7.not.i153 = icmp eq i32 %56, 0
  br i1 %tobool7.not.i153, label %if.end.i154.write_i2c_reg.exit156_crit_edge, label %if.then8.i155

if.end.i154.write_i2c_reg.exit156_crit_edge:      ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit156

if.then8.i155:                                    ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i152, i32 131072) #8, !srcloc !63
  br label %write_i2c_reg.exit156

write_i2c_reg.exit156:                            ; preds = %if.then8.i155, %if.end.i154.write_i2c_reg.exit156_crit_edge, %for.end.write_i2c_reg.exit156_crit_edge
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 8
  %add.ptr.i157 = getelementptr i8, ptr %58, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 134243329) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 13958620) #8
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i157) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %61 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i158 = icmp eq i32 %61, 0
  br i1 %tobool.not.i158, label %if.end.i161, label %write_i2c_reg.exit156.write_i2c_reg.exit163_crit_edge

write_i2c_reg.exit156.write_i2c_reg.exit163_crit_edge: ; preds = %write_i2c_reg.exit156
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit163

if.end.i161:                                      ; preds = %write_i2c_reg.exit156
  %add.ptr4.i159 = getelementptr i8, ptr %58, i32 96
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i159) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %63 = and i32 %62, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool7.not.i160 = icmp eq i32 %63, 0
  br i1 %tobool7.not.i160, label %if.end.i161.write_i2c_reg.exit163_crit_edge, label %if.then8.i162

if.end.i161.write_i2c_reg.exit163_crit_edge:      ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit163

if.then8.i162:                                    ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i159, i32 131072) #8, !srcloc !63
  br label %write_i2c_reg.exit163

write_i2c_reg.exit163:                            ; preds = %if.then8.i162, %if.end.i161.write_i2c_reg.exit163_crit_edge, %write_i2c_reg.exit156.write_i2c_reg.exit163_crit_edge
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 8
  %add.ptr.i164 = getelementptr i8, ptr %65, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164, i32 16801793) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 13958620) #8
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i164) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %68 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i165 = icmp eq i32 %68, 0
  br i1 %tobool.not.i165, label %if.end.i168, label %write_i2c_reg.exit163.write_i2c_reg.exit170_crit_edge

write_i2c_reg.exit163.write_i2c_reg.exit170_crit_edge: ; preds = %write_i2c_reg.exit163
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit170

if.end.i168:                                      ; preds = %write_i2c_reg.exit163
  %add.ptr4.i166 = getelementptr i8, ptr %65, i32 96
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i166) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %70 = and i32 %69, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool7.not.i167 = icmp eq i32 %70, 0
  br i1 %tobool7.not.i167, label %if.end.i168.write_i2c_reg.exit170_crit_edge, label %if.then8.i169

if.end.i168.write_i2c_reg.exit170_crit_edge:      ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit170

if.then8.i169:                                    ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i166, i32 131072) #8, !srcloc !63
  br label %write_i2c_reg.exit170

write_i2c_reg.exit170:                            ; preds = %if.then8.i169, %if.end.i168.write_i2c_reg.exit170_crit_edge, %write_i2c_reg.exit163.write_i2c_reg.exit170_crit_edge
  %71 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs, align 8
  %add.ptr.i171 = getelementptr i8, ptr %72, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171, i32 570450945) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 13958620) #8
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i171) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %75 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i172 = icmp eq i32 %75, 0
  br i1 %tobool.not.i172, label %if.end.i175, label %write_i2c_reg.exit170.write_i2c_reg.exit177_crit_edge

write_i2c_reg.exit170.write_i2c_reg.exit177_crit_edge: ; preds = %write_i2c_reg.exit170
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit177

if.end.i175:                                      ; preds = %write_i2c_reg.exit170
  %add.ptr4.i173 = getelementptr i8, ptr %72, i32 96
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i173) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %77 = and i32 %76, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool7.not.i174 = icmp eq i32 %77, 0
  br i1 %tobool7.not.i174, label %if.end.i175.write_i2c_reg.exit177_crit_edge, label %if.then8.i176

if.end.i175.write_i2c_reg.exit177_crit_edge:      ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit177

if.then8.i176:                                    ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i173, i32 131072) #8, !srcloc !63
  br label %write_i2c_reg.exit177

write_i2c_reg.exit177:                            ; preds = %if.then8.i176, %if.end.i175.write_i2c_reg.exit177_crit_edge, %write_i2c_reg.exit170.write_i2c_reg.exit177_crit_edge
  %78 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs, align 8
  %add.ptr.i178 = getelementptr i8, ptr %79, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 33579009) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 13958620) #8
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i178) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %82 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i179 = icmp eq i32 %82, 0
  br i1 %tobool.not.i179, label %if.end.i182, label %write_i2c_reg.exit177.write_i2c_reg.exit184_crit_edge

write_i2c_reg.exit177.write_i2c_reg.exit184_crit_edge: ; preds = %write_i2c_reg.exit177
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit184

if.end.i182:                                      ; preds = %write_i2c_reg.exit177
  %add.ptr4.i180 = getelementptr i8, ptr %79, i32 96
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i180) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %84 = and i32 %83, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool7.not.i181 = icmp eq i32 %84, 0
  br i1 %tobool7.not.i181, label %if.end.i182.write_i2c_reg.exit184_crit_edge, label %if.then8.i183

if.end.i182.write_i2c_reg.exit184_crit_edge:      ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit184

if.then8.i183:                                    ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i180, i32 131072) #8, !srcloc !63
  br label %write_i2c_reg.exit184

write_i2c_reg.exit184:                            ; preds = %if.then8.i183, %if.end.i182.write_i2c_reg.exit184_crit_edge, %write_i2c_reg.exit177.write_i2c_reg.exit184_crit_edge
  %85 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs, align 8
  %add.ptr.i185 = getelementptr i8, ptr %86, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 25601) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 13958620) #8
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i185) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %89 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i186 = icmp eq i32 %89, 0
  br i1 %tobool.not.i186, label %if.end.i189, label %write_i2c_reg.exit184.write_i2c_reg.exit191_crit_edge

write_i2c_reg.exit184.write_i2c_reg.exit191_crit_edge: ; preds = %write_i2c_reg.exit184
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit191

if.end.i189:                                      ; preds = %write_i2c_reg.exit184
  %add.ptr4.i187 = getelementptr i8, ptr %86, i32 96
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i187) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %91 = and i32 %90, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool7.not.i188 = icmp eq i32 %91, 0
  br i1 %tobool7.not.i188, label %if.end.i189.write_i2c_reg.exit191_crit_edge, label %if.then8.i190

if.end.i189.write_i2c_reg.exit191_crit_edge:      ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit191

if.then8.i190:                                    ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i187, i32 131072) #8, !srcloc !63
  br label %write_i2c_reg.exit191

write_i2c_reg.exit191:                            ; preds = %if.then8.i190, %if.end.i189.write_i2c_reg.exit191_crit_edge, %write_i2c_reg.exit184.write_i2c_reg.exit191_crit_edge
  %92 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs, align 8
  %config = getelementptr inbounds %struct.dt3155_priv, ptr %pd, i32 0, i32 15
  %94 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %config, align 1
  %conv1.i192 = zext i8 %95 to i32
  %or2.i194 = or i32 %conv1.i192, 19267712
  %add.ptr.i195 = getelementptr i8, ptr %93, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %96 = tail call i32 @llvm.bswap.i32(i32 %or2.i194) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i195, i32 %96) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 13958620) #8
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i195) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %99 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i196 = icmp eq i32 %99, 0
  br i1 %tobool.not.i196, label %if.end.i199, label %write_i2c_reg.exit191.for.body54.preheader_crit_edge

write_i2c_reg.exit191.for.body54.preheader_crit_edge: ; preds = %write_i2c_reg.exit191
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54.preheader

if.end.i199:                                      ; preds = %write_i2c_reg.exit191
  %add.ptr4.i197 = getelementptr i8, ptr %93, i32 96
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i197) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %101 = and i32 %100, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool7.not.i198 = icmp eq i32 %101, 0
  br i1 %tobool7.not.i198, label %if.end.i199.for.body54.preheader_crit_edge, label %if.then8.i200

if.end.i199.for.body54.preheader_crit_edge:       ; preds = %if.end.i199
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54.preheader

if.then8.i200:                                    ; preds = %if.end.i199
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i197, i32 131072) #8, !srcloc !63
  br label %for.body54.preheader

for.body54.preheader:                             ; preds = %if.then8.i200, %if.end.i199.for.body54.preheader_crit_edge, %write_i2c_reg.exit191.for.body54.preheader_crit_edge
  br label %for.body54

for.body54:                                       ; preds = %write_i2c_reg.exit221.for.body54_crit_edge, %for.body54.preheader
  %i.1279 = phi i32 [ %inc62, %write_i2c_reg.exit221.for.body54_crit_edge ], [ 0, %for.body54.preheader ]
  %102 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs, align 8
  %or2.i204 = or i32 %i.1279, 27262976
  %add.ptr.i205 = getelementptr i8, ptr %103, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %104 = tail call i32 @llvm.bswap.i32(i32 %or2.i204) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i205, i32 %104) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 13958620) #8
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i205) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %107 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i206 = icmp eq i32 %107, 0
  br i1 %tobool.not.i206, label %if.end.i209, label %for.body54.write_i2c_reg.exit211_crit_edge

for.body54.write_i2c_reg.exit211_crit_edge:       ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit211

if.end.i209:                                      ; preds = %for.body54
  %add.ptr4.i207 = getelementptr i8, ptr %103, i32 96
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i207) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %109 = and i32 %108, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool7.not.i208 = icmp eq i32 %109, 0
  br i1 %tobool7.not.i208, label %if.end.i209.write_i2c_reg.exit211_crit_edge, label %if.then8.i210

if.end.i209.write_i2c_reg.exit211_crit_edge:      ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit211

if.then8.i210:                                    ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i207, i32 131072) #8, !srcloc !63
  br label %write_i2c_reg.exit211

write_i2c_reg.exit211:                            ; preds = %if.then8.i210, %if.end.i209.write_i2c_reg.exit211_crit_edge, %for.body54.write_i2c_reg.exit211_crit_edge
  %110 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs, align 8
  %or2.i214 = or i32 %i.1279, 27394048
  %add.ptr.i215 = getelementptr i8, ptr %111, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %112 = tail call i32 @llvm.bswap.i32(i32 %or2.i214) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215, i32 %112) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %113(i32 noundef 13958620) #8
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i215) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %115 = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.not.i216 = icmp eq i32 %115, 0
  br i1 %tobool.not.i216, label %if.end.i219, label %write_i2c_reg.exit211.write_i2c_reg.exit221_crit_edge

write_i2c_reg.exit211.write_i2c_reg.exit221_crit_edge: ; preds = %write_i2c_reg.exit211
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit221

if.end.i219:                                      ; preds = %write_i2c_reg.exit211
  %add.ptr4.i217 = getelementptr i8, ptr %111, i32 96
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i217) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %117 = and i32 %116, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool7.not.i218 = icmp eq i32 %117, 0
  br i1 %tobool7.not.i218, label %if.end.i219.write_i2c_reg.exit221_crit_edge, label %if.then8.i220

if.end.i219.write_i2c_reg.exit221_crit_edge:      ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit221

if.then8.i220:                                    ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i217, i32 131072) #8, !srcloc !63
  br label %write_i2c_reg.exit221

write_i2c_reg.exit221:                            ; preds = %if.then8.i220, %if.end.i219.write_i2c_reg.exit221_crit_edge, %write_i2c_reg.exit211.write_i2c_reg.exit221_crit_edge
  %inc62 = add nuw nsw i32 %i.1279, 1
  %exitcond281.not = icmp eq i32 %inc62, 256
  br i1 %exitcond281.not, label %for.end63, label %write_i2c_reg.exit221.for.body54_crit_edge

write_i2c_reg.exit221.for.body54_crit_edge:       ; preds = %write_i2c_reg.exit221
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54

for.end63:                                        ; preds = %write_i2c_reg.exit221
  %118 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs, align 8
  %120 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %config, align 1
  %conv1.i222 = zext i8 %121 to i32
  %or2.i224 = or i32 %conv1.i222, 19267776
  %add.ptr.i225 = getelementptr i8, ptr %119, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %122 = tail call i32 @llvm.bswap.i32(i32 %or2.i224) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225, i32 %122) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %123(i32 noundef 13958620) #8
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i225) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %125 = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.not.i226 = icmp eq i32 %125, 0
  br i1 %tobool.not.i226, label %if.end.i229, label %for.end63.for.body74.preheader_crit_edge

for.end63.for.body74.preheader_crit_edge:         ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body74.preheader

if.end.i229:                                      ; preds = %for.end63
  %add.ptr4.i227 = getelementptr i8, ptr %119, i32 96
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i227) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %127 = and i32 %126, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool7.not.i228 = icmp eq i32 %127, 0
  br i1 %tobool7.not.i228, label %if.end.i229.for.body74.preheader_crit_edge, label %if.then8.i230

if.end.i229.for.body74.preheader_crit_edge:       ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body74.preheader

if.then8.i230:                                    ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i227, i32 131072) #8, !srcloc !63
  br label %for.body74.preheader

for.body74.preheader:                             ; preds = %if.then8.i230, %if.end.i229.for.body74.preheader_crit_edge, %for.end63.for.body74.preheader_crit_edge
  br label %for.body74

for.body74:                                       ; preds = %write_i2c_reg.exit251.for.body74_crit_edge, %for.body74.preheader
  %i.2280 = phi i32 [ %inc82, %write_i2c_reg.exit251.for.body74_crit_edge ], [ 0, %for.body74.preheader ]
  %128 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs, align 8
  %or2.i234 = or i32 %i.2280, 27262976
  %add.ptr.i235 = getelementptr i8, ptr %129, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %130 = tail call i32 @llvm.bswap.i32(i32 %or2.i234) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i235, i32 %130) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %131(i32 noundef 13958620) #8
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i235) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %133 = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.not.i236 = icmp eq i32 %133, 0
  br i1 %tobool.not.i236, label %if.end.i239, label %for.body74.write_i2c_reg.exit241_crit_edge

for.body74.write_i2c_reg.exit241_crit_edge:       ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit241

if.end.i239:                                      ; preds = %for.body74
  %add.ptr4.i237 = getelementptr i8, ptr %129, i32 96
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i237) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %135 = and i32 %134, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool7.not.i238 = icmp eq i32 %135, 0
  br i1 %tobool7.not.i238, label %if.end.i239.write_i2c_reg.exit241_crit_edge, label %if.then8.i240

if.end.i239.write_i2c_reg.exit241_crit_edge:      ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit241

if.then8.i240:                                    ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i237, i32 131072) #8, !srcloc !63
  br label %write_i2c_reg.exit241

write_i2c_reg.exit241:                            ; preds = %if.then8.i240, %if.end.i239.write_i2c_reg.exit241_crit_edge, %for.body74.write_i2c_reg.exit241_crit_edge
  %136 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs, align 8
  %or2.i244 = or i32 %i.2280, 27394048
  %add.ptr.i245 = getelementptr i8, ptr %137, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %138 = tail call i32 @llvm.bswap.i32(i32 %or2.i244) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i245, i32 %138) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %139 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %139(i32 noundef 13958620) #8
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i245) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %141 = and i32 %140, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool.not.i246 = icmp eq i32 %141, 0
  br i1 %tobool.not.i246, label %if.end.i249, label %write_i2c_reg.exit241.write_i2c_reg.exit251_crit_edge

write_i2c_reg.exit241.write_i2c_reg.exit251_crit_edge: ; preds = %write_i2c_reg.exit241
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit251

if.end.i249:                                      ; preds = %write_i2c_reg.exit241
  %add.ptr4.i247 = getelementptr i8, ptr %137, i32 96
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i247) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %143 = and i32 %142, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool7.not.i248 = icmp eq i32 %143, 0
  br i1 %tobool7.not.i248, label %if.end.i249.write_i2c_reg.exit251_crit_edge, label %if.then8.i250

if.end.i249.write_i2c_reg.exit251_crit_edge:      ; preds = %if.end.i249
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit251

if.then8.i250:                                    ; preds = %if.end.i249
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i247, i32 131072) #8, !srcloc !63
  br label %write_i2c_reg.exit251

write_i2c_reg.exit251:                            ; preds = %if.then8.i250, %if.end.i249.write_i2c_reg.exit251_crit_edge, %write_i2c_reg.exit241.write_i2c_reg.exit251_crit_edge
  %inc82 = add nuw nsw i32 %i.2280, 1
  %exitcond282.not = icmp eq i32 %inc82, 256
  br i1 %exitcond282.not, label %for.end83, label %write_i2c_reg.exit251.for.body74_crit_edge

write_i2c_reg.exit251.for.body74_crit_edge:       ; preds = %write_i2c_reg.exit251
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body74

for.end83:                                        ; preds = %write_i2c_reg.exit251
  %144 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regs, align 8
  %146 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %config, align 1
  %conv1.i252 = zext i8 %147 to i32
  %or2.i254 = or i32 %conv1.i252, 19267584
  %add.ptr.i255 = getelementptr i8, ptr %145, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %148 = tail call i32 @llvm.bswap.i32(i32 %or2.i254) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i255, i32 %148) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %149(i32 noundef 13958620) #8
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i255) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %151 = and i32 %150, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.not.i256 = icmp eq i32 %151, 0
  br i1 %tobool.not.i256, label %if.end.i259, label %for.end83.write_i2c_reg.exit261_crit_edge

for.end83.write_i2c_reg.exit261_crit_edge:        ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit261

if.end.i259:                                      ; preds = %for.end83
  %add.ptr4.i257 = getelementptr i8, ptr %145, i32 96
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i257) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %153 = and i32 %152, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool7.not.i258 = icmp eq i32 %153, 0
  br i1 %tobool7.not.i258, label %if.end.i259.write_i2c_reg.exit261_crit_edge, label %if.then8.i260

if.end.i259.write_i2c_reg.exit261_crit_edge:      ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit261

if.then8.i260:                                    ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i257, i32 131072) #8, !srcloc !63
  br label %write_i2c_reg.exit261

write_i2c_reg.exit261:                            ; preds = %if.then8.i260, %if.end.i259.write_i2c_reg.exit261_crit_edge, %for.end83.write_i2c_reg.exit261_crit_edge
  %154 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs, align 8
  %add.ptr.i262 = getelementptr i8, ptr %155, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i262, i32 24577) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %156(i32 noundef 13958620) #8
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i262) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %158 = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.not.i263 = icmp eq i32 %158, 0
  br i1 %tobool.not.i263, label %if.end.i266, label %write_i2c_reg.exit261.write_i2c_reg.exit268_crit_edge

write_i2c_reg.exit261.write_i2c_reg.exit268_crit_edge: ; preds = %write_i2c_reg.exit261
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit268

if.end.i266:                                      ; preds = %write_i2c_reg.exit261
  %add.ptr4.i264 = getelementptr i8, ptr %155, i32 96
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i264) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %160 = and i32 %159, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool7.not.i265 = icmp eq i32 %160, 0
  br i1 %tobool7.not.i265, label %if.end.i266.write_i2c_reg.exit268_crit_edge, label %if.then8.i267

if.end.i266.write_i2c_reg.exit268_crit_edge:      ; preds = %if.end.i266
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit268

if.then8.i267:                                    ; preds = %if.end.i266
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i264, i32 131072) #8, !srcloc !63
  br label %write_i2c_reg.exit268

write_i2c_reg.exit268:                            ; preds = %if.then8.i267, %if.end.i266.write_i2c_reg.exit268_crit_edge, %write_i2c_reg.exit261.write_i2c_reg.exit268_crit_edge
  %161 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regs, align 8
  %add.ptr.i269 = getelementptr i8, ptr %162, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i269, i32 134243329) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %163 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %163(i32 noundef 13958620) #8
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i269) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %165 = and i32 %164, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool.not.i270 = icmp eq i32 %165, 0
  br i1 %tobool.not.i270, label %if.end.i273, label %write_i2c_reg.exit268.write_i2c_reg.exit275_crit_edge

write_i2c_reg.exit268.write_i2c_reg.exit275_crit_edge: ; preds = %write_i2c_reg.exit268
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit275

if.end.i273:                                      ; preds = %write_i2c_reg.exit268
  %add.ptr4.i271 = getelementptr i8, ptr %162, i32 96
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i271) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %167 = and i32 %166, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool7.not.i272 = icmp eq i32 %167, 0
  br i1 %tobool7.not.i272, label %if.end.i273.write_i2c_reg.exit275_crit_edge, label %if.then8.i274

if.end.i273.write_i2c_reg.exit275_crit_edge:      ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit275

if.then8.i274:                                    ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i271, i32 131072) #8, !srcloc !63
  br label %write_i2c_reg.exit275

write_i2c_reg.exit275:                            ; preds = %if.then8.i274, %if.end.i273.write_i2c_reg.exit275_crit_edge, %write_i2c_reg.exit268.write_i2c_reg.exit275_crit_edge
  %168 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regs, align 8
  %add.ptr92 = getelementptr i8, ptr %169, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 117440512) #8, !srcloc !63
  br label %cleanup

cleanup:                                          ; preds = %write_i2c_reg.exit275, %read_i2c_reg.exit.cleanup_crit_edge, %if.then6.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %write_i2c_reg.exit275 ], [ -19, %read_i2c_reg.exit.cleanup_crit_edge ], [ -19, %if.then6.i ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3155_irq_handler_even(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.dt3155_priv, ptr %dev_id, i32 0, i32 13
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !64
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %and = and i32 %3, 6
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end8 [
    i32 0, label %entry.cleanup_crit_edge
    i32 4, label %if.then5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr7 = getelementptr i8, ptr %6, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 67502080) #8, !srcloc !63
  br label %cleanup

if.end8:                                          ; preds = %entry
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %add.ptr10 = getelementptr i8, ptr %8, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %10 = and i32 %9, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not = icmp eq i32 %10, 0
  br i1 %tobool13.not, label %if.end8.if.end17_crit_edge, label %if.then14

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 8
  %add.ptr16 = getelementptr i8, ptr %12, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 -217907200) #8, !srcloc !63
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end8.if.end17_crit_edge
  %lock = getelementptr inbounds %struct.dt3155_priv, ptr %dev_id, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %curr_buf = getelementptr inbounds %struct.dt3155_priv, ptr %dev_id, i32 0, i32 4
  %13 = ptrtoint ptr %curr_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %curr_buf, align 4
  %tobool18.not = icmp eq ptr %14, null
  br i1 %tobool18.not, label %if.end17.if.end48_crit_edge, label %land.lhs.true19

if.end17.if.end48_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

land.lhs.true19:                                  ; preds = %if.end17
  %dmaq = getelementptr inbounds %struct.dt3155_priv, ptr %dev_id, i32 0, i32 6
  %15 = ptrtoint ptr %dmaq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %dmaq, align 4
  %cmp.i.not = icmp eq ptr %16, %dmaq
  br i1 %cmp.i.not, label %land.lhs.true19.if.end48_crit_edge, label %if.then22

land.lhs.true19.if.end48_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then22:                                        ; preds = %land.lhs.true19
  %call.i = tail call i64 @ktime_get() #8
  %17 = ptrtoint ptr %curr_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %curr_buf, align 4
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call.i, ptr %timestamp, align 8
  %sequence = getelementptr inbounds %struct.dt3155_priv, ptr %dev_id, i32 0, i32 12
  %20 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sequence, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %sequence, align 4
  %22 = load ptr, ptr %curr_buf, align 4
  %sequence26 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %sequence26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %21, ptr %sequence26, align 8
  %24 = load ptr, ptr %curr_buf, align 4
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %field, align 4
  %26 = load ptr, ptr %curr_buf, align 4
  tail call void @vb2_buffer_done(ptr noundef %26, i32 noundef 5) #8
  %27 = ptrtoint ptr %dmaq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dmaq, align 4
  %add.ptr32 = getelementptr i8, ptr %28, i32 -336
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %28) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then22.list_del.exit_crit_edge

if.then22.list_del.exit_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then22.list_del.exit_crit_edge
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %37 = ptrtoint ptr %curr_buf to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr32, ptr %curr_buf, align 4
  %call.i83 = tail call ptr @vb2_plane_cookie(ptr noundef %add.ptr32, i32 noundef 0) #8
  %38 = ptrtoint ptr %call.i83 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call.i83, align 4
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %42 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %42) #8, !srcloc !63
  %width = getelementptr inbounds %struct.dt3155_priv, ptr %dev_id, i32 0, i32 9
  %43 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %width, align 8
  %add = add i32 %44, %39
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 8
  %add.ptr41 = getelementptr i8, ptr %46, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %47 = tail call i32 @llvm.bswap.i32(i32 %add) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %47) #8, !srcloc !63
  %48 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %width, align 8
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 8
  %add.ptr44 = getelementptr i8, ptr %51, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %52 = tail call i32 @llvm.bswap.i32(i32 %49) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %52) #8, !srcloc !63
  %53 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %width, align 8
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 8
  %add.ptr47 = getelementptr i8, ptr %56, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %57 = tail call i32 @llvm.bswap.i32(i32 %54) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %57) #8, !srcloc !63
  br label %if.end48

if.end48:                                         ; preds = %list_del.exit, %land.lhs.true19.if.end48_crit_edge, %if.end17.if.end48_crit_edge
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 8
  %add.ptr50 = getelementptr i8, ptr %59, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 117833728) #8, !srcloc !63
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end48 ], [ 1, %if.then5 ], [ %and, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_region(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3155_querycap(ptr noundef %filp, ptr nocapture noundef readnone %p, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.1, i32 noundef 16) #8
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.11, i32 noundef 32) #8
  %pdev = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bus_info, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i.i)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dt3155_enum_fmt_vid_cap(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %p, ptr nocapture noundef %f) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1497715271, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3155_fmt_vid_cap(ptr noundef %filp, ptr nocapture noundef readnone %p, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %width = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %height3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height3, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1497715271, ptr %pixelformat, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %field, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %bytesperline, align 4
  %mul = mul i32 %6, %3
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %11 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %colorspace, align 4
  ret i32 0
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
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3155_g_std(ptr noundef %filp, ptr nocapture noundef readnone %p, ptr nocapture noundef writeonly %norm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %std = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std, align 8
  %4 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %norm, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3155_s_std(ptr noundef %filp, ptr nocapture noundef readnone %p, i64 noundef %norm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %std = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %norm)
  %cmp = icmp eq i64 %3, %norm
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_buffers.i = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 3, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %norm, ptr %std, align 8
  %and = and i64 %norm, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %csr27 = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 14
  %. = select i1 %tobool.not, i8 4, i8 0
  %.23 = select i1 %tobool.not, i32 768, i32 640
  %.24 = select i1 %tobool.not, i32 576, i32 480
  %7 = ptrtoint ptr %csr27 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %., ptr %csr27, align 4
  %width = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.23, ptr %width, align 8
  %height = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.24, ptr %height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3155_enum_input(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %p, ptr noundef %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %name4 = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name4, i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef %1)
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @strscpy(ptr noundef %name4, ptr noundef nonnull @.str.14, i32 noundef 32) #8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then2
  %type = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  %std = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 5
  %3 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 16777215, ptr %std, align 8
  %status = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 6
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %status, align 8
  br label %return

return:                                           ; preds = %if.end7, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3155_g_input(ptr noundef %filp, ptr nocapture noundef readnone %p, ptr nocapture noundef writeonly %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 8
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3155_s_input(ptr noundef %filp, ptr nocapture noundef readnone %p, i32 noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %filp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i)
  %cmp = icmp ugt i32 %i, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %i, ptr %input, align 8
  %regs = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 24577) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 13958620) #8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %7 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.write_i2c_reg.exit_crit_edge

if.end.write_i2c_reg.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit

if.end.i:                                         ; preds = %if.end
  %add.ptr4.i = getelementptr i8, ptr %4, i32 96
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %9 = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not.i = icmp eq i32 %9, 0
  br i1 %tobool7.not.i, label %if.end.i.write_i2c_reg.exit_crit_edge, label %if.then8.i

if.end.i.write_i2c_reg.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 131072) #8, !srcloc !63
  br label %write_i2c_reg.exit

write_i2c_reg.exit:                               ; preds = %if.then8.i, %if.end.i.write_i2c_reg.exit_crit_edge, %if.end.write_i2c_reg.exit_crit_edge
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %shl = shl nuw nsw i32 %i, 6
  %shl3 = shl nuw nsw i32 %i, 4
  %or = or i32 %shl, %shl3
  %conv = and i32 %or, 240
  %or2.i = or i32 %conv, 23330824
  %add.ptr.i11 = getelementptr i8, ptr %11, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %12) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 13958620) #8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i12 = icmp eq i32 %15, 0
  br i1 %tobool.not.i12, label %if.end.i15, label %write_i2c_reg.exit.cleanup_crit_edge

write_i2c_reg.exit.cleanup_crit_edge:             ; preds = %write_i2c_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i15:                                       ; preds = %write_i2c_reg.exit
  %add.ptr4.i13 = getelementptr i8, ptr %11, i32 96
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i13) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %17 = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not.i14 = icmp eq i32 %17, 0
  br i1 %tobool7.not.i14, label %if.end.i15.cleanup_crit_edge, label %if.then8.i16

if.end.i15.cleanup_crit_edge:                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8.i16:                                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i13, i32 131072) #8, !srcloc !63
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i16, %if.end.i15.cleanup_crit_edge, %write_i2c_reg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %write_i2c_reg.exit.cleanup_crit_edge ], [ 0, %if.end.i15.cleanup_crit_edge ], [ 0, %if.then8.i16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dt3155_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %width = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %mul = mul i32 %5, %3
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %6 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers, align 4
  %8 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbuffers, align 4
  %add = add i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp = icmp ult i32 %add, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 2, %7
  %10 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %mul)
  %cmp3 = icmp ult i32 %14, %mul
  %cond = select i1 %cmp3, i32 -22, i32 0
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %num_planes, align 4
  %16 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2
  %retval.0 = phi i32 [ %cond, %if.then2 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3155_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %0 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %entry.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

entry.vb2_set_plane_payload.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_priv.i, align 4
  %width = getelementptr inbounds %struct.dt3155_priv, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.dt3155_priv, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %mul = mul i32 %9, %7
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %mul)
  %cmp1.i = icmp ult i32 %11, %mul
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !66

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1163, i32 noundef 9, ptr noundef null) #8
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %13, %if.then38.i ], [ %mul, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %14 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %entry.vb2_set_plane_payload.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt3155_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %curr_buf = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %curr_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr_buf, align 4
  %sequence = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %sequence, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %3, i32 noundef 0) #8
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call.i, align 4
  %regs = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %9) #8, !srcloc !63
  %width = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 8
  %add = add i32 %11, %6
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %add) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %14) #8, !srcloc !63
  %15 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %width, align 8
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %add.ptr6 = getelementptr i8, ptr %18, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %19) #8, !srcloc !63
  %20 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width, align 8
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %add.ptr9 = getelementptr i8, ptr %23, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %24) #8, !srcloc !63
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 8
  %add.ptr11 = getelementptr i8, ptr %26, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 117833728) #8, !srcloc !63
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 8
  %add.ptr13 = getelementptr i8, ptr %28, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 -217907200) #8, !srcloc !63
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %30, i32 100
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %32 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 13958620) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %35 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool4.not.i = icmp eq i32 %35, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.wait_i2c_reg.exit_crit_edge

if.end.i.wait_i2c_reg.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_i2c_reg.exit

if.end6.i:                                        ; preds = %if.end.i
  %add.ptr7.i = getelementptr i8, ptr %30, i32 96
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %37 = and i32 %36, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool10.not.i = icmp eq i32 %37, 0
  br i1 %tobool10.not.i, label %if.end6.i.wait_i2c_reg.exit_crit_edge, label %if.then11.i

if.end6.i.wait_i2c_reg.exit_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_i2c_reg.exit

if.then11.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 131072) #8, !srcloc !63
  br label %wait_i2c_reg.exit

wait_i2c_reg.exit:                                ; preds = %if.then11.i, %if.end6.i.wait_i2c_reg.exit_crit_edge, %if.end.i.wait_i2c_reg.exit_crit_edge
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 8
  %config = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 15
  %40 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %config, align 1
  %conv1.i = zext i8 %41 to i32
  %or2.i = or i32 %conv1.i, 19267584
  %add.ptr.i44 = getelementptr i8, ptr %39, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %42 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %42) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 13958620) #8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %45 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i45 = icmp eq i32 %45, 0
  br i1 %tobool.not.i45, label %if.end.i46, label %wait_i2c_reg.exit.write_i2c_reg.exit_crit_edge

wait_i2c_reg.exit.write_i2c_reg.exit_crit_edge:   ; preds = %wait_i2c_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit

if.end.i46:                                       ; preds = %wait_i2c_reg.exit
  %add.ptr4.i = getelementptr i8, ptr %39, i32 96
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %47 = and i32 %46, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool7.not.i = icmp eq i32 %47, 0
  br i1 %tobool7.not.i, label %if.end.i46.write_i2c_reg.exit_crit_edge, label %if.then8.i

if.end.i46.write_i2c_reg.exit_crit_edge:          ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit

if.then8.i:                                       ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 131072) #8, !srcloc !63
  br label %write_i2c_reg.exit

write_i2c_reg.exit:                               ; preds = %if.then8.i, %if.end.i46.write_i2c_reg.exit_crit_edge, %wait_i2c_reg.exit.write_i2c_reg.exit_crit_edge
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 8
  %add.ptr.i47 = getelementptr i8, ptr %49, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 83894785) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 13958620) #8
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %52 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i48 = icmp eq i32 %52, 0
  br i1 %tobool.not.i48, label %if.end.i51, label %write_i2c_reg.exit.write_i2c_reg.exit53_crit_edge

write_i2c_reg.exit.write_i2c_reg.exit53_crit_edge: ; preds = %write_i2c_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit53

if.end.i51:                                       ; preds = %write_i2c_reg.exit
  %add.ptr4.i49 = getelementptr i8, ptr %49, i32 96
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i49) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %54 = and i32 %53, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool7.not.i50 = icmp eq i32 %54, 0
  br i1 %tobool7.not.i50, label %if.end.i51.write_i2c_reg.exit53_crit_edge, label %if.then8.i52

if.end.i51.write_i2c_reg.exit53_crit_edge:        ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit53

if.then8.i52:                                     ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i49, i32 131072) #8, !srcloc !63
  br label %write_i2c_reg.exit53

write_i2c_reg.exit53:                             ; preds = %if.then8.i52, %if.end.i51.write_i2c_reg.exit53_crit_edge, %write_i2c_reg.exit.write_i2c_reg.exit53_crit_edge
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 8
  %add.ptr.i54 = getelementptr i8, ptr %56, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 83895297) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 13958620) #8
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %59 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i55 = icmp eq i32 %59, 0
  br i1 %tobool.not.i55, label %if.end.i58, label %write_i2c_reg.exit53.write_i2c_reg.exit60_crit_edge

write_i2c_reg.exit53.write_i2c_reg.exit60_crit_edge: ; preds = %write_i2c_reg.exit53
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit60

if.end.i58:                                       ; preds = %write_i2c_reg.exit53
  %add.ptr4.i56 = getelementptr i8, ptr %56, i32 96
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i56) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %61 = and i32 %60, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool7.not.i57 = icmp eq i32 %61, 0
  br i1 %tobool7.not.i57, label %if.end.i58.write_i2c_reg.exit60_crit_edge, label %if.then8.i59

if.end.i58.write_i2c_reg.exit60_crit_edge:        ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit60

if.then8.i59:                                     ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i56, i32 131072) #8, !srcloc !63
  br label %write_i2c_reg.exit60

write_i2c_reg.exit60:                             ; preds = %if.then8.i59, %if.end.i58.write_i2c_reg.exit60_crit_edge, %write_i2c_reg.exit53.write_i2c_reg.exit60_crit_edge
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 8
  %csr2 = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 14
  %64 = ptrtoint ptr %csr2 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %csr2, align 4
  %conv1.i61 = zext i8 %65 to i32
  %or2.i63 = or i32 %conv1.i61, 18874416
  %add.ptr.i64 = getelementptr i8, ptr %63, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %66 = tail call i32 @llvm.bswap.i32(i32 %or2.i63) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %66) #8, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 13958620) #8
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %69 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i65 = icmp eq i32 %69, 0
  br i1 %tobool.not.i65, label %if.end.i68, label %write_i2c_reg.exit60.write_i2c_reg.exit70_crit_edge

write_i2c_reg.exit60.write_i2c_reg.exit70_crit_edge: ; preds = %write_i2c_reg.exit60
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit70

if.end.i68:                                       ; preds = %write_i2c_reg.exit60
  %add.ptr4.i66 = getelementptr i8, ptr %63, i32 96
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i66) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %71 = and i32 %70, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool7.not.i67 = icmp eq i32 %71, 0
  br i1 %tobool7.not.i67, label %if.end.i68.write_i2c_reg.exit70_crit_edge, label %if.then8.i69

if.end.i68.write_i2c_reg.exit70_crit_edge:        ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %write_i2c_reg.exit70

if.then8.i69:                                     ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i66, i32 131072) #8, !srcloc !63
  br label %write_i2c_reg.exit70

write_i2c_reg.exit70:                             ; preds = %if.then8.i69, %if.end.i68.write_i2c_reg.exit70_crit_edge, %write_i2c_reg.exit60.write_i2c_reg.exit70_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dt3155_stop_streaming(ptr nocapture noundef readonly %q) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %lock = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %regs = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %csr2 = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %csr2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %csr2, align 4
  %conv1.i = zext i8 %5 to i32
  %or2.i = or i32 %conv1.i, 18874368
  %add.ptr.i = getelementptr i8, ptr %3, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #8, !srcloc !63
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -268238848) #8, !srcloc !63
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %10, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 117440512) #8, !srcloc !63
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  tail call void @msleep(i32 noundef 45) #8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %curr_buf = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %curr_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %curr_buf, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vb2_buffer_done(ptr noundef nonnull %12, i32 noundef 6) #8
  %13 = ptrtoint ptr %curr_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %curr_buf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dmaq = getelementptr inbounds %struct.dt3155_priv, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %dmaq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %dmaq, align 4
  %cmp.i.not26 = icmp eq ptr %15, %dmaq
  br i1 %cmp.i.not26, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %if.end.while.body_crit_edge
  %16 = phi ptr [ %26, %list_del.exit.while.body_crit_edge ], [ %15, %if.end.while.body_crit_edge ]
  %add.ptr11 = getelementptr i8, ptr %16, i32 -336
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr11, i32 noundef 6) #8
  %25 = ptrtoint ptr %dmaq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %dmaq, align 4
  %cmp.i.not = icmp eq ptr %26, %dmaq
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dt3155_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %lock = getelementptr inbounds %struct.dt3155_priv, ptr %3, i32 0, i32 7
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %curr_buf = getelementptr inbounds %struct.dt3155_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %curr_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curr_buf, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %done_entry = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 12
  %dmaq = getelementptr inbounds %struct.dt3155_priv, ptr %3, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.dt3155_priv, ptr %3, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %done_entry, ptr noundef %7, ptr noundef %dmaq) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %done_entry, ptr %prev.i, align 4
  %9 = ptrtoint ptr %done_entry to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dmaq, ptr %done_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %done_entry, ptr %7, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %curr_buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %vb, ptr %curr_buf, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i.i, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !23, !25, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_dt3155__300_599_pci_driver_init6, !1, !"__initcall__kmod_dt3155__300_599_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/dt3155/dt3155.c", i32 599, i32 1}
!2 = !{ptr @__exitcall_pci_driver_exit, !1, !"__exitcall_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description301, !4, !"__UNIQUE_ID_description301", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/dt3155/dt3155.c", i32 601, i32 1}
!5 = !{ptr @__UNIQUE_ID_author302, !6, !"__UNIQUE_ID_author302", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/dt3155/dt3155.c", i32 602, i32 1}
!7 = !{ptr @__UNIQUE_ID_version303, !8, !"__UNIQUE_ID_version303", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/dt3155/dt3155.c", i32 603, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file304, !14, !"__UNIQUE_ID_file304", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/dt3155/dt3155.c", i32 604, i32 1}
!15 = !{ptr @__UNIQUE_ID_license305, !14, !"__UNIQUE_ID_license305", i1 false, i1 false}
!16 = !{ptr @pci_driver, !17, !"pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/dt3155/dt3155.c", i32 592, i32 26}
!18 = !{ptr @pci_ids, !19, !"pci_ids", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/dt3155/dt3155.c", i32 586, i32 35}
!20 = !{ptr @dt3155_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/dt3155/dt3155.c", i32 517, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @dt3155_probe.__key.4, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/dt3155/dt3155.c", i32 533, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/dt3155/dt3155.c", i32 556, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dt3155_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @dt3155_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @dt3155_vdev, !35, !"dt3155_vdev", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/dt3155/dt3155.c", i32 482, i32 34}
!36 = !{ptr @dt3155_fops, !37, !"dt3155_fops", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/dt3155/dt3155.c", i32 282, i32 42}
!38 = !{ptr @dt3155_ioctl_ops, !39, !"dt3155_ioctl_ops", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/dt3155/dt3155.c", i32 391, i32 36}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/dt3155/dt3155.c", i32 298, i32 21}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/dt3155/dt3155.c", i32 299, i32 25}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/dt3155/dt3155.c", i32 361, i32 46}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/dt3155/dt3155.c", i32 364, i32 24}
!48 = !{ptr @q_ops, !49, !"q_ops", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/dt3155/dt3155.c", i32 225, i32 29}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!52 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2154743174}
!63 = !{i64 7208542}
!64 = !{i64 7208960}
!65 = !{i64 2154741819}
!66 = !{!"branch_weights", i32 2000, i32 1}
