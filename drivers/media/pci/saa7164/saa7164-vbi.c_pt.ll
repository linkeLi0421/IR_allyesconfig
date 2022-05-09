; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7164/saa7164-vbi.c_pt.bc'
source_filename = "../drivers/media/pci/saa7164/saa7164-vbi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.106 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.103], %struct.media_entity_enum, i32 }
%struct.anon.103 = type { ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.saa7164_board = type { ptr, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.saa7164_unit] }
%struct.saa7164_unit = type { i32, i8, ptr, i32, i8, i8 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.saa7164_dev = type { %struct.list_head, %struct.atomic_t, %struct.v4l2_device, ptr, i8, i8, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [16 x i8], %struct.saa7164_fw_status, i32, %struct.tmComResHWDescr, %struct.tmComResInterfaceDescr, %struct.tmComResBusDescr, %struct.tmComResBusInfo, i32, i32, i8, [256 x %struct.cmd], %struct.mutex, [3 x %struct.saa7164_i2c], [6 x %struct.saa7164_port], %struct.work_struct, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.saa7164_fw_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tmComResHWDescr = type <{ i8, i8, i8, i16, i32, i32, i8, i32, i32, i32, i32, i32 }>
%struct.tmComResInterfaceDescr = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.tmComResBusDescr = type { i64, i64, i32, i32, i32, i32 }
%struct.tmComResBusInfo = type { i32, i16, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.mutex }
%struct.cmd = type { i8, i32, i32, i32, %struct.mutex, %struct.wait_queue_head }
%struct.saa7164_i2c = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_client, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.saa7164_port = type { ptr, i32, i32, %struct.tmHWStreamParameters, %struct.tmComResDMATermDescrHeader, i32, i32, i32, i32, i32, i32, i64, i32, %struct.mutex, %struct.saa7164_buffer, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, %struct.saa7164_histogram, %struct.saa7164_histogram, %struct.saa7164_histogram, %struct.saa7164_histogram, %struct.saa7164_histogram, %struct.saa7164_dvb, ptr, ptr, %struct.saa7164_tvnorm, %struct.v4l2_ctrl_handler, i64, i32, i32, i32, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i8, %struct.tmComResAFeatureDescrHeader, %struct.tmComResEncoderDescrHeader, %struct.tmComResProcDescrHeader, %struct.tmComResExtDevDescrHeader, %struct.tmComResTunerDescrHeader, %struct.work_struct, %struct.saa7164_encoder_params, ptr, %struct.atomic_t, %struct.saa7164_buffer, %struct.saa7164_buffer, %struct.wait_queue_head, %struct.tmComResVBIFormatDescrHeader, %struct.saa7164_vbi_params, ptr, i32, i32, i32, i8, i8, i32 }
%struct.tmHWStreamParameters = type { i32, i32, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.tmComResDMATermDescrHeader = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8 }>
%struct.saa7164_histogram = type { [32 x i8], [64 x %struct.saa7164_histogram_bucket] }
%struct.saa7164_histogram_bucket = type { i32, i32, i64 }
%struct.saa7164_dvb = type { %struct.mutex, %struct.dvb_adapter, ptr, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.saa7164_tvnorm = type { ptr, i64 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.tmComResAFeatureDescrHeader = type { i8, i8, i8, i8, i8, i8 }
%struct.tmComResEncoderDescrHeader = type <{ i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i16, i16, i32, i8 }>
%struct.tmComResProcDescrHeader = type <{ i8, i8, i8, i8, i8, i16, i8 }>
%struct.tmComResExtDevDescrHeader = type <{ i8, i8, i8, i8, i32, i16, i32, i8, i8 }>
%struct.tmComResTunerDescrHeader = type <{ i8, i8, i8, i8, i8, i8, i32, i8, i32 }>
%struct.saa7164_encoder_params = type { %struct.saa7164_tvnorm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.saa7164_buffer = type { %struct.list_head, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, i32 }
%struct.tmComResVBIFormatDescrHeader = type { i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%struct.saa7164_vbi_params = type { %struct.saa7164_tvnorm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.saa7164_vbi_fh = type { %struct.v4l2_fh, ptr, %struct.atomic_t }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.saa7164_user_buffer = type { %struct.list_head, ptr, i32, i32, i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.167, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.167 = type { ptr }
%struct.v4l2_format = type { i32, %union.anon.142 }
%union.anon.142 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.144, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.144 = type { i8 }
%struct.saa7164_encoder_fh = type { %struct.v4l2_fh, ptr, %struct.atomic_t }

@saa_debug = external dso_local local_unnamed_addr global i32, align 4
@saa7164_vbi_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s: %s()\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"saa7164_vbi_register\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/saa7164/saa7164-vbi.c\00", [56 x i8] zeroinitializer }, align 32
@saa7164_vbi_register._entry_ptr = internal global ptr @saa7164_vbi_register._entry, section ".printk_index", align 4
@saa7164_vbi_register._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s() failed (errno = %d), NO PCI configuration\0A\00", [46 x i8] zeroinitializer }, align 32
@saa7164_vbi_register._entry_ptr.5 = internal global ptr @saa7164_vbi_register._entry.3, section ".printk_index", align 4
@saa7164_vbi_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @vbi_fops, i32 16842768, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"saa7164\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 12288, ptr null, ptr @vbi_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vbi\00", [28 x i8] zeroinitializer }, align 32
@saa7164_vbi_register._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: can't allocate vbi device\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_vbi_register._entry_ptr.9 = internal global ptr @saa7164_vbi_register._entry.7, section ".printk_index", align 4
@saa7164_vbi_register._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: can't register vbi device\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_vbi_register._entry_ptr.12 = internal global ptr @saa7164_vbi_register._entry.10, section ".printk_index", align 4
@saa7164_vbi_register._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: registered device vbi%d [vbi]\0A\00", [59 x i8] zeroinitializer }, align 32
@saa7164_vbi_register._entry_ptr.15 = internal global ptr @saa7164_vbi_register._entry.13, section ".printk_index", align 4
@saa7164_vbi_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: %s(port=%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"saa7164_vbi_unregister\00", [41 x i8] zeroinitializer }, align 32
@saa7164_vbi_unregister._entry_ptr = internal global ptr @saa7164_vbi_unregister._entry, section ".printk_index", align 4
@saa7164_vbi_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.18, ptr @.str.2, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"saa7164_vbi_alloc\00", [46 x i8] zeroinitializer }, align 32
@saa7164_vbi_alloc._entry_ptr = internal global ptr @saa7164_vbi_alloc._entry, section ".printk_index", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s %s (%s)\00", [21 x i8] zeroinitializer }, align 32
@saa7164_boards = external dso_local local_unnamed_addr global [0 x %struct.saa7164_board], align 4
@vbi_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @fops_read, ptr null, ptr @fops_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @fops_open, ptr @fops_release }, [60 x i8] zeroinitializer }, align 32
@vbi_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @saa7164_vbi_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @saa7164_vbi_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @saa7164_vbi_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr null, ptr @saa7164_enum_input, ptr @vidioc_g_input, ptr @vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @saa7164_g_tuner, ptr @saa7164_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fops_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013%s() ESPIPE\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fops_read\00", [22 x i8] zeroinitializer }, align 32
@fops_read._entry_ptr = internal global ptr @fops_read._entry, section ".printk_index", align 4
@fops_read._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013%s() EINVAL\0A\00", [17 x i8] zeroinitializer }, align 32
@fops_read._entry_ptr.24 = internal global ptr @fops_read._entry.22, section ".printk_index", align 4
@fops_read._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013%s() ERESTARTSYS\0A\00", [44 x i8] zeroinitializer }, align 32
@fops_read._entry_ptr.27 = internal global ptr @fops_read._entry.25, section ".printk_index", align 4
@fops_read._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: %s() count=%d cnt=%d rem=%d buf=%p buf->pos=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@fops_read._entry_ptr.30 = internal global ptr @fops_read._entry.28, section ".printk_index", align 4
@fops_read._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s() copy_to_user failed\0A\00", [36 x i8] zeroinitializer }, align 32
@fops_read._entry_ptr.33 = internal global ptr @fops_read._entry.31, section ".printk_index", align 4
@fops_read._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013%s() EFAULT\0A\00", [17 x i8] zeroinitializer }, align 32
@fops_read._entry_ptr.36 = internal global ptr @fops_read._entry.34, section ".printk_index", align 4
@fops_read._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.21, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013read() pos > actual, huh?\0A\00", [35 x i8] zeroinitializer }, align 32
@fops_read._entry_ptr.39 = internal global ptr @fops_read._entry.37, section ".printk_index", align 4
@fops_read._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.21, ptr @.str.2, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013%s() EAGAIN\0A\00", [17 x i8] zeroinitializer }, align 32
@fops_read._entry_ptr.42 = internal global ptr @fops_read._entry.40, section ".printk_index", align 4
@saa7164_vbi_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.43, ptr @.str.2, i32 16, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"saa7164_vbi_configure\00", [42 x i8] zeroinitializer }, align 32
@saa7164_vbi_configure._entry_ptr = internal global ptr @saa7164_vbi_configure._entry, section ".printk_index", align 4
@saa7164_vbi_configure._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 25, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: %s() ends\0A\00", [47 x i8] zeroinitializer }, align 32
@saa7164_vbi_configure._entry_ptr.46 = internal global ptr @saa7164_vbi_configure._entry.44, section ".printk_index", align 4
@saa7164_vbi_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.47, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"saa7164_vbi_start_streaming\00", [36 x i8] zeroinitializer }, align 32
@saa7164_vbi_start_streaming._entry_ptr = internal global ptr @saa7164_vbi_start_streaming._entry, section ".printk_index", align 4
@saa7164_vbi_start_streaming._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s() No supported VBI format\0A\00", [32 x i8] zeroinitializer }, align 32
@saa7164_vbi_start_streaming._entry_ptr.50 = internal global ptr @saa7164_vbi_start_streaming._entry.48, section ".printk_index", align 4
@saa7164_vbi_start_streaming._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s() acquire transition failed, res = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@saa7164_vbi_start_streaming._entry_ptr.53 = internal global ptr @saa7164_vbi_start_streaming._entry.51, section ".printk_index", align 4
@saa7164_vbi_start_streaming._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.47, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: %s()   Acquired\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_vbi_start_streaming._entry_ptr.56 = internal global ptr @saa7164_vbi_start_streaming._entry.54, section ".printk_index", align 4
@saa7164_vbi_start_streaming._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.47, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s() pause transition failed, res = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@saa7164_vbi_start_streaming._entry_ptr.59 = internal global ptr @saa7164_vbi_start_streaming._entry.57, section ".printk_index", align 4
@saa7164_vbi_start_streaming._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.47, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s() pause/forced stop transition failed, res = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_vbi_start_streaming._entry_ptr.62 = internal global ptr @saa7164_vbi_start_streaming._entry.60, section ".printk_index", align 4
@saa7164_vbi_start_streaming._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.47, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %s()   Paused\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7164_vbi_start_streaming._entry_ptr.65 = internal global ptr @saa7164_vbi_start_streaming._entry.63, section ".printk_index", align 4
@saa7164_vbi_start_streaming._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.47, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s() run transition failed, result = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@saa7164_vbi_start_streaming._entry_ptr.68 = internal global ptr @saa7164_vbi_start_streaming._entry.66, section ".printk_index", align 4
@saa7164_vbi_start_streaming._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.47, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s() run/forced stop transition failed, res = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7164_vbi_start_streaming._entry_ptr.71 = internal global ptr @saa7164_vbi_start_streaming._entry.69, section ".printk_index", align 4
@saa7164_vbi_start_streaming._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.47, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: %s()   Running\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7164_vbi_start_streaming._entry_ptr.74 = internal global ptr @saa7164_vbi_start_streaming._entry.72, section ".printk_index", align 4
@saa7164_vbi_buffers_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.75, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"saa7164_vbi_buffers_alloc\00", [38 x i8] zeroinitializer }, align 32
@saa7164_vbi_buffers_alloc._entry_ptr = internal global ptr @saa7164_vbi_buffers_alloc._entry, section ".printk_index", align 4
@saa7164_vbi_buffers_alloc._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s() failed (errno = %d), unable to allocate buffer\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_vbi_buffers_alloc._entry_ptr.78 = internal global ptr @saa7164_vbi_buffers_alloc._entry.76, section ".printk_index", align 4
@vbi_buffers = external dso_local local_unnamed_addr global i32, align 4
@saa7164_vbi_stop_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s() stop transition failed, ret = 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"saa7164_vbi_stop_port\00", [42 x i8] zeroinitializer }, align 32
@saa7164_vbi_stop_port._entry_ptr = internal global ptr @saa7164_vbi_stop_port._entry, section ".printk_index", align 4
@saa7164_vbi_stop_port._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: %s()    Stopped\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_vbi_stop_port._entry_ptr.83 = internal global ptr @saa7164_vbi_stop_port._entry.81, section ".printk_index", align 4
@saa7164_vbi_acquire_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s() acquire transition failed, ret = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"saa7164_vbi_acquire_port\00", [39 x i8] zeroinitializer }, align 32
@saa7164_vbi_acquire_port._entry_ptr = internal global ptr @saa7164_vbi_acquire_port._entry, section ".printk_index", align 4
@saa7164_vbi_acquire_port._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %s() Acquired\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7164_vbi_acquire_port._entry_ptr.88 = internal global ptr @saa7164_vbi_acquire_port._entry.86, section ".printk_index", align 4
@crc_checking = external dso_local local_unnamed_addr global i32, align 4
@saa7164_vbi_next_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s() ubuf %p crc became invalid, was 0x%x became 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"saa7164_vbi_next_buf\00", [43 x i8] zeroinitializer }, align 32
@saa7164_vbi_next_buf._entry_ptr = internal global ptr @saa7164_vbi_next_buf._entry, section ".printk_index", align 4
@saa7164_vbi_next_buf._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.2, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: %s() returns %p\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_vbi_next_buf._entry_ptr.93 = internal global ptr @saa7164_vbi_next_buf._entry.91, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@fops_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.97, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fops_open\00", [22 x i8] zeroinitializer }, align 32
@fops_open._entry_ptr = internal global ptr @fops_open._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fops_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.98, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fops_release\00", [19 x i8] zeroinitializer }, align 32
@fops_release._entry_ptr = internal global ptr @fops_release._entry, section ".printk_index", align 4
@saa7164_vbi_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.99, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"saa7164_vbi_stop_streaming\00", [37 x i8] zeroinitializer }, align 32
@saa7164_vbi_stop_streaming._entry_ptr = internal global ptr @saa7164_vbi_stop_streaming._entry, section ".printk_index", align 4
@saa7164_vbi_stop_streaming._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %s(port=%d) Hardware stopped\0A\00", [60 x i8] zeroinitializer }, align 32
@saa7164_vbi_stop_streaming._entry_ptr.102 = internal global ptr @saa7164_vbi_stop_streaming._entry.100, section ".printk_index", align 4
@saa7164_vbi_stop_streaming._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.99, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s(port=%d) Released\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7164_vbi_stop_streaming._entry_ptr.105 = internal global ptr @saa7164_vbi_stop_streaming._entry.103, section ".printk_index", align 4
@saa7164_vbi_pause_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s() pause transition failed, ret = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"saa7164_vbi_pause_port\00", [41 x i8] zeroinitializer }, align 32
@saa7164_vbi_pause_port._entry_ptr = internal global ptr @saa7164_vbi_pause_port._entry, section ".printk_index", align 4
@saa7164_vbi_pause_port._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.107, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_vbi_pause_port._entry_ptr.109 = internal global ptr @saa7164_vbi_pause_port._entry.108, section ".printk_index", align 4
@saa7164_vbi_buffers_dealloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s(port=%d) dmaqueue\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"saa7164_vbi_buffers_dealloc\00", [36 x i8] zeroinitializer }, align 32
@saa7164_vbi_buffers_dealloc._entry_ptr = internal global ptr @saa7164_vbi_buffers_dealloc._entry, section ".printk_index", align 4
@saa7164_vbi_buffers_dealloc._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: %s(port=%d) used\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_vbi_buffers_dealloc._entry_ptr.114 = internal global ptr @saa7164_vbi_buffers_dealloc._entry.112, section ".printk_index", align 4
@saa7164_vbi_buffers_dealloc._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.111, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: %s(port=%d) free\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_vbi_buffers_dealloc._entry_ptr.117 = internal global ptr @saa7164_vbi_buffers_dealloc._entry.115, section ".printk_index", align 4
@saa7164_vbi_buffers_dealloc._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.111, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: %s(port=%d) done\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_vbi_buffers_dealloc._entry_ptr.120 = internal global ptr @saa7164_vbi_buffers_dealloc._entry.118, section ".printk_index", align 4
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 704, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 710, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [21 x i8] c"saa7164_vbi_template\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 665, i32 28 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 720, i32 36 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 723, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 734, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 742, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 756, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 684, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 691, i32 41 }
@___asan_gen_.190 = private unnamed_addr constant [9 x i8] c"vbi_fops\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 640, i32 42 }
@___asan_gen_.193 = private unnamed_addr constant [14 x i8] c"vbi_ioctl_ops\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 649, i32 36 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 512, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 520, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 533, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 549, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 554, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 556, i32 5 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 568, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 593, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 16, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 25, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 319, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 340, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 348, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 354, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 359, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 365, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 372, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 377, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 384, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 390, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 75, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 99, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 218, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 222, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 236, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 240, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 478, i32 5 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 487, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 230, i32 6 }
@___asan_gen_.380 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 214, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 174, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 425, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 446, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 279, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 285, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 309, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 254, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 258, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 38, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 45, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 52, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 60, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.455 = private constant [43 x i8] c"../drivers/media/pci/saa7164/saa7164-vbi.c\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 204, i32 25 }
@llvm.compiler.used = appending global [155 x ptr] [ptr @fops_open._entry, ptr @fops_open._entry_ptr, ptr @fops_read._entry, ptr @fops_read._entry.22, ptr @fops_read._entry.25, ptr @fops_read._entry.28, ptr @fops_read._entry.31, ptr @fops_read._entry.34, ptr @fops_read._entry.37, ptr @fops_read._entry.40, ptr @fops_read._entry_ptr, ptr @fops_read._entry_ptr.24, ptr @fops_read._entry_ptr.27, ptr @fops_read._entry_ptr.30, ptr @fops_read._entry_ptr.33, ptr @fops_read._entry_ptr.36, ptr @fops_read._entry_ptr.39, ptr @fops_read._entry_ptr.42, ptr @fops_release._entry, ptr @fops_release._entry_ptr, ptr @saa7164_vbi_acquire_port._entry, ptr @saa7164_vbi_acquire_port._entry.86, ptr @saa7164_vbi_acquire_port._entry_ptr, ptr @saa7164_vbi_acquire_port._entry_ptr.88, ptr @saa7164_vbi_alloc._entry, ptr @saa7164_vbi_alloc._entry_ptr, ptr @saa7164_vbi_buffers_alloc._entry, ptr @saa7164_vbi_buffers_alloc._entry.76, ptr @saa7164_vbi_buffers_alloc._entry_ptr, ptr @saa7164_vbi_buffers_alloc._entry_ptr.78, ptr @saa7164_vbi_buffers_dealloc._entry, ptr @saa7164_vbi_buffers_dealloc._entry.112, ptr @saa7164_vbi_buffers_dealloc._entry.115, ptr @saa7164_vbi_buffers_dealloc._entry.118, ptr @saa7164_vbi_buffers_dealloc._entry_ptr, ptr @saa7164_vbi_buffers_dealloc._entry_ptr.114, ptr @saa7164_vbi_buffers_dealloc._entry_ptr.117, ptr @saa7164_vbi_buffers_dealloc._entry_ptr.120, ptr @saa7164_vbi_configure._entry, ptr @saa7164_vbi_configure._entry.44, ptr @saa7164_vbi_configure._entry_ptr, ptr @saa7164_vbi_configure._entry_ptr.46, ptr @saa7164_vbi_next_buf._entry, ptr @saa7164_vbi_next_buf._entry.91, ptr @saa7164_vbi_next_buf._entry_ptr, ptr @saa7164_vbi_next_buf._entry_ptr.93, ptr @saa7164_vbi_pause_port._entry, ptr @saa7164_vbi_pause_port._entry.108, ptr @saa7164_vbi_pause_port._entry_ptr, ptr @saa7164_vbi_pause_port._entry_ptr.109, ptr @saa7164_vbi_register._entry, ptr @saa7164_vbi_register._entry.10, ptr @saa7164_vbi_register._entry.13, ptr @saa7164_vbi_register._entry.3, ptr @saa7164_vbi_register._entry.7, ptr @saa7164_vbi_register._entry_ptr, ptr @saa7164_vbi_register._entry_ptr.12, ptr @saa7164_vbi_register._entry_ptr.15, ptr @saa7164_vbi_register._entry_ptr.5, ptr @saa7164_vbi_register._entry_ptr.9, ptr @saa7164_vbi_start_streaming._entry, ptr @saa7164_vbi_start_streaming._entry.48, ptr @saa7164_vbi_start_streaming._entry.51, ptr @saa7164_vbi_start_streaming._entry.54, ptr @saa7164_vbi_start_streaming._entry.57, ptr @saa7164_vbi_start_streaming._entry.60, ptr @saa7164_vbi_start_streaming._entry.63, ptr @saa7164_vbi_start_streaming._entry.66, ptr @saa7164_vbi_start_streaming._entry.69, ptr @saa7164_vbi_start_streaming._entry.72, ptr @saa7164_vbi_start_streaming._entry_ptr, ptr @saa7164_vbi_start_streaming._entry_ptr.50, ptr @saa7164_vbi_start_streaming._entry_ptr.53, ptr @saa7164_vbi_start_streaming._entry_ptr.56, ptr @saa7164_vbi_start_streaming._entry_ptr.59, ptr @saa7164_vbi_start_streaming._entry_ptr.62, ptr @saa7164_vbi_start_streaming._entry_ptr.65, ptr @saa7164_vbi_start_streaming._entry_ptr.68, ptr @saa7164_vbi_start_streaming._entry_ptr.71, ptr @saa7164_vbi_start_streaming._entry_ptr.74, ptr @saa7164_vbi_stop_port._entry, ptr @saa7164_vbi_stop_port._entry.81, ptr @saa7164_vbi_stop_port._entry_ptr, ptr @saa7164_vbi_stop_port._entry_ptr.83, ptr @saa7164_vbi_stop_streaming._entry, ptr @saa7164_vbi_stop_streaming._entry.100, ptr @saa7164_vbi_stop_streaming._entry.103, ptr @saa7164_vbi_stop_streaming._entry_ptr, ptr @saa7164_vbi_stop_streaming._entry_ptr.102, ptr @saa7164_vbi_stop_streaming._entry_ptr.105, ptr @saa7164_vbi_unregister._entry, ptr @saa7164_vbi_unregister._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @saa7164_vbi_template, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @vbi_fops, ptr @vbi_ioctl_ops, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.121], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_register._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_register._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_register._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_register._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_read._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_read._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_read._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_read._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_read._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_read._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_read._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_configure._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_start_streaming._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_start_streaming._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_start_streaming._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_start_streaming._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_start_streaming._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_start_streaming._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_start_streaming._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_start_streaming._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_start_streaming._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_buffers_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_buffers_alloc._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_stop_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_stop_port._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_acquire_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_acquire_port._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_next_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_next_buf._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_stop_streaming._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_stop_streaming._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_pause_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_pause_port._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_buffers_dealloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_buffers_dealloc._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_buffers_dealloc._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_vbi_buffers_dealloc._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_vbi_register(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %2 = load i32, ptr @saa_debug, align 4
  %and = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %do.end

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1) #13
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  %type = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.not = icmp eq i32 %4, 3
  br i1 %cmp.not, label %do.end17, label %do.body9, !prof !220

do.body9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7164/saa7164-vbi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 706, 0\0A.popsection", ""() #10, !srcloc !221
  unreachable

do.end17:                                         ; preds = %do.body5
  %BARLocation = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %BARLocation to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %BARLocation, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp18 = icmp eq i32 %6, 0
  br i1 %cmp18, label %do.end22, label %if.end25

do.end22:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef -19) #13
  br label %failed

if.end25:                                         ; preds = %do.end17
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %9 = load i32, ptr @saa_debug, align 4
  %and.i = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end25.do.end4.i_crit_edge, label %do.end.i

if.end25.do.end4.i_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %8, i32 0, i32 16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i, ptr noundef nonnull @.str.18) #13
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end25.do.end4.i_crit_edge
  %call5.i = tail call ptr @video_device_alloc() #10
  %cmp.i = icmp eq ptr %call5.i, null
  br i1 %cmp.i, label %do.end32, label %if.end37

do.end32:                                         ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %v4l_device78 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 58
  %10 = ptrtoint ptr %v4l_device78 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %v4l_device78, align 8
  %name34 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name34) #13
  br label %failed

if.end37:                                         ; preds = %do.end4.i
  %11 = call ptr @memcpy(ptr %call5.i, ptr @saa7164_vbi_template, i32 1352)
  %name8.i = getelementptr inbounds %struct.video_device, ptr %call5.i, i32 0, i32 12
  %name10.i = getelementptr inbounds %struct.saa7164_dev, ptr %8, i32 0, i32 16
  %board.i = getelementptr inbounds %struct.saa7164_dev, ptr %8, i32 0, i32 15
  %12 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %board.i, align 8
  %arrayidx.i = getelementptr [0 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %call13.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name8.i, i32 noundef 32, ptr noundef nonnull @.str.19, ptr noundef %name10.i, ptr noundef nonnull @.str.6, ptr noundef %15) #10
  %v4l2_dev.i = getelementptr inbounds %struct.saa7164_dev, ptr %8, i32 0, i32 2
  %v4l2_dev14.i = getelementptr inbounds %struct.video_device, ptr %call5.i, i32 0, i32 7
  %16 = ptrtoint ptr %v4l2_dev14.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %v4l2_dev.i, ptr %v4l2_dev14.i, align 4
  %release.i = getelementptr inbounds %struct.video_device, ptr %call5.i, i32 0, i32 23
  %17 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @video_device_release, ptr %release.i, align 8
  %v4l_device = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 58
  %18 = ptrtoint ptr %v4l_device to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5.i, ptr %v4l_device, align 8
  %nr = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %19 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr, align 8
  %sub = add i32 %20, -2
  %arrayidx = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 %sub
  %enc_port = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 65
  %21 = ptrtoint ptr %enc_port to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx, ptr %enc_port, align 8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call5.i, i32 0, i32 5, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %port, ptr %driver_data.i.i, align 4
  %23 = load ptr, ptr %v4l_device, align 8
  %fops.i = getelementptr inbounds %struct.video_device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fops.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call.i77 = tail call i32 @__video_register_device(ptr noundef %23, i32 noundef 1, i32 noundef -1, i32 noundef 1, ptr noundef %27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %cmp41 = icmp slt i32 %call.i77, 0
  %name47 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  br i1 %cmp41, label %do.end45, label %do.end53

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name47) #13
  br label %failed

do.end53:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %v4l_device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %v4l_device, align 8
  %num = getelementptr inbounds %struct.video_device, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %num, align 4
  %conv = zext i16 %31 to i32
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name47, i32 noundef %conv) #13
  br label %failed

failed:                                           ; preds = %do.end53, %do.end45, %do.end32, %do.end22
  %result.0 = phi i32 [ -12, %do.end22 ], [ %call.i77, %do.end45 ], [ 0, %do.end53 ], [ -12, %do.end32 ]
  ret i32 %result.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7164_vbi_unregister(ptr nocapture noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %0 = load i32, ptr @saa_debug, align 4
  %and = and i32 %0, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %do.end

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 8
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %2, i32 0, i32 16
  %nr = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name, ptr noundef nonnull @.str.17, i32 noundef %4) #13
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  %type = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.not = icmp eq i32 %6, 3
  br i1 %cmp.not, label %do.end17, label %do.body9, !prof !220

do.body9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7164/saa7164-vbi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 758, 0\0A.popsection", ""() #10, !srcloc !222
  unreachable

do.end17:                                         ; preds = %do.body5
  %v4l_device = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 58
  %7 = ptrtoint ptr %v4l_device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %v4l_device, align 8
  %tobool18.not = icmp eq ptr %8, null
  br i1 %tobool18.not, label %do.end17.if.end27_crit_edge, label %if.then19

do.end17.if.end27_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then19:                                        ; preds = %do.end17
  %minor = getelementptr inbounds %struct.video_device, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %minor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp21.not = icmp eq i32 %10, -1
  br i1 %cmp21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @video_unregister_device(ptr noundef nonnull %8) #10
  br label %if.end25

if.else:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @video_device_release(ptr noundef nonnull %8) #10
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then22
  %11 = ptrtoint ptr %v4l_device to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %v4l_device, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %do.end17.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry141 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port1 = getelementptr inbounds %struct.saa7164_vbi_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %last_read_msecs = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %last_read_msecs to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %last_read_msecs, align 8
  %last_read_msecs_diff = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 23
  %8 = ptrtoint ptr %last_read_msecs_diff to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %last_read_msecs_diff, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %9) #10
  %conv = zext i32 %call to i64
  %10 = ptrtoint ptr %last_read_msecs to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %last_read_msecs, align 8
  %11 = ptrtoint ptr %last_read_msecs_diff to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %last_read_msecs_diff, align 8
  %sub = sub i64 %conv, %12
  store i64 %sub, ptr %last_read_msecs_diff, align 8
  %read_interval = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 29
  %conv8 = trunc i64 %sub to i32
  tail call void @saa7164_histogram_update(ptr noundef %read_interval, i32 noundef %conv8) #10
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.not = icmp eq i64 %14, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #13
  br label %cleanup178

if.end:                                           ; preds = %entry
  %v4l_reading = getelementptr inbounds %struct.saa7164_vbi_fh, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %v4l_reading, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !223
  tail call void @llvm.prefetch.p0(ptr %v4l_reading, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %v4l_reading, ptr %v4l_reading, i32 0, i32 1, ptr elementtype(i32) %v4l_reading) #10, !srcloc !224
  %asmresult.i.i.i = extractvalue { i32, i32 } %15, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %15, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !225
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %cmp = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %cmp, label %if.then12, label %atomic_cmpxchg.exit.if.end29_crit_edge

atomic_cmpxchg.exit.if.end29_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then12:                                        ; preds = %atomic_cmpxchg.exit
  %v4l_reader_count = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 59
  %call.i.i245 = tail call zeroext i1 @__kasan_check_write(ptr noundef %v4l_reader_count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !226
  tail call void @llvm.prefetch.p0(ptr %v4l_reader_count, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %v4l_reader_count, ptr %v4l_reader_count, i32 1, ptr elementtype(i32) %v4l_reader_count) #10, !srcloc !227
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !228
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp14 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp14, label %if.then16, label %if.then12.if.end29_crit_edge

if.then12.if.end29_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then16:                                        ; preds = %if.then12
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %19 = load i32, ptr @saa_debug, align 4
  %and.i.i = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then16.do.end4.i.i_crit_edge, label %do.end.i.i

if.then16.do.end4.i.i_crit_edge:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i.i

do.end.i.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %name.i.i = getelementptr inbounds %struct.saa7164_dev, ptr %18, i32 0, i32 16
  %call.i.i247 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i.i, ptr noundef nonnull @.str.43) #13
  br label %do.end4.i.i

do.end4.i.i:                                      ; preds = %do.end.i.i, %if.then16.do.end4.i.i_crit_edge
  %enc_port.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 65
  %20 = ptrtoint ptr %enc_port.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %enc_port.i.i, align 8
  %width.i.i = getelementptr inbounds %struct.saa7164_port, ptr %21, i32 0, i32 38
  %22 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width.i.i, align 4
  %width5.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 64, i32 2
  %24 = ptrtoint ptr %width5.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %width5.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.saa7164_port, ptr %21, i32 0, i32 37
  %25 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height.i.i, align 8
  %height8.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 64, i32 1
  %27 = ptrtoint ptr %height8.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %height8.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.saa7164_port, ptr %21, i32 0, i32 34, i32 1
  %28 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %id.i.i, align 8
  %and10.i.i = and i64 %29, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i.i)
  %cmp.i.i248 = icmp ne i64 %and10.i.i, 0
  %conv.i.i = zext i1 %cmp.i.i248 to i32
  %is_50hz.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 64, i32 3
  %30 = ptrtoint ptr %is_50hz.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv.i.i, ptr %is_50hz.i.i, align 8
  %call12.i.i = tail call i32 @saa7164_api_initialize_dif(ptr noundef %3) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %31 = load i32, ptr @saa_debug, align 4
  %and14.i.i = and i32 %31, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool15.not.i.i, label %do.end4.i.i.saa7164_vbi_initialize.exit_crit_edge, label %do.end19.i.i

do.end4.i.i.saa7164_vbi_initialize.exit_crit_edge: ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %saa7164_vbi_initialize.exit

do.end19.i.i:                                     ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %name21.i.i = getelementptr inbounds %struct.saa7164_dev, ptr %18, i32 0, i32 16
  %call23.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name21.i.i, ptr noundef nonnull @.str.43) #13
  br label %saa7164_vbi_initialize.exit

saa7164_vbi_initialize.exit:                      ; preds = %do.end19.i.i, %do.end4.i.i.saa7164_vbi_initialize.exit_crit_edge
  tail call fastcc void @saa7164_vbi_start_streaming(ptr noundef %3)
  tail call void @msleep(i32 noundef 200) #10
  br label %if.end29

if.end29:                                         ; preds = %saa7164_vbi_initialize.exit, %if.then12.if.end29_crit_edge, %atomic_cmpxchg.exit.if.end29_crit_edge
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %32 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %f_flags, align 4
  %and = and i32 %33, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp30 = icmp eq i32 %and, 0
  br i1 %cmp30, label %if.then32, label %if.end29.if.end63_crit_edge

if.end29.if.end63_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then32:                                        ; preds = %if.end29
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 532) #10
  %call39 = tail call fastcc ptr @saa7164_vbi_next_buf(ptr noundef %3)
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.then41, label %if.then32.if.end63_crit_edge

if.then32.if.end63_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then41:                                        ; preds = %if.then32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %34 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %wait_read = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 62
  %call43300 = call i32 @prepare_to_wait_event(ptr noundef %wait_read, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %call44301 = call fastcc ptr @saa7164_vbi_next_buf(ptr noundef %3)
  %tobool45.not302 = icmp eq ptr %call44301, null
  br i1 %tobool45.not302, label %if.then41.if.end47_crit_edge, label %if.then41.if.end53.thread261_crit_edge

if.then41.if.end53.thread261_crit_edge:           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.thread261

if.then41.if.end47_crit_edge:                     ; preds = %if.then41
  br label %if.end47

if.end47:                                         ; preds = %cleanup.if.end47_crit_edge, %if.then41.if.end47_crit_edge
  %call43303 = phi i32 [ %call43, %cleanup.if.end47_crit_edge ], [ %call43300, %if.then41.if.end47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43303)
  %tobool48.not = icmp eq i32 %call43303, 0
  br i1 %tobool48.not, label %cleanup, label %do.end59

cleanup:                                          ; preds = %if.end47
  call void @schedule() #10
  %call43 = call i32 @prepare_to_wait_event(ptr noundef %wait_read, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %call44 = call fastcc ptr @saa7164_vbi_next_buf(ptr noundef %3)
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %cleanup.if.end47_crit_edge, label %cleanup.if.end53.thread261_crit_edge

cleanup.if.end53.thread261_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.thread261

cleanup.if.end47_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.end53.thread261:                               ; preds = %cleanup.if.end53.thread261_crit_edge, %if.then41.if.end53.thread261_crit_edge
  call void @finish_wait(ptr noundef %wait_read, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end63

do.end59:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21) #13
  br label %cleanup178

if.end63:                                         ; preds = %if.end53.thread261, %if.then32.if.end63_crit_edge, %if.end29.if.end63_crit_edge
  %call64 = call fastcc ptr @saa7164_vbi_next_buf(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp65.not309 = icmp eq i32 %count, 0
  %tobool67.not310 = icmp eq ptr %call64, null
  %or.cond311 = select i1 %cmp65.not309, i1 true, i1 %tobool67.not310
  br i1 %or.cond311, label %if.end63.err_crit_edge, label %while.body.lr.ph

if.end63.err_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

while.body.lr.ph:                                 ; preds = %if.end63
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %5, i32 0, i32 16
  %dmaqueue_lock = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 13
  %list_buf_free = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 61
  %prev.i2.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 61, i32 0, i32 1
  %wait_read145 = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 62
  br label %while.body

while.body:                                       ; preds = %if.end168.while.body_crit_edge, %while.body.lr.ph
  %buffer.addr.0317 = phi ptr [ %buffer, %while.body.lr.ph ], [ %add.ptr105, %if.end168.while.body_crit_edge ]
  %count.addr.0315 = phi i32 [ %count, %while.body.lr.ph ], [ %sub104, %if.end168.while.body_crit_edge ]
  %ubuf.0313 = phi ptr [ %call64, %while.body.lr.ph ], [ %ubuf.1, %if.end168.while.body_crit_edge ]
  %ret.0312 = phi i32 [ 0, %while.body.lr.ph ], [ %add106, %if.end168.while.body_crit_edge ]
  %actual_size = getelementptr inbounds %struct.saa7164_user_buffer, ptr %ubuf.0313, i32 0, i32 3
  %35 = ptrtoint ptr %actual_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %actual_size, align 4
  %pos68 = getelementptr inbounds %struct.saa7164_user_buffer, ptr %ubuf.0313, i32 0, i32 2
  %37 = ptrtoint ptr %pos68 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pos68, align 4
  %sub69 = sub i32 %36, %38
  %39 = call i32 @llvm.umin.i32(i32 %sub69, i32 %count.addr.0315)
  %data = getelementptr inbounds %struct.saa7164_user_buffer, ptr %ubuf.0313, i32 0, i32 1
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %41, i32 %38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %42 = load i32, ptr @saa_debug, align 4
  %and74 = and i32 %42, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %while.body.if.end8.i.i_crit_edge, label %do.end79

while.body.if.end8.i.i_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

do.end79:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name, ptr noundef nonnull @.str.21, i32 noundef %count.addr.0315, i32 noundef %39, i32 noundef %sub69, ptr noundef nonnull %ubuf.0313, i32 noundef %38) #13
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end79, %while.body.if.end8.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp9.i.i = icmp slt i32 %39, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.do.end91_crit_edge, label %if.then27.i.i, !prof !220

land.rhs16.i.i.do.end91_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.94, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %do.end91

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %39, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.96, i32 noundef 174) #10
  %call.i.i246 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i246, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %43 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer.addr.0317, i32 %39, i32 -1226833920) #14, !srcloc !229
  %asmresult.i.i = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %39) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer.addr.0317, ptr noundef %add.ptr, i32 noundef %39) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %39, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %39, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool87.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool87.not, label %if.end102, label %copy_to_user.exit.do.end91_crit_edge

copy_to_user.exit.do.end91_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end91

do.end91:                                         ; preds = %copy_to_user.exit.do.end91_crit_edge, %if.then27.i.i, %land.rhs16.i.i.do.end91_crit_edge
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0312)
  %tobool94.not = icmp eq i32 %ret.0312, 0
  br i1 %tobool94.not, label %do.end98, label %do.end91.cleanup178_crit_edge

do.end91.cleanup178_crit_edge:                    ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup178

do.end98:                                         ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #12
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.21) #13
  br label %cleanup178

if.end102:                                        ; preds = %copy_to_user.exit
  %44 = ptrtoint ptr %pos68 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pos68, align 4
  %add = add i32 %45, %39
  store i32 %add, ptr %pos68, align 4
  %sub104 = sub i32 %count.addr.0315, %39
  %add.ptr105 = getelementptr i8, ptr %buffer.addr.0317, i32 %39
  %add106 = add i32 %39, %ret.0312
  %46 = ptrtoint ptr %actual_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %actual_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %47)
  %cmp109 = icmp ugt i32 %add, %47
  br i1 %cmp109, label %do.end114, label %if.end102.if.end117_crit_edge

if.end102.if.end117_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

do.end114:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #13
  br label %if.end117

if.end117:                                        ; preds = %do.end114, %if.end102.if.end117_crit_edge
  %48 = ptrtoint ptr %pos68 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pos68, align 4
  %50 = ptrtoint ptr %actual_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %actual_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp120 = icmp eq i32 %49, %51
  br i1 %cmp120, label %if.then122, label %if.end117.if.end168_crit_edge

if.end117.if.end168_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168

if.then122:                                       ; preds = %if.end117
  %52 = ptrtoint ptr %pos68 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %pos68, align 4
  call void @mutex_lock_nested(ptr noundef %dmaqueue_lock, i32 noundef 0) #10
  %call.i.i249 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %ubuf.0313) #10
  br i1 %call.i.i249, label %if.end.i.i250, label %if.then122.__list_del_entry.exit.i_crit_edge

if.then122.__list_del_entry.exit.i_crit_edge:     ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i250:                                    ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ubuf.0313, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i, align 4
  %55 = ptrtoint ptr %ubuf.0313 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ubuf.0313, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i250, %if.then122.__list_del_entry.exit.i_crit_edge
  %59 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i251 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %ubuf.0313, ptr noundef %60, ptr noundef %list_buf_free) #10
  br i1 %call.i.i.i251, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %ubuf.0313, ptr %prev.i2.i, align 4
  %62 = ptrtoint ptr %ubuf.0313 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %list_buf_free, ptr %ubuf.0313, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %ubuf.0313, i32 0, i32 1
  %63 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %ubuf.0313, ptr %60, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef %dmaqueue_lock) #10
  %65 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %f_flags, align 4
  %and127 = and i32 %66, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %cmp128 = icmp eq i32 %and127, 0
  br i1 %cmp128, label %if.then130, label %list_move_tail.exit.if.end166_crit_edge

list_move_tail.exit.if.end166_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166

if.then130:                                       ; preds = %list_move_tail.exit
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 584) #10
  %call138 = call fastcc ptr @saa7164_vbi_next_buf(ptr noundef %3)
  %tobool139.not = icmp eq ptr %call138, null
  br i1 %tobool139.not, label %if.then140, label %if.then130.if.end166_crit_edge

if.then130.if.end166_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166

if.then140:                                       ; preds = %if.then130
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry141) #10
  %67 = call ptr @memset(ptr %__wq_entry141, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry141, i32 noundef 0) #10
  %call146304 = call i32 @prepare_to_wait_event(ptr noundef %wait_read145, ptr noundef nonnull %__wq_entry141, i32 noundef 1) #10
  %call147305 = call fastcc ptr @saa7164_vbi_next_buf(ptr noundef %3)
  %tobool148.not306 = icmp eq ptr %call147305, null
  br i1 %tobool148.not306, label %if.then140.if.end150_crit_edge, label %if.then140.if.end161.thread275_crit_edge

if.then140.if.end161.thread275_crit_edge:         ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.thread275

if.then140.if.end150_crit_edge:                   ; preds = %if.then140
  br label %if.end150

if.end150:                                        ; preds = %cleanup154.if.end150_crit_edge, %if.then140.if.end150_crit_edge
  %call146307 = phi i32 [ %call146, %cleanup154.if.end150_crit_edge ], [ %call146304, %if.then140.if.end150_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146307)
  %tobool151.not = icmp eq i32 %call146307, 0
  br i1 %tobool151.not, label %cleanup154, label %err.thread

cleanup154:                                       ; preds = %if.end150
  call void @schedule() #10
  %call146 = call i32 @prepare_to_wait_event(ptr noundef %wait_read145, ptr noundef nonnull %__wq_entry141, i32 noundef 1) #10
  %call147 = call fastcc ptr @saa7164_vbi_next_buf(ptr noundef %3)
  %tobool148.not = icmp eq ptr %call147, null
  br i1 %tobool148.not, label %cleanup154.if.end150_crit_edge, label %cleanup154.if.end161.thread275_crit_edge

cleanup154.if.end161.thread275_crit_edge:         ; preds = %cleanup154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.thread275

cleanup154.if.end150_crit_edge:                   ; preds = %cleanup154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

if.end161.thread275:                              ; preds = %cleanup154.if.end161.thread275_crit_edge, %if.then140.if.end161.thread275_crit_edge
  call void @finish_wait(ptr noundef %wait_read145, ptr noundef nonnull %__wq_entry141) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry141) #10
  br label %if.end166

err.thread:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry141) #10
  br label %cleanup178

if.end166:                                        ; preds = %if.end161.thread275, %if.then130.if.end166_crit_edge, %list_move_tail.exit.if.end166_crit_edge
  %call167 = call fastcc ptr @saa7164_vbi_next_buf(ptr noundef %3)
  br label %if.end168

if.end168:                                        ; preds = %if.end166, %if.end117.if.end168_crit_edge
  %ubuf.1 = phi ptr [ %call167, %if.end166 ], [ %ubuf.0313, %if.end117.if.end168_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub104)
  %cmp65.not = icmp eq i32 %sub104, 0
  %tobool67.not = icmp eq ptr %ubuf.1, null
  %or.cond = select i1 %cmp65.not, i1 true, i1 %tobool67.not
  br i1 %or.cond, label %if.end168.err_crit_edge, label %if.end168.while.body_crit_edge

if.end168.while.body_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end168.err_crit_edge:                          ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

err:                                              ; preds = %if.end168.err_crit_edge, %if.end63.err_crit_edge
  %tobool67.not285 = phi i1 [ %tobool67.not310, %if.end63.err_crit_edge ], [ %tobool67.not, %if.end168.err_crit_edge ]
  %ret.1 = phi i32 [ 0, %if.end63.err_crit_edge ], [ %add106, %if.end168.err_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool169.not = icmp ne i32 %ret.1, 0
  %tobool67.not.not = xor i1 %tobool67.not285, true
  %brmerge = select i1 %tobool169.not, i1 true, i1 %tobool67.not.not
  br i1 %brmerge, label %err.cleanup178_crit_edge, label %do.end174

err.cleanup178_crit_edge:                         ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup178

do.end174:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  %call176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.21) #13
  br label %cleanup178

cleanup178:                                       ; preds = %do.end174, %err.cleanup178_crit_edge, %err.thread, %do.end98, %do.end91.cleanup178_crit_edge, %do.end59, %do.end
  %retval.0 = phi i32 [ -29, %do.end ], [ -512, %do.end59 ], [ %ret.1, %err.cleanup178_crit_edge ], [ -11, %do.end174 ], [ -14, %do.end98 ], [ %ret.0312, %do.end91.cleanup178_crit_edge ], [ %add106, %err.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_poll(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %wait) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port1 = getelementptr inbounds %struct.saa7164_vbi_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  %last_poll_msecs = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %last_poll_msecs to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %last_poll_msecs, align 8
  %last_poll_msecs_diff = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %last_poll_msecs_diff to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %last_poll_msecs_diff, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %7) #10
  %conv = zext i32 %call to i64
  %8 = ptrtoint ptr %last_poll_msecs to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %last_poll_msecs, align 8
  %9 = ptrtoint ptr %last_poll_msecs_diff to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %last_poll_msecs_diff, align 8
  %sub = sub i64 %conv, %10
  store i64 %sub, ptr %last_poll_msecs_diff, align 8
  %poll_interval = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 30
  %conv7 = trunc i64 %sub to i32
  tail call void @saa7164_histogram_update(ptr noundef %poll_interval, i32 noundef %conv7) #10
  %v4l_device = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 58
  %11 = ptrtoint ptr %v4l_device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %v4l_device, align 8
  %flags.i = getelementptr inbounds %struct.video_device, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %entry.cleanup53_crit_edge, label %if.end

entry.cleanup53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

if.end:                                           ; preds = %entry
  %v4l_reading = getelementptr inbounds %struct.saa7164_vbi_fh, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %v4l_reading, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !223
  tail call void @llvm.prefetch.p0(ptr %v4l_reading, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %v4l_reading, ptr %v4l_reading, i32 0, i32 1, ptr elementtype(i32) %v4l_reading) #10, !srcloc !224
  %asmresult.i.i.i = extractvalue { i32, i32 } %15, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %15, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !225
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %cmp = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %cmp, label %if.then11, label %atomic_cmpxchg.exit.if.end23_crit_edge

atomic_cmpxchg.exit.if.end23_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then11:                                        ; preds = %atomic_cmpxchg.exit
  %v4l_reader_count = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 59
  %call.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef %v4l_reader_count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !226
  tail call void @llvm.prefetch.p0(ptr %v4l_reader_count, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %v4l_reader_count, ptr %v4l_reader_count, i32 1, ptr elementtype(i32) %v4l_reader_count) #10, !srcloc !227
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !228
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp13 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp13, label %if.then15, label %if.then11.if.end23_crit_edge

if.then11.if.end23_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then15:                                        ; preds = %if.then11
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %19 = load i32, ptr @saa_debug, align 4
  %and.i.i = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then15.do.end4.i.i_crit_edge, label %do.end.i.i

if.then15.do.end4.i.i_crit_edge:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i.i

do.end.i.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %name.i.i = getelementptr inbounds %struct.saa7164_dev, ptr %18, i32 0, i32 16
  %call.i.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i.i, ptr noundef nonnull @.str.43) #13
  br label %do.end4.i.i

do.end4.i.i:                                      ; preds = %do.end.i.i, %if.then15.do.end4.i.i_crit_edge
  %enc_port.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 65
  %20 = ptrtoint ptr %enc_port.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %enc_port.i.i, align 8
  %width.i.i = getelementptr inbounds %struct.saa7164_port, ptr %21, i32 0, i32 38
  %22 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %width.i.i, align 4
  %width5.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 64, i32 2
  %24 = ptrtoint ptr %width5.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %width5.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.saa7164_port, ptr %21, i32 0, i32 37
  %25 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height.i.i, align 8
  %height8.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 64, i32 1
  %27 = ptrtoint ptr %height8.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %height8.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.saa7164_port, ptr %21, i32 0, i32 34, i32 1
  %28 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %id.i.i, align 8
  %and10.i.i = and i64 %29, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i.i)
  %cmp.i.i = icmp ne i64 %and10.i.i, 0
  %conv.i.i = zext i1 %cmp.i.i to i32
  %is_50hz.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 64, i32 3
  %30 = ptrtoint ptr %is_50hz.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv.i.i, ptr %is_50hz.i.i, align 8
  %call12.i.i = tail call i32 @saa7164_api_initialize_dif(ptr noundef %3) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %31 = load i32, ptr @saa_debug, align 4
  %and14.i.i = and i32 %31, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool15.not.i.i, label %do.end4.i.i.saa7164_vbi_initialize.exit_crit_edge, label %do.end19.i.i

do.end4.i.i.saa7164_vbi_initialize.exit_crit_edge: ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %saa7164_vbi_initialize.exit

do.end19.i.i:                                     ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %name21.i.i = getelementptr inbounds %struct.saa7164_dev, ptr %18, i32 0, i32 16
  %call23.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name21.i.i, ptr noundef nonnull @.str.43) #13
  br label %saa7164_vbi_initialize.exit

saa7164_vbi_initialize.exit:                      ; preds = %do.end19.i.i, %do.end4.i.i.saa7164_vbi_initialize.exit_crit_edge
  tail call fastcc void @saa7164_vbi_start_streaming(ptr noundef %3)
  tail call void @msleep(i32 noundef 200) #10
  br label %if.end23

if.end23:                                         ; preds = %saa7164_vbi_initialize.exit, %if.then11.if.end23_crit_edge, %atomic_cmpxchg.exit.if.end23_crit_edge
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %32 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %f_flags, align 4
  %and = and i32 %33, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp24 = icmp eq i32 %and, 0
  br i1 %cmp24, label %if.then26, label %if.end23.if.end48_crit_edge

if.end23.if.end48_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then26:                                        ; preds = %if.end23
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 629) #10
  %call30 = tail call fastcc ptr @saa7164_vbi_next_buf(ptr noundef %3)
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.then32, label %if.then26.if.end48_crit_edge

if.then26.if.end48_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then32:                                        ; preds = %if.then26
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %34 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %wait_read = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 62
  %call3491 = call i32 @prepare_to_wait_event(ptr noundef %wait_read, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %call3592 = call fastcc ptr @saa7164_vbi_next_buf(ptr noundef %3)
  %tobool36.not93 = icmp eq ptr %call3592, null
  br i1 %tobool36.not93, label %if.then32.if.end38_crit_edge, label %if.then32.if.end43.thread87_crit_edge

if.then32.if.end43.thread87_crit_edge:            ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.thread87

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  br label %if.end38

if.end38:                                         ; preds = %cleanup.if.end38_crit_edge, %if.then32.if.end38_crit_edge
  %call3494 = phi i32 [ %call34, %cleanup.if.end38_crit_edge ], [ %call3491, %if.then32.if.end38_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3494)
  %tobool39.not = icmp eq i32 %call3494, 0
  br i1 %tobool39.not, label %cleanup, label %if.end43

cleanup:                                          ; preds = %if.end38
  call void @schedule() #10
  %call34 = call i32 @prepare_to_wait_event(ptr noundef %wait_read, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %call35 = call fastcc ptr @saa7164_vbi_next_buf(ptr noundef %3)
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %cleanup.if.end38_crit_edge, label %cleanup.if.end43.thread87_crit_edge

cleanup.if.end43.thread87_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.thread87

cleanup.if.end38_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.end43.thread87:                                ; preds = %cleanup.if.end43.thread87_crit_edge, %if.then32.if.end43.thread87_crit_edge
  call void @finish_wait(ptr noundef %wait_read, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end48

if.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %cleanup53

if.end48:                                         ; preds = %if.end43.thread87, %if.then26.if.end48_crit_edge, %if.end23.if.end48_crit_edge
  %list_buf_used = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 60
  %35 = ptrtoint ptr %list_buf_used to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %list_buf_used, align 4
  %cmp.i.not = icmp eq ptr %36, %list_buf_used
  %spec.select = select i1 %cmp.i.not, i32 0, i32 65
  br label %cleanup53

cleanup53:                                        ; preds = %if.end48, %if.end43, %entry.cleanup53_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end48 ], [ 8, %entry.cleanup53_crit_edge ], [ 8, %if.end43 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #10
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %2 = load i32, ptr @saa_debug, align 4
  %and = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.do.end9_crit_edge, label %do.end

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %4, i32 0, i32 16
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.97) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end, %if.end.do.end9_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 200) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end9.cleanup_crit_edge, label %if.end12

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %port13 = getelementptr inbounds %struct.saa7164_vbi_fh, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %port13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %port13, align 8
  %call15 = tail call ptr @video_devdata(ptr noundef %file) #10
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call15) #10
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %do.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_release(ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port1 = getelementptr inbounds %struct.saa7164_vbi_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %4 = load i32, ptr @saa_debug, align 4
  %and = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 8
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %6, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.98) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %v4l_reading = getelementptr inbounds %struct.saa7164_vbi_fh, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %v4l_reading, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !223
  tail call void @llvm.prefetch.p0(ptr %v4l_reading, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.end5
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %v4l_reading, ptr %v4l_reading, i32 1, i32 0, ptr elementtype(i32) %v4l_reading) #10, !srcloc !224
  %asmresult.i.i.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %7, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !225
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult3.i.i.i)
  %cmp = icmp eq i32 %asmresult3.i.i.i, 1
  br i1 %cmp, label %if.then7, label %atomic_cmpxchg.exit.if.end13_crit_edge

atomic_cmpxchg.exit.if.end13_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then7:                                         ; preds = %atomic_cmpxchg.exit
  %v4l_reader_count = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 59
  %call.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %v4l_reader_count, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @llvm.prefetch.p0(ptr %v4l_reader_count, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %v4l_reader_count, ptr %v4l_reader_count, i32 1, ptr elementtype(i32) %v4l_reader_count) #10, !srcloc !231
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp9 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp9, label %if.then10, label %if.then7.if.end13_crit_edge

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10:                                        ; preds = %if.then7
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %11 = load i32, ptr @saa_debug, align 4
  %and.i = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then10.do.end4.i_crit_edge, label %do.end.i

if.then10.do.end4.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i

do.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %10, i32 0, i32 16
  %nr.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i, ptr noundef nonnull @.str.99, i32 noundef %13) #13
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.then10.do.end4.i_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %call.i.i23 = tail call i32 @saa7164_api_transition_port(ptr noundef %3, i8 noundef zeroext 2) #10
  %16 = zext i32 %call.i.i23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i23, label %do.end.i.i [
    i32 0, label %do.end4.i.do.body4.i.i_crit_edge
    i32 38, label %do.end4.i.do.body4.i.i_crit_edge24
  ]

do.end4.i.do.body4.i.i_crit_edge24:               ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i.i

do.end4.i.do.body4.i.i_crit_edge:                 ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i.i

do.end.i.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107, i32 noundef %call.i.i23) #13
  br label %saa7164_vbi_pause_port.exit.i

do.body4.i.i:                                     ; preds = %do.end4.i.do.body4.i.i_crit_edge, %do.end4.i.do.body4.i.i_crit_edge24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %17 = load i32, ptr @saa_debug, align 4
  %and.i.i = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i.saa7164_vbi_pause_port.exit.i_crit_edge, label %do.end8.i.i

do.body4.i.i.saa7164_vbi_pause_port.exit.i_crit_edge: ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %saa7164_vbi_pause_port.exit.i

do.end8.i.i:                                      ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i.i = getelementptr inbounds %struct.saa7164_dev, ptr %15, i32 0, i32 16
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name.i.i, ptr noundef nonnull @.str.107) #13
  br label %saa7164_vbi_pause_port.exit.i

saa7164_vbi_pause_port.exit.i:                    ; preds = %do.end8.i.i, %do.body4.i.i.saa7164_vbi_pause_port.exit.i_crit_edge, %do.end.i.i
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  %call.i1.i = tail call i32 @saa7164_api_transition_port(ptr noundef %3, i8 noundef zeroext 1) #10
  %20 = zext i32 %call.i1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %call.i1.i, label %do.end.i3.i [
    i32 0, label %saa7164_vbi_pause_port.exit.i.do.body4.i6.i_crit_edge
    i32 38, label %saa7164_vbi_pause_port.exit.i.do.body4.i6.i_crit_edge25
  ]

saa7164_vbi_pause_port.exit.i.do.body4.i6.i_crit_edge25: ; preds = %saa7164_vbi_pause_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i6.i

saa7164_vbi_pause_port.exit.i.do.body4.i6.i_crit_edge: ; preds = %saa7164_vbi_pause_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i6.i

do.end.i3.i:                                      ; preds = %saa7164_vbi_pause_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i32 noundef %call.i1.i) #13
  br label %saa7164_vbi_acquire_port.exit.i

do.body4.i6.i:                                    ; preds = %saa7164_vbi_pause_port.exit.i.do.body4.i6.i_crit_edge, %saa7164_vbi_pause_port.exit.i.do.body4.i6.i_crit_edge25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %21 = load i32, ptr @saa_debug, align 4
  %and.i4.i = and i32 %21, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i)
  %tobool.not.i5.i = icmp eq i32 %and.i4.i, 0
  br i1 %tobool.not.i5.i, label %do.body4.i6.i.saa7164_vbi_acquire_port.exit.i_crit_edge, label %do.end8.i9.i

do.body4.i6.i.saa7164_vbi_acquire_port.exit.i_crit_edge: ; preds = %do.body4.i6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %saa7164_vbi_acquire_port.exit.i

do.end8.i9.i:                                     ; preds = %do.body4.i6.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i7.i = getelementptr inbounds %struct.saa7164_dev, ptr %19, i32 0, i32 16
  %call10.i8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name.i7.i, ptr noundef nonnull @.str.85) #13
  br label %saa7164_vbi_acquire_port.exit.i

saa7164_vbi_acquire_port.exit.i:                  ; preds = %do.end8.i9.i, %do.body4.i6.i.saa7164_vbi_acquire_port.exit.i_crit_edge, %do.end.i3.i
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 8
  %call.i10.i = tail call i32 @saa7164_api_transition_port(ptr noundef %3, i8 noundef zeroext 0) #10
  %24 = zext i32 %call.i10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %call.i10.i, label %do.end.i12.i [
    i32 0, label %saa7164_vbi_acquire_port.exit.i.do.body4.i15.i_crit_edge
    i32 38, label %saa7164_vbi_acquire_port.exit.i.do.body4.i15.i_crit_edge26
  ]

saa7164_vbi_acquire_port.exit.i.do.body4.i15.i_crit_edge26: ; preds = %saa7164_vbi_acquire_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i15.i

saa7164_vbi_acquire_port.exit.i.do.body4.i15.i_crit_edge: ; preds = %saa7164_vbi_acquire_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i15.i

do.end.i12.i:                                     ; preds = %saa7164_vbi_acquire_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef %call.i10.i) #13
  br label %saa7164_vbi_stop_port.exit.i

do.body4.i15.i:                                   ; preds = %saa7164_vbi_acquire_port.exit.i.do.body4.i15.i_crit_edge, %saa7164_vbi_acquire_port.exit.i.do.body4.i15.i_crit_edge26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %25 = load i32, ptr @saa_debug, align 4
  %and.i13.i = and i32 %25, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %tobool.not.i14.i, label %do.body4.i15.i.saa7164_vbi_stop_port.exit.i_crit_edge, label %do.end8.i18.i

do.body4.i15.i.saa7164_vbi_stop_port.exit.i_crit_edge: ; preds = %do.body4.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %saa7164_vbi_stop_port.exit.i

do.end8.i18.i:                                    ; preds = %do.body4.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i16.i = getelementptr inbounds %struct.saa7164_dev, ptr %23, i32 0, i32 16
  %call10.i17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name.i16.i, ptr noundef nonnull @.str.80) #13
  br label %saa7164_vbi_stop_port.exit.i

saa7164_vbi_stop_port.exit.i:                     ; preds = %do.end8.i18.i, %do.body4.i15.i.saa7164_vbi_stop_port.exit.i_crit_edge, %do.end.i12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %26 = load i32, ptr @saa_debug, align 4
  %and9.i = and i32 %26, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %saa7164_vbi_stop_port.exit.i.do.end22.i_crit_edge, label %do.end14.i

saa7164_vbi_stop_port.exit.i.do.end22.i_crit_edge: ; preds = %saa7164_vbi_stop_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

do.end14.i:                                       ; preds = %saa7164_vbi_stop_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %name16.i = getelementptr inbounds %struct.saa7164_dev, ptr %10, i32 0, i32 16
  %nr18.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %nr18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr18.i, align 8
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %name16.i, ptr noundef nonnull @.str.99, i32 noundef %28) #13
  br label %do.end22.i

do.end22.i:                                       ; preds = %do.end14.i, %saa7164_vbi_stop_port.exit.i.do.end22.i_crit_edge
  %dmaqueue_lock.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %dmaqueue_lock.i, i32 noundef 0) #10
  %dmaqueue.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 14
  %29 = ptrtoint ptr %dmaqueue.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dmaqueue.i, align 8
  %cmp.i.not29.i = icmp eq ptr %30, %dmaqueue.i
  br i1 %cmp.i.not29.i, label %do.end22.i.for.end.i_crit_edge, label %do.end22.i.for.body.i_crit_edge

do.end22.i.for.body.i_crit_edge:                  ; preds = %do.end22.i
  br label %for.body.i

do.end22.i.for.end.i_crit_edge:                   ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end22.i.for.body.i_crit_edge
  %c.030.i = phi ptr [ %n.0.i, %for.body.i.for.body.i_crit_edge ], [ %30, %do.end22.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %c.030.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %n.0.i = load ptr, ptr %c.030.i, align 4
  %flags.i = getelementptr inbounds %struct.saa7164_buffer, ptr %c.030.i, i32 0, i32 3
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %flags.i, align 4
  %pos.i = getelementptr inbounds %struct.saa7164_buffer, ptr %c.030.i, i32 0, i32 11
  %33 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %pos.i, align 4
  %cmp.i.not.i = icmp eq ptr %n.0.i, %dmaqueue.i
  br i1 %cmp.i.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.end22.i.for.end.i_crit_edge
  %list_buf_used.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 60
  %34 = ptrtoint ptr %list_buf_used.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %list_buf_used.i, align 8
  %cmp.i19.not32.i = icmp eq ptr %35, %list_buf_used.i
  br i1 %cmp.i19.not32.i, label %for.end.i.for.end48.i_crit_edge, label %for.body39.lr.ph.i

for.end.i.for.end48.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end48.i

for.body39.lr.ph.i:                               ; preds = %for.end.i
  %list_buf_free.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 61
  %prev.i2.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 61, i32 0, i32 1
  br label %for.body39.i

for.body39.i:                                     ; preds = %list_move_tail.exit.i.for.body39.i_crit_edge, %for.body39.lr.ph.i
  %c.133.i = phi ptr [ %35, %for.body39.lr.ph.i ], [ %n.135.i, %list_move_tail.exit.i.for.body39.i_crit_edge ]
  %36 = ptrtoint ptr %c.133.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %n.135.i = load ptr, ptr %c.133.i, align 4
  %pos43.i = getelementptr inbounds %struct.saa7164_user_buffer, ptr %c.133.i, i32 0, i32 2
  %37 = ptrtoint ptr %pos43.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %pos43.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %c.133.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body39.i.__list_del_entry.exit.i.i_crit_edge

for.body39.i.__list_del_entry.exit.i.i_crit_edge: ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %c.133.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i, align 4
  %40 = ptrtoint ptr %c.133.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %c.133.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %for.body39.i.__list_del_entry.exit.i.i_crit_edge
  %44 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %c.133.i, ptr noundef %45, ptr noundef %list_buf_free.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %c.133.i, ptr %prev.i2.i.i, align 4
  %47 = ptrtoint ptr %c.133.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %list_buf_free.i, ptr %c.133.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %c.133.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %c.133.i, ptr %45, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %cmp.i19.not.i = icmp eq ptr %n.135.i, %list_buf_used.i
  br i1 %cmp.i19.not.i, label %list_move_tail.exit.i.for.end48.i_crit_edge, label %list_move_tail.exit.i.for.body39.i_crit_edge

list_move_tail.exit.i.for.body39.i_crit_edge:     ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body39.i

list_move_tail.exit.i.for.end48.i_crit_edge:      ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end48.i

for.end48.i:                                      ; preds = %list_move_tail.exit.i.for.end48.i_crit_edge, %for.end.i.for.end48.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %dmaqueue_lock.i) #10
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 8
  tail call void @mutex_lock_nested(ptr noundef %dmaqueue_lock.i, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %52 = load i32, ptr @saa_debug, align 4
  %and.i21.i = and i32 %52, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21.i)
  %tobool.not.i22.i = icmp eq i32 %and.i21.i, 0
  br i1 %tobool.not.i22.i, label %for.end48.i.do.end4.i.i_crit_edge, label %do.end.i25.i

for.end48.i.do.end4.i.i_crit_edge:                ; preds = %for.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i.i

do.end.i25.i:                                     ; preds = %for.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i23.i = getelementptr inbounds %struct.saa7164_dev, ptr %51, i32 0, i32 16
  %nr.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %53 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr.i.i, align 8
  %call.i24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %name.i23.i, ptr noundef nonnull @.str.111, i32 noundef %54) #13
  br label %do.end4.i.i

do.end4.i.i:                                      ; preds = %do.end.i25.i, %for.end48.i.do.end4.i.i_crit_edge
  %55 = ptrtoint ptr %dmaqueue.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dmaqueue.i, align 8
  %cmp.i.not18.i.i = icmp eq ptr %56, %dmaqueue.i
  br i1 %cmp.i.not18.i.i, label %do.end4.i.i.do.body13.i.i_crit_edge, label %do.end4.i.i.for.body.i.i_crit_edge

do.end4.i.i.for.body.i.i_crit_edge:               ; preds = %do.end4.i.i
  br label %for.body.i.i

do.end4.i.i.do.body13.i.i_crit_edge:              ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body13.i.i

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %do.end4.i.i.for.body.i.i_crit_edge
  %c.019.i.i = phi ptr [ %n.021.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %56, %do.end4.i.i.for.body.i.i_crit_edge ]
  %57 = ptrtoint ptr %c.019.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %n.021.i.i = load ptr, ptr %c.019.i.i, align 4
  %call.i.i.i26.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %c.019.i.i) #10
  br i1 %call.i.i.i26.i, label %if.end.i.i.i27.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i

if.end.i.i.i27.i:                                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %c.019.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i.i.i, align 4
  %60 = ptrtoint ptr %c.019.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %c.019.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev1.i.i.i.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %61, ptr %59, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i27.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %64 = ptrtoint ptr %c.019.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 256 to ptr), ptr %c.019.i.i, align 4
  %prev.i.i28.i = getelementptr inbounds %struct.list_head, ptr %c.019.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i28.i, align 4
  %call11.i.i = tail call i32 @saa7164_buffer_dealloc(ptr noundef %c.019.i.i) #10
  %cmp.i.not.i.i = icmp eq ptr %n.021.i.i, %dmaqueue.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.do.body13.i.i_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

list_del.exit.i.i.do.body13.i.i_crit_edge:        ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body13.i.i

do.body13.i.i:                                    ; preds = %list_del.exit.i.i.do.body13.i.i_crit_edge, %do.end4.i.i.do.body13.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %66 = load i32, ptr @saa_debug, align 4
  %and14.i.i = and i32 %66, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool15.not.i.i, label %do.body13.i.i.do.end27.i.i_crit_edge, label %do.end19.i.i

do.body13.i.i.do.end27.i.i_crit_edge:             ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27.i.i

do.end19.i.i:                                     ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %name21.i.i = getelementptr inbounds %struct.saa7164_dev, ptr %51, i32 0, i32 16
  %nr23.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %67 = ptrtoint ptr %nr23.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr23.i.i, align 8
  %call24.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name21.i.i, ptr noundef nonnull @.str.111, i32 noundef %68) #13
  br label %do.end27.i.i

do.end27.i.i:                                     ; preds = %do.end19.i.i, %do.body13.i.i.do.end27.i.i_crit_edge
  %69 = ptrtoint ptr %list_buf_used.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %list_buf_used.i, align 8
  %cmp.i1.not23.i.i = icmp eq ptr %70, %list_buf_used.i
  br i1 %cmp.i1.not23.i.i, label %do.end27.i.i.do.body44.i.i_crit_edge, label %do.end27.i.i.for.body37.i.i_crit_edge

do.end27.i.i.for.body37.i.i_crit_edge:            ; preds = %do.end27.i.i
  br label %for.body37.i.i

do.end27.i.i.do.body44.i.i_crit_edge:             ; preds = %do.end27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body44.i.i

for.body37.i.i:                                   ; preds = %list_del.exit8.i.i.for.body37.i.i_crit_edge, %do.end27.i.i.for.body37.i.i_crit_edge
  %p.024.i.i = phi ptr [ %q.026.i.i, %list_del.exit8.i.i.for.body37.i.i_crit_edge ], [ %70, %do.end27.i.i.for.body37.i.i_crit_edge ]
  %71 = ptrtoint ptr %p.024.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %q.026.i.i = load ptr, ptr %p.024.i.i, align 4
  %call.i.i3.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.024.i.i) #10
  br i1 %call.i.i3.i.i, label %if.end.i.i6.i.i, label %for.body37.i.i.list_del.exit8.i.i_crit_edge

for.body37.i.i.list_del.exit8.i.i_crit_edge:      ; preds = %for.body37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit8.i.i

if.end.i.i6.i.i:                                  ; preds = %for.body37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i4.i.i = getelementptr inbounds %struct.list_head, ptr %p.024.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i.i4.i.i, align 4
  %74 = ptrtoint ptr %p.024.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %p.024.i.i, align 4
  %prev1.i.i.i5.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev1.i.i.i5.i.i, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %75, ptr %73, align 4
  br label %list_del.exit8.i.i

list_del.exit8.i.i:                               ; preds = %if.end.i.i6.i.i, %for.body37.i.i.list_del.exit8.i.i_crit_edge
  %78 = ptrtoint ptr %p.024.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 256 to ptr), ptr %p.024.i.i, align 4
  %prev.i7.i.i = getelementptr inbounds %struct.list_head, ptr %p.024.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i7.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i7.i.i, align 4
  tail call void @saa7164_buffer_dealloc_user(ptr noundef %p.024.i.i) #10
  %cmp.i1.not.i.i = icmp eq ptr %q.026.i.i, %list_buf_used.i
  br i1 %cmp.i1.not.i.i, label %list_del.exit8.i.i.do.body44.i.i_crit_edge, label %list_del.exit8.i.i.for.body37.i.i_crit_edge

list_del.exit8.i.i.for.body37.i.i_crit_edge:      ; preds = %list_del.exit8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body37.i.i

list_del.exit8.i.i.do.body44.i.i_crit_edge:       ; preds = %list_del.exit8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body44.i.i

do.body44.i.i:                                    ; preds = %list_del.exit8.i.i.do.body44.i.i_crit_edge, %do.end27.i.i.do.body44.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %80 = load i32, ptr @saa_debug, align 4
  %and45.i.i = and i32 %80, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i.i)
  %tobool46.not.i.i = icmp eq i32 %and45.i.i, 0
  br i1 %tobool46.not.i.i, label %do.body44.i.i.do.end58.i.i_crit_edge, label %do.end50.i.i

do.body44.i.i.do.end58.i.i_crit_edge:             ; preds = %do.body44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end58.i.i

do.end50.i.i:                                     ; preds = %do.body44.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %name52.i.i = getelementptr inbounds %struct.saa7164_dev, ptr %51, i32 0, i32 16
  %nr54.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %81 = ptrtoint ptr %nr54.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr54.i.i, align 8
  %call55.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %name52.i.i, ptr noundef nonnull @.str.111, i32 noundef %82) #13
  br label %do.end58.i.i

do.end58.i.i:                                     ; preds = %do.end50.i.i, %do.body44.i.i.do.end58.i.i_crit_edge
  %list_buf_free.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 61
  %83 = ptrtoint ptr %list_buf_free.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %list_buf_free.i.i, align 8
  %cmp.i9.not28.i.i = icmp eq ptr %84, %list_buf_free.i.i
  br i1 %cmp.i9.not28.i.i, label %do.end58.i.i.for.end74.i.i_crit_edge, label %do.end58.i.i.for.body68.i.i_crit_edge

do.end58.i.i.for.body68.i.i_crit_edge:            ; preds = %do.end58.i.i
  br label %for.body68.i.i

do.end58.i.i.for.end74.i.i_crit_edge:             ; preds = %do.end58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end74.i.i

for.body68.i.i:                                   ; preds = %list_del.exit16.i.i.for.body68.i.i_crit_edge, %do.end58.i.i.for.body68.i.i_crit_edge
  %l.029.i.i = phi ptr [ %v.031.i.i, %list_del.exit16.i.i.for.body68.i.i_crit_edge ], [ %84, %do.end58.i.i.for.body68.i.i_crit_edge ]
  %85 = ptrtoint ptr %l.029.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %v.031.i.i = load ptr, ptr %l.029.i.i, align 4
  %call.i.i11.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l.029.i.i) #10
  br i1 %call.i.i11.i.i, label %if.end.i.i14.i.i, label %for.body68.i.i.list_del.exit16.i.i_crit_edge

for.body68.i.i.list_del.exit16.i.i_crit_edge:     ; preds = %for.body68.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit16.i.i

if.end.i.i14.i.i:                                 ; preds = %for.body68.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %l.029.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i12.i.i, align 4
  %88 = ptrtoint ptr %l.029.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %l.029.i.i, align 4
  %prev1.i.i.i13.i.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev1.i.i.i13.i.i, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %89, ptr %87, align 4
  br label %list_del.exit16.i.i

list_del.exit16.i.i:                              ; preds = %if.end.i.i14.i.i, %for.body68.i.i.list_del.exit16.i.i_crit_edge
  %92 = ptrtoint ptr %l.029.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 256 to ptr), ptr %l.029.i.i, align 4
  %prev.i15.i.i = getelementptr inbounds %struct.list_head, ptr %l.029.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i15.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i15.i.i, align 4
  tail call void @saa7164_buffer_dealloc_user(ptr noundef %l.029.i.i) #10
  %cmp.i9.not.i.i = icmp eq ptr %v.031.i.i, %list_buf_free.i.i
  br i1 %cmp.i9.not.i.i, label %list_del.exit16.i.i.for.end74.i.i_crit_edge, label %list_del.exit16.i.i.for.body68.i.i_crit_edge

list_del.exit16.i.i.for.body68.i.i_crit_edge:     ; preds = %list_del.exit16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body68.i.i

list_del.exit16.i.i.for.end74.i.i_crit_edge:      ; preds = %list_del.exit16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end74.i.i

for.end74.i.i:                                    ; preds = %list_del.exit16.i.i.for.end74.i.i_crit_edge, %do.end58.i.i.for.end74.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %dmaqueue_lock.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %94 = load i32, ptr @saa_debug, align 4
  %and77.i.i = and i32 %94, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i.i)
  %tobool78.not.i.i = icmp eq i32 %and77.i.i, 0
  br i1 %tobool78.not.i.i, label %for.end74.i.i.saa7164_vbi_buffers_dealloc.exit.i_crit_edge, label %do.end82.i.i

for.end74.i.i.saa7164_vbi_buffers_dealloc.exit.i_crit_edge: ; preds = %for.end74.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %saa7164_vbi_buffers_dealloc.exit.i

do.end82.i.i:                                     ; preds = %for.end74.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %name84.i.i = getelementptr inbounds %struct.saa7164_dev, ptr %51, i32 0, i32 16
  %nr86.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %95 = ptrtoint ptr %nr86.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %nr86.i.i, align 8
  %call87.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %name84.i.i, ptr noundef nonnull @.str.111, i32 noundef %96) #13
  br label %saa7164_vbi_buffers_dealloc.exit.i

saa7164_vbi_buffers_dealloc.exit.i:               ; preds = %do.end82.i.i, %for.end74.i.i.saa7164_vbi_buffers_dealloc.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %97 = load i32, ptr @saa_debug, align 4
  %and52.i = and i32 %97, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %saa7164_vbi_buffers_dealloc.exit.i.if.end13_crit_edge, label %do.end57.i

saa7164_vbi_buffers_dealloc.exit.i.if.end13_crit_edge: ; preds = %saa7164_vbi_buffers_dealloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.end57.i:                                       ; preds = %saa7164_vbi_buffers_dealloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %name59.i = getelementptr inbounds %struct.saa7164_dev, ptr %10, i32 0, i32 16
  %nr61.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %98 = ptrtoint ptr %nr61.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %nr61.i, align 8
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %name59.i, ptr noundef nonnull @.str.99, i32 noundef %99) #13
  br label %if.end13

if.end13:                                         ; preds = %do.end57.i, %saa7164_vbi_buffers_dealloc.exit.i.if.end13_crit_edge, %if.then7.if.end13_crit_edge, %atomic_cmpxchg.exit.if.end13_crit_edge
  tail call void @v4l2_fh_del(ptr noundef %1) #10
  tail call void @v4l2_fh_exit(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7164_histogram_update(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7164_vbi_start_streaming(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %2 = load i32, ptr @saa_debug, align 4
  %and = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %nr = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name, ptr noundef nonnull @.str.47, i32 noundef %4) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %done_first_interrupt = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 71
  %5 = ptrtoint ptr %done_first_interrupt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %done_first_interrupt, align 4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 8
  %hw_streamingparams.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %8 = load i32, ptr @saa_debug, align 4
  %and.i = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end4.do.end4.i_crit_edge, label %do.end.i

do.end4.do.end4.i_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i

do.end.i:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %7, i32 0, i32 16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i, ptr noundef nonnull @.str.75) #13
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %do.end4.do.end4.i_crit_edge
  %samplesperline.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %samplesperline.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1440, ptr %samplesperline.i, align 4
  %numberoflines.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %numberoflines.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 18, ptr %numberoflines.i, align 4
  %pitch.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %pitch.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1440, ptr %pitch.i, align 4
  %numpagetables.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %numpagetables.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %numpagetables.i, align 4
  %13 = ptrtoint ptr %hw_streamingparams.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %hw_streamingparams.i, align 4
  %linethreshold.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %linethreshold.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %linethreshold.i, align 4
  %pagetablelistvirt.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 5
  %15 = ptrtoint ptr %pagetablelistvirt.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %pagetablelistvirt.i, align 4
  %pagetablelistphys.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 6
  %16 = ptrtoint ptr %pagetablelistphys.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pagetablelistphys.i, align 4
  %buffercount.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 4, i32 11
  %17 = ptrtoint ptr %buffercount.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buffercount.i, align 1
  %conv.i = zext i8 %18 to i32
  %numpagetableentries.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %numpagetableentries.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv.i, ptr %numpagetableentries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp8.not.i = icmp eq i8 %18, 0
  br i1 %cmp8.not.i, label %do.end4.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.end4.i.for.end.i_crit_edge:                    ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.end4.i
  %dmaqueue_lock.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 13
  %dmaqueue.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 14
  %prev.i.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 14, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %numberoflines.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %numberoflines.i, align 4
  %22 = ptrtoint ptr %pitch.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pitch.i, align 4
  %mul15.i = mul i32 %23, %21
  %call16.i = tail call ptr @saa7164_buffer_alloc(ptr noundef %port, i32 noundef %mul15.i) #10
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %do.end21.i, label %if.else.i

do.end21.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef -19) #13
  br label %saa7164_vbi_buffers_alloc.exit

if.else.i:                                        ; preds = %for.body.i
  tail call void @mutex_lock_nested(ptr noundef %dmaqueue_lock.i, i32 noundef 0) #10
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call16.i, ptr noundef %25, ptr noundef %dmaqueue.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.list_add_tail.exit.i_crit_edge

if.else.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call16.i, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %call16.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dmaqueue.i, ptr %call16.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call16.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call16.i, ptr %25, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.else.i.list_add_tail.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %dmaqueue_lock.i) #10
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %30 = ptrtoint ptr %buffercount.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %buffercount.i, align 1
  %conv11.i = zext i8 %31 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv11.i
  br i1 %cmp.i, label %list_add_tail.exit.i.for.body.i_crit_edge, label %list_add_tail.exit.i.for.end.i_crit_edge

list_add_tail.exit.i.for.end.i_crit_edge:         ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %list_add_tail.exit.i.for.end.i_crit_edge, %do.end4.i.for.end.i_crit_edge
  %32 = ptrtoint ptr %numberoflines.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %numberoflines.i, align 4
  %34 = ptrtoint ptr %pitch.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pitch.i, align 4
  %mul29.i = mul i32 %35, %33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vbi_buffers to i32))
  %36 = load i32, ptr @vbi_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %36)
  %cmp30.i = icmp ult i32 %36, 16
  br i1 %cmp30.i, label %for.end.i.for.body41.lr.ph.sink.split.i_crit_edge, label %if.end33.i

for.end.i.for.body41.lr.ph.sink.split.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body41.lr.ph.sink.split.i

if.end33.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %36)
  %cmp34.i = icmp ugt i32 %36, 512
  br i1 %cmp34.i, label %if.end33.i.for.body41.lr.ph.sink.split.i_crit_edge, label %if.end33.i.for.body41.lr.ph.i_crit_edge

if.end33.i.for.body41.lr.ph.i_crit_edge:          ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body41.lr.ph.i

if.end33.i.for.body41.lr.ph.sink.split.i_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body41.lr.ph.sink.split.i

for.body41.lr.ph.sink.split.i:                    ; preds = %if.end33.i.for.body41.lr.ph.sink.split.i_crit_edge, %for.end.i.for.body41.lr.ph.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 16, %for.end.i.for.body41.lr.ph.sink.split.i_crit_edge ], [ 512, %if.end33.i.for.body41.lr.ph.sink.split.i_crit_edge ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @vbi_buffers to i32))
  store i32 %.sink.i, ptr @vbi_buffers, align 4
  br label %for.body41.lr.ph.i

for.body41.lr.ph.i:                               ; preds = %for.body41.lr.ph.sink.split.i, %if.end33.i.for.body41.lr.ph.i_crit_edge
  %dmaqueue_lock45.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 13
  %list_buf_free.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 61
  %prev.i1.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 61, i32 0, i32 1
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.inc50.i.for.body41.i_crit_edge, %for.body41.lr.ph.i
  %i.111.i = phi i32 [ 0, %for.body41.lr.ph.i ], [ %inc51.i, %for.inc50.i.for.body41.i_crit_edge ]
  %call42.i = tail call ptr @saa7164_buffer_alloc_user(ptr noundef %7, i32 noundef %mul29.i) #10
  %tobool43.not.i = icmp eq ptr %call42.i, null
  br i1 %tobool43.not.i, label %for.body41.i.for.inc50.i_crit_edge, label %if.then44.i

for.body41.i.for.inc50.i_crit_edge:               ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc50.i

if.then44.i:                                      ; preds = %for.body41.i
  tail call void @mutex_lock_nested(ptr noundef %dmaqueue_lock45.i, i32 noundef 0) #10
  %37 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i1.i, align 4
  %call.i.i2.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call42.i, ptr noundef %38, ptr noundef %list_buf_free.i) #10
  br i1 %call.i.i2.i, label %if.end.i.i4.i, label %if.then44.i.list_add_tail.exit5.i_crit_edge

if.then44.i.list_add_tail.exit5.i_crit_edge:      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit5.i

if.end.i.i4.i:                                    ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call42.i, ptr %prev.i1.i, align 4
  %40 = ptrtoint ptr %call42.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %list_buf_free.i, ptr %call42.i, align 4
  %prev3.i.i3.i = getelementptr inbounds %struct.list_head, ptr %call42.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i3.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %call42.i, ptr %38, align 4
  br label %list_add_tail.exit5.i

list_add_tail.exit5.i:                            ; preds = %if.end.i.i4.i, %if.then44.i.list_add_tail.exit5.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %dmaqueue_lock45.i) #10
  br label %for.inc50.i

for.inc50.i:                                      ; preds = %list_add_tail.exit5.i, %for.body41.i.for.inc50.i_crit_edge
  %inc51.i = add nuw i32 %i.111.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vbi_buffers to i32))
  %43 = load i32, ptr @vbi_buffers, align 4
  %cmp39.i = icmp ult i32 %inc51.i, %43
  br i1 %cmp39.i, label %for.inc50.i.for.body41.i_crit_edge, label %for.inc50.i.saa7164_vbi_buffers_alloc.exit_crit_edge

for.inc50.i.saa7164_vbi_buffers_alloc.exit_crit_edge: ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %saa7164_vbi_buffers_alloc.exit

for.inc50.i.for.body41.i_crit_edge:               ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body41.i

saa7164_vbi_buffers_alloc.exit:                   ; preds = %for.inc50.i.saa7164_vbi_buffers_alloc.exit_crit_edge, %do.end21.i
  %call6 = tail call i32 @saa7164_buffer_cfg_port(ptr noundef %port) #10
  %call7 = tail call i32 @saa7164_api_set_vbi_format(ptr noundef %port) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %saa7164_vbi_buffers_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.47) #13
  br label %out

if.end14:                                         ; preds = %saa7164_vbi_buffers_alloc.exit
  %call15 = tail call i32 @saa7164_api_transition_port(ptr noundef %port, i8 noundef zeroext 1) #10
  %44 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %call15, label %do.end21 [
    i32 0, label %if.end14.do.body24_crit_edge
    i32 38, label %if.end14.do.body24_crit_edge30
  ]

if.end14.do.body24_crit_edge30:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

if.end14.do.body24_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body24

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.47, i32 noundef %call15) #13
  br label %out

do.body24:                                        ; preds = %if.end14.do.body24_crit_edge, %if.end14.do.body24_crit_edge30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %45 = load i32, ptr @saa_debug, align 4
  %and25 = and i32 %45, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.if.end38_crit_edge, label %do.end30

do.body24.if.end38_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.end30:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  %name32 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name32, ptr noundef nonnull @.str.47) #13
  br label %if.end38

if.end38:                                         ; preds = %do.end30, %do.body24.if.end38_crit_edge
  %call39 = tail call i32 @saa7164_api_transition_port(ptr noundef %port, i8 noundef zeroext 2) #10
  %46 = zext i32 %call39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %call39, label %do.end46 [
    i32 0, label %if.end38.do.body59_crit_edge
    i32 38, label %if.end38.do.body59_crit_edge31
  ]

if.end38.do.body59_crit_edge31:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body59

if.end38.do.body59_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body59

do.end46:                                         ; preds = %if.end38
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.47, i32 noundef %call39) #13
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %port, align 8
  %call.i1 = tail call i32 @saa7164_api_transition_port(ptr noundef %port, i8 noundef zeroext 0) #10
  %49 = zext i32 %call.i1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %call.i1, label %do.end54 [
    i32 0, label %do.end46.do.body4.i_crit_edge
    i32 38, label %do.end46.do.body4.i_crit_edge32
  ]

do.end46.do.body4.i_crit_edge32:                  ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

do.end46.do.body4.i_crit_edge:                    ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.end46.do.body4.i_crit_edge, %do.end46.do.body4.i_crit_edge32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %50 = load i32, ptr @saa_debug, align 4
  %and.i3 = and i32 %50, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3)
  %tobool.not.i4 = icmp eq i32 %and.i3, 0
  br i1 %tobool.not.i4, label %do.body4.i.out_crit_edge, label %do.end8.i

do.body4.i.out_crit_edge:                         ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end8.i:                                        ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i5 = getelementptr inbounds %struct.saa7164_dev, ptr %48, i32 0, i32 16
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name.i5, ptr noundef nonnull @.str.80) #13
  br label %out

do.end54:                                         ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef %call.i1) #13
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.47, i32 noundef -5) #13
  br label %out

do.body59:                                        ; preds = %if.end38.do.body59_crit_edge, %if.end38.do.body59_crit_edge31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %51 = load i32, ptr @saa_debug, align 4
  %and60 = and i32 %51, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body59.if.end73_crit_edge, label %do.end65

do.body59.if.end73_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

do.end65:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  %name67 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name67, ptr noundef nonnull @.str.47) #13
  br label %if.end73

if.end73:                                         ; preds = %do.end65, %do.body59.if.end73_crit_edge
  %call74 = tail call i32 @saa7164_api_transition_port(ptr noundef %port, i8 noundef zeroext 3) #10
  %52 = zext i32 %call74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %call74, label %do.end81 [
    i32 0, label %if.end73.do.body95_crit_edge
    i32 38, label %if.end73.do.body95_crit_edge33
  ]

if.end73.do.body95_crit_edge33:                   ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body95

if.end73.do.body95_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body95

do.end81:                                         ; preds = %if.end73
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.47, i32 noundef %call74) #13
  %53 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %port, align 8
  %call.i6 = tail call i32 @saa7164_api_transition_port(ptr noundef %port, i8 noundef zeroext 1) #10
  %55 = zext i32 %call.i6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %call.i6, label %do.end.i8 [
    i32 0, label %do.end81.do.body4.i11_crit_edge
    i32 38, label %do.end81.do.body4.i11_crit_edge34
  ]

do.end81.do.body4.i11_crit_edge34:                ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i11

do.end81.do.body4.i11_crit_edge:                  ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i11

do.end.i8:                                        ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i32 noundef %call.i6) #13
  br label %saa7164_vbi_acquire_port.exit

do.body4.i11:                                     ; preds = %do.end81.do.body4.i11_crit_edge, %do.end81.do.body4.i11_crit_edge34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %56 = load i32, ptr @saa_debug, align 4
  %and.i9 = and i32 %56, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i9)
  %tobool.not.i10 = icmp eq i32 %and.i9, 0
  br i1 %tobool.not.i10, label %do.body4.i11.saa7164_vbi_acquire_port.exit_crit_edge, label %do.end8.i14

do.body4.i11.saa7164_vbi_acquire_port.exit_crit_edge: ; preds = %do.body4.i11
  call void @__sanitizer_cov_trace_pc() #12
  br label %saa7164_vbi_acquire_port.exit

do.end8.i14:                                      ; preds = %do.body4.i11
  call void @__sanitizer_cov_trace_pc() #12
  %name.i12 = getelementptr inbounds %struct.saa7164_dev, ptr %54, i32 0, i32 16
  %call10.i13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name.i12, ptr noundef nonnull @.str.85) #13
  br label %saa7164_vbi_acquire_port.exit

saa7164_vbi_acquire_port.exit:                    ; preds = %do.end8.i14, %do.body4.i11.saa7164_vbi_acquire_port.exit_crit_edge, %do.end.i8
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %port, align 8
  %call.i15 = tail call i32 @saa7164_api_transition_port(ptr noundef %port, i8 noundef zeroext 0) #10
  %59 = zext i32 %call.i15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %call.i15, label %do.end90 [
    i32 0, label %saa7164_vbi_acquire_port.exit.do.body4.i20_crit_edge
    i32 38, label %saa7164_vbi_acquire_port.exit.do.body4.i20_crit_edge35
  ]

saa7164_vbi_acquire_port.exit.do.body4.i20_crit_edge35: ; preds = %saa7164_vbi_acquire_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i20

saa7164_vbi_acquire_port.exit.do.body4.i20_crit_edge: ; preds = %saa7164_vbi_acquire_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i20

do.body4.i20:                                     ; preds = %saa7164_vbi_acquire_port.exit.do.body4.i20_crit_edge, %saa7164_vbi_acquire_port.exit.do.body4.i20_crit_edge35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %60 = load i32, ptr @saa_debug, align 4
  %and.i18 = and i32 %60, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool.not.i19 = icmp eq i32 %and.i18, 0
  br i1 %tobool.not.i19, label %do.body4.i20.out_crit_edge, label %do.end8.i23

do.body4.i20.out_crit_edge:                       ; preds = %do.body4.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end8.i23:                                      ; preds = %do.body4.i20
  call void @__sanitizer_cov_trace_pc() #12
  %name.i21 = getelementptr inbounds %struct.saa7164_dev, ptr %58, i32 0, i32 16
  %call10.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name.i21, ptr noundef nonnull @.str.80) #13
  br label %out

do.end90:                                         ; preds = %saa7164_vbi_acquire_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef %call.i15) #13
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.47, i32 noundef -5) #13
  br label %out

do.body95:                                        ; preds = %if.end73.do.body95_crit_edge, %if.end73.do.body95_crit_edge33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %61 = load i32, ptr @saa_debug, align 4
  %and96 = and i32 %61, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %do.body95.out_crit_edge, label %do.end101

do.body95.out_crit_edge:                          ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end101:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #12
  %name103 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name103, ptr noundef nonnull @.str.47) #13
  br label %out

out:                                              ; preds = %do.end101, %do.body95.out_crit_edge, %do.end90, %do.end8.i23, %do.body4.i20.out_crit_edge, %do.end54, %do.end8.i, %do.body4.i.out_crit_edge, %do.end21, %do.end11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @saa7164_vbi_next_buf(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %dmaqueue_lock = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %dmaqueue_lock, i32 noundef 0) #10
  %list_buf_used = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 60
  %2 = ptrtoint ptr %list_buf_used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %list_buf_used, align 4
  %cmp.i.not = icmp eq ptr %3, %list_buf_used
  br i1 %cmp.i.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @crc_checking to i32))
  %4 = load i32, ptr @crc_checking, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.then.if.end13_crit_edge, label %if.then5

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then5:                                         ; preds = %if.then
  %data = getelementptr inbounds %struct.saa7164_user_buffer, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %actual_size = getelementptr inbounds %struct.saa7164_user_buffer, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %actual_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_size, align 4
  %call6 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %6, i32 noundef %8) #16
  %crc7 = getelementptr inbounds %struct.saa7164_user_buffer, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %crc7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %crc7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %10)
  %cmp.not = icmp eq i32 %call6, %10
  br i1 %cmp.not, label %if.then5.if.end13_crit_edge, label %do.end

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, ptr noundef %3, i32 noundef %10, i32 noundef %call6) #13
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then5.if.end13_crit_edge, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %ubuf.0 = phi ptr [ null, %entry.if.end13_crit_edge ], [ %3, %do.end ], [ %3, %if.then5.if.end13_crit_edge ], [ %3, %if.then.if.end13_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %dmaqueue_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %11 = load i32, ptr @saa_debug, align 4
  %and = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end13.do.end25_crit_edge, label %do.end20

if.end13.do.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %name, ptr noundef nonnull @.str.90, ptr noundef %ubuf.0) #13
  br label %do.end25

do.end25:                                         ; preds = %do.end20, %if.end13.do.end25_crit_edge
  ret ptr %ubuf.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_initialize_dif(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_buffer_cfg_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_set_vbi_format(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_transition_port(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @saa7164_buffer_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @saa7164_buffer_alloc_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_buffer_dealloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7164_buffer_dealloc_user(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port1 = getelementptr inbounds %struct.saa7164_vbi_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %5, i32 0, i32 16
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef %name, i32 noundef 16) #10
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %board = getelementptr inbounds %struct.saa7164_dev, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %board, align 8
  %arrayidx = getelementptr [0 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call6 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %9, i32 noundef 32) #10
  %pci = getelementptr inbounds %struct.saa7164_dev, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bus_info, ptr noundef nonnull @.str.121, ptr noundef %retval.0.i.i)
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %16 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -2130640879, ptr %capabilities, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @saa7164_vbi_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %samples_per_line = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %samples_per_line to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1440, ptr %samples_per_line, align 4
  %1 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 27000000, ptr %fmt, align 4
  %sample_format = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %sample_format to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1497715271, ptr %sample_format, align 4
  %offset = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %offset, align 4
  %flags = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %flags, align 4
  %start = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %start, align 4
  %count = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 18, ptr %count, align 4
  %arrayidx10 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 274, ptr %arrayidx10, align 4
  %arrayidx13 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 18, ptr %arrayidx13, align 4
  %reserved = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %reserved to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %reserved, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_std(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.saa7164_encoder_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %enc_port = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %enc_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_port, align 8
  %call = tail call i32 @saa7164_g_std(ptr noundef %5, ptr noundef %id) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_std(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, i64 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.saa7164_vbi_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %enc_port = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %enc_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_port, align 8
  %call = tail call i32 @saa7164_s_std(ptr noundef %5, i64 noundef %id) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_enum_input(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_input(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.saa7164_vbi_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %enc_port = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %enc_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_port, align 8
  %call = tail call i32 @saa7164_g_input(ptr noundef %5, ptr noundef %i) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_input(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.saa7164_vbi_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %enc_port = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %enc_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_port, align 8
  %call = tail call i32 @saa7164_s_input(ptr noundef %5, i32 noundef %i) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_g_tuner(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_s_tuner(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.saa7164_vbi_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %enc_port = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %enc_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_port, align 8
  %call = tail call i32 @saa7164_g_frequency(ptr noundef %5, ptr noundef %f) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.saa7164_vbi_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %enc_port = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %enc_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_port, align 8
  %call = tail call i32 @saa7164_s_frequency(ptr noundef %5, ptr noundef %f) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %10 = load i32, ptr @saa_debug, align 4
  %and.i.i = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.do.end4.i.i_crit_edge, label %do.end.i.i

if.then.do.end4.i.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i.i

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %name.i.i = getelementptr inbounds %struct.saa7164_dev, ptr %9, i32 0, i32 16
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i.i, ptr noundef nonnull @.str.43) #13
  br label %do.end4.i.i

do.end4.i.i:                                      ; preds = %do.end.i.i, %if.then.do.end4.i.i_crit_edge
  %enc_port.i.i = getelementptr inbounds %struct.saa7164_port, ptr %7, i32 0, i32 65
  %11 = ptrtoint ptr %enc_port.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %enc_port.i.i, align 8
  %width.i.i = getelementptr inbounds %struct.saa7164_port, ptr %12, i32 0, i32 38
  %13 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width.i.i, align 4
  %width5.i.i = getelementptr inbounds %struct.saa7164_port, ptr %7, i32 0, i32 64, i32 2
  %15 = ptrtoint ptr %width5.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %width5.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.saa7164_port, ptr %12, i32 0, i32 37
  %16 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height.i.i, align 8
  %height8.i.i = getelementptr inbounds %struct.saa7164_port, ptr %7, i32 0, i32 64, i32 1
  %18 = ptrtoint ptr %height8.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %height8.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.saa7164_port, ptr %12, i32 0, i32 34, i32 1
  %19 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %id.i.i, align 8
  %and10.i.i = and i64 %20, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10.i.i)
  %cmp.i.i = icmp ne i64 %and10.i.i, 0
  %conv.i.i = zext i1 %cmp.i.i to i32
  %is_50hz.i.i = getelementptr inbounds %struct.saa7164_port, ptr %7, i32 0, i32 64, i32 3
  %21 = ptrtoint ptr %is_50hz.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i.i, ptr %is_50hz.i.i, align 8
  %call12.i.i = tail call i32 @saa7164_api_initialize_dif(ptr noundef %7) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %22 = load i32, ptr @saa_debug, align 4
  %and14.i.i = and i32 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool15.not.i.i, label %do.end4.i.i.if.end_crit_edge, label %do.end19.i.i

do.end4.i.i.if.end_crit_edge:                     ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end19.i.i:                                     ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %name21.i.i = getelementptr inbounds %struct.saa7164_dev, ptr %9, i32 0, i32 16
  %call23.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name21.i.i, ptr noundef nonnull @.str.43) #13
  br label %if.end

if.end:                                           ; preds = %do.end19.i.i, %do.end4.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_g_std(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_s_std(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_g_input(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_s_input(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_g_frequency(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_s_frequency(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !160, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !187, !189, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209}
!llvm.module.flags = !{!211, !212, !213, !214, !215, !216, !217, !218}
!llvm.ident = !{!219}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 704, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @saa7164_vbi_register._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @saa7164_vbi_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 710, i32 3}
!8 = !{ptr @saa7164_vbi_register._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @saa7164_vbi_register._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 720, i32 36}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 723, i32 3}
!14 = !{ptr @saa7164_vbi_register._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @saa7164_vbi_register._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 734, i32 3}
!18 = !{ptr @saa7164_vbi_register._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @saa7164_vbi_register._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 742, i32 2}
!22 = !{ptr @saa7164_vbi_register._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @saa7164_vbi_register._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 756, i32 2}
!26 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @saa7164_vbi_unregister._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @saa7164_vbi_unregister._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 684, i32 2}
!31 = !{ptr @saa7164_vbi_alloc._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @saa7164_vbi_alloc._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 691, i32 41}
!35 = !{ptr @saa7164_vbi_template, !36, !"saa7164_vbi_template", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 665, i32 28}
!37 = !{ptr @vbi_fops, !38, !"vbi_fops", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 640, i32 42}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 512, i32 3}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @fops_read._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @fops_read._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 520, i32 5}
!46 = !{ptr @fops_read._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @fops_read._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 533, i32 5}
!50 = !{ptr @fops_read._entry.25, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @fops_read._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 549, i32 3}
!54 = !{ptr @fops_read._entry.28, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @fops_read._entry_ptr.30, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 554, i32 4}
!58 = !{ptr @fops_read._entry.31, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @fops_read._entry_ptr.33, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 556, i32 5}
!62 = !{ptr @fops_read._entry.34, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @fops_read._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 568, i32 4}
!66 = !{ptr @fops_read._entry.37, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @fops_read._entry_ptr.39, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 593, i32 3}
!70 = !{ptr @fops_read._entry.40, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @fops_read._entry_ptr.42, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 16, i32 2}
!74 = !{ptr @saa7164_vbi_configure._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @saa7164_vbi_configure._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 25, i32 2}
!78 = !{ptr @saa7164_vbi_configure._entry.44, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @saa7164_vbi_configure._entry_ptr.46, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.47, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 319, i32 2}
!82 = !{ptr @saa7164_vbi_start_streaming._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @saa7164_vbi_start_streaming._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 340, i32 3}
!86 = !{ptr @saa7164_vbi_start_streaming._entry.48, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @saa7164_vbi_start_streaming._entry_ptr.50, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.52, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 348, i32 3}
!90 = !{ptr @saa7164_vbi_start_streaming._entry.51, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @saa7164_vbi_start_streaming._entry_ptr.53, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.55, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 354, i32 3}
!94 = !{ptr @saa7164_vbi_start_streaming._entry.54, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @saa7164_vbi_start_streaming._entry_ptr.56, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.58, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 359, i32 3}
!98 = !{ptr @saa7164_vbi_start_streaming._entry.57, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @saa7164_vbi_start_streaming._entry_ptr.59, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.61, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 365, i32 4}
!102 = !{ptr @saa7164_vbi_start_streaming._entry.60, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @saa7164_vbi_start_streaming._entry_ptr.62, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.64, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 372, i32 3}
!106 = !{ptr @saa7164_vbi_start_streaming._entry.63, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @saa7164_vbi_start_streaming._entry_ptr.65, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.67, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 377, i32 3}
!110 = !{ptr @saa7164_vbi_start_streaming._entry.66, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @saa7164_vbi_start_streaming._entry_ptr.68, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.70, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 384, i32 4}
!114 = !{ptr @saa7164_vbi_start_streaming._entry.69, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @saa7164_vbi_start_streaming._entry_ptr.71, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.73, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 390, i32 3}
!118 = !{ptr @saa7164_vbi_start_streaming._entry.72, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @saa7164_vbi_start_streaming._entry_ptr.74, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.75, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 75, i32 2}
!122 = !{ptr @saa7164_vbi_buffers_alloc._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @saa7164_vbi_buffers_alloc._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.77, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 99, i32 4}
!126 = !{ptr @saa7164_vbi_buffers_alloc._entry.76, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @saa7164_vbi_buffers_alloc._entry_ptr.78, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.79, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 218, i32 3}
!130 = !{ptr @.str.80, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @saa7164_vbi_stop_port._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @saa7164_vbi_stop_port._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.82, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 222, i32 3}
!135 = !{ptr @saa7164_vbi_stop_port._entry.81, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @saa7164_vbi_stop_port._entry_ptr.83, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.84, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 236, i32 3}
!139 = !{ptr @.str.85, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @saa7164_vbi_acquire_port._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @saa7164_vbi_acquire_port._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.87, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 240, i32 3}
!144 = !{ptr @saa7164_vbi_acquire_port._entry.86, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @saa7164_vbi_acquire_port._entry_ptr.88, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.89, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 478, i32 5}
!148 = !{ptr @.str.90, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @saa7164_vbi_next_buf._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @saa7164_vbi_next_buf._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.92, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 487, i32 2}
!153 = !{ptr @saa7164_vbi_next_buf._entry.91, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @saa7164_vbi_next_buf._entry_ptr.93, !152, !"_entry_ptr", i1 false, i1 false}
!155 = distinct !{null, !156, !"__already_done", i1 false, i1 false}
!156 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!157 = !{ptr @.str.94, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.95, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!160 = !{ptr @.str.96, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!162 = !{ptr @.str.97, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 425, i32 2}
!164 = !{ptr @fops_open._entry, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @fops_open._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.98, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 446, i32 2}
!168 = !{ptr @fops_release._entry, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @fops_release._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.99, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 279, i32 2}
!172 = !{ptr @saa7164_vbi_stop_streaming._entry, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @saa7164_vbi_stop_streaming._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.101, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 285, i32 2}
!176 = !{ptr @saa7164_vbi_stop_streaming._entry.100, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @saa7164_vbi_stop_streaming._entry_ptr.102, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.104, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 309, i32 2}
!180 = !{ptr @saa7164_vbi_stop_streaming._entry.103, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @saa7164_vbi_stop_streaming._entry_ptr.105, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.106, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 254, i32 3}
!184 = !{ptr @.str.107, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @saa7164_vbi_pause_port._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @saa7164_vbi_pause_port._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @saa7164_vbi_pause_port._entry.108, !188, !"_entry", i1 false, i1 false}
!188 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 258, i32 3}
!189 = !{ptr @saa7164_vbi_pause_port._entry_ptr.109, !188, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.110, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 38, i32 2}
!192 = !{ptr @.str.111, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @saa7164_vbi_buffers_dealloc._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @saa7164_vbi_buffers_dealloc._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.113, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 45, i32 2}
!197 = !{ptr @saa7164_vbi_buffers_dealloc._entry.112, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @saa7164_vbi_buffers_dealloc._entry_ptr.114, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.116, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 52, i32 2}
!201 = !{ptr @saa7164_vbi_buffers_dealloc._entry.115, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @saa7164_vbi_buffers_dealloc._entry_ptr.117, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.119, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 60, i32 2}
!205 = !{ptr @saa7164_vbi_buffers_dealloc._entry.118, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @saa7164_vbi_buffers_dealloc._entry_ptr.120, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @vbi_ioctl_ops, !208, !"vbi_ioctl_ops", i1 false, i1 false}
!208 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 649, i32 36}
!209 = !{ptr @.str.121, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/pci/saa7164/saa7164-vbi.c", i32 204, i32 25}
!211 = !{i32 1, !"wchar_size", i32 2}
!212 = !{i32 1, !"min_enum_size", i32 4}
!213 = !{i32 8, !"branch-target-enforcement", i32 0}
!214 = !{i32 8, !"sign-return-address", i32 0}
!215 = !{i32 8, !"sign-return-address-all", i32 0}
!216 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!217 = !{i32 7, !"uwtable", i32 1}
!218 = !{i32 7, !"frame-pointer", i32 2}
!219 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!220 = !{!"branch_weights", i32 2000, i32 1}
!221 = !{i64 2158548089, i64 2158548593, i64 2158548126, i64 2158548182, i64 2158548216, i64 2158548240, i64 2158548281, i64 2158548302, i64 2158548330, i64 2158548364}
!222 = !{i64 2158557501, i64 2158558005, i64 2158557538, i64 2158557594, i64 2158557628, i64 2158557652, i64 2158557693, i64 2158557714, i64 2158557742, i64 2158557776}
!223 = !{i64 2148799055}
!224 = !{i64 1182721, i64 1182745, i64 1182766, i64 1182783, i64 1182800}
!225 = !{i64 2148799281}
!226 = !{i64 2148782643}
!227 = !{i64 2148697928, i64 2148697960, i64 2148697989, i64 2148698023, i64 2148698054, i64 2148698077}
!228 = !{i64 2148782872}
!229 = !{i64 2153912665, i64 2153912690}
!230 = !{i64 2148785684}
!231 = !{i64 2148700393, i64 2148700425, i64 2148700454, i64 2148700488, i64 2148700519, i64 2148700542}
!232 = !{i64 2148785913}
