; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7164/saa7164-encoder.c_pt.bc'
source_filename = "../drivers/media/pci/saa7164/saa7164-encoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.saa7164_tvnorm = type { ptr, i64 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.saa7164_encoder_fh = type { %struct.v4l2_fh, ptr, %struct.atomic_t }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.108], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.108 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.109 }>
%union.anon.109 = type { i64 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.133, %union.anon.134, i32, ptr, i32, %struct.anon.135, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.133 = type { i64 }
%union.anon.134 = type { ptr }
%struct.anon.135 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.saa7164_user_buffer = type { %struct.list_head, ptr, i32, i32, i32 }
%struct.poll_table_struct = type { ptr, i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.167, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.167 = type { ptr }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.142 }
%union.anon.142 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.144, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.144 = type { i8 }

@saa_debug = external dso_local local_unnamed_addr global i32, align 4
@saa7164_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: %s(id=0x%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"saa7164_s_std\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/pci/saa7164/saa7164-encoder.c\00", [52 x i8] zeroinitializer }, align 32
@saa7164_s_std._entry_ptr = internal global ptr @saa7164_s_std._entry, section ".printk_index", align 4
@saa7164_tvnorms = internal constant { [2 x %struct.saa7164_tvnorm], [32 x i8] } { [2 x %struct.saa7164_tvnorm] [%struct.saa7164_tvnorm { ptr @.str.44, i64 4096 }, %struct.saa7164_tvnorm { ptr @.str.45, i64 8192 }], [32 x i8] zeroinitializer }, align 32
@saa7164_s_std._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: %s(id=0x%x) OK\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7164_s_std._entry_ptr.5 = internal global ptr @saa7164_s_std._entry.3, section ".printk_index", align 4
@saa7164_enum_input.inputs = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tuner\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"composite\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"svideo\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aux\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"composite 2\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"svideo 2\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"aux 2\00", [26 x i8] zeroinitializer }, align 32
@saa7164_g_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %s() input=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa7164_g_input\00", [16 x i8] zeroinitializer }, align 32
@saa7164_g_input._entry_ptr = internal global ptr @saa7164_g_input._entry, section ".printk_index", align 4
@saa7164_s_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.15, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa7164_s_input\00", [16 x i8] zeroinitializer }, align 32
@saa7164_s_input._entry_ptr = internal global ptr @saa7164_s_input._entry, section ".printk_index", align 4
@saa7164_g_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: VIDIOC_G_TUNER: tuner type %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa7164_g_tuner\00", [16 x i8] zeroinitializer }, align 32
@saa7164_g_tuner._entry_ptr = internal global ptr @saa7164_g_tuner._entry, section ".printk_index", align 4
@saa7164_s_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s() frequency=%d tuner=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saa7164_s_frequency\00", [44 x i8] zeroinitializer }, align 32
@saa7164_s_frequency._entry_ptr = internal global ptr @saa7164_s_frequency._entry, section ".printk_index", align 4
@saa7164_s_frequency._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s() No analog tuner, aborting\0A\00", [62 x i8] zeroinitializer }, align 32
@saa7164_s_frequency._entry_ptr.22 = internal global ptr @saa7164_s_frequency._entry.20, section ".printk_index", align 4
@saa7164_encoder_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s: %s()\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"saa7164_encoder_register\00", [39 x i8] zeroinitializer }, align 32
@saa7164_encoder_register._entry_ptr = internal global ptr @saa7164_encoder_register._entry, section ".printk_index", align 4
@saa7164_encoder_register._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 1009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s() failed (errno = %d), NO PCI configuration\0A\00", [46 x i8] zeroinitializer }, align 32
@saa7164_encoder_register._entry_ptr.27 = internal global ptr @saa7164_encoder_register._entry.25, section ".printk_index", align 4
@saa7164_encoder_register._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"saa7164_encoder:1024:(hdl)->_lock\00", [62 x i8] zeroinitializer }, align 32
@saa7164_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @saa7164_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@saa7164_mpeg_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @mpeg_fops, i32 16842753, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"saa7164\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 12288, ptr null, ptr @mpeg_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpeg\00", [27 x i8] zeroinitializer }, align 32
@saa7164_encoder_register._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.24, ptr @.str.2, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: can't allocate mpeg device\0A\00", [62 x i8] zeroinitializer }, align 32
@saa7164_encoder_register._entry_ptr.32 = internal global ptr @saa7164_encoder_register._entry.30, section ".printk_index", align 4
@saa7164_encoder_register._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.24, ptr @.str.2, i32 1093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: can't register mpeg device\0A\00", [62 x i8] zeroinitializer }, align 32
@saa7164_encoder_register._entry_ptr.35 = internal global ptr @saa7164_encoder_register._entry.33, section ".printk_index", align 4
@saa7164_encoder_register._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.24, ptr @.str.2, i32 1098, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: registered device video%d [mpeg]\0A\00", [56 x i8] zeroinitializer }, align 32
@saa7164_encoder_register._entry_ptr.38 = internal global ptr @saa7164_encoder_register._entry.36, section ".printk_index", align 4
@saa7164_encoder_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 1131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: %s(port=%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"saa7164_encoder_unregister\00", [37 x i8] zeroinitializer }, align 32
@saa7164_encoder_unregister._entry_ptr = internal global ptr @saa7164_encoder_unregister._entry, section ".printk_index", align 4
@saa7164_encoder_unregister._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 1145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: %s(port=%d) done\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_encoder_unregister._entry_ptr.43 = internal global ptr @saa7164_encoder_unregister._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NTSC-M\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NTSC-JP\00", [24 x i8] zeroinitializer }, align 32
@saa7164_encoder_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.46, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"saa7164_encoder_configure\00", [38 x i8] zeroinitializer }, align 32
@saa7164_encoder_configure._entry_ptr = internal global ptr @saa7164_encoder_configure._entry, section ".printk_index", align 4
@saa7164_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s() error, ret = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"saa7164_s_ctrl\00", [17 x i8] zeroinitializer }, align 32
@saa7164_s_ctrl._entry_ptr = internal global ptr @saa7164_s_ctrl._entry, section ".printk_index", align 4
@saa7164_s_ctrl._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_s_ctrl._entry_ptr.50 = internal global ptr @saa7164_s_ctrl._entry.49, section ".printk_index", align 4
@saa7164_encoder_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.51, ptr @.str.2, i32 981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"saa7164_encoder_alloc\00", [42 x i8] zeroinitializer }, align 32
@saa7164_encoder_alloc._entry_ptr = internal global ptr @saa7164_encoder_alloc._entry, section ".printk_index", align 4
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s %s (%s)\00", [21 x i8] zeroinitializer }, align 32
@saa7164_boards = external dso_local local_unnamed_addr global [0 x %struct.saa7164_board], align 4
@mpeg_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @fops_read, ptr null, ptr @fops_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @fops_open, ptr @fops_release }, [60 x i8] zeroinitializer }, align 32
@mpeg_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr null, ptr @saa7164_enum_input, ptr @vidioc_g_input, ptr @vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @saa7164_g_tuner, ptr @saa7164_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fops_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013%s() ESPIPE\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fops_read\00", [22 x i8] zeroinitializer }, align 32
@fops_read._entry_ptr = internal global ptr @fops_read._entry, section ".printk_index", align 4
@fops_read._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013%s() EINVAL\0A\00", [17 x i8] zeroinitializer }, align 32
@fops_read._entry_ptr.57 = internal global ptr @fops_read._entry.55, section ".printk_index", align 4
@fops_read._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.2, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013%s() ERESTARTSYS\0A\00", [44 x i8] zeroinitializer }, align 32
@fops_read._entry_ptr.60 = internal global ptr @fops_read._entry.58, section ".printk_index", align 4
@fops_read._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.2, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: %s() count=%d cnt=%d rem=%d buf=%p buf->pos=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@fops_read._entry_ptr.63 = internal global ptr @fops_read._entry.61, section ".printk_index", align 4
@fops_read._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.54, ptr @.str.2, i32 850, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s() copy_to_user failed\0A\00", [36 x i8] zeroinitializer }, align 32
@fops_read._entry_ptr.66 = internal global ptr @fops_read._entry.64, section ".printk_index", align 4
@fops_read._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.54, ptr @.str.2, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013%s() EFAULT\0A\00", [17 x i8] zeroinitializer }, align 32
@fops_read._entry_ptr.69 = internal global ptr @fops_read._entry.67, section ".printk_index", align 4
@fops_read._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.54, ptr @.str.2, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013read() pos > actual, huh?\0A\00", [35 x i8] zeroinitializer }, align 32
@fops_read._entry_ptr.72 = internal global ptr @fops_read._entry.70, section ".printk_index", align 4
@saa7164_encoder_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.73, ptr @.str.2, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"saa7164_encoder_start_streaming\00", [32 x i8] zeroinitializer }, align 32
@saa7164_encoder_start_streaming._entry_ptr = internal global ptr @saa7164_encoder_start_streaming._entry, section ".printk_index", align 4
@saa7164_encoder_start_streaming._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.2, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s() acquire transition failed, res = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@saa7164_encoder_start_streaming._entry_ptr.76 = internal global ptr @saa7164_encoder_start_streaming._entry.74, section ".printk_index", align 4
@saa7164_encoder_start_streaming._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.73, ptr @.str.2, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s() acquire/forced stop transition failed, res = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_encoder_start_streaming._entry_ptr.79 = internal global ptr @saa7164_encoder_start_streaming._entry.77, section ".printk_index", align 4
@saa7164_encoder_start_streaming._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.73, ptr @.str.2, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: %s()   Acquired\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_encoder_start_streaming._entry_ptr.82 = internal global ptr @saa7164_encoder_start_streaming._entry.80, section ".printk_index", align 4
@saa7164_encoder_start_streaming._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.73, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s() pause transition failed, res = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@saa7164_encoder_start_streaming._entry_ptr.85 = internal global ptr @saa7164_encoder_start_streaming._entry.83, section ".printk_index", align 4
@saa7164_encoder_start_streaming._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.73, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s() pause/forced stop transition failed, res = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_encoder_start_streaming._entry_ptr.88 = internal global ptr @saa7164_encoder_start_streaming._entry.86, section ".printk_index", align 4
@saa7164_encoder_start_streaming._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.73, ptr @.str.2, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %s()   Paused\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7164_encoder_start_streaming._entry_ptr.91 = internal global ptr @saa7164_encoder_start_streaming._entry.89, section ".printk_index", align 4
@saa7164_encoder_start_streaming._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.73, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s() run transition failed, result = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@saa7164_encoder_start_streaming._entry_ptr.94 = internal global ptr @saa7164_encoder_start_streaming._entry.92, section ".printk_index", align 4
@saa7164_encoder_start_streaming._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.73, ptr @.str.2, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s() run/forced stop transition failed, res = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7164_encoder_start_streaming._entry_ptr.97 = internal global ptr @saa7164_encoder_start_streaming._entry.95, section ".printk_index", align 4
@saa7164_encoder_start_streaming._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.73, ptr @.str.2, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: %s()   Running\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7164_encoder_start_streaming._entry_ptr.100 = internal global ptr @saa7164_encoder_start_streaming._entry.98, section ".printk_index", align 4
@saa7164_encoder_buffers_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.101, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"saa7164_encoder_buffers_alloc\00", [34 x i8] zeroinitializer }, align 32
@saa7164_encoder_buffers_alloc._entry_ptr = internal global ptr @saa7164_encoder_buffers_alloc._entry, section ".printk_index", align 4
@saa7164_encoder_buffers_alloc._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: %s() type=V4L2_MPEG_STREAM_TYPE_MPEG2_PS\0A\00", [48 x i8] zeroinitializer }, align 32
@saa7164_encoder_buffers_alloc._entry_ptr.104 = internal global ptr @saa7164_encoder_buffers_alloc._entry.102, section ".printk_index", align 4
@saa7164_encoder_buffers_alloc._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: %s() type=V4L2_MPEG_STREAM_TYPE_MPEG2_TS\0A\00", [48 x i8] zeroinitializer }, align 32
@saa7164_encoder_buffers_alloc._entry_ptr.107 = internal global ptr @saa7164_encoder_buffers_alloc._entry.105, section ".printk_index", align 4
@saa7164_encoder_buffers_alloc._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.101, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s() failed (errno = %d), unable to allocate buffer\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_encoder_buffers_alloc._entry_ptr.110 = internal global ptr @saa7164_encoder_buffers_alloc._entry.108, section ".printk_index", align 4
@encoder_buffers = external dso_local local_unnamed_addr global i32, align 4
@crc_checking = external dso_local local_unnamed_addr global i32, align 4
@saa7164_enc_next_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s() ubuf %p crc became invalid, was 0x%x became 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"saa7164_enc_next_buf\00", [43 x i8] zeroinitializer }, align 32
@saa7164_enc_next_buf._entry_ptr = internal global ptr @saa7164_enc_next_buf._entry, section ".printk_index", align 4
@saa7164_enc_next_buf._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.2, i32 783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: %s() returns %p\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_enc_next_buf._entry_ptr.115 = internal global ptr @saa7164_enc_next_buf._entry.113, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.116 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@fops_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.119, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fops_open\00", [22 x i8] zeroinitializer }, align 32
@fops_open._entry_ptr = internal global ptr @fops_open._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fops_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.120, ptr @.str.2, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fops_release\00", [19 x i8] zeroinitializer }, align 32
@fops_release._entry_ptr = internal global ptr @fops_release._entry, section ".printk_index", align 4
@saa7164_encoder_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.121, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"saa7164_encoder_stop_streaming\00", [33 x i8] zeroinitializer }, align 32
@saa7164_encoder_stop_streaming._entry_ptr = internal global ptr @saa7164_encoder_stop_streaming._entry, section ".printk_index", align 4
@saa7164_encoder_stop_streaming._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %s(port=%d) Hardware stopped\0A\00", [60 x i8] zeroinitializer }, align 32
@saa7164_encoder_stop_streaming._entry_ptr.124 = internal global ptr @saa7164_encoder_stop_streaming._entry.122, section ".printk_index", align 4
@saa7164_encoder_stop_streaming._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.121, ptr @.str.2, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s(port=%d) Released\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7164_encoder_stop_streaming._entry_ptr.127 = internal global ptr @saa7164_encoder_stop_streaming._entry.125, section ".printk_index", align 4
@saa7164_encoder_pause_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s() pause transition failed, ret = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"saa7164_encoder_pause_port\00", [37 x i8] zeroinitializer }, align 32
@saa7164_encoder_pause_port._entry_ptr = internal global ptr @saa7164_encoder_pause_port._entry, section ".printk_index", align 4
@saa7164_encoder_pause_port._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.129, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_encoder_pause_port._entry_ptr.131 = internal global ptr @saa7164_encoder_pause_port._entry.130, section ".printk_index", align 4
@saa7164_encoder_acquire_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s() acquire transition failed, ret = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"saa7164_encoder_acquire_port\00", [35 x i8] zeroinitializer }, align 32
@saa7164_encoder_acquire_port._entry_ptr = internal global ptr @saa7164_encoder_acquire_port._entry, section ".printk_index", align 4
@saa7164_encoder_acquire_port._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %s() Acquired\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7164_encoder_acquire_port._entry_ptr.136 = internal global ptr @saa7164_encoder_acquire_port._entry.134, section ".printk_index", align 4
@saa7164_encoder_stop_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.2, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s() stop transition failed, ret = 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"saa7164_encoder_stop_port\00", [38 x i8] zeroinitializer }, align 32
@saa7164_encoder_stop_port._entry_ptr = internal global ptr @saa7164_encoder_stop_port._entry, section ".printk_index", align 4
@saa7164_encoder_stop_port._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.2, i32 538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: %s()    Stopped\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_encoder_stop_port._entry_ptr.141 = internal global ptr @saa7164_encoder_stop_port._entry.139, section ".printk_index", align 4
@saa7164_encoder_buffers_dealloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s(port=%d) dmaqueue\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"saa7164_encoder_buffers_dealloc\00", [32 x i8] zeroinitializer }, align 32
@saa7164_encoder_buffers_dealloc._entry_ptr = internal global ptr @saa7164_encoder_buffers_dealloc._entry, section ".printk_index", align 4
@saa7164_encoder_buffers_dealloc._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: %s(port=%d) used\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_encoder_buffers_dealloc._entry_ptr.146 = internal global ptr @saa7164_encoder_buffers_dealloc._entry.144, section ".printk_index", align 4
@saa7164_encoder_buffers_dealloc._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.143, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: %s(port=%d) free\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_encoder_buffers_dealloc._entry_ptr.149 = internal global ptr @saa7164_encoder_buffers_dealloc._entry.147, section ".printk_index", align 4
@saa7164_encoder_buffers_dealloc._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.143, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_encoder_buffers_dealloc._entry_ptr.151 = internal global ptr @saa7164_encoder_buffers_dealloc._entry.150, section ".printk_index", align 4
@.str.152 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.153 = internal global [16 x i64] [i64 14, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9963781, i64 9963803, i64 10029312, i64 10029421, i64 10029513, i64 10029514, i64 10029515, i64 10029518, i64 10029519, i64 10029520]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 38]
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 198, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [16 x i8] c"saa7164_tvnorms\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 26, i32 30 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 215, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"inputs\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 242, i32 28 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 243, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 243, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 243, i32 25 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 243, i32 35 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 244, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 244, i32 18 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 244, i32 30 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 273, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 289, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 323, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 371, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 393, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1002, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1008, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1024, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"saa7164_ctrl_ops\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 929, i32 35 }
@___asan_gen_.272 = private unnamed_addr constant [22 x i8] c"saa7164_mpeg_template\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 962, i32 28 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1077, i32 37 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1080, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1092, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1097, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1131, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 1145, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 28, i32 16 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 31, i32 16 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 42, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 450, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 459, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 981, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 988, i32 41 }
@___asan_gen_.344 = private unnamed_addr constant [10 x i8] c"mpeg_fops\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 933, i32 42 }
@___asan_gen_.347 = private unnamed_addr constant [15 x i8] c"mpeg_ioctl_ops\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 942, i32 36 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 808, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 816, i32 5 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 829, i32 5 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 845, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 850, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 852, i32 5 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 864, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 635, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 655, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 661, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 667, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 672, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 678, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 685, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 690, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 696, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 702, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 106, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 110, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 121, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 146, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 773, i32 5 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 783, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 230, i32 6 }
@___asan_gen_.498 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 214, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 174, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 720, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 741, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 595, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 601, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 625, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 570, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 574, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 552, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 556, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 534, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 538, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 69, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 76, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 83, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 91, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.600 = private constant [47 x i8] c"../drivers/media/pci/saa7164/saa7164-encoder.c\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.600, i32 493, i32 25 }
@llvm.compiler.used = appending global [202 x ptr] [ptr @fops_open._entry, ptr @fops_open._entry_ptr, ptr @fops_read._entry, ptr @fops_read._entry.55, ptr @fops_read._entry.58, ptr @fops_read._entry.61, ptr @fops_read._entry.64, ptr @fops_read._entry.67, ptr @fops_read._entry.70, ptr @fops_read._entry_ptr, ptr @fops_read._entry_ptr.57, ptr @fops_read._entry_ptr.60, ptr @fops_read._entry_ptr.63, ptr @fops_read._entry_ptr.66, ptr @fops_read._entry_ptr.69, ptr @fops_read._entry_ptr.72, ptr @fops_release._entry, ptr @fops_release._entry_ptr, ptr @saa7164_enc_next_buf._entry, ptr @saa7164_enc_next_buf._entry.113, ptr @saa7164_enc_next_buf._entry_ptr, ptr @saa7164_enc_next_buf._entry_ptr.115, ptr @saa7164_encoder_acquire_port._entry, ptr @saa7164_encoder_acquire_port._entry.134, ptr @saa7164_encoder_acquire_port._entry_ptr, ptr @saa7164_encoder_acquire_port._entry_ptr.136, ptr @saa7164_encoder_alloc._entry, ptr @saa7164_encoder_alloc._entry_ptr, ptr @saa7164_encoder_buffers_alloc._entry, ptr @saa7164_encoder_buffers_alloc._entry.102, ptr @saa7164_encoder_buffers_alloc._entry.105, ptr @saa7164_encoder_buffers_alloc._entry.108, ptr @saa7164_encoder_buffers_alloc._entry_ptr, ptr @saa7164_encoder_buffers_alloc._entry_ptr.104, ptr @saa7164_encoder_buffers_alloc._entry_ptr.107, ptr @saa7164_encoder_buffers_alloc._entry_ptr.110, ptr @saa7164_encoder_buffers_dealloc._entry, ptr @saa7164_encoder_buffers_dealloc._entry.144, ptr @saa7164_encoder_buffers_dealloc._entry.147, ptr @saa7164_encoder_buffers_dealloc._entry.150, ptr @saa7164_encoder_buffers_dealloc._entry_ptr, ptr @saa7164_encoder_buffers_dealloc._entry_ptr.146, ptr @saa7164_encoder_buffers_dealloc._entry_ptr.149, ptr @saa7164_encoder_buffers_dealloc._entry_ptr.151, ptr @saa7164_encoder_configure._entry, ptr @saa7164_encoder_configure._entry_ptr, ptr @saa7164_encoder_pause_port._entry, ptr @saa7164_encoder_pause_port._entry.130, ptr @saa7164_encoder_pause_port._entry_ptr, ptr @saa7164_encoder_pause_port._entry_ptr.131, ptr @saa7164_encoder_register._entry, ptr @saa7164_encoder_register._entry.25, ptr @saa7164_encoder_register._entry.30, ptr @saa7164_encoder_register._entry.33, ptr @saa7164_encoder_register._entry.36, ptr @saa7164_encoder_register._entry_ptr, ptr @saa7164_encoder_register._entry_ptr.27, ptr @saa7164_encoder_register._entry_ptr.32, ptr @saa7164_encoder_register._entry_ptr.35, ptr @saa7164_encoder_register._entry_ptr.38, ptr @saa7164_encoder_start_streaming._entry, ptr @saa7164_encoder_start_streaming._entry.74, ptr @saa7164_encoder_start_streaming._entry.77, ptr @saa7164_encoder_start_streaming._entry.80, ptr @saa7164_encoder_start_streaming._entry.83, ptr @saa7164_encoder_start_streaming._entry.86, ptr @saa7164_encoder_start_streaming._entry.89, ptr @saa7164_encoder_start_streaming._entry.92, ptr @saa7164_encoder_start_streaming._entry.95, ptr @saa7164_encoder_start_streaming._entry.98, ptr @saa7164_encoder_start_streaming._entry_ptr, ptr @saa7164_encoder_start_streaming._entry_ptr.100, ptr @saa7164_encoder_start_streaming._entry_ptr.76, ptr @saa7164_encoder_start_streaming._entry_ptr.79, ptr @saa7164_encoder_start_streaming._entry_ptr.82, ptr @saa7164_encoder_start_streaming._entry_ptr.85, ptr @saa7164_encoder_start_streaming._entry_ptr.88, ptr @saa7164_encoder_start_streaming._entry_ptr.91, ptr @saa7164_encoder_start_streaming._entry_ptr.94, ptr @saa7164_encoder_start_streaming._entry_ptr.97, ptr @saa7164_encoder_stop_port._entry, ptr @saa7164_encoder_stop_port._entry.139, ptr @saa7164_encoder_stop_port._entry_ptr, ptr @saa7164_encoder_stop_port._entry_ptr.141, ptr @saa7164_encoder_stop_streaming._entry, ptr @saa7164_encoder_stop_streaming._entry.122, ptr @saa7164_encoder_stop_streaming._entry.125, ptr @saa7164_encoder_stop_streaming._entry_ptr, ptr @saa7164_encoder_stop_streaming._entry_ptr.124, ptr @saa7164_encoder_stop_streaming._entry_ptr.127, ptr @saa7164_encoder_unregister._entry, ptr @saa7164_encoder_unregister._entry.41, ptr @saa7164_encoder_unregister._entry_ptr, ptr @saa7164_encoder_unregister._entry_ptr.43, ptr @saa7164_g_input._entry, ptr @saa7164_g_input._entry_ptr, ptr @saa7164_g_tuner._entry, ptr @saa7164_g_tuner._entry_ptr, ptr @saa7164_s_ctrl._entry, ptr @saa7164_s_ctrl._entry.49, ptr @saa7164_s_ctrl._entry_ptr, ptr @saa7164_s_ctrl._entry_ptr.50, ptr @saa7164_s_frequency._entry, ptr @saa7164_s_frequency._entry.20, ptr @saa7164_s_frequency._entry_ptr, ptr @saa7164_s_frequency._entry_ptr.22, ptr @saa7164_s_input._entry, ptr @saa7164_s_input._entry_ptr, ptr @saa7164_s_std._entry, ptr @saa7164_s_std._entry.3, ptr @saa7164_s_std._entry_ptr, ptr @saa7164_s_std._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @saa7164_tvnorms, ptr @.str.4, ptr @saa7164_enum_input.inputs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @saa7164_encoder_register._key, ptr @.str.28, ptr @saa7164_ctrl_ops, ptr @saa7164_mpeg_template, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.51, ptr @.str.52, ptr @mpeg_fops, ptr @mpeg_ioctl_ops, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.148, ptr @.str.152], section "llvm.metadata"
@0 = internal global [146 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_tvnorms to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_s_std._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_enum_input.inputs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_g_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_s_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_g_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_s_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_s_frequency._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_register._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_register._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_mpeg_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_register._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_register._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_register._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_unregister._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_s_ctrl._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpeg_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpeg_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_read._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_read._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_read._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_read._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_read._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_read._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_start_streaming._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_start_streaming._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_start_streaming._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_start_streaming._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_start_streaming._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_start_streaming._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_start_streaming._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_start_streaming._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_start_streaming._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_buffers_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_buffers_alloc._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_buffers_alloc._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_buffers_alloc._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_enc_next_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_enc_next_buf._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_stop_streaming._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_stop_streaming._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_pause_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_pause_port._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_acquire_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_acquire_port._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_stop_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_stop_port._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_buffers_dealloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_buffers_dealloc._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_buffers_dealloc._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_encoder_buffers_dealloc._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_s_std(ptr noundef %port, i64 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %2 = load i32, ptr @saa_debug, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %conv = trunc i64 %id to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef %conv) #15
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %and7 = and i64 %id, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %for.inc, label %do.end4.if.end14_crit_edge

do.end4.if.end14_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

for.inc:                                          ; preds = %do.end4
  %and7.1 = and i64 %id, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.1)
  %tobool8.not.1 = icmp eq i64 %and7.1, 0
  br i1 %tobool8.not.1, label %for.inc.cleanup_crit_edge, label %for.inc.if.end14_crit_edge

for.inc.if.end14_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %for.inc.if.end14_crit_edge, %do.end4.if.end14_crit_edge
  %i.047.lcssa = phi i32 [ 0, %do.end4.if.end14_crit_edge ], [ 1, %for.inc.if.end14_crit_edge ]
  %encodernorm = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 34
  %arrayidx15 = getelementptr [2 x %struct.saa7164_tvnorm], ptr @saa7164_tvnorms, i32 0, i32 %i.047.lcssa
  %3 = call ptr @memcpy(ptr %encodernorm, ptr %arrayidx15, i32 16)
  %std = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 36
  %4 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %id, ptr %std, align 8
  %call16 = tail call i32 @saa7164_api_set_audio_std(ptr noundef %port) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %5 = load i32, ptr @saa_debug, align 4
  %and18 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end14.cleanup_crit_edge, label %do.end23

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %name25 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %conv27 = trunc i64 %id to i32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name25, ptr noundef nonnull @.str.1, i32 noundef %conv27) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.end14.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end23 ], [ 0, %if.end14.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_set_audio_std(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @saa7164_g_std(ptr nocapture noundef readonly %port, ptr nocapture noundef writeonly %id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %std = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 36
  %0 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %std, align 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %id, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_enum_input(ptr nocapture readnone %file, ptr nocapture readnone %priv, ptr noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp ugt i32 %1, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %arrayidx = getelementptr [7 x ptr], ptr @saa7164_enum_input.inputs, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef %3, i32 noundef 32) #12
  %4 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp eq i32 %5, 0
  %spec.select = select i1 %cmp3, i32 1, i32 2
  %6 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %6, align 4
  %std = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 5
  %8 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %std, align 8
  %or.1 = or i64 %9, 12288
  store i64 %or.1, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_g_input(ptr noundef %port, ptr nocapture noundef writeonly %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %call = tail call i32 @saa7164_api_get_videomux(ptr noundef %port) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mux_input = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 40
  %2 = ptrtoint ptr %mux_input to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mux_input, align 4
  %conv = zext i8 %3 to i32
  %sub = add nsw i32 %conv, -1
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %5 = load i32, ptr @saa_debug, align 4
  %and = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name, ptr noundef nonnull @.str.14, i32 noundef %sub) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_get_videomux(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_s_input(ptr noundef %port, i32 noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %0 = load i32, ptr @saa_debug, align 4
  %and = and i32 %0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 8
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %2, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name, ptr noundef nonnull @.str.15, i32 noundef %i) #15
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i)
  %cmp = icmp ugt i32 %i, 6
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end6

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #14
  %3 = trunc i32 %i to i8
  %conv = add nuw nsw i8 %3, 1
  %mux_input = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 40
  %4 = ptrtoint ptr %mux_input to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %mux_input, align 4
  %call7 = tail call i32 @saa7164_api_set_videomux(ptr noundef %port) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  %. = select i1 %cmp8.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end4.cleanup_crit_edge ], [ %., %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_set_videomux(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_g_tuner(ptr nocapture noundef readonly %file, ptr nocapture readnone %priv, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port1 = getelementptr inbounds %struct.saa7164_encoder_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.6, i32 noundef 32) #12
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 3
  %8 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 18, ptr %capability, align 4
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 4
  %9 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 704, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 5
  %10 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 15328, ptr %rangehigh, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %11 = load i32, ptr @saa_debug, align 4
  %and = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %name5 = getelementptr inbounds %struct.saa7164_dev, ptr %5, i32 0, i32 16
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name5, i32 noundef %13) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @saa7164_s_tuner(ptr nocapture readnone %file, ptr nocapture readnone %priv, ptr nocapture noundef readonly %t) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @saa7164_g_frequency(ptr nocapture noundef readonly %port, ptr nocapture noundef %f) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %freq = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 39
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq, align 8
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_s_frequency(ptr noundef %port, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.analog_parameters, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %params) #12
  %2 = getelementptr inbounds i8, ptr %params, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %2, align 8
  %frequency2 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %4 = ptrtoint ptr %frequency2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frequency2, align 4
  %6 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %params, align 8
  %mode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %mode, align 4
  %audmode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 2
  %8 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %audmode, align 8
  %std = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %id = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 34, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %id, align 8
  %11 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %std, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %12 = load i32, ptr @saa_debug, align 4
  %and = and i32 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name, ptr noundef nonnull @.str.19, i32 noundef %5, i32 noundef %14) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %15 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not = icmp eq i32 %16, 0
  br i1 %cmp.not, label %if.end9, label %do.end6.cleanup_crit_edge

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %do.end6
  %17 = ptrtoint ptr %frequency2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %frequency2, align 4
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 704)
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 15328)
  %freq = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 39
  %21 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %freq, align 8
  %nr = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %22 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr, align 8
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %do.body27 [
    i32 2, label %if.then20
    i32 3, label %if.then23
  ]

if.then20:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %ports = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 29
  br label %if.end34

if.then23:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx25 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 1
  br label %if.end34

do.body27:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7164/saa7164-encoder.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 386, 0\0A.popsection", ""() #12, !srcloc !290
  unreachable

if.end34:                                         ; preds = %if.then23, %if.then20
  %tsport.0 = phi ptr [ %ports, %if.then20 ], [ %arrayidx25, %if.then23 ]
  %frontend = getelementptr inbounds %struct.saa7164_port, ptr %tsport.0, i32 0, i32 31, i32 2
  %25 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %frontend, align 4
  %tobool35.not = icmp eq ptr %26, null
  br i1 %tobool35.not, label %if.end34.do.end45_crit_edge, label %land.lhs.true

if.end34.do.end45_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45

land.lhs.true:                                    ; preds = %if.end34
  %set_analog_params = getelementptr inbounds %struct.dvb_frontend, ptr %26, i32 0, i32 1, i32 32, i32 7
  %27 = ptrtoint ptr %set_analog_params to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_analog_params, align 4
  %tobool36.not = icmp eq ptr %28, null
  br i1 %tobool36.not, label %land.lhs.true.do.end45_crit_edge, label %if.then37

land.lhs.true.do.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call41 = call i32 %28(ptr noundef nonnull %26, ptr noundef nonnull %params) #12
  br label %if.end48

do.end45:                                         ; preds = %land.lhs.true.do.end45_crit_edge, %if.end34.do.end45_crit_edge
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19) #15
  br label %if.end48

if.end48:                                         ; preds = %do.end45, %if.then37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %29 = load i32, ptr @saa_debug, align 4
  %and.i.i = and i32 %29, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end48.saa7164_encoder_initialize.exit_crit_edge, label %do.end.i.i

if.end48.saa7164_encoder_initialize.exit_crit_edge: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa7164_encoder_initialize.exit

do.end.i.i:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port, align 8
  %name.i.i = getelementptr inbounds %struct.saa7164_dev, ptr %31, i32 0, i32 16
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name.i.i, ptr noundef nonnull @.str.46) #15
  br label %saa7164_encoder_initialize.exit

saa7164_encoder_initialize.exit:                  ; preds = %do.end.i.i, %if.end48.saa7164_encoder_initialize.exit_crit_edge
  %width.i.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 38
  %32 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %width.i.i, align 4
  %width5.i.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 57, i32 2
  %34 = ptrtoint ptr %width5.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %width5.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 37
  %35 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height.i.i, align 8
  %height7.i.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 57, i32 1
  %37 = ptrtoint ptr %height7.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %height7.i.i, align 8
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %id, align 8
  %and8.i.i = and i64 %39, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i.i)
  %cmp.i.i = icmp ne i64 %and8.i.i, 0
  %conv.i.i = zext i1 %cmp.i.i to i32
  %is_50hz.i.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 57, i32 3
  %40 = ptrtoint ptr %is_50hz.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv.i.i, ptr %is_50hz.i.i, align 8
  %call10.i.i = call i32 @saa7164_api_initialize_dif(ptr noundef %port) #12
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %id, align 8
  %conv13.i.i = trunc i64 %42 to i32
  %call14.i.i = call i32 @saa7164_api_configure_dif(ptr noundef %port, i32 noundef %conv13.i.i) #12
  %call15.i.i = call i32 @saa7164_api_set_audio_std(ptr noundef %port) #12
  br label %cleanup

cleanup:                                          ; preds = %saa7164_encoder_initialize.exit, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %saa7164_encoder_initialize.exit ], [ -22, %do.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %params) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_encoder_register(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %ctrl_handler = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %2 = load i32, ptr @saa_debug, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %do.end

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name, ptr noundef nonnull @.str.24) #15
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  %type = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not = icmp eq i32 %4, 2
  br i1 %cmp.not, label %do.end17, label %do.body9, !prof !291

do.body9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7164/saa7164-encoder.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1004, 0\0A.popsection", ""() #12, !srcloc !292
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
  call void @__sanitizer_cov_trace_pc() #14
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef -19) #15
  br label %cleanup

if.end25:                                         ; preds = %do.end17
  %encodernorm = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 34
  %7 = call ptr @memcpy(ptr %encodernorm, ptr @saa7164_tvnorms, i32 16)
  %width = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 38
  %8 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 720, ptr %width, align 4
  %mux_input = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 40
  %9 = ptrtoint ptr %mux_input to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %mux_input, align 4
  %video_format = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 42
  %10 = ptrtoint ptr %video_format to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %video_format, align 2
  %audio_format = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 43
  %11 = ptrtoint ptr %audio_format to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %audio_format, align 1
  %video_resolution = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 44
  %12 = ptrtoint ptr %video_resolution to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %video_resolution, align 8
  %freq = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 39
  %13 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 704, ptr %freq, align 8
  %call27 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 14, ptr noundef nonnull @saa7164_encoder_register._key, ptr noundef nonnull @.str.28) #12
  %call28 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @saa7164_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 127) #12
  %call29 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @saa7164_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 66) #12
  %call30 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @saa7164_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 62) #12
  %call31 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @saa7164_ctrl_ops, i32 noundef 9963779, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #12
  %call32 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @saa7164_ctrl_ops, i32 noundef 9963803, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 8) #12
  %call33 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @saa7164_ctrl_ops, i32 noundef 10029421, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #12
  %call34 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @saa7164_ctrl_ops, i32 noundef 9963781, i64 noundef -83, i64 noundef 24, i64 noundef 1, i64 noundef 20) #12
  %call35 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @saa7164_ctrl_ops, i32 noundef 10029519, i64 noundef 1000000, i64 noundef 6500000, i64 noundef 100000, i64 noundef 5000000) #12
  %call36 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @saa7164_ctrl_ops, i32 noundef 10029312, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #12
  %call37 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @saa7164_ctrl_ops, i32 noundef 10029513, i8 noundef zeroext 3, i64 noundef 0, i8 noundef zeroext 1) #12
  %call38 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @saa7164_ctrl_ops, i32 noundef 10029515, i64 noundef 1, i64 noundef 255, i64 noundef 1, i64 noundef 15) #12
  %call39 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @saa7164_ctrl_ops, i32 noundef 10029518, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #12
  %call40 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @saa7164_ctrl_ops, i32 noundef 10029514, i64 noundef 1, i64 noundef 3, i64 noundef 1, i64 noundef 1) #12
  %call41 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @saa7164_ctrl_ops, i32 noundef 10029520, i64 noundef 1000000, i64 noundef 6500000, i64 noundef 100000, i64 noundef 5000000) #12
  %error = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 35, i32 9
  %14 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool42.not = icmp eq i32 %15, 0
  br i1 %tobool42.not, label %if.end45, label %if.end25.fail_hdl_crit_edge

if.end25.fail_hdl_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_hdl

if.end45:                                         ; preds = %if.end25
  %std = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 36
  %16 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 4096, ptr %std, align 8
  %id = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 34, i32 1
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %id, align 8
  %and47 = and i64 %18, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and47)
  %tobool48.not = icmp eq i64 %and47, 0
  %spec.select = select i1 %tobool48.not, i32 576, i32 480
  %19 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 37
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select, ptr %19, align 8
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %23 = load i32, ptr @saa_debug, align 4
  %and.i = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end45.do.end4.i_crit_edge, label %do.end.i

if.end45.do.end4.i_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %22, i32 0, i32 16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name.i, ptr noundef nonnull @.str.51) #15
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end45.do.end4.i_crit_edge
  %call5.i = tail call ptr @video_device_alloc() #12
  %cmp.i = icmp eq ptr %call5.i, null
  br i1 %cmp.i, label %do.end58, label %if.end63

do.end58:                                         ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %v4l_device166 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 58
  %24 = ptrtoint ptr %v4l_device166 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %v4l_device166, align 8
  %name60 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name60) #15
  br label %fail_hdl

if.end63:                                         ; preds = %do.end4.i
  %25 = call ptr @memcpy(ptr %call5.i, ptr @saa7164_mpeg_template, i32 1352)
  %name8.i = getelementptr inbounds %struct.video_device, ptr %call5.i, i32 0, i32 12
  %name10.i = getelementptr inbounds %struct.saa7164_dev, ptr %22, i32 0, i32 16
  %board.i = getelementptr inbounds %struct.saa7164_dev, ptr %22, i32 0, i32 15
  %26 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %board.i, align 8
  %arrayidx.i = getelementptr [0 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %call13.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name8.i, i32 noundef 32, ptr noundef nonnull @.str.52, ptr noundef %name10.i, ptr noundef nonnull @.str.29, ptr noundef %29) #12
  %v4l2_dev.i = getelementptr inbounds %struct.saa7164_dev, ptr %22, i32 0, i32 2
  %v4l2_dev14.i = getelementptr inbounds %struct.video_device, ptr %call5.i, i32 0, i32 7
  %30 = ptrtoint ptr %v4l2_dev14.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %v4l2_dev.i, ptr %v4l2_dev14.i, align 4
  %release.i = getelementptr inbounds %struct.video_device, ptr %call5.i, i32 0, i32 23
  %31 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @video_device_release, ptr %release.i, align 8
  %v4l_device = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 58
  %32 = ptrtoint ptr %v4l_device to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call5.i, ptr %v4l_device, align 8
  %ctrl_handler65 = getelementptr inbounds %struct.video_device, ptr %call5.i, i32 0, i32 9
  %33 = ptrtoint ptr %ctrl_handler65 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ctrl_handler, ptr %ctrl_handler65, align 4
  %call66 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #12
  %34 = ptrtoint ptr %v4l_device to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %v4l_device, align 8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %35, i32 0, i32 5, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %port, ptr %driver_data.i.i, align 4
  %37 = load ptr, ptr %v4l_device, align 8
  %fops.i = getelementptr inbounds %struct.video_device, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fops.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call.i165 = tail call i32 @__video_register_device(ptr noundef %37, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %cmp70 = icmp slt i32 %call.i165, 0
  %name76 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  br i1 %cmp70, label %do.end74, label %do.end82

do.end74:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name76) #15
  %42 = ptrtoint ptr %v4l_device to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %v4l_device, align 8
  tail call void @video_device_release(ptr noundef %43) #12
  %44 = ptrtoint ptr %v4l_device to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %v4l_device, align 8
  br label %fail_hdl

do.end82:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %v4l_device to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %v4l_device, align 8
  %num = getelementptr inbounds %struct.video_device, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %num, align 4
  %conv = zext i16 %48 to i32
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name76, i32 noundef %conv) #15
  %call88 = tail call i32 @saa7164_api_set_videomux(ptr noundef %port) #12
  %call89 = tail call i32 @saa7164_api_set_usercontrol(ptr noundef %port, i8 noundef zeroext 2) #12
  %call90 = tail call i32 @saa7164_api_set_usercontrol(ptr noundef %port, i8 noundef zeroext 3) #12
  %call91 = tail call i32 @saa7164_api_set_usercontrol(ptr noundef %port, i8 noundef zeroext 6) #12
  %call92 = tail call i32 @saa7164_api_set_usercontrol(ptr noundef %port, i8 noundef zeroext 7) #12
  %call93 = tail call i32 @saa7164_api_set_usercontrol(ptr noundef %port, i8 noundef zeroext 8) #12
  %call94 = tail call i32 @saa7164_api_audio_mute(ptr noundef %port, i32 noundef 0) #12
  %call95 = tail call i32 @saa7164_api_set_audio_volume(ptr noundef %port, i8 noundef signext 20) #12
  %call96 = tail call i32 @saa7164_api_set_aspect_ratio(ptr noundef %port) #12
  %call97 = tail call i32 @saa7164_api_set_audio_detection(ptr noundef %port, i32 noundef 0) #12
  %call98 = tail call i32 @saa7164_api_set_encoder(ptr noundef %port) #12
  %call99 = tail call i32 @saa7164_api_get_encoder(ptr noundef %port) #12
  br label %cleanup

fail_hdl:                                         ; preds = %do.end74, %do.end58, %if.end25.fail_hdl_crit_edge
  %result.0 = phi i32 [ %call.i165, %do.end74 ], [ -12, %do.end58 ], [ %15, %if.end25.fail_hdl_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #12
  br label %cleanup

cleanup:                                          ; preds = %fail_hdl, %do.end82, %do.end22
  %retval.0 = phi i32 [ 0, %do.end82 ], [ -12, %do.end22 ], [ %result.0, %fail_hdl ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_set_usercontrol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_audio_mute(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_set_audio_volume(ptr noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_set_aspect_ratio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_set_audio_detection(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_set_encoder(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_get_encoder(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7164_encoder_unregister(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %2 = load i32, ptr @saa_debug, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %do.end

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %nr = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name, ptr noundef nonnull @.str.40, i32 noundef %4) #15
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  %type = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.not = icmp eq i32 %6, 2
  br i1 %cmp.not, label %do.end17, label %do.body9, !prof !291

do.body9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7164/saa7164-encoder.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1133, 0\0A.popsection", ""() #12, !srcloc !293
  unreachable

do.end17:                                         ; preds = %do.body5
  %v4l_device = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 58
  %7 = ptrtoint ptr %v4l_device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %v4l_device, align 8
  %tobool18.not = icmp eq ptr %8, null
  br i1 %tobool18.not, label %do.end17.if.end27_crit_edge, label %if.then19

do.end17.if.end27_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @video_unregister_device(ptr noundef nonnull %8) #12
  br label %if.end25

if.else:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @video_device_release(ptr noundef nonnull %8) #12
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then22
  %11 = ptrtoint ptr %v4l_device to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %v4l_device, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %do.end17.if.end27_crit_edge
  %ctrl_handler = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 35
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %12 = load i32, ptr @saa_debug, align 4
  %and29 = and i32 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.do.end42_crit_edge, label %do.end34

if.end27.do.end42_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end42

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %name36 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %nr38 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %13 = ptrtoint ptr %nr38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr38, align 8
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name36, ptr noundef nonnull @.str.40, i32 noundef %14) #15
  br label %do.end42

do.end42:                                         ; preds = %do.end34, %if.end27.do.end42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_initialize_dif(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_configure_dif(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7164_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -7824
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
    i32 9963778, label %sw.bb5
    i32 9963779, label %sw.bb9
    i32 9963803, label %sw.bb13
    i32 9963781, label %sw.bb17
    i32 10029519, label %sw.bb22
    i32 10029312, label %sw.bb24
    i32 10029421, label %sw.bb26
    i32 10029513, label %sw.bb33
    i32 10029518, label %sw.bb45
    i32 10029514, label %sw.bb47
    i32 10029520, label %sw.bb49
    i32 10029515, label %sw.bb51
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i16
  %ctl_brightness = getelementptr i8, ptr %1, i32 210
  %7 = ptrtoint ptr %ctl_brightness to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %ctl_brightness, align 2
  %call = tail call i32 @saa7164_api_set_usercontrol(ptr noundef %add.ptr, i8 noundef zeroext 2) #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val2, align 4
  %conv3 = trunc i32 %9 to i16
  %ctl_contrast = getelementptr i8, ptr %1, i32 212
  %10 = ptrtoint ptr %ctl_contrast to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv3, ptr %ctl_contrast, align 4
  %call4 = tail call i32 @saa7164_api_set_usercontrol(ptr noundef %add.ptr, i8 noundef zeroext 3) #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val6, align 4
  %conv7 = trunc i32 %12 to i16
  %ctl_saturation = getelementptr i8, ptr %1, i32 216
  %13 = ptrtoint ptr %ctl_saturation to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv7, ptr %ctl_saturation, align 8
  %call8 = tail call i32 @saa7164_api_set_usercontrol(ptr noundef %add.ptr, i8 noundef zeroext 7) #12
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val10, align 4
  %conv11 = trunc i32 %15 to i16
  %ctl_hue = getelementptr i8, ptr %1, i32 214
  %16 = ptrtoint ptr %ctl_hue to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv11, ptr %ctl_hue, align 2
  %call12 = tail call i32 @saa7164_api_set_usercontrol(ptr noundef %add.ptr, i8 noundef zeroext 6) #12
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val14, align 4
  %conv15 = trunc i32 %18 to i16
  %ctl_sharpness = getelementptr i8, ptr %1, i32 218
  %19 = ptrtoint ptr %ctl_sharpness to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv15, ptr %ctl_sharpness, align 2
  %call16 = tail call i32 @saa7164_api_set_usercontrol(ptr noundef %add.ptr, i8 noundef zeroext 8) #12
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val18, align 4
  %conv19 = trunc i32 %21 to i8
  %ctl_volume = getelementptr i8, ptr %1, i32 220
  %22 = ptrtoint ptr %ctl_volume to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv19, ptr %ctl_volume, align 4
  %call21 = tail call i32 @saa7164_api_set_audio_volume(ptr noundef %add.ptr, i8 noundef signext %conv19) #12
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %23 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val23, align 4
  %bitrate = getelementptr i8, ptr %1, i32 372
  %25 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %bitrate, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %26 = ptrtoint ptr %val25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val25, align 4
  %stream_type = getelementptr i8, ptr %1, i32 384
  %28 = ptrtoint ptr %stream_type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %stream_type, align 8
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %val27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val27, align 4
  %ctl_mute = getelementptr i8, ptr %1, i32 392
  %31 = ptrtoint ptr %ctl_mute to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %ctl_mute, align 8
  %call29 = tail call i32 @saa7164_api_audio_mute(ptr noundef %add.ptr, i32 noundef %30) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp.not = icmp eq i32 %call29, 0
  br i1 %cmp.not, label %sw.bb26.sw.epilog_crit_edge, label %do.end

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #14
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %call29) #15
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  %val34 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %32 = ptrtoint ptr %val34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val34, align 4
  %ctl_aspect = getelementptr i8, ptr %1, i32 396
  %34 = ptrtoint ptr %ctl_aspect to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %ctl_aspect, align 4
  %call35 = tail call i32 @saa7164_api_set_aspect_ratio(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %sw.bb33.sw.epilog_crit_edge, label %do.end41

sw.bb33.sw.epilog_crit_edge:                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end41:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #14
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %call35) #15
  br label %sw.epilog

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val46 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %35 = ptrtoint ptr %val46 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val46, align 4
  %bitrate_mode = getelementptr i8, ptr %1, i32 380
  %37 = ptrtoint ptr %bitrate_mode to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %bitrate_mode, align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val48 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %38 = ptrtoint ptr %val48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val48, align 4
  %refdist = getelementptr i8, ptr %1, i32 400
  %40 = ptrtoint ptr %refdist to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %refdist, align 8
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val50 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %41 = ptrtoint ptr %val50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val50, align 4
  %bitrate_peak = getelementptr i8, ptr %1, i32 376
  %43 = ptrtoint ptr %bitrate_peak to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %bitrate_peak, align 8
  br label %sw.epilog

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val52 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %44 = ptrtoint ptr %val52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val52, align 4
  %gop_size = getelementptr i8, ptr %1, i32 404
  %46 = ptrtoint ptr %gop_size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %gop_size, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %do.end41, %sw.bb33.sw.epilog_crit_edge, %do.end, %sw.bb26.sw.epilog_crit_edge, %sw.bb24, %sw.bb22, %sw.bb17, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb51 ], [ 0, %sw.bb49 ], [ 0, %sw.bb47 ], [ 0, %sw.bb45 ], [ -5, %do.end41 ], [ 0, %sw.bb33.sw.epilog_crit_edge ], [ -5, %do.end ], [ 0, %sw.bb26.sw.epilog_crit_edge ], [ 0, %sw.bb24 ], [ 0, %sw.bb22 ], [ 0, %sw.bb17 ], [ 0, %sw.bb13 ], [ 0, %sw.bb9 ], [ 0, %sw.bb5 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry141 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port1 = getelementptr inbounds %struct.saa7164_encoder_fh, ptr %1, i32 0, i32 1
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
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %9) #12
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
  tail call void @saa7164_histogram_update(ptr noundef %read_interval, i32 noundef %conv8) #12
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.not = icmp eq i64 %14, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #15
  br label %cleanup173

if.end:                                           ; preds = %entry
  %v4l_reading = getelementptr inbounds %struct.saa7164_encoder_fh, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %v4l_reading, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !294
  tail call void @llvm.prefetch.p0(ptr %v4l_reading, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %v4l_reading, ptr %v4l_reading, i32 0, i32 1, ptr elementtype(i32) %v4l_reading) #12, !srcloc !295
  %asmresult.i.i.i = extractvalue { i32, i32 } %15, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %15, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %cmp = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %cmp, label %if.then12, label %atomic_cmpxchg.exit.if.end29_crit_edge

atomic_cmpxchg.exit.if.end29_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then12:                                        ; preds = %atomic_cmpxchg.exit
  %v4l_reader_count = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 59
  %call.i.i240 = tail call zeroext i1 @__kasan_check_write(ptr noundef %v4l_reader_count, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !297
  tail call void @llvm.prefetch.p0(ptr %v4l_reader_count, i32 1, i32 3, i32 1) #12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %v4l_reader_count, ptr %v4l_reader_count, i32 1, ptr elementtype(i32) %v4l_reader_count) #12, !srcloc !298
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !299
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp14 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp14, label %if.then16, label %if.then12.if.end29_crit_edge

if.then12.if.end29_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then16:                                        ; preds = %if.then12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %17 = load i32, ptr @saa_debug, align 4
  %and.i.i = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then16.saa7164_encoder_initialize.exit_crit_edge, label %do.end.i.i

if.then16.saa7164_encoder_initialize.exit_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa7164_encoder_initialize.exit

do.end.i.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  %name.i.i = getelementptr inbounds %struct.saa7164_dev, ptr %19, i32 0, i32 16
  %call.i.i242 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name.i.i, ptr noundef nonnull @.str.46) #15
  br label %saa7164_encoder_initialize.exit

saa7164_encoder_initialize.exit:                  ; preds = %do.end.i.i, %if.then16.saa7164_encoder_initialize.exit_crit_edge
  %width.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 38
  %20 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width.i.i, align 4
  %width5.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 57, i32 2
  %22 = ptrtoint ptr %width5.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %width5.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 37
  %23 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height.i.i, align 8
  %height7.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 57, i32 1
  %25 = ptrtoint ptr %height7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %height7.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 34, i32 1
  %26 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %id.i.i, align 8
  %and8.i.i = and i64 %27, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i.i)
  %cmp.i.i243 = icmp ne i64 %and8.i.i, 0
  %conv.i.i = zext i1 %cmp.i.i243 to i32
  %is_50hz.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 57, i32 3
  %28 = ptrtoint ptr %is_50hz.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv.i.i, ptr %is_50hz.i.i, align 8
  %call10.i.i = tail call i32 @saa7164_api_initialize_dif(ptr noundef %3) #12
  %29 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %id.i.i, align 8
  %conv13.i.i = trunc i64 %30 to i32
  %call14.i.i = tail call i32 @saa7164_api_configure_dif(ptr noundef %3, i32 noundef %conv13.i.i) #12
  %call15.i.i = tail call i32 @saa7164_api_set_audio_std(ptr noundef %3) #12
  tail call fastcc void @saa7164_encoder_start_streaming(ptr noundef %3)
  tail call void @msleep(i32 noundef 200) #12
  br label %if.end29

if.end29:                                         ; preds = %saa7164_encoder_initialize.exit, %if.then12.if.end29_crit_edge, %atomic_cmpxchg.exit.if.end29_crit_edge
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %31 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %f_flags, align 4
  %and = and i32 %32, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp30 = icmp eq i32 %and, 0
  br i1 %cmp30, label %if.then32, label %if.end29.if.end63_crit_edge

if.end29.if.end63_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then32:                                        ; preds = %if.end29
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 828) #12
  %call39 = tail call fastcc ptr @saa7164_enc_next_buf(ptr noundef %3)
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.then41, label %if.then32.if.end63_crit_edge

if.then32.if.end63_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then41:                                        ; preds = %if.then32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %33 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %wait_read = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 62
  %call43296 = call i32 @prepare_to_wait_event(ptr noundef %wait_read, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %call44297 = call fastcc ptr @saa7164_enc_next_buf(ptr noundef %3)
  %tobool45.not298 = icmp eq ptr %call44297, null
  br i1 %tobool45.not298, label %if.then41.if.end47_crit_edge, label %if.then41.if.end53.thread256_crit_edge

if.then41.if.end53.thread256_crit_edge:           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.thread256

if.then41.if.end47_crit_edge:                     ; preds = %if.then41
  br label %if.end47

if.end47:                                         ; preds = %cleanup.if.end47_crit_edge, %if.then41.if.end47_crit_edge
  %call43299 = phi i32 [ %call43, %cleanup.if.end47_crit_edge ], [ %call43296, %if.then41.if.end47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43299)
  %tobool48.not = icmp eq i32 %call43299, 0
  br i1 %tobool48.not, label %cleanup, label %do.end59

cleanup:                                          ; preds = %if.end47
  call void @schedule() #12
  %call43 = call i32 @prepare_to_wait_event(ptr noundef %wait_read, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %call44 = call fastcc ptr @saa7164_enc_next_buf(ptr noundef %3)
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %cleanup.if.end47_crit_edge, label %cleanup.if.end53.thread256_crit_edge

cleanup.if.end53.thread256_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.thread256

cleanup.if.end47_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.end53.thread256:                               ; preds = %cleanup.if.end53.thread256_crit_edge, %if.then41.if.end53.thread256_crit_edge
  call void @finish_wait(ptr noundef %wait_read, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end63

do.end59:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.54) #15
  br label %cleanup173

if.end63:                                         ; preds = %if.end53.thread256, %if.then32.if.end63_crit_edge, %if.end29.if.end63_crit_edge
  %call64 = call fastcc ptr @saa7164_enc_next_buf(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp65.not305 = icmp eq i32 %count, 0
  %tobool67.not306 = icmp eq ptr %call64, null
  %or.cond307 = select i1 %cmp65.not305, i1 true, i1 %tobool67.not306
  br i1 %or.cond307, label %if.end63.err_crit_edge, label %while.body.lr.ph

if.end63.err_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

while.body.lr.ph:                                 ; preds = %if.end63
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %5, i32 0, i32 16
  %dmaqueue_lock = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 13
  %list_buf_free = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 61
  %prev.i2.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 61, i32 0, i32 1
  %wait_read145 = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 62
  br label %while.body

while.body:                                       ; preds = %if.end168.while.body_crit_edge, %while.body.lr.ph
  %buffer.addr.0313 = phi ptr [ %buffer, %while.body.lr.ph ], [ %add.ptr105, %if.end168.while.body_crit_edge ]
  %count.addr.0311 = phi i32 [ %count, %while.body.lr.ph ], [ %sub104, %if.end168.while.body_crit_edge ]
  %ubuf.0309 = phi ptr [ %call64, %while.body.lr.ph ], [ %ubuf.1, %if.end168.while.body_crit_edge ]
  %ret.0308 = phi i32 [ 0, %while.body.lr.ph ], [ %add106, %if.end168.while.body_crit_edge ]
  %actual_size = getelementptr inbounds %struct.saa7164_user_buffer, ptr %ubuf.0309, i32 0, i32 3
  %34 = ptrtoint ptr %actual_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %actual_size, align 4
  %pos68 = getelementptr inbounds %struct.saa7164_user_buffer, ptr %ubuf.0309, i32 0, i32 2
  %36 = ptrtoint ptr %pos68 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pos68, align 4
  %sub69 = sub i32 %35, %37
  %38 = call i32 @llvm.umin.i32(i32 %sub69, i32 %count.addr.0311)
  %data = getelementptr inbounds %struct.saa7164_user_buffer, ptr %ubuf.0309, i32 0, i32 1
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %40, i32 %37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %41 = load i32, ptr @saa_debug, align 4
  %and74 = and i32 %41, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %while.body.if.end8.i.i_crit_edge, label %do.end79

while.body.if.end8.i.i_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

do.end79:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name, ptr noundef nonnull @.str.54, i32 noundef %count.addr.0311, i32 noundef %38, i32 noundef %sub69, ptr noundef nonnull %ubuf.0309, i32 noundef %37) #15
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end79, %while.body.if.end8.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp9.i.i = icmp slt i32 %38, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.do.end91_crit_edge, label %if.then27.i.i, !prof !291

land.rhs16.i.i.do.end91_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end91

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.116, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %do.end91

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %38, i1 noundef zeroext true) #12
  call void @__might_fault(ptr noundef nonnull @.str.118, i32 noundef 174) #12
  %call.i.i241 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i241, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %42 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer.addr.0313, i32 %38, i32 -1226833920) #16, !srcloc !300
  %asmresult.i.i = extractvalue { i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %38) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer.addr.0313, ptr noundef %add.ptr, i32 noundef %38) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %38, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %38, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool87.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool87.not, label %if.end102, label %copy_to_user.exit.do.end91_crit_edge

copy_to_user.exit.do.end91_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end91

do.end91:                                         ; preds = %copy_to_user.exit.do.end91_crit_edge, %if.then27.i.i, %land.rhs16.i.i.do.end91_crit_edge
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.54) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0308)
  %tobool94.not = icmp eq i32 %ret.0308, 0
  br i1 %tobool94.not, label %do.end98, label %do.end91.cleanup173_crit_edge

do.end91.cleanup173_crit_edge:                    ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup173

do.end98:                                         ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #14
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.54) #15
  br label %cleanup173

if.end102:                                        ; preds = %copy_to_user.exit
  %43 = ptrtoint ptr %pos68 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pos68, align 4
  %add = add i32 %44, %38
  store i32 %add, ptr %pos68, align 4
  %sub104 = sub i32 %count.addr.0311, %38
  %add.ptr105 = getelementptr i8, ptr %buffer.addr.0313, i32 %38
  %add106 = add i32 %38, %ret.0308
  %45 = ptrtoint ptr %actual_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %actual_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %46)
  %cmp109 = icmp ugt i32 %add, %46
  br i1 %cmp109, label %do.end114, label %if.end102.if.end117_crit_edge

if.end102.if.end117_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end117

do.end114:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #15
  br label %if.end117

if.end117:                                        ; preds = %do.end114, %if.end102.if.end117_crit_edge
  %47 = ptrtoint ptr %pos68 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pos68, align 4
  %49 = ptrtoint ptr %actual_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %actual_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp120 = icmp eq i32 %48, %50
  br i1 %cmp120, label %if.then122, label %if.end117.if.end168_crit_edge

if.end117.if.end168_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end168

if.then122:                                       ; preds = %if.end117
  %51 = ptrtoint ptr %pos68 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %pos68, align 4
  call void @mutex_lock_nested(ptr noundef %dmaqueue_lock, i32 noundef 0) #12
  %call.i.i244 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %ubuf.0309) #12
  br i1 %call.i.i244, label %if.end.i.i245, label %if.then122.__list_del_entry.exit.i_crit_edge

if.then122.__list_del_entry.exit.i_crit_edge:     ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i245:                                    ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ubuf.0309, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %ubuf.0309 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ubuf.0309, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i245, %if.then122.__list_del_entry.exit.i_crit_edge
  %58 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i246 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %ubuf.0309, ptr noundef %59, ptr noundef %list_buf_free) #12
  br i1 %call.i.i.i246, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %ubuf.0309, ptr %prev.i2.i, align 4
  %61 = ptrtoint ptr %ubuf.0309 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %list_buf_free, ptr %ubuf.0309, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %ubuf.0309, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %ubuf.0309, ptr %59, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef %dmaqueue_lock) #12
  %64 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %f_flags, align 4
  %and127 = and i32 %65, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %cmp128 = icmp eq i32 %and127, 0
  br i1 %cmp128, label %if.then130, label %list_move_tail.exit.if.end166_crit_edge

list_move_tail.exit.if.end166_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

if.then130:                                       ; preds = %list_move_tail.exit
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 880) #12
  %call138 = call fastcc ptr @saa7164_enc_next_buf(ptr noundef %3)
  %tobool139.not = icmp eq ptr %call138, null
  br i1 %tobool139.not, label %if.then140, label %if.then130.if.end166_crit_edge

if.then130.if.end166_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end166

if.then140:                                       ; preds = %if.then130
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry141) #12
  %66 = call ptr @memset(ptr %__wq_entry141, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry141, i32 noundef 0) #12
  %call146300 = call i32 @prepare_to_wait_event(ptr noundef %wait_read145, ptr noundef nonnull %__wq_entry141, i32 noundef 1) #12
  %call147301 = call fastcc ptr @saa7164_enc_next_buf(ptr noundef %3)
  %tobool148.not302 = icmp eq ptr %call147301, null
  br i1 %tobool148.not302, label %if.then140.if.end150_crit_edge, label %if.then140.if.end161.thread270_crit_edge

if.then140.if.end161.thread270_crit_edge:         ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end161.thread270

if.then140.if.end150_crit_edge:                   ; preds = %if.then140
  br label %if.end150

if.end150:                                        ; preds = %cleanup154.if.end150_crit_edge, %if.then140.if.end150_crit_edge
  %call146303 = phi i32 [ %call146, %cleanup154.if.end150_crit_edge ], [ %call146300, %if.then140.if.end150_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146303)
  %tobool151.not = icmp eq i32 %call146303, 0
  br i1 %tobool151.not, label %cleanup154, label %err.thread

cleanup154:                                       ; preds = %if.end150
  call void @schedule() #12
  %call146 = call i32 @prepare_to_wait_event(ptr noundef %wait_read145, ptr noundef nonnull %__wq_entry141, i32 noundef 1) #12
  %call147 = call fastcc ptr @saa7164_enc_next_buf(ptr noundef %3)
  %tobool148.not = icmp eq ptr %call147, null
  br i1 %tobool148.not, label %cleanup154.if.end150_crit_edge, label %cleanup154.if.end161.thread270_crit_edge

cleanup154.if.end161.thread270_crit_edge:         ; preds = %cleanup154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end161.thread270

cleanup154.if.end150_crit_edge:                   ; preds = %cleanup154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end150

if.end161.thread270:                              ; preds = %cleanup154.if.end161.thread270_crit_edge, %if.then140.if.end161.thread270_crit_edge
  call void @finish_wait(ptr noundef %wait_read145, ptr noundef nonnull %__wq_entry141) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry141) #12
  br label %if.end166

err.thread:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry141) #12
  br label %67

if.end166:                                        ; preds = %if.end161.thread270, %if.then130.if.end166_crit_edge, %list_move_tail.exit.if.end166_crit_edge
  %call167 = call fastcc ptr @saa7164_enc_next_buf(ptr noundef %3)
  br label %if.end168

if.end168:                                        ; preds = %if.end166, %if.end117.if.end168_crit_edge
  %ubuf.1 = phi ptr [ %call167, %if.end166 ], [ %ubuf.0309, %if.end117.if.end168_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub104)
  %cmp65.not = icmp eq i32 %sub104, 0
  %tobool67.not = icmp eq ptr %ubuf.1, null
  %or.cond = select i1 %cmp65.not, i1 true, i1 %tobool67.not
  br i1 %or.cond, label %if.end168.err_crit_edge, label %if.end168.while.body_crit_edge

if.end168.while.body_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end168.err_crit_edge:                          ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

err:                                              ; preds = %if.end168.err_crit_edge, %if.end63.err_crit_edge
  %tobool67.not281 = phi i1 [ %tobool67.not306, %if.end63.err_crit_edge ], [ %tobool67.not, %if.end168.err_crit_edge ]
  %ret.1 = phi i32 [ 0, %if.end63.err_crit_edge ], [ %add106, %if.end168.err_crit_edge ]
  %spec.select = select i1 %tobool67.not281, i32 -11, i32 0
  br label %67

67:                                               ; preds = %err, %err.thread
  %ret.1340 = phi i32 [ %add106, %err.thread ], [ %ret.1, %err ]
  %68 = phi i32 [ 0, %err.thread ], [ %spec.select, %err ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1340)
  %tobool169.not341 = icmp eq i32 %ret.1340, 0
  %spec.select275 = select i1 %tobool169.not341, i32 %68, i32 %ret.1340
  br label %cleanup173

cleanup173:                                       ; preds = %67, %do.end98, %do.end91.cleanup173_crit_edge, %do.end59, %do.end
  %retval.0 = phi i32 [ -29, %do.end ], [ -512, %do.end59 ], [ -14, %do.end98 ], [ %ret.0308, %do.end91.cleanup173_crit_edge ], [ %spec.select275, %67 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_requested_events.exit_crit_edge, label %cond.true.i

entry.poll_requested_events.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_requested_events.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %_key.i = getelementptr inbounds %struct.poll_table_struct, ptr %wait, i32 0, i32 1
  %0 = ptrtoint ptr %_key.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_key.i, align 4
  %phi.bo = and i32 %1, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %phi.cmp = icmp eq i32 %phi.bo, 0
  br label %poll_requested_events.exit

poll_requested_events.exit:                       ; preds = %cond.true.i, %entry.poll_requested_events.exit_crit_edge
  %cond.i = phi i1 [ %phi.cmp, %cond.true.i ], [ false, %entry.poll_requested_events.exit_crit_edge ]
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %port1 = getelementptr inbounds %struct.saa7164_encoder_fh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port1, align 4
  %call2 = tail call i32 @v4l2_ctrl_poll(ptr noundef %file, ptr noundef %wait) #12
  %last_poll_msecs = getelementptr inbounds %struct.saa7164_port, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %last_poll_msecs to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %last_poll_msecs, align 8
  %last_poll_msecs_diff = getelementptr inbounds %struct.saa7164_port, ptr %5, i32 0, i32 25
  %8 = ptrtoint ptr %last_poll_msecs_diff to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %last_poll_msecs_diff, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %call3 = tail call i32 @jiffies_to_msecs(i32 noundef %9) #12
  %conv = zext i32 %call3 to i64
  %10 = ptrtoint ptr %last_poll_msecs to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %last_poll_msecs, align 8
  %11 = ptrtoint ptr %last_poll_msecs_diff to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %last_poll_msecs_diff, align 8
  %sub = sub i64 %conv, %12
  store i64 %sub, ptr %last_poll_msecs_diff, align 8
  %poll_interval = getelementptr inbounds %struct.saa7164_port, ptr %5, i32 0, i32 30
  %conv9 = trunc i64 %sub to i32
  tail call void @saa7164_histogram_update(ptr noundef %poll_interval, i32 noundef %conv9) #12
  br i1 %cond.i, label %poll_requested_events.exit.cleanup_crit_edge, label %if.end

poll_requested_events.exit.cleanup_crit_edge:     ; preds = %poll_requested_events.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %poll_requested_events.exit
  %v4l_reading = getelementptr inbounds %struct.saa7164_encoder_fh, ptr %3, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %v4l_reading, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !294
  tail call void @llvm.prefetch.p0(ptr %v4l_reading, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %v4l_reading, ptr %v4l_reading, i32 0, i32 1, ptr elementtype(i32) %v4l_reading) #12, !srcloc !295
  %asmresult.i.i.i = extractvalue { i32, i32 } %13, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %cmp = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %cmp, label %if.then12, label %atomic_cmpxchg.exit.if.end24_crit_edge

atomic_cmpxchg.exit.if.end24_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then12:                                        ; preds = %atomic_cmpxchg.exit
  %v4l_reader_count = getelementptr inbounds %struct.saa7164_port, ptr %5, i32 0, i32 59
  %call.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef %v4l_reader_count, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !297
  tail call void @llvm.prefetch.p0(ptr %v4l_reader_count, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %v4l_reader_count, ptr %v4l_reader_count, i32 1, ptr elementtype(i32) %v4l_reader_count) #12, !srcloc !298
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !299
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp14 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp14, label %if.then16, label %if.then12.if.end24_crit_edge

if.then12.if.end24_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then16:                                        ; preds = %if.then12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %15 = load i32, ptr @saa_debug, align 4
  %and.i.i = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then16.saa7164_encoder_initialize.exit_crit_edge, label %do.end.i.i

if.then16.saa7164_encoder_initialize.exit_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa7164_encoder_initialize.exit

do.end.i.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 8
  %name.i.i = getelementptr inbounds %struct.saa7164_dev, ptr %17, i32 0, i32 16
  %call.i.i51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name.i.i, ptr noundef nonnull @.str.46) #15
  br label %saa7164_encoder_initialize.exit

saa7164_encoder_initialize.exit:                  ; preds = %do.end.i.i, %if.then16.saa7164_encoder_initialize.exit_crit_edge
  %width.i.i = getelementptr inbounds %struct.saa7164_port, ptr %5, i32 0, i32 38
  %18 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width.i.i, align 4
  %width5.i.i = getelementptr inbounds %struct.saa7164_port, ptr %5, i32 0, i32 57, i32 2
  %20 = ptrtoint ptr %width5.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %width5.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.saa7164_port, ptr %5, i32 0, i32 37
  %21 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height.i.i, align 8
  %height7.i.i = getelementptr inbounds %struct.saa7164_port, ptr %5, i32 0, i32 57, i32 1
  %23 = ptrtoint ptr %height7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %height7.i.i, align 8
  %id.i.i = getelementptr inbounds %struct.saa7164_port, ptr %5, i32 0, i32 34, i32 1
  %24 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %id.i.i, align 8
  %and8.i.i = and i64 %25, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i.i)
  %cmp.i.i = icmp ne i64 %and8.i.i, 0
  %conv.i.i = zext i1 %cmp.i.i to i32
  %is_50hz.i.i = getelementptr inbounds %struct.saa7164_port, ptr %5, i32 0, i32 57, i32 3
  %26 = ptrtoint ptr %is_50hz.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv.i.i, ptr %is_50hz.i.i, align 8
  %call10.i.i = tail call i32 @saa7164_api_initialize_dif(ptr noundef %5) #12
  %27 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %id.i.i, align 8
  %conv13.i.i = trunc i64 %28 to i32
  %call14.i.i = tail call i32 @saa7164_api_configure_dif(ptr noundef %5, i32 noundef %conv13.i.i) #12
  %call15.i.i = tail call i32 @saa7164_api_set_audio_std(ptr noundef %5) #12
  tail call fastcc void @saa7164_encoder_start_streaming(ptr noundef %5)
  tail call void @msleep(i32 noundef 200) #12
  br label %if.end24

if.end24:                                         ; preds = %saa7164_encoder_initialize.exit, %if.then12.if.end24_crit_edge, %atomic_cmpxchg.exit.if.end24_crit_edge
  %list_buf_used = getelementptr inbounds %struct.saa7164_port, ptr %5, i32 0, i32 60
  %29 = ptrtoint ptr %list_buf_used to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %list_buf_used, align 4
  %cmp.i.not = icmp eq ptr %30, %list_buf_used
  %or28 = or i32 %call2, 65
  %spec.select = select i1 %cmp.i.not, i32 %call2, i32 %or28
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %poll_requested_events.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end24 ], [ %call2, %poll_requested_events.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fops_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %2 = load i32, ptr @saa_debug, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.do.end9_crit_edge, label %do.end

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %4, i32 0, i32 16
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name, ptr noundef nonnull @.str.119) #15
  br label %do.end9

do.end9:                                          ; preds = %do.end, %if.end.do.end9_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 200) #17
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end9.cleanup_crit_edge, label %if.end12

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  %port13 = getelementptr inbounds %struct.saa7164_encoder_fh, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %port13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %port13, align 8
  %call15 = tail call ptr @video_devdata(ptr noundef %file) #12
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call15) #12
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port1 = getelementptr inbounds %struct.saa7164_encoder_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %4 = load i32, ptr @saa_debug, align 4
  %and = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 8
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %6, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name, ptr noundef nonnull @.str.120) #15
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %v4l_reading = getelementptr inbounds %struct.saa7164_encoder_fh, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %v4l_reading, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !294
  tail call void @llvm.prefetch.p0(ptr %v4l_reading, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.end5
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %v4l_reading, ptr %v4l_reading, i32 1, i32 0, ptr elementtype(i32) %v4l_reading) #12, !srcloc !295
  %asmresult.i.i.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %7, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !296
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult3.i.i.i)
  %cmp = icmp eq i32 %asmresult3.i.i.i, 1
  br i1 %cmp, label %if.then7, label %atomic_cmpxchg.exit.if.end13_crit_edge

atomic_cmpxchg.exit.if.end13_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then7:                                         ; preds = %atomic_cmpxchg.exit
  %v4l_reader_count = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 59
  %call.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %v4l_reader_count, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !301
  tail call void @llvm.prefetch.p0(ptr %v4l_reader_count, i32 1, i32 3, i32 1) #12
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %v4l_reader_count, ptr %v4l_reader_count, i32 1, ptr elementtype(i32) %v4l_reader_count) #12, !srcloc !302
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp9 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp9, label %if.then10, label %if.then7.if.end13_crit_edge

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then10:                                        ; preds = %if.then7
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %11 = load i32, ptr @saa_debug, align 4
  %and.i = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then10.do.end4.i_crit_edge, label %do.end.i

if.then10.do.end4.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4.i

do.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %10, i32 0, i32 16
  %nr.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name.i, ptr noundef nonnull @.str.121, i32 noundef %13) #15
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.then10.do.end4.i_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %call.i.i23 = tail call i32 @saa7164_api_transition_port(ptr noundef %3, i8 noundef zeroext 2) #12
  %16 = zext i32 %call.i.i23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %call.i.i23, label %do.end.i.i [
    i32 0, label %do.end4.i.do.body4.i.i_crit_edge
    i32 38, label %do.end4.i.do.body4.i.i_crit_edge24
  ]

do.end4.i.do.body4.i.i_crit_edge24:               ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i.i

do.end4.i.do.body4.i.i_crit_edge:                 ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i.i

do.end.i.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, i32 noundef %call.i.i23) #15
  br label %saa7164_encoder_pause_port.exit.i

do.body4.i.i:                                     ; preds = %do.end4.i.do.body4.i.i_crit_edge, %do.end4.i.do.body4.i.i_crit_edge24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %17 = load i32, ptr @saa_debug, align 4
  %and.i.i = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i.saa7164_encoder_pause_port.exit.i_crit_edge, label %do.end8.i.i

do.body4.i.i.saa7164_encoder_pause_port.exit.i_crit_edge: ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa7164_encoder_pause_port.exit.i

do.end8.i.i:                                      ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i.i = getelementptr inbounds %struct.saa7164_dev, ptr %15, i32 0, i32 16
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name.i.i, ptr noundef nonnull @.str.129) #15
  br label %saa7164_encoder_pause_port.exit.i

saa7164_encoder_pause_port.exit.i:                ; preds = %do.end8.i.i, %do.body4.i.i.saa7164_encoder_pause_port.exit.i_crit_edge, %do.end.i.i
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  %call.i1.i = tail call i32 @saa7164_api_transition_port(ptr noundef %3, i8 noundef zeroext 1) #12
  %20 = zext i32 %call.i1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %call.i1.i, label %do.end.i3.i [
    i32 0, label %saa7164_encoder_pause_port.exit.i.do.body4.i6.i_crit_edge
    i32 38, label %saa7164_encoder_pause_port.exit.i.do.body4.i6.i_crit_edge25
  ]

saa7164_encoder_pause_port.exit.i.do.body4.i6.i_crit_edge25: ; preds = %saa7164_encoder_pause_port.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i6.i

saa7164_encoder_pause_port.exit.i.do.body4.i6.i_crit_edge: ; preds = %saa7164_encoder_pause_port.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i6.i

do.end.i3.i:                                      ; preds = %saa7164_encoder_pause_port.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, i32 noundef %call.i1.i) #15
  br label %saa7164_encoder_acquire_port.exit.i

do.body4.i6.i:                                    ; preds = %saa7164_encoder_pause_port.exit.i.do.body4.i6.i_crit_edge, %saa7164_encoder_pause_port.exit.i.do.body4.i6.i_crit_edge25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %21 = load i32, ptr @saa_debug, align 4
  %and.i4.i = and i32 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i)
  %tobool.not.i5.i = icmp eq i32 %and.i4.i, 0
  br i1 %tobool.not.i5.i, label %do.body4.i6.i.saa7164_encoder_acquire_port.exit.i_crit_edge, label %do.end8.i9.i

do.body4.i6.i.saa7164_encoder_acquire_port.exit.i_crit_edge: ; preds = %do.body4.i6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa7164_encoder_acquire_port.exit.i

do.end8.i9.i:                                     ; preds = %do.body4.i6.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i7.i = getelementptr inbounds %struct.saa7164_dev, ptr %19, i32 0, i32 16
  %call10.i8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %name.i7.i, ptr noundef nonnull @.str.133) #15
  br label %saa7164_encoder_acquire_port.exit.i

saa7164_encoder_acquire_port.exit.i:              ; preds = %do.end8.i9.i, %do.body4.i6.i.saa7164_encoder_acquire_port.exit.i_crit_edge, %do.end.i3.i
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 8
  %call.i10.i = tail call i32 @saa7164_api_transition_port(ptr noundef %3, i8 noundef zeroext 0) #12
  %24 = zext i32 %call.i10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %call.i10.i, label %do.end.i12.i [
    i32 0, label %saa7164_encoder_acquire_port.exit.i.do.body4.i15.i_crit_edge
    i32 38, label %saa7164_encoder_acquire_port.exit.i.do.body4.i15.i_crit_edge26
  ]

saa7164_encoder_acquire_port.exit.i.do.body4.i15.i_crit_edge26: ; preds = %saa7164_encoder_acquire_port.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i15.i

saa7164_encoder_acquire_port.exit.i.do.body4.i15.i_crit_edge: ; preds = %saa7164_encoder_acquire_port.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i15.i

do.end.i12.i:                                     ; preds = %saa7164_encoder_acquire_port.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138, i32 noundef %call.i10.i) #15
  br label %saa7164_encoder_stop_port.exit.i

do.body4.i15.i:                                   ; preds = %saa7164_encoder_acquire_port.exit.i.do.body4.i15.i_crit_edge, %saa7164_encoder_acquire_port.exit.i.do.body4.i15.i_crit_edge26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %25 = load i32, ptr @saa_debug, align 4
  %and.i13.i = and i32 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %tobool.not.i14.i, label %do.body4.i15.i.saa7164_encoder_stop_port.exit.i_crit_edge, label %do.end8.i18.i

do.body4.i15.i.saa7164_encoder_stop_port.exit.i_crit_edge: ; preds = %do.body4.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa7164_encoder_stop_port.exit.i

do.end8.i18.i:                                    ; preds = %do.body4.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i16.i = getelementptr inbounds %struct.saa7164_dev, ptr %23, i32 0, i32 16
  %call10.i17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %name.i16.i, ptr noundef nonnull @.str.138) #15
  br label %saa7164_encoder_stop_port.exit.i

saa7164_encoder_stop_port.exit.i:                 ; preds = %do.end8.i18.i, %do.body4.i15.i.saa7164_encoder_stop_port.exit.i_crit_edge, %do.end.i12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %26 = load i32, ptr @saa_debug, align 4
  %and9.i = and i32 %26, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %saa7164_encoder_stop_port.exit.i.do.end22.i_crit_edge, label %do.end14.i

saa7164_encoder_stop_port.exit.i.do.end22.i_crit_edge: ; preds = %saa7164_encoder_stop_port.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end22.i

do.end14.i:                                       ; preds = %saa7164_encoder_stop_port.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %name16.i = getelementptr inbounds %struct.saa7164_dev, ptr %10, i32 0, i32 16
  %nr18.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %nr18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr18.i, align 8
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %name16.i, ptr noundef nonnull @.str.121, i32 noundef %28) #15
  br label %do.end22.i

do.end22.i:                                       ; preds = %do.end14.i, %saa7164_encoder_stop_port.exit.i.do.end22.i_crit_edge
  %dmaqueue_lock.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %dmaqueue_lock.i, i32 noundef 0) #12
  %dmaqueue.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 14
  %29 = ptrtoint ptr %dmaqueue.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dmaqueue.i, align 8
  %cmp.i.not29.i = icmp eq ptr %30, %dmaqueue.i
  br i1 %cmp.i.not29.i, label %do.end22.i.for.end.i_crit_edge, label %do.end22.i.for.body.i_crit_edge

do.end22.i.for.body.i_crit_edge:                  ; preds = %do.end22.i
  br label %for.body.i

do.end22.i.for.end.i_crit_edge:                   ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.end22.i.for.end.i_crit_edge
  %list_buf_used.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 60
  %34 = ptrtoint ptr %list_buf_used.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %list_buf_used.i, align 8
  %cmp.i19.not32.i = icmp eq ptr %35, %list_buf_used.i
  br i1 %cmp.i19.not32.i, label %for.end.i.for.end48.i_crit_edge, label %for.body39.lr.ph.i

for.end.i.for.end48.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
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
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %c.133.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body39.i.__list_del_entry.exit.i.i_crit_edge

for.body39.i.__list_del_entry.exit.i.i_crit_edge: ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #14
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
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %c.133.i, ptr noundef %45, ptr noundef %list_buf_free.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body39.i

list_move_tail.exit.i.for.end48.i_crit_edge:      ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end48.i

for.end48.i:                                      ; preds = %list_move_tail.exit.i.for.end48.i_crit_edge, %for.end.i.for.end48.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %dmaqueue_lock.i) #12
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 8
  tail call void @mutex_lock_nested(ptr noundef %dmaqueue_lock.i, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %52 = load i32, ptr @saa_debug, align 4
  %and.i21.i = and i32 %52, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21.i)
  %tobool.not.i22.i = icmp eq i32 %and.i21.i, 0
  br i1 %tobool.not.i22.i, label %for.end48.i.do.end4.i.i_crit_edge, label %do.end.i25.i

for.end48.i.do.end4.i.i_crit_edge:                ; preds = %for.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4.i.i

do.end.i25.i:                                     ; preds = %for.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i23.i = getelementptr inbounds %struct.saa7164_dev, ptr %51, i32 0, i32 16
  %nr.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %53 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr.i.i, align 8
  %call.i24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %name.i23.i, ptr noundef nonnull @.str.143, i32 noundef %54) #15
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13.i.i

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %do.end4.i.i.for.body.i.i_crit_edge
  %c.019.i.i = phi ptr [ %n.021.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %56, %do.end4.i.i.for.body.i.i_crit_edge ]
  %57 = ptrtoint ptr %c.019.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %n.021.i.i = load ptr, ptr %c.019.i.i, align 4
  %call.i.i.i26.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %c.019.i.i) #12
  br i1 %call.i.i.i26.i, label %if.end.i.i.i27.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i

if.end.i.i.i27.i:                                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
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
  %call11.i.i = tail call i32 @saa7164_buffer_dealloc(ptr noundef %c.019.i.i) #12
  %cmp.i.not.i.i = icmp eq ptr %n.021.i.i, %dmaqueue.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.do.body13.i.i_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

list_del.exit.i.i.do.body13.i.i_crit_edge:        ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body13.i.i

do.body13.i.i:                                    ; preds = %list_del.exit.i.i.do.body13.i.i_crit_edge, %do.end4.i.i.do.body13.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %66 = load i32, ptr @saa_debug, align 4
  %and14.i.i = and i32 %66, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool15.not.i.i, label %do.body13.i.i.do.end27.i.i_crit_edge, label %do.end19.i.i

do.body13.i.i.do.end27.i.i_crit_edge:             ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27.i.i

do.end19.i.i:                                     ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %name21.i.i = getelementptr inbounds %struct.saa7164_dev, ptr %51, i32 0, i32 16
  %nr23.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %67 = ptrtoint ptr %nr23.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr23.i.i, align 8
  %call24.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %name21.i.i, ptr noundef nonnull @.str.143, i32 noundef %68) #15
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44.i.i

for.body37.i.i:                                   ; preds = %list_del.exit8.i.i.for.body37.i.i_crit_edge, %do.end27.i.i.for.body37.i.i_crit_edge
  %p.024.i.i = phi ptr [ %q.026.i.i, %list_del.exit8.i.i.for.body37.i.i_crit_edge ], [ %70, %do.end27.i.i.for.body37.i.i_crit_edge ]
  %71 = ptrtoint ptr %p.024.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %q.026.i.i = load ptr, ptr %p.024.i.i, align 4
  %call.i.i3.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.024.i.i) #12
  br i1 %call.i.i3.i.i, label %if.end.i.i6.i.i, label %for.body37.i.i.list_del.exit8.i.i_crit_edge

for.body37.i.i.list_del.exit8.i.i_crit_edge:      ; preds = %for.body37.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit8.i.i

if.end.i.i6.i.i:                                  ; preds = %for.body37.i.i
  call void @__sanitizer_cov_trace_pc() #14
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
  tail call void @saa7164_buffer_dealloc_user(ptr noundef %p.024.i.i) #12
  %cmp.i1.not.i.i = icmp eq ptr %q.026.i.i, %list_buf_used.i
  br i1 %cmp.i1.not.i.i, label %list_del.exit8.i.i.do.body44.i.i_crit_edge, label %list_del.exit8.i.i.for.body37.i.i_crit_edge

list_del.exit8.i.i.for.body37.i.i_crit_edge:      ; preds = %list_del.exit8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body37.i.i

list_del.exit8.i.i.do.body44.i.i_crit_edge:       ; preds = %list_del.exit8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body44.i.i

do.body44.i.i:                                    ; preds = %list_del.exit8.i.i.do.body44.i.i_crit_edge, %do.end27.i.i.do.body44.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %80 = load i32, ptr @saa_debug, align 4
  %and45.i.i = and i32 %80, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i.i)
  %tobool46.not.i.i = icmp eq i32 %and45.i.i, 0
  br i1 %tobool46.not.i.i, label %do.body44.i.i.do.end58.i.i_crit_edge, label %do.end50.i.i

do.body44.i.i.do.end58.i.i_crit_edge:             ; preds = %do.body44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58.i.i

do.end50.i.i:                                     ; preds = %do.body44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %name52.i.i = getelementptr inbounds %struct.saa7164_dev, ptr %51, i32 0, i32 16
  %nr54.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %81 = ptrtoint ptr %nr54.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr54.i.i, align 8
  %call55.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef %name52.i.i, ptr noundef nonnull @.str.143, i32 noundef %82) #15
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end74.i.i

for.body68.i.i:                                   ; preds = %list_del.exit16.i.i.for.body68.i.i_crit_edge, %do.end58.i.i.for.body68.i.i_crit_edge
  %l.029.i.i = phi ptr [ %v.031.i.i, %list_del.exit16.i.i.for.body68.i.i_crit_edge ], [ %84, %do.end58.i.i.for.body68.i.i_crit_edge ]
  %85 = ptrtoint ptr %l.029.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %v.031.i.i = load ptr, ptr %l.029.i.i, align 4
  %call.i.i11.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l.029.i.i) #12
  br i1 %call.i.i11.i.i, label %if.end.i.i14.i.i, label %for.body68.i.i.list_del.exit16.i.i_crit_edge

for.body68.i.i.list_del.exit16.i.i_crit_edge:     ; preds = %for.body68.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit16.i.i

if.end.i.i14.i.i:                                 ; preds = %for.body68.i.i
  call void @__sanitizer_cov_trace_pc() #14
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
  tail call void @saa7164_buffer_dealloc_user(ptr noundef %l.029.i.i) #12
  %cmp.i9.not.i.i = icmp eq ptr %v.031.i.i, %list_buf_free.i.i
  br i1 %cmp.i9.not.i.i, label %list_del.exit16.i.i.for.end74.i.i_crit_edge, label %list_del.exit16.i.i.for.body68.i.i_crit_edge

list_del.exit16.i.i.for.body68.i.i_crit_edge:     ; preds = %list_del.exit16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body68.i.i

list_del.exit16.i.i.for.end74.i.i_crit_edge:      ; preds = %list_del.exit16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end74.i.i

for.end74.i.i:                                    ; preds = %list_del.exit16.i.i.for.end74.i.i_crit_edge, %do.end58.i.i.for.end74.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %dmaqueue_lock.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %94 = load i32, ptr @saa_debug, align 4
  %and77.i.i = and i32 %94, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i.i)
  %tobool78.not.i.i = icmp eq i32 %and77.i.i, 0
  br i1 %tobool78.not.i.i, label %for.end74.i.i.saa7164_encoder_buffers_dealloc.exit.i_crit_edge, label %do.end82.i.i

for.end74.i.i.saa7164_encoder_buffers_dealloc.exit.i_crit_edge: ; preds = %for.end74.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa7164_encoder_buffers_dealloc.exit.i

do.end82.i.i:                                     ; preds = %for.end74.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %name84.i.i = getelementptr inbounds %struct.saa7164_dev, ptr %51, i32 0, i32 16
  %nr86.i.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %95 = ptrtoint ptr %nr86.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %nr86.i.i, align 8
  %call87.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name84.i.i, ptr noundef nonnull @.str.143, i32 noundef %96) #15
  br label %saa7164_encoder_buffers_dealloc.exit.i

saa7164_encoder_buffers_dealloc.exit.i:           ; preds = %do.end82.i.i, %for.end74.i.i.saa7164_encoder_buffers_dealloc.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %97 = load i32, ptr @saa_debug, align 4
  %and52.i = and i32 %97, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %saa7164_encoder_buffers_dealloc.exit.i.if.end13_crit_edge, label %do.end57.i

saa7164_encoder_buffers_dealloc.exit.i.if.end13_crit_edge: ; preds = %saa7164_encoder_buffers_dealloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

do.end57.i:                                       ; preds = %saa7164_encoder_buffers_dealloc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %name59.i = getelementptr inbounds %struct.saa7164_dev, ptr %10, i32 0, i32 16
  %nr61.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 2
  %98 = ptrtoint ptr %nr61.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %nr61.i, align 8
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %name59.i, ptr noundef nonnull @.str.121, i32 noundef %99) #15
  br label %if.end13

if.end13:                                         ; preds = %do.end57.i, %saa7164_encoder_buffers_dealloc.exit.i.if.end13_crit_edge, %if.then7.if.end13_crit_edge, %atomic_cmpxchg.exit.if.end13_crit_edge
  tail call void @v4l2_fh_del(ptr noundef %1) #12
  tail call void @v4l2_fh_exit(ptr noundef %1) #12
  tail call void @kfree(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7164_histogram_update(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7164_encoder_start_streaming(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %2 = load i32, ptr @saa_debug, align 4
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %nr = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name, ptr noundef nonnull @.str.73, i32 noundef %4) #15
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
  %and.i = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end4.do.end4.i_crit_edge, label %do.end.i

do.end4.do.end4.i_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4.i

do.end.i:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %7, i32 0, i32 16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name.i, ptr noundef nonnull @.str.101) #15
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %do.end4.do.end4.i_crit_edge
  %stream_type.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 57, i32 7
  %9 = ptrtoint ptr %stream_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stream_type.i, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %10, label %do.body43.i [
    i32 0, label %do.body6.i
    i32 1, label %do.body24.i
  ]

do.body6.i:                                       ; preds = %do.end4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %12 = load i32, ptr @saa_debug, align 4
  %and7.i = and i32 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %do.body6.i.if.end50.i_crit_edge, label %do.body6.i.if.end50.sink.split.i_crit_edge

do.body6.i.if.end50.sink.split.i_crit_edge:       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.sink.split.i

do.body6.i.if.end50.i_crit_edge:                  ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

do.body24.i:                                      ; preds = %do.end4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %13 = load i32, ptr @saa_debug, align 4
  %and25.i = and i32 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %do.body24.i.if.end50.i_crit_edge, label %do.body24.i.if.end50.sink.split.i_crit_edge

do.body24.i.if.end50.sink.split.i_crit_edge:      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.sink.split.i

do.body24.i.if.end50.i_crit_edge:                 ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.i

do.body43.i:                                      ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7164/saa7164-encoder.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 130, 0\0A.popsection", ""() #12, !srcloc !304
  unreachable

if.end50.sink.split.i:                            ; preds = %do.body24.i.if.end50.sink.split.i_crit_edge, %do.body6.i.if.end50.sink.split.i_crit_edge
  %.str.106.sink.i = phi ptr [ @.str.103, %do.body6.i.if.end50.sink.split.i_crit_edge ], [ @.str.106, %do.body24.i.if.end50.sink.split.i_crit_edge ]
  %.sink14.ph.i = phi i32 [ 128, %do.body6.i.if.end50.sink.split.i_crit_edge ], [ 188, %do.body24.i.if.end50.sink.split.i_crit_edge ]
  %.sink13.ph.i = phi i32 [ 256, %do.body6.i.if.end50.sink.split.i_crit_edge ], [ 312, %do.body24.i.if.end50.sink.split.i_crit_edge ]
  %.sink.ph.i = phi i32 [ 10, %do.body6.i.if.end50.sink.split.i_crit_edge ], [ 16, %do.body24.i.if.end50.sink.split.i_crit_edge ]
  %name32.i = getelementptr inbounds %struct.saa7164_dev, ptr %7, i32 0, i32 16
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.106.sink.i, ptr noundef %name32.i, ptr noundef nonnull @.str.101) #15
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end50.sink.split.i, %do.body24.i.if.end50.i_crit_edge, %do.body6.i.if.end50.i_crit_edge
  %.sink14.i = phi i32 [ 128, %do.body6.i.if.end50.i_crit_edge ], [ 188, %do.body24.i.if.end50.i_crit_edge ], [ %.sink14.ph.i, %if.end50.sink.split.i ]
  %.sink13.i = phi i32 [ 256, %do.body6.i.if.end50.i_crit_edge ], [ 312, %do.body24.i.if.end50.i_crit_edge ], [ %.sink13.ph.i, %if.end50.sink.split.i ]
  %.sink.i = phi i32 [ 10, %do.body6.i.if.end50.i_crit_edge ], [ 16, %do.body24.i.if.end50.i_crit_edge ], [ %.sink.ph.i, %if.end50.sink.split.i ]
  %samplesperline38.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %samplesperline38.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink14.i, ptr %samplesperline38.i, align 4
  %numberoflines39.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %numberoflines39.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink13.i, ptr %numberoflines39.i, align 4
  %pitch40.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %pitch40.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink14.i, ptr %pitch40.i, align 4
  %numpagetables41.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 7
  %17 = ptrtoint ptr %numpagetables41.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink.i, ptr %numpagetables41.i, align 4
  %18 = ptrtoint ptr %hw_streamingparams.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %hw_streamingparams.i, align 4
  %linethreshold.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 4
  %19 = ptrtoint ptr %linethreshold.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %linethreshold.i, align 4
  %pagetablelistvirt.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 5
  %20 = ptrtoint ptr %pagetablelistvirt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pagetablelistvirt.i, align 4
  %pagetablelistphys.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 6
  %21 = ptrtoint ptr %pagetablelistphys.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %pagetablelistphys.i, align 4
  %buffercount.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 4, i32 11
  %22 = ptrtoint ptr %buffercount.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buffercount.i, align 1
  %conv.i = zext i8 %23 to i32
  %numpagetableentries.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %numpagetableentries.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv.i, ptr %numpagetableentries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp548.not.i = icmp eq i8 %23, 0
  br i1 %cmp548.not.i, label %if.end50.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end50.i.for.end.i_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end50.i
  %dmaqueue_lock.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 13
  %dmaqueue.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 14
  %prev.i.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 14, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %numberoflines39.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %numberoflines39.i, align 4
  %27 = ptrtoint ptr %pitch40.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pitch40.i, align 4
  %mul.i = mul i32 %28, %26
  %call58.i = tail call ptr @saa7164_buffer_alloc(ptr noundef %port, i32 noundef %mul.i) #12
  %tobool59.not.i = icmp eq ptr %call58.i, null
  br i1 %tobool59.not.i, label %do.end63.i, label %if.else66.i

do.end63.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.101, i32 noundef -19) #15
  br label %saa7164_encoder_buffers_alloc.exit

if.else66.i:                                      ; preds = %for.body.i
  tail call void @mutex_lock_nested(ptr noundef %dmaqueue_lock.i, i32 noundef 0) #12
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call58.i, ptr noundef %30, ptr noundef %dmaqueue.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else66.i.list_add_tail.exit.i_crit_edge

if.else66.i.list_add_tail.exit.i_crit_edge:       ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call58.i, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %call58.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dmaqueue.i, ptr %call58.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call58.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call58.i, ptr %30, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.else66.i.list_add_tail.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %dmaqueue_lock.i) #12
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %35 = ptrtoint ptr %buffercount.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %buffercount.i, align 1
  %conv53.i = zext i8 %36 to i32
  %cmp54.i = icmp ult i32 %inc.i, %conv53.i
  br i1 %cmp54.i, label %list_add_tail.exit.i.for.body.i_crit_edge, label %list_add_tail.exit.i.for.end.i_crit_edge

list_add_tail.exit.i.for.end.i_crit_edge:         ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %list_add_tail.exit.i.for.end.i_crit_edge, %if.end50.i.for.end.i_crit_edge
  %37 = ptrtoint ptr %numberoflines39.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %numberoflines39.i, align 4
  %39 = ptrtoint ptr %pitch40.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pitch40.i, align 4
  %mul72.i = mul i32 %40, %38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @encoder_buffers to i32))
  %41 = load i32, ptr @encoder_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %41)
  %cmp73.i = icmp ult i32 %41, 16
  br i1 %cmp73.i, label %for.end.i.for.body84.lr.ph.sink.split.i_crit_edge, label %if.end76.i

for.end.i.for.body84.lr.ph.sink.split.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body84.lr.ph.sink.split.i

if.end76.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %41)
  %cmp77.i = icmp ugt i32 %41, 512
  br i1 %cmp77.i, label %if.end76.i.for.body84.lr.ph.sink.split.i_crit_edge, label %if.end76.i.for.body84.lr.ph.i_crit_edge

if.end76.i.for.body84.lr.ph.i_crit_edge:          ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body84.lr.ph.i

if.end76.i.for.body84.lr.ph.sink.split.i_crit_edge: ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body84.lr.ph.sink.split.i

for.body84.lr.ph.sink.split.i:                    ; preds = %if.end76.i.for.body84.lr.ph.sink.split.i_crit_edge, %for.end.i.for.body84.lr.ph.sink.split.i_crit_edge
  %.sink15.i = phi i32 [ 16, %for.end.i.for.body84.lr.ph.sink.split.i_crit_edge ], [ 512, %if.end76.i.for.body84.lr.ph.sink.split.i_crit_edge ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @encoder_buffers to i32))
  store i32 %.sink15.i, ptr @encoder_buffers, align 4
  br label %for.body84.lr.ph.i

for.body84.lr.ph.i:                               ; preds = %for.body84.lr.ph.sink.split.i, %if.end76.i.for.body84.lr.ph.i_crit_edge
  %dmaqueue_lock88.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 13
  %list_buf_free.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 61
  %prev.i1.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 61, i32 0, i32 1
  br label %for.body84.i

for.body84.i:                                     ; preds = %for.inc93.i.for.body84.i_crit_edge, %for.body84.lr.ph.i
  %i.111.i = phi i32 [ 0, %for.body84.lr.ph.i ], [ %inc94.i, %for.inc93.i.for.body84.i_crit_edge ]
  %call85.i = tail call ptr @saa7164_buffer_alloc_user(ptr noundef %7, i32 noundef %mul72.i) #12
  %tobool86.not.i = icmp eq ptr %call85.i, null
  br i1 %tobool86.not.i, label %for.body84.i.for.inc93.i_crit_edge, label %if.then87.i

for.body84.i.for.inc93.i_crit_edge:               ; preds = %for.body84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc93.i

if.then87.i:                                      ; preds = %for.body84.i
  tail call void @mutex_lock_nested(ptr noundef %dmaqueue_lock88.i, i32 noundef 0) #12
  %42 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i1.i, align 4
  %call.i.i2.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call85.i, ptr noundef %43, ptr noundef %list_buf_free.i) #12
  br i1 %call.i.i2.i, label %if.end.i.i4.i, label %if.then87.i.list_add_tail.exit5.i_crit_edge

if.then87.i.list_add_tail.exit5.i_crit_edge:      ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit5.i

if.end.i.i4.i:                                    ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call85.i, ptr %prev.i1.i, align 4
  %45 = ptrtoint ptr %call85.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %list_buf_free.i, ptr %call85.i, align 4
  %prev3.i.i3.i = getelementptr inbounds %struct.list_head, ptr %call85.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i3.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call85.i, ptr %43, align 4
  br label %list_add_tail.exit5.i

list_add_tail.exit5.i:                            ; preds = %if.end.i.i4.i, %if.then87.i.list_add_tail.exit5.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %dmaqueue_lock88.i) #12
  br label %for.inc93.i

for.inc93.i:                                      ; preds = %list_add_tail.exit5.i, %for.body84.i.for.inc93.i_crit_edge
  %inc94.i = add nuw i32 %i.111.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @encoder_buffers to i32))
  %48 = load i32, ptr @encoder_buffers, align 4
  %cmp82.i = icmp ult i32 %inc94.i, %48
  br i1 %cmp82.i, label %for.inc93.i.for.body84.i_crit_edge, label %for.inc93.i.saa7164_encoder_buffers_alloc.exit_crit_edge

for.inc93.i.saa7164_encoder_buffers_alloc.exit_crit_edge: ; preds = %for.inc93.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa7164_encoder_buffers_alloc.exit

for.inc93.i.for.body84.i_crit_edge:               ; preds = %for.inc93.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body84.i

saa7164_encoder_buffers_alloc.exit:               ; preds = %for.inc93.i.saa7164_encoder_buffers_alloc.exit_crit_edge, %do.end63.i
  %call6 = tail call i32 @saa7164_api_set_encoder(ptr noundef %port) #12
  %call7 = tail call i32 @saa7164_api_get_encoder(ptr noundef %port) #12
  %call8 = tail call i32 @saa7164_buffer_cfg_port(ptr noundef %port) #12
  %call9 = tail call i32 @saa7164_api_transition_port(ptr noundef %port, i8 noundef zeroext 1) #12
  %49 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %call9, label %do.end14 [
    i32 0, label %saa7164_encoder_buffers_alloc.exit.do.body28_crit_edge
    i32 38, label %saa7164_encoder_buffers_alloc.exit.do.body28_crit_edge1
  ]

saa7164_encoder_buffers_alloc.exit.do.body28_crit_edge1: ; preds = %saa7164_encoder_buffers_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body28

saa7164_encoder_buffers_alloc.exit.do.body28_crit_edge: ; preds = %saa7164_encoder_buffers_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body28

do.end14:                                         ; preds = %saa7164_encoder_buffers_alloc.exit
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.73, i32 noundef %call9) #15
  %call17 = tail call i32 @saa7164_api_transition_port(ptr noundef %port, i8 noundef zeroext 0) #12
  %50 = zext i32 %call17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %call17, label %do.end24 [
    i32 0, label %do.end14.out_crit_edge
    i32 38, label %do.end14.out_crit_edge2
  ]

do.end14.out_crit_edge2:                          ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end24:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.73, i32 noundef %call17) #15
  br label %out

do.body28:                                        ; preds = %saa7164_encoder_buffers_alloc.exit.do.body28_crit_edge, %saa7164_encoder_buffers_alloc.exit.do.body28_crit_edge1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %51 = load i32, ptr @saa_debug, align 4
  %and29 = and i32 %51, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.if.end42_crit_edge, label %do.end34

do.body28.if.end42_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  %name36 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %name36, ptr noundef nonnull @.str.73) #15
  br label %if.end42

if.end42:                                         ; preds = %do.end34, %do.body28.if.end42_crit_edge
  %call43 = tail call i32 @saa7164_api_transition_port(ptr noundef %port, i8 noundef zeroext 2) #12
  %52 = zext i32 %call43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %call43, label %do.end50 [
    i32 0, label %if.end42.do.body65_crit_edge
    i32 38, label %if.end42.do.body65_crit_edge3
  ]

if.end42.do.body65_crit_edge3:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body65

if.end42.do.body65_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body65

do.end50:                                         ; preds = %if.end42
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.73, i32 noundef %call43) #15
  %call53 = tail call i32 @saa7164_api_transition_port(ptr noundef %port, i8 noundef zeroext 0) #12
  %53 = zext i32 %call53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %call53, label %do.end60 [
    i32 0, label %do.end50.out_crit_edge
    i32 38, label %do.end50.out_crit_edge4
  ]

do.end50.out_crit_edge4:                          ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end50.out_crit_edge:                           ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end60:                                         ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #14
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.73, i32 noundef %call53) #15
  br label %out

do.body65:                                        ; preds = %if.end42.do.body65_crit_edge, %if.end42.do.body65_crit_edge3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %54 = load i32, ptr @saa_debug, align 4
  %and66 = and i32 %54, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.body65.if.end79_crit_edge, label %do.end71

do.body65.if.end79_crit_edge:                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

do.end71:                                         ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #14
  %name73 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name73, ptr noundef nonnull @.str.73) #15
  br label %if.end79

if.end79:                                         ; preds = %do.end71, %do.body65.if.end79_crit_edge
  %call80 = tail call i32 @saa7164_api_transition_port(ptr noundef %port, i8 noundef zeroext 3) #12
  %55 = zext i32 %call80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %call80, label %do.end87 [
    i32 0, label %if.end79.do.body102_crit_edge
    i32 38, label %if.end79.do.body102_crit_edge5
  ]

if.end79.do.body102_crit_edge5:                   ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body102

if.end79.do.body102_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body102

do.end87:                                         ; preds = %if.end79
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.73, i32 noundef %call80) #15
  %call90 = tail call i32 @saa7164_api_transition_port(ptr noundef %port, i8 noundef zeroext 0) #12
  %56 = zext i32 %call90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %call90, label %do.end97 [
    i32 0, label %do.end87.out_crit_edge
    i32 38, label %do.end87.out_crit_edge6
  ]

do.end87.out_crit_edge6:                          ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end87.out_crit_edge:                           ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end97:                                         ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #14
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.73, i32 noundef %call90) #15
  br label %out

do.body102:                                       ; preds = %if.end79.do.body102_crit_edge, %if.end79.do.body102_crit_edge5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %57 = load i32, ptr @saa_debug, align 4
  %and103 = and i32 %57, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %do.body102.out_crit_edge, label %do.end108

do.body102.out_crit_edge:                         ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end108:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #14
  %name110 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %name110, ptr noundef nonnull @.str.73) #15
  br label %out

out:                                              ; preds = %do.end108, %do.body102.out_crit_edge, %do.end97, %do.end87.out_crit_edge, %do.end87.out_crit_edge6, %do.end60, %do.end50.out_crit_edge, %do.end50.out_crit_edge4, %do.end24, %do.end14.out_crit_edge, %do.end14.out_crit_edge2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @saa7164_enc_next_buf(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %dmaqueue_lock = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %dmaqueue_lock, i32 noundef 0) #12
  %list_buf_used = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 60
  %2 = ptrtoint ptr %list_buf_used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %list_buf_used, align 4
  %cmp.i.not = icmp eq ptr %3, %list_buf_used
  br i1 %cmp.i.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @crc_checking to i32))
  %4 = load i32, ptr @crc_checking, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.then.if.end13_crit_edge, label %if.then5

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
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
  %call6 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %6, i32 noundef %8) #18
  %crc7 = getelementptr inbounds %struct.saa7164_user_buffer, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %crc7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %crc7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %10)
  %cmp.not = icmp eq i32 %call6, %10
  br i1 %cmp.not, label %if.then5.if.end13_crit_edge, label %do.end

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, ptr noundef %3, i32 noundef %10, i32 noundef %call6) #15
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then5.if.end13_crit_edge, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %ubuf.0 = phi ptr [ null, %entry.if.end13_crit_edge ], [ %3, %do.end ], [ %3, %if.then5.if.end13_crit_edge ], [ %3, %if.then.if.end13_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %dmaqueue_lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %11 = load i32, ptr @saa_debug, align 4
  %and = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end13.do.end25_crit_edge, label %do.end20

if.end13.do.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %name, ptr noundef nonnull @.str.112, ptr noundef %ubuf.0) #15
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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_buffer_cfg_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_transition_port(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @saa7164_buffer_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @saa7164_buffer_alloc_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

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
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

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
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port1 = getelementptr inbounds %struct.saa7164_encoder_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %5, i32 0, i32 16
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef %name, i32 noundef 16) #12
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %board = getelementptr inbounds %struct.saa7164_dev, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %board, align 8
  %arrayidx = getelementptr [0 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call6 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %9, i32 noundef 32) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bus_info, ptr noundef nonnull @.str.152, ptr noundef %retval.0.i.i)
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %16 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -2130640879, ptr %capabilities, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1195724877, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port1 = getelementptr inbounds %struct.saa7164_encoder_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1195724877, ptr %pixelformat, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %5 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bytesperline, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %6 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 65536, ptr %sizeimage, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %colorspace, align 4
  %width = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 38
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 37
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 8
  %height9 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %height9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height9, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_g_std(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %id) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.saa7164_encoder_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %std.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 36
  %4 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %std.i, align 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %id, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_std(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, i64 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.saa7164_encoder_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %6 = load i32, ptr @saa_debug, align 4
  %and.i = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end4.i_crit_edge, label %do.end.i

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %5, i32 0, i32 16
  %conv.i = trunc i64 %id to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i, ptr noundef nonnull @.str.1, i32 noundef %conv.i) #15
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %entry.do.end4.i_crit_edge
  %and7.i = and i64 %id, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i)
  %tobool8.not.i = icmp eq i64 %and7.i, 0
  br i1 %tobool8.not.i, label %for.inc.i, label %do.end4.i.if.end14.i_crit_edge

do.end4.i.if.end14.i_crit_edge:                   ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

for.inc.i:                                        ; preds = %do.end4.i
  %and7.1.i = and i64 %id, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.1.i)
  %tobool8.not.1.i = icmp eq i64 %and7.1.i, 0
  br i1 %tobool8.not.1.i, label %for.inc.i.saa7164_s_std.exit_crit_edge, label %for.inc.i.if.end14.i_crit_edge

for.inc.i.if.end14.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

for.inc.i.saa7164_s_std.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa7164_s_std.exit

if.end14.i:                                       ; preds = %for.inc.i.if.end14.i_crit_edge, %do.end4.i.if.end14.i_crit_edge
  %i.047.lcssa.i = phi i32 [ 0, %do.end4.i.if.end14.i_crit_edge ], [ 1, %for.inc.i.if.end14.i_crit_edge ]
  %encodernorm.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 34
  %arrayidx15.i = getelementptr [2 x %struct.saa7164_tvnorm], ptr @saa7164_tvnorms, i32 0, i32 %i.047.lcssa.i
  %7 = call ptr @memcpy(ptr %encodernorm.i, ptr %arrayidx15.i, i32 16)
  %std.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 36
  %8 = ptrtoint ptr %std.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %id, ptr %std.i, align 8
  %call16.i = tail call i32 @saa7164_api_set_audio_std(ptr noundef %3) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %9 = load i32, ptr @saa_debug, align 4
  %and18.i = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end14.i.saa7164_s_std.exit_crit_edge, label %do.end23.i

if.end14.i.saa7164_s_std.exit_crit_edge:          ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa7164_s_std.exit

do.end23.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %name25.i = getelementptr inbounds %struct.saa7164_dev, ptr %5, i32 0, i32 16
  %conv27.i = trunc i64 %id to i32
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name25.i, ptr noundef nonnull @.str.1, i32 noundef %conv27.i) #15
  br label %saa7164_s_std.exit

saa7164_s_std.exit:                               ; preds = %do.end23.i, %if.end14.i.saa7164_s_std.exit_crit_edge, %for.inc.i.saa7164_s_std.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end23.i ], [ 0, %if.end14.i.saa7164_s_std.exit_crit_edge ], [ -22, %for.inc.i.saa7164_s_std.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_input(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.saa7164_encoder_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @saa7164_api_get_videomux(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.saa7164_g_input.exit_crit_edge

entry.saa7164_g_input.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa7164_g_input.exit

if.end.i:                                         ; preds = %entry
  %mux_input.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 40
  %6 = ptrtoint ptr %mux_input.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mux_input.i, align 4
  %conv.i = zext i8 %7 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %8 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.i, ptr %i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %9 = load i32, ptr @saa_debug, align 4
  %and.i = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.saa7164_g_input.exit_crit_edge, label %do.end.i

if.end.i.saa7164_g_input.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa7164_g_input.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %5, i32 0, i32 16
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name.i, ptr noundef nonnull @.str.14, i32 noundef %sub.i) #15
  br label %saa7164_g_input.exit

saa7164_g_input.exit:                             ; preds = %do.end.i, %if.end.i.saa7164_g_input.exit_crit_edge, %entry.saa7164_g_input.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %entry.saa7164_g_input.exit_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end.i.saa7164_g_input.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_input(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.saa7164_encoder_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %4 = load i32, ptr @saa_debug, align 4
  %and.i = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end4.i_crit_edge, label %do.end.i

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 8
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %6, i32 0, i32 16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name.i, ptr noundef nonnull @.str.15, i32 noundef %i) #15
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %entry.do.end4.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i)
  %cmp.i = icmp ugt i32 %i, 6
  br i1 %cmp.i, label %do.end4.i.saa7164_s_input.exit_crit_edge, label %if.end6.i

do.end4.i.saa7164_s_input.exit_crit_edge:         ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa7164_s_input.exit

if.end6.i:                                        ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = trunc i32 %i to i8
  %conv.i = add nuw nsw i8 %7, 1
  %mux_input.i = getelementptr inbounds %struct.saa7164_port, ptr %3, i32 0, i32 40
  %8 = ptrtoint ptr %mux_input.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %mux_input.i, align 4
  %call7.i = tail call i32 @saa7164_api_set_videomux(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.not.i = icmp eq i32 %call7.i, 0
  %..i = select i1 %cmp8.not.i, i32 0, i32 -5
  br label %saa7164_s_input.exit

saa7164_s_input.exit:                             ; preds = %if.end6.i, %do.end4.i.saa7164_s_input.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end4.i.saa7164_s_input.exit_crit_edge ], [ %..i, %if.end6.i ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.saa7164_g_frequency.exit_crit_edge

entry.saa7164_g_frequency.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa7164_g_frequency.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.saa7164_encoder_fh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %freq.i = getelementptr inbounds %struct.saa7164_port, ptr %5, i32 0, i32 39
  %6 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %freq.i, align 8
  %frequency.i = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %8 = ptrtoint ptr %frequency.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %frequency.i, align 4
  br label %saa7164_g_frequency.exit

saa7164_g_frequency.exit:                         ; preds = %if.end.i, %entry.saa7164_g_frequency.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %entry.saa7164_g_frequency.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.saa7164_encoder_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %call = tail call i32 @saa7164_s_frequency(ptr noundef %3, ptr noundef %f)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !88, !90, !92, !93, !94, !96, !98, !99, !100, !101, !103, !104, !106, !107, !108, !110, !112, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !210, !211, !213, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !240, !242, !243, !245, !246, !247, !248, !250, !251, !252, !254, !255, !256, !257, !259, !260, !261, !263, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !279}
!llvm.module.flags = !{!281, !282, !283, !284, !285, !286, !287, !288}
!llvm.ident = !{!289}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 198, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @saa7164_s_std._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @saa7164_s_std._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 215, i32 2}
!8 = !{ptr @saa7164_s_std._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @saa7164_s_std._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 243, i32 3}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 243, i32 12}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 243, i32 25}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 243, i32 35}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 244, i32 3}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 244, i32 18}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 244, i32 30}
!24 = !{ptr @saa7164_enum_input.inputs, !25, !"inputs", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 242, i32 28}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 273, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @saa7164_g_input._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @saa7164_g_input._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 289, i32 2}
!33 = !{ptr @saa7164_s_input._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @saa7164_s_input._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 323, i32 2}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @saa7164_g_tuner._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @saa7164_g_tuner._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 371, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @saa7164_s_frequency._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @saa7164_s_frequency._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 393, i32 3}
!47 = !{ptr @saa7164_s_frequency._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @saa7164_s_frequency._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 1002, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @saa7164_encoder_register._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @saa7164_encoder_register._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 1008, i32 3}
!56 = !{ptr @saa7164_encoder_register._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @saa7164_encoder_register._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @saa7164_encoder_register._key, !59, !"_key", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 1024, i32 2}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 1077, i32 37}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 1080, i32 3}
!65 = !{ptr @saa7164_encoder_register._entry.30, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @saa7164_encoder_register._entry_ptr.32, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 1092, i32 3}
!69 = !{ptr @saa7164_encoder_register._entry.33, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @saa7164_encoder_register._entry_ptr.35, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 1097, i32 2}
!73 = !{ptr @saa7164_encoder_register._entry.36, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @saa7164_encoder_register._entry_ptr.38, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 1131, i32 2}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @saa7164_encoder_unregister._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @saa7164_encoder_unregister._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 1145, i32 2}
!82 = !{ptr @saa7164_encoder_unregister._entry.41, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @saa7164_encoder_unregister._entry_ptr.43, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 28, i32 16}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 31, i32 16}
!88 = !{ptr @saa7164_tvnorms, !89, !"saa7164_tvnorms", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 26, i32 30}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 42, i32 2}
!92 = !{ptr @saa7164_encoder_configure._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @saa7164_encoder_configure._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @saa7164_ctrl_ops, !95, !"saa7164_ctrl_ops", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 929, i32 35}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 450, i32 4}
!98 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @saa7164_s_ctrl._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @saa7164_s_ctrl._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @saa7164_s_ctrl._entry.49, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 459, i32 4}
!103 = !{ptr @saa7164_s_ctrl._entry_ptr.50, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 981, i32 2}
!106 = !{ptr @saa7164_encoder_alloc._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @saa7164_encoder_alloc._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 988, i32 41}
!110 = !{ptr @saa7164_mpeg_template, !111, !"saa7164_mpeg_template", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 962, i32 28}
!112 = !{ptr @mpeg_fops, !113, !"mpeg_fops", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 933, i32 42}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 808, i32 3}
!116 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @fops_read._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @fops_read._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 816, i32 5}
!121 = !{ptr @fops_read._entry.55, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @fops_read._entry_ptr.57, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 829, i32 5}
!125 = !{ptr @fops_read._entry.58, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @fops_read._entry_ptr.60, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 845, i32 3}
!129 = !{ptr @fops_read._entry.61, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @fops_read._entry_ptr.63, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 850, i32 4}
!133 = !{ptr @fops_read._entry.64, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @fops_read._entry_ptr.66, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 852, i32 5}
!137 = !{ptr @fops_read._entry.67, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @fops_read._entry_ptr.69, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 864, i32 4}
!141 = !{ptr @fops_read._entry.70, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @fops_read._entry_ptr.72, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.73, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 635, i32 2}
!145 = !{ptr @saa7164_encoder_start_streaming._entry, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @saa7164_encoder_start_streaming._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 655, i32 3}
!149 = !{ptr @saa7164_encoder_start_streaming._entry.74, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @saa7164_encoder_start_streaming._entry_ptr.76, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.78, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 661, i32 4}
!153 = !{ptr @saa7164_encoder_start_streaming._entry.77, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @saa7164_encoder_start_streaming._entry_ptr.79, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.81, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 667, i32 3}
!157 = !{ptr @saa7164_encoder_start_streaming._entry.80, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @saa7164_encoder_start_streaming._entry_ptr.82, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.84, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 672, i32 3}
!161 = !{ptr @saa7164_encoder_start_streaming._entry.83, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @saa7164_encoder_start_streaming._entry_ptr.85, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.87, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 678, i32 4}
!165 = !{ptr @saa7164_encoder_start_streaming._entry.86, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @saa7164_encoder_start_streaming._entry_ptr.88, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.90, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 685, i32 3}
!169 = !{ptr @saa7164_encoder_start_streaming._entry.89, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @saa7164_encoder_start_streaming._entry_ptr.91, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.93, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 690, i32 3}
!173 = !{ptr @saa7164_encoder_start_streaming._entry.92, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @saa7164_encoder_start_streaming._entry_ptr.94, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.96, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 696, i32 4}
!177 = !{ptr @saa7164_encoder_start_streaming._entry.95, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @saa7164_encoder_start_streaming._entry_ptr.97, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.99, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 702, i32 3}
!181 = !{ptr @saa7164_encoder_start_streaming._entry.98, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @saa7164_encoder_start_streaming._entry_ptr.100, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.101, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 106, i32 2}
!185 = !{ptr @saa7164_encoder_buffers_alloc._entry, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @saa7164_encoder_buffers_alloc._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.103, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 110, i32 3}
!189 = !{ptr @saa7164_encoder_buffers_alloc._entry.102, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @saa7164_encoder_buffers_alloc._entry_ptr.104, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.106, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 121, i32 3}
!193 = !{ptr @saa7164_encoder_buffers_alloc._entry.105, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @saa7164_encoder_buffers_alloc._entry_ptr.107, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.109, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 146, i32 4}
!197 = !{ptr @saa7164_encoder_buffers_alloc._entry.108, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @saa7164_encoder_buffers_alloc._entry_ptr.110, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.111, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 773, i32 5}
!201 = !{ptr @.str.112, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @saa7164_enc_next_buf._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @saa7164_enc_next_buf._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.114, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 783, i32 2}
!206 = !{ptr @saa7164_enc_next_buf._entry.113, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @saa7164_enc_next_buf._entry_ptr.115, !205, !"_entry_ptr", i1 false, i1 false}
!208 = distinct !{null, !209, !"__already_done", i1 false, i1 false}
!209 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!210 = !{ptr @.str.116, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.117, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!213 = !{ptr @.str.118, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!215 = !{ptr @.str.119, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 720, i32 2}
!217 = !{ptr @fops_open._entry, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @fops_open._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.120, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 741, i32 2}
!221 = !{ptr @fops_release._entry, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @fops_release._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.121, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 595, i32 2}
!225 = !{ptr @saa7164_encoder_stop_streaming._entry, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @saa7164_encoder_stop_streaming._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.123, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 601, i32 2}
!229 = !{ptr @saa7164_encoder_stop_streaming._entry.122, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @saa7164_encoder_stop_streaming._entry_ptr.124, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.126, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 625, i32 2}
!233 = !{ptr @saa7164_encoder_stop_streaming._entry.125, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @saa7164_encoder_stop_streaming._entry_ptr.127, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.128, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 570, i32 3}
!237 = !{ptr @.str.129, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @saa7164_encoder_pause_port._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @saa7164_encoder_pause_port._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @saa7164_encoder_pause_port._entry.130, !241, !"_entry", i1 false, i1 false}
!241 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 574, i32 3}
!242 = !{ptr @saa7164_encoder_pause_port._entry_ptr.131, !241, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.132, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 552, i32 3}
!245 = !{ptr @.str.133, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @saa7164_encoder_acquire_port._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @saa7164_encoder_acquire_port._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.135, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 556, i32 3}
!250 = !{ptr @saa7164_encoder_acquire_port._entry.134, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @saa7164_encoder_acquire_port._entry_ptr.136, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.137, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 534, i32 3}
!254 = !{ptr @.str.138, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @saa7164_encoder_stop_port._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @saa7164_encoder_stop_port._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.140, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 538, i32 3}
!259 = !{ptr @saa7164_encoder_stop_port._entry.139, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @saa7164_encoder_stop_port._entry_ptr.141, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.142, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 69, i32 2}
!263 = !{ptr @.str.143, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @saa7164_encoder_buffers_dealloc._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @saa7164_encoder_buffers_dealloc._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.145, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 76, i32 2}
!268 = !{ptr @saa7164_encoder_buffers_dealloc._entry.144, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @saa7164_encoder_buffers_dealloc._entry_ptr.146, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.148, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 83, i32 2}
!272 = !{ptr @saa7164_encoder_buffers_dealloc._entry.147, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @saa7164_encoder_buffers_dealloc._entry_ptr.149, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @saa7164_encoder_buffers_dealloc._entry.150, !275, !"_entry", i1 false, i1 false}
!275 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 91, i32 2}
!276 = !{ptr @saa7164_encoder_buffers_dealloc._entry_ptr.151, !275, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @mpeg_ioctl_ops, !278, !"mpeg_ioctl_ops", i1 false, i1 false}
!278 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 942, i32 36}
!279 = !{ptr @.str.152, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/pci/saa7164/saa7164-encoder.c", i32 493, i32 25}
!281 = !{i32 1, !"wchar_size", i32 2}
!282 = !{i32 1, !"min_enum_size", i32 4}
!283 = !{i32 8, !"branch-target-enforcement", i32 0}
!284 = !{i32 8, !"sign-return-address", i32 0}
!285 = !{i32 8, !"sign-return-address-all", i32 0}
!286 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!287 = !{i32 7, !"uwtable", i32 1}
!288 = !{i32 7, !"frame-pointer", i32 2}
!289 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!290 = !{i64 2158519267, i64 2158519775, i64 2158519304, i64 2158519360, i64 2158519394, i64 2158519418, i64 2158519459, i64 2158519480, i64 2158519508, i64 2158519542}
!291 = !{!"branch_weights", i32 2000, i32 1}
!292 = !{i64 2158590645, i64 2158591154, i64 2158590682, i64 2158590738, i64 2158590772, i64 2158590796, i64 2158590837, i64 2158590858, i64 2158590886, i64 2158590920}
!293 = !{i64 2158601815, i64 2158602324, i64 2158601852, i64 2158601908, i64 2158601942, i64 2158601966, i64 2158602007, i64 2158602028, i64 2158602056, i64 2158602090}
!294 = !{i64 2148809637}
!295 = !{i64 1193303, i64 1193327, i64 1193348, i64 1193365, i64 1193382}
!296 = !{i64 2148809863}
!297 = !{i64 2148793225}
!298 = !{i64 2148708510, i64 2148708542, i64 2148708571, i64 2148708605, i64 2148708636, i64 2148708659}
!299 = !{i64 2148793454}
!300 = !{i64 2153923247, i64 2153923272}
!301 = !{i64 2148796266}
!302 = !{i64 2148710975, i64 2148711007, i64 2148711036, i64 2148711070, i64 2148711101, i64 2148711124}
!303 = !{i64 2148796495}
!304 = !{i64 2158493672, i64 2158494180, i64 2158493709, i64 2158493765, i64 2158493799, i64 2158493823, i64 2158493864, i64 2158493885, i64 2158493913, i64 2158493947}
