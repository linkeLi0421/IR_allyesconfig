; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7164/saa7164-api.c_pt.bc'
source_filename = "../drivers/media/pci/saa7164/saa7164-api.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.saa7164_dev = type { %struct.list_head, %struct.atomic_t, %struct.v4l2_device, ptr, i8, i8, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [16 x i8], %struct.saa7164_fw_status, i32, %struct.tmComResHWDescr, %struct.tmComResInterfaceDescr, %struct.tmComResBusDescr, %struct.tmComResBusInfo, i32, i32, i8, [256 x %struct.cmd], %struct.mutex, [3 x %struct.saa7164_i2c], [6 x %struct.saa7164_port], %struct.work_struct, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.saa7164_fw_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tmComResHWDescr = type <{ i8, i8, i8, i16, i32, i32, i8, i32, i32, i32, i32, i32 }>
%struct.tmComResInterfaceDescr = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.tmComResBusDescr = type { i64, i64, i32, i32, i32, i32 }
%struct.tmComResBusInfo = type { i32, i16, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.mutex }
%struct.cmd = type { i8, i32, i32, i32, %struct.mutex, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.saa7164_i2c = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_client, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tmFwInfoStruct = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tmComResDebugGetData = type { i32, [256 x i8] }
%struct.tmComResDebugSetLevel = type { i32 }
%struct.tmComResProbeCommit = type { i16, i8, i8 }
%struct.tmComResEncVideoGopStructure = type { i8, i8 }
%struct.tmComResEncVideoBitRate = type <{ i8, i32, i32 }>
%struct.tmComResEncAudioBitRate = type <{ i8, i32, i32 }>
%struct.tmComResEncVideoInputAspectRatio = type { i8, i8 }
%struct.tmComResAudioDefaults = type { i8, i8, i8, i8, i8, i8 }
%struct.tmComResTunerStandard = type <{ i8, i32 }>
%struct.tmComResTunerStandardAuto = type { i8 }
%struct.tmComResDescrHeader = type { i8, i8, i8, i8 }
%struct.tmComResPathDescrHeader = type { i8, i8, i8, i8 }
%struct.tmComResAntTermDescrHeader = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.tmComResTSFormatDescrHeader = type { i8, i8, i8, i8, i8, i8, i8, [16 x i8] }
%struct.tmComResPSFormatDescrHeader = type <{ i8, i8, i8, i8, i16, i16, i8 }>
%struct.tmComResSelDescrHeader = type { i8, i8, i8, i8, i8, i8 }
%struct.tmComResGPIO = type <{ i32, i8 }>

@saa_debug = external dso_local local_unnamed_addr global i32, align 4
@saa7164_api_get_load_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 20, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s: %s()\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"saa7164_api_get_load_info\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/saa7164/saa7164-api.c\00", [56 x i8] zeroinitializer }, align 32
@saa7164_api_get_load_info._entry_ptr = internal global ptr @saa7164_api_get_load_info._entry, section ".printk_index", align 4
@saa7164_api_get_load_info._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s() error, ret = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_api_get_load_info._entry_ptr.5 = internal global ptr @saa7164_api_get_load_info._entry.3, section ".printk_index", align 4
@saa7164_api_get_load_info._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016saa7164[%d]-CPU: %d percent\00", [34 x i8] zeroinitializer }, align 32
@saa7164_api_get_load_info._entry_ptr.8 = internal global ptr @saa7164_api_get_load_info._entry.6, section ".printk_index", align 4
@saa7164_api_collect_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"saa7164_api_collect_debug\00", [38 x i8] zeroinitializer }, align 32
@saa7164_api_collect_debug._entry_ptr = internal global ptr @saa7164_api_collect_debug._entry, section ".printk_index", align 4
@saa7164_api_collect_debug._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.9, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_collect_debug._entry_ptr.11 = internal global ptr @saa7164_api_collect_debug._entry.10, section ".printk_index", align 4
@saa7164_api_collect_debug._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016saa7164[%d]-FWMSG: %s\00", [40 x i8] zeroinitializer }, align 32
@saa7164_api_collect_debug._entry_ptr.14 = internal global ptr @saa7164_api_collect_debug._entry.12, section ".printk_index", align 4
@saa7164_api_set_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s(level=%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"saa7164_api_set_debug\00", [42 x i8] zeroinitializer }, align 32
@saa7164_api_set_debug._entry_ptr = internal global ptr @saa7164_api_set_debug._entry, section ".printk_index", align 4
@saa7164_api_set_debug._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.16, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_debug._entry_ptr.18 = internal global ptr @saa7164_api_set_debug._entry.17, section ".printk_index", align 4
@saa7164_api_set_debug._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: %s() Was %d\0A\00", [45 x i8] zeroinitializer }, align 32
@saa7164_api_set_debug._entry_ptr.21 = internal global ptr @saa7164_api_set_debug._entry.19, section ".printk_index", align 4
@saa7164_api_set_debug._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.16, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_debug._entry_ptr.23 = internal global ptr @saa7164_api_set_debug._entry.22, section ".printk_index", align 4
@saa7164_api_set_vbi_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s(nr=%d, unitid=0x%x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"saa7164_api_set_vbi_format\00", [37 x i8] zeroinitializer }, align 32
@saa7164_api_set_vbi_format._entry_ptr = internal global ptr @saa7164_api_set_vbi_format._entry, section ".printk_index", align 4
@saa7164_api_set_vbi_format._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s() set error, ret = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_api_set_vbi_format._entry_ptr.28 = internal global ptr @saa7164_api_set_vbi_format._entry.26, section ".printk_index", align 4
@saa7164_api_set_vbi_format._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s() get error, ret = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_api_set_vbi_format._entry_ptr.31 = internal global ptr @saa7164_api_set_vbi_format._entry.29, section ".printk_index", align 4
@saa7164_api_set_vbi_format._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: SET/PROBE Verified\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_api_set_vbi_format._entry_ptr.34 = internal global ptr @saa7164_api_set_vbi_format._entry.32, section ".printk_index", align 4
@saa7164_api_set_vbi_format._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s() commit error, ret = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_api_set_vbi_format._entry_ptr.37 = internal global ptr @saa7164_api_set_vbi_format._entry.35, section ".printk_index", align 4
@saa7164_api_set_vbi_format._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.25, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s() GET commit error, ret = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@saa7164_api_set_vbi_format._entry_ptr.40 = internal global ptr @saa7164_api_set_vbi_format._entry.38, section ".printk_index", align 4
@saa7164_api_set_vbi_format._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.25, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s() memcmp error, ret = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_api_set_vbi_format._entry_ptr.43 = internal global ptr @saa7164_api_set_vbi_format._entry.41, section ".printk_index", align 4
@saa7164_api_set_vbi_format._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: SET/COMMIT Verified\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_api_set_vbi_format._entry_ptr.46 = internal global ptr @saa7164_api_set_vbi_format._entry.44, section ".printk_index", align 4
@saa7164_api_set_vbi_format._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.25, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: rsp.bmHint = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7164_api_set_vbi_format._entry_ptr.49 = internal global ptr @saa7164_api_set_vbi_format._entry.47, section ".printk_index", align 4
@saa7164_api_set_vbi_format._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.25, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: rsp.bFormatIndex = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7164_api_set_vbi_format._entry_ptr.52 = internal global ptr @saa7164_api_set_vbi_format._entry.50, section ".printk_index", align 4
@saa7164_api_set_vbi_format._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.25, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: rsp.bFrameIndex = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_api_set_vbi_format._entry_ptr.55 = internal global ptr @saa7164_api_set_vbi_format._entry.53, section ".printk_index", align 4
@saa7164_api_set_vbi_format._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.25, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s() compare failed\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_api_set_vbi_format._entry_ptr.58 = internal global ptr @saa7164_api_set_vbi_format._entry.56, section ".printk_index", align 4
@saa7164_api_set_vbi_format._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.25, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s(nr=%d) Success\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7164_api_set_vbi_format._entry_ptr.61 = internal global ptr @saa7164_api_set_vbi_format._entry.59, section ".printk_index", align 4
@saa7164_api_set_encoder._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: %s() unitid=0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"saa7164_api_set_encoder\00", [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_encoder._entry_ptr = internal global ptr @saa7164_api_set_encoder._entry, section ".printk_index", align 4
@saa7164_api_set_encoder._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.63, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_encoder._entry_ptr.65 = internal global ptr @saa7164_api_set_encoder._entry.64, section ".printk_index", align 4
@saa7164_api_set_encoder._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.63, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_encoder._entry_ptr.67 = internal global ptr @saa7164_api_set_encoder._entry.66, section ".printk_index", align 4
@saa7164_api_set_encoder._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.63, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_encoder._entry_ptr.69 = internal global ptr @saa7164_api_set_encoder._entry.68, section ".printk_index", align 4
@saa7164_api_set_encoder._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.63, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_encoder._entry_ptr.71 = internal global ptr @saa7164_api_set_encoder._entry.70, section ".printk_index", align 4
@saa7164_api_get_encoder._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.72, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"saa7164_api_get_encoder\00", [40 x i8] zeroinitializer }, align 32
@saa7164_api_get_encoder._entry_ptr = internal global ptr @saa7164_api_get_encoder._entry, section ".printk_index", align 4
@saa7164_api_get_encoder._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.72, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_get_encoder._entry_ptr.74 = internal global ptr @saa7164_api_get_encoder._entry.73, section ".printk_index", align 4
@saa7164_api_get_encoder._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.72, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_get_encoder._entry_ptr.76 = internal global ptr @saa7164_api_get_encoder._entry.75, section ".printk_index", align 4
@saa7164_api_get_encoder._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.72, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_get_encoder._entry_ptr.78 = internal global ptr @saa7164_api_get_encoder._entry.77, section ".printk_index", align 4
@saa7164_api_get_encoder._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.72, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_get_encoder._entry_ptr.80 = internal global ptr @saa7164_api_get_encoder._entry.79, section ".printk_index", align 4
@saa7164_api_get_encoder._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.72, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_get_encoder._entry_ptr.82 = internal global ptr @saa7164_api_get_encoder._entry.81, section ".printk_index", align 4
@saa7164_api_get_encoder._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.72, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_get_encoder._entry_ptr.84 = internal global ptr @saa7164_api_get_encoder._entry.83, section ".printk_index", align 4
@saa7164_api_get_encoder._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.72, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_get_encoder._entry_ptr.86 = internal global ptr @saa7164_api_get_encoder._entry.85, section ".printk_index", align 4
@saa7164_api_get_encoder._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.72, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: encoder_profile = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7164_api_get_encoder._entry_ptr.89 = internal global ptr @saa7164_api_get_encoder._entry.87, section ".printk_index", align 4
@saa7164_api_get_encoder._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.72, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: video_format    = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7164_api_get_encoder._entry_ptr.92 = internal global ptr @saa7164_api_get_encoder._entry.90, section ".printk_index", align 4
@saa7164_api_get_encoder._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.72, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: audio_format    = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7164_api_get_encoder._entry_ptr.95 = internal global ptr @saa7164_api_get_encoder._entry.93, section ".printk_index", align 4
@saa7164_api_get_encoder._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.72, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: video_resolution= %d\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7164_api_get_encoder._entry_ptr.98 = internal global ptr @saa7164_api_get_encoder._entry.96, section ".printk_index", align 4
@saa7164_api_get_encoder._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.72, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: v.ucVideoBitRateMode = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_api_get_encoder._entry_ptr.101 = internal global ptr @saa7164_api_get_encoder._entry.99, section ".printk_index", align 4
@saa7164_api_get_encoder._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.72, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: v.dwVideoBitRate     = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_api_get_encoder._entry_ptr.104 = internal global ptr @saa7164_api_get_encoder._entry.102, section ".printk_index", align 4
@saa7164_api_get_encoder._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.72, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: v.dwVideoBitRatePeak = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_api_get_encoder._entry_ptr.107 = internal global ptr @saa7164_api_get_encoder._entry.105, section ".printk_index", align 4
@saa7164_api_get_encoder._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.72, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: a.ucVideoBitRateMode = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_api_get_encoder._entry_ptr.110 = internal global ptr @saa7164_api_get_encoder._entry.108, section ".printk_index", align 4
@saa7164_api_get_encoder._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.72, ptr @.str.2, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: a.dwVideoBitRate     = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_api_get_encoder._entry_ptr.113 = internal global ptr @saa7164_api_get_encoder._entry.111, section ".printk_index", align 4
@saa7164_api_get_encoder._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.72, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: a.dwVideoBitRatePeak = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_api_get_encoder._entry_ptr.116 = internal global ptr @saa7164_api_get_encoder._entry.114, section ".printk_index", align 4
@saa7164_api_get_encoder._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.72, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: aspect.width / height = %d:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@saa7164_api_get_encoder._entry_ptr.119 = internal global ptr @saa7164_api_get_encoder._entry.117, section ".printk_index", align 4
@saa7164_api_set_aspect_ratio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s: %s(%d)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"saa7164_api_set_aspect_ratio\00", [35 x i8] zeroinitializer }, align 32
@saa7164_api_set_aspect_ratio._entry_ptr = internal global ptr @saa7164_api_set_aspect_ratio._entry, section ".printk_index", align 4
@saa7164_api_set_aspect_ratio._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: %s(%d) now %d:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_aspect_ratio._entry_ptr.124 = internal global ptr @saa7164_api_set_aspect_ratio._entry.122, section ".printk_index", align 4
@saa7164_api_set_aspect_ratio._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.121, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_aspect_ratio._entry_ptr.126 = internal global ptr @saa7164_api_set_aspect_ratio._entry.125, section ".printk_index", align 4
@saa7164_api_set_usercontrol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: %s() unitid=0x%x ctl=%d, val=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"saa7164_api_set_usercontrol\00", [36 x i8] zeroinitializer }, align 32
@saa7164_api_set_usercontrol._entry_ptr = internal global ptr @saa7164_api_set_usercontrol._entry, section ".printk_index", align 4
@saa7164_api_set_usercontrol._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.128, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_usercontrol._entry_ptr.130 = internal global ptr @saa7164_api_set_usercontrol._entry.129, section ".printk_index", align 4
@saa7164_api_get_usercontrol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.131, ptr @.str.2, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"saa7164_api_get_usercontrol\00", [36 x i8] zeroinitializer }, align 32
@saa7164_api_get_usercontrol._entry_ptr = internal global ptr @saa7164_api_get_usercontrol._entry, section ".printk_index", align 4
@saa7164_api_get_usercontrol._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: %s() ctl=%d, val=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_api_get_usercontrol._entry_ptr.134 = internal global ptr @saa7164_api_get_usercontrol._entry.132, section ".printk_index", align 4
@__const.saa7164_api_set_videomux.inputs = private unnamed_addr constant [7 x i8] c"\01\02\02\02\05\05\05", align 1
@saa7164_api_set_videomux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s() v_mux=%d a_mux=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"saa7164_api_set_videomux\00", [39 x i8] zeroinitializer }, align 32
@saa7164_api_set_videomux._entry_ptr = internal global ptr @saa7164_api_set_videomux._entry, section ".printk_index", align 4
@saa7164_api_set_videomux._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.136, ptr @.str.2, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_videomux._entry_ptr.138 = internal global ptr @saa7164_api_set_videomux._entry.137, section ".printk_index", align 4
@saa7164_api_set_videomux._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.136, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_videomux._entry_ptr.140 = internal global ptr @saa7164_api_set_videomux._entry.139, section ".printk_index", align 4
@saa7164_api_set_videomux._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.136, ptr @.str.2, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_videomux._entry_ptr.142 = internal global ptr @saa7164_api_set_videomux._entry.141, section ".printk_index", align 4
@saa7164_api_set_videomux._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.136, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_videomux._entry_ptr.144 = internal global ptr @saa7164_api_set_videomux._entry.143, section ".printk_index", align 4
@saa7164_api_audio_mute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.145, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"saa7164_api_audio_mute\00", [41 x i8] zeroinitializer }, align 32
@saa7164_api_audio_mute._entry_ptr = internal global ptr @saa7164_api_audio_mute._entry, section ".printk_index", align 4
@saa7164_api_audio_mute._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.145, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_audio_mute._entry_ptr.147 = internal global ptr @saa7164_api_audio_mute._entry.146, section ".printk_index", align 4
@saa7164_api_set_audio_volume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.148, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"saa7164_api_set_audio_volume\00", [35 x i8] zeroinitializer }, align 32
@saa7164_api_set_audio_volume._entry_ptr = internal global ptr @saa7164_api_set_audio_volume._entry, section ".printk_index", align 4
@saa7164_api_set_audio_volume._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.148, ptr @.str.2, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_audio_volume._entry_ptr.150 = internal global ptr @saa7164_api_set_audio_volume._entry.149, section ".printk_index", align 4
@saa7164_api_set_audio_volume._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.148, ptr @.str.2, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_audio_volume._entry_ptr.152 = internal global ptr @saa7164_api_set_audio_volume._entry.151, section ".printk_index", align 4
@saa7164_api_set_audio_volume._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.148, ptr @.str.2, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_audio_volume._entry_ptr.154 = internal global ptr @saa7164_api_set_audio_volume._entry.153, section ".printk_index", align 4
@saa7164_api_set_audio_volume._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: %s(%d) min=%d max=%d cur=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@saa7164_api_set_audio_volume._entry_ptr.157 = internal global ptr @saa7164_api_set_audio_volume._entry.155, section ".printk_index", align 4
@saa7164_api_set_audio_volume._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.148, ptr @.str.2, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_audio_volume._entry_ptr.159 = internal global ptr @saa7164_api_set_audio_volume._entry.158, section ".printk_index", align 4
@saa7164_api_set_audio_volume._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.148, ptr @.str.2, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_audio_volume._entry_ptr.161 = internal global ptr @saa7164_api_set_audio_volume._entry.160, section ".printk_index", align 4
@saa7164_api_set_audio_volume._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.148, ptr @.str.2, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_audio_volume._entry_ptr.163 = internal global ptr @saa7164_api_set_audio_volume._entry.162, section ".printk_index", align 4
@saa7164_api_set_audio_volume._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_audio_volume._entry_ptr.165 = internal global ptr @saa7164_api_set_audio_volume._entry.164, section ".printk_index", align 4
@saa7164_api_set_audio_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.166, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"saa7164_api_set_audio_std\00", [38 x i8] zeroinitializer }, align 32
@saa7164_api_set_audio_std._entry_ptr = internal global ptr @saa7164_api_set_audio_std._entry, section ".printk_index", align 4
@saa7164_api_set_audio_std._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.166, ptr @.str.2, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_audio_std._entry_ptr.168 = internal global ptr @saa7164_api_set_audio_std._entry.167, section ".printk_index", align 4
@saa7164_api_set_audio_std._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.166, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s() TU_STANDARD_CONTROL error, ret = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@saa7164_api_set_audio_std._entry_ptr.171 = internal global ptr @saa7164_api_set_audio_std._entry.169, section ".printk_index", align 4
@saa7164_api_set_audio_detection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.172, ptr @.str.2, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"saa7164_api_set_audio_detection\00", [32 x i8] zeroinitializer }, align 32
@saa7164_api_set_audio_detection._entry_ptr = internal global ptr @saa7164_api_set_audio_detection._entry, section ".printk_index", align 4
@saa7164_api_set_audio_detection._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.172, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s() TU_STANDARD_AUTO_CONTROL error, ret = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@saa7164_api_set_audio_detection._entry_ptr.175 = internal global ptr @saa7164_api_set_audio_detection._entry.173, section ".printk_index", align 4
@saa7164_api_get_videomux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.176, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"saa7164_api_get_videomux\00", [39 x i8] zeroinitializer }, align 32
@saa7164_api_get_videomux._entry_ptr = internal global ptr @saa7164_api_get_videomux._entry, section ".printk_index", align 4
@saa7164_api_get_videomux._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.176, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: %s() v_mux=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7164_api_get_videomux._entry_ptr.179 = internal global ptr @saa7164_api_get_videomux._entry.177, section ".printk_index", align 4
@saa7164_api_configure_dif._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.2, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: %s(nr=%d, 0x%x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"saa7164_api_configure_dif\00", [38 x i8] zeroinitializer }, align 32
@saa7164_api_configure_dif._entry_ptr = internal global ptr @saa7164_api_configure_dif._entry, section ".printk_index", align 4
@saa7164_api_configure_dif._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.181, ptr @.str.2, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s:  NTSC\0A\00", [19 x i8] zeroinitializer }, align 32
@saa7164_api_configure_dif._entry_ptr.184 = internal global ptr @saa7164_api_configure_dif._entry.182, section ".printk_index", align 4
@saa7164_api_configure_dif._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.181, ptr @.str.2, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s:  PAL-I\0A\00", [18 x i8] zeroinitializer }, align 32
@saa7164_api_configure_dif._entry_ptr.187 = internal global ptr @saa7164_api_configure_dif._entry.185, section ".printk_index", align 4
@saa7164_api_configure_dif._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.181, ptr @.str.2, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s:  PAL-M\0A\00", [18 x i8] zeroinitializer }, align 32
@saa7164_api_configure_dif._entry_ptr.190 = internal global ptr @saa7164_api_configure_dif._entry.188, section ".printk_index", align 4
@saa7164_api_configure_dif._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.181, ptr @.str.2, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s:  PAL-N\0A\00", [18 x i8] zeroinitializer }, align 32
@saa7164_api_configure_dif._entry_ptr.193 = internal global ptr @saa7164_api_configure_dif._entry.191, section ".printk_index", align 4
@saa7164_api_configure_dif._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.181, ptr @.str.2, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017%s:  PAL-Nc\0A\00", [17 x i8] zeroinitializer }, align 32
@saa7164_api_configure_dif._entry_ptr.196 = internal global ptr @saa7164_api_configure_dif._entry.194, section ".printk_index", align 4
@saa7164_api_configure_dif._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.181, ptr @.str.2, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s:  PAL-B\0A\00", [18 x i8] zeroinitializer }, align 32
@saa7164_api_configure_dif._entry_ptr.199 = internal global ptr @saa7164_api_configure_dif._entry.197, section ".printk_index", align 4
@saa7164_api_configure_dif._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.181, ptr @.str.2, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017%s:  PAL-DK\0A\00", [17 x i8] zeroinitializer }, align 32
@saa7164_api_configure_dif._entry_ptr.202 = internal global ptr @saa7164_api_configure_dif._entry.200, section ".printk_index", align 4
@saa7164_api_configure_dif._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.181, ptr @.str.2, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s:  SECAM-L\0A\00", [16 x i8] zeroinitializer }, align 32
@saa7164_api_configure_dif._entry_ptr.205 = internal global ptr @saa7164_api_configure_dif._entry.203, section ".printk_index", align 4
@saa7164_api_configure_dif._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.181, ptr @.str.2, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:  Unknown (assuming DTV)\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7164_api_configure_dif._entry_ptr.208 = internal global ptr @saa7164_api_configure_dif._entry.206, section ".printk_index", align 4
@saa7164_api_initialize_dif._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.2, i32 737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s(nr=%d type=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"saa7164_api_initialize_dif\00", [37 x i8] zeroinitializer }, align 32
@saa7164_api_initialize_dif._entry_ptr = internal global ptr @saa7164_api_initialize_dif._entry, section ".printk_index", align 4
@saa7164_api_transition_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.212, ptr @.str.2, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s(nr=%d unitid=0x%x,%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"saa7164_api_transition_port\00", [36 x i8] zeroinitializer }, align 32
@saa7164_api_transition_port._entry_ptr = internal global ptr @saa7164_api_transition_port._entry, section ".printk_index", align 4
@saa7164_api_transition_port._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.212, ptr @.str.2, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s(portnr %d unitid 0x%x) error, ret = 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@saa7164_api_transition_port._entry_ptr.215 = internal global ptr @saa7164_api_transition_port._entry.213, section ".printk_index", align 4
@saa7164_api_get_fw_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.216, ptr @.str.2, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"saa7164_api_get_fw_version\00", [37 x i8] zeroinitializer }, align 32
@saa7164_api_get_fw_version._entry_ptr = internal global ptr @saa7164_api_get_fw_version._entry, section ".printk_index", align 4
@saa7164_api_enum_subdevs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.217, ptr @.str.2, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"saa7164_api_enum_subdevs\00", [39 x i8] zeroinitializer }, align 32
@saa7164_api_enum_subdevs._entry_ptr = internal global ptr @saa7164_api_enum_subdevs._entry, section ".printk_index", align 4
@saa7164_api_enum_subdevs._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.217, ptr @.str.2, i32 1322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_enum_subdevs._entry_ptr.219 = internal global ptr @saa7164_api_enum_subdevs._entry.218, section ".printk_index", align 4
@saa7164_api_enum_subdevs._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.217, ptr @.str.2, i32 1325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: %s() total descriptor size = %d bytes.\0A\00", [50 x i8] zeroinitializer }, align 32
@saa7164_api_enum_subdevs._entry_ptr.222 = internal global ptr @saa7164_api_enum_subdevs._entry.220, section ".printk_index", align 4
@saa7164_api_enum_subdevs._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.217, ptr @.str.2, i32 1336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_enum_subdevs._entry_ptr.224 = internal global ptr @saa7164_api_enum_subdevs._entry.223, section ".printk_index", align 4
@.str.225 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@saa7164_api_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.228, ptr @.str.2, i32 1361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: %s() addr=%x reglen=%d datalen=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"saa7164_api_i2c_read\00", [43 x i8] zeroinitializer }, align 32
@saa7164_api_i2c_read._entry_ptr = internal global ptr @saa7164_api_i2c_read._entry, section ".printk_index", align 4
@saa7164_api_i2c_read._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.228, ptr @.str.2, i32 1380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s() error, cannot translate regaddr 0x%x to unitid\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_api_i2c_read._entry_ptr.231 = internal global ptr @saa7164_api_i2c_read._entry.229, section ".printk_index", align 4
@saa7164_api_i2c_read._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.228, ptr @.str.2, i32 1387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s() error, ret(1) = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_api_i2c_read._entry_ptr.234 = internal global ptr @saa7164_api_i2c_read._entry.232, section ".printk_index", align 4
@saa7164_api_i2c_read._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.228, ptr @.str.2, i32 1391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: %s() len = %d bytes\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_api_i2c_read._entry_ptr.237 = internal global ptr @saa7164_api_i2c_read._entry.235, section ".printk_index", align 4
@saa7164_api_i2c_read._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.228, ptr @.str.2, i32 1400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s() error, ret(2) = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_api_i2c_read._entry_ptr.240 = internal global ptr @saa7164_api_i2c_read._entry.238, section ".printk_index", align 4
@saa7164_api_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.242, ptr @.str.2, i32 1423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s() addr=0x%2x len=0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"saa7164_api_i2c_write\00", [42 x i8] zeroinitializer }, align 32
@saa7164_api_i2c_write._entry_ptr = internal global ptr @saa7164_api_i2c_write._entry, section ".printk_index", align 4
@saa7164_api_i2c_write._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.242, ptr @.str.2, i32 1434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_i2c_write._entry_ptr.244 = internal global ptr @saa7164_api_i2c_write._entry.243, section ".printk_index", align 4
@saa7164_api_i2c_write._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.242, ptr @.str.2, i32 1442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s() error, cannot translate regaddr to reglen\0A\00", [46 x i8] zeroinitializer }, align 32
@saa7164_api_i2c_write._entry_ptr.247 = internal global ptr @saa7164_api_i2c_write._entry.245, section ".printk_index", align 4
@saa7164_api_i2c_write._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.242, ptr @.str.2, i32 1449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_i2c_write._entry_ptr.249 = internal global ptr @saa7164_api_i2c_write._entry.248, section ".printk_index", align 4
@saa7164_api_i2c_write._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.242, ptr @.str.2, i32 1454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: %s() len = %d bytes unitid=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@saa7164_api_i2c_write._entry_ptr.252 = internal global ptr @saa7164_api_i2c_write._entry.250, section ".printk_index", align 4
@saa7164_api_i2c_write._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.242, ptr @.str.2, i32 1472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_i2c_write._entry_ptr.254 = internal global ptr @saa7164_api_i2c_write._entry.253, section ".printk_index", align 4
@saa7164_api_set_gop_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.255, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"saa7164_api_set_gop_size\00", [39 x i8] zeroinitializer }, align 32
@saa7164_api_set_gop_size._entry_ptr = internal global ptr @saa7164_api_set_gop_size._entry, section ".printk_index", align 4
@saa7164_api_set_gop_size._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.255, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_gop_size._entry_ptr.257 = internal global ptr @saa7164_api_set_gop_size._entry.256, section ".printk_index", align 4
@saa7164_api_set_dif._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.259, ptr @.str.2, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s(nr=%d type=%d val=%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saa7164_api_set_dif\00", [44 x i8] zeroinitializer }, align 32
@saa7164_api_set_dif._entry_ptr = internal global ptr @saa7164_api_set_dif._entry, section ".printk_index", align 4
@saa7164_api_set_dif._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.259, ptr @.str.2, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_dif._entry_ptr.261 = internal global ptr @saa7164_api_set_dif._entry.260, section ".printk_index", align 4
@saa7164_api_set_dif._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.259, ptr @.str.2, i32 657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_set_dif._entry_ptr.263 = internal global ptr @saa7164_api_set_dif._entry.262, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.265, ptr @.str.2, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017%s: %s(?,?,%d) sizeof(struct tmComResDescrHeader) = %d bytes\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"saa7164_api_dump_subdevs\00", [39 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr = internal global ptr @saa7164_api_dump_subdevs._entry, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.265, ptr @.str.2, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: @ 0x%x =\0A\00", [16 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.268 = internal global ptr @saa7164_api_dump_subdevs._entry.266, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.270, ptr @.str.265, ptr @.str.2, i32 951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s:  GENERAL_REQUEST\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.271 = internal global ptr @saa7164_api_dump_subdevs._entry.269, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.265, ptr @.str.2, i32 954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s:  VC_TUNER_PATH\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.274 = internal global ptr @saa7164_api_dump_subdevs._entry.272, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.265, ptr @.str.2, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s:   pathid = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.277 = internal global ptr @saa7164_api_dump_subdevs._entry.275, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.265, ptr @.str.2, i32 961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:  VC_INPUT_TERMINAL\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.280 = internal global ptr @saa7164_api_dump_subdevs._entry.278, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.265, ptr @.str.2, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:   terminalid   = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.283 = internal global ptr @saa7164_api_dump_subdevs._entry.281, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.284 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @.str.265, ptr @.str.2, i32 967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:   terminaltype = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.286 = internal global ptr @saa7164_api_dump_subdevs._entry.284, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.265, ptr @.str.2, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s:    = ITT_ANTENNA\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.289 = internal global ptr @saa7164_api_dump_subdevs._entry.287, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.290 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.291, ptr @.str.265, ptr @.str.2, i32 973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:    = LINE_CONNECTOR\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.292 = internal global ptr @saa7164_api_dump_subdevs._entry.290, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.265, ptr @.str.2, i32 976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s:    = SPDIF_CONNECTOR\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.295 = internal global ptr @saa7164_api_dump_subdevs._entry.293, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.296 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.297, ptr @.str.265, ptr @.str.2, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s:    = COMPOSITE_CONNECTOR\0A\00", [32 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.298 = internal global ptr @saa7164_api_dump_subdevs._entry.296, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.299 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.300, ptr @.str.265, ptr @.str.2, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:    = SVIDEO_CONNECTOR\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.301 = internal global ptr @saa7164_api_dump_subdevs._entry.299, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.302 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.303, ptr @.str.265, ptr @.str.2, i32 987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s:    = COMPONENT_CONNECTOR\0A\00", [32 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.304 = internal global ptr @saa7164_api_dump_subdevs._entry.302, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.305 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.265, ptr @.str.2, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s:    = STANDARD_DMA\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.307 = internal global ptr @saa7164_api_dump_subdevs._entry.305, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.308 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.265, ptr @.str.2, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:    = undefined (0x%x)\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.310 = internal global ptr @saa7164_api_dump_subdevs._entry.308, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.311 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.265, ptr @.str.2, i32 997, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:   assocterminal= 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.313 = internal global ptr @saa7164_api_dump_subdevs._entry.311, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.314 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.315, ptr @.str.265, ptr @.str.2, i32 999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:   iterminal    = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.316 = internal global ptr @saa7164_api_dump_subdevs._entry.314, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.317 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.318, ptr @.str.265, ptr @.str.2, i32 1001, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:   controlsize  = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.319 = internal global ptr @saa7164_api_dump_subdevs._entry.317, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.320 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.321, ptr @.str.265, ptr @.str.2, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:  VC_OUTPUT_TERMINAL\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.322 = internal global ptr @saa7164_api_dump_subdevs._entry.320, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.323 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.324, ptr @.str.265, ptr @.str.2, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s:   unitid = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.325 = internal global ptr @saa7164_api_dump_subdevs._entry.323, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.326 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @.str.265, ptr @.str.2, i32 1010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.327 = internal global ptr @saa7164_api_dump_subdevs._entry.326, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.328 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.265, ptr @.str.2, i32 1013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.329 = internal global ptr @saa7164_api_dump_subdevs._entry.328, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.330 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.291, ptr @.str.265, ptr @.str.2, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.331 = internal global ptr @saa7164_api_dump_subdevs._entry.330, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.332 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.265, ptr @.str.2, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.333 = internal global ptr @saa7164_api_dump_subdevs._entry.332, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.334 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.297, ptr @.str.265, ptr @.str.2, i32 1023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.335 = internal global ptr @saa7164_api_dump_subdevs._entry.334, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.336 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.300, ptr @.str.265, ptr @.str.2, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.337 = internal global ptr @saa7164_api_dump_subdevs._entry.336, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.338 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.303, ptr @.str.265, ptr @.str.2, i32 1030, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.339 = internal global ptr @saa7164_api_dump_subdevs._entry.338, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.340 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.265, ptr @.str.2, i32 1033, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.341 = internal global ptr @saa7164_api_dump_subdevs._entry.340, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.342 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.265, ptr @.str.2, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.343 = internal global ptr @saa7164_api_dump_subdevs._entry.342, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.344 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.265, ptr @.str.2, i32 1040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.345 = internal global ptr @saa7164_api_dump_subdevs._entry.344, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.346 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.347, ptr @.str.265, ptr @.str.2, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:   sourceid     = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.348 = internal global ptr @saa7164_api_dump_subdevs._entry.346, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.349 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.315, ptr @.str.265, ptr @.str.2, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.350 = internal global ptr @saa7164_api_dump_subdevs._entry.349, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.351 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.352, ptr @.str.265, ptr @.str.2, i32 1046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:   BARLocation  = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.353 = internal global ptr @saa7164_api_dump_subdevs._entry.351, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.354 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.355, ptr @.str.265, ptr @.str.2, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:   flags        = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.356 = internal global ptr @saa7164_api_dump_subdevs._entry.354, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.357 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.358, ptr @.str.265, ptr @.str.2, i32 1050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:   interruptid  = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.359 = internal global ptr @saa7164_api_dump_subdevs._entry.357, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.360 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.361, ptr @.str.265, ptr @.str.2, i32 1052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:   buffercount  = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.362 = internal global ptr @saa7164_api_dump_subdevs._entry.360, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.363 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.364, ptr @.str.265, ptr @.str.2, i32 1054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:   metadatasize = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.365 = internal global ptr @saa7164_api_dump_subdevs._entry.363, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.366 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.318, ptr @.str.265, ptr @.str.2, i32 1056, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.367 = internal global ptr @saa7164_api_dump_subdevs._entry.366, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.368 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.369, ptr @.str.265, ptr @.str.2, i32 1058, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:   numformats   = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.370 = internal global ptr @saa7164_api_dump_subdevs._entry.368, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.371 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.372, ptr @.str.265, ptr @.str.2, i32 1105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:    = VS_FORMAT_RDS\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.373 = internal global ptr @saa7164_api_dump_subdevs._entry.371, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.374 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.375, ptr @.str.265, ptr @.str.2, i32 1109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s:    = VS_FORMAT_UNCOMPRESSED\0A\00", [61 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.376 = internal global ptr @saa7164_api_dump_subdevs._entry.374, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.377 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.265, ptr @.str.2, i32 1113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:    = VS_FORMAT_TYPE\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.379 = internal global ptr @saa7164_api_dump_subdevs._entry.377, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.380 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.265, ptr @.str.2, i32 1118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.381 = internal global ptr @saa7164_api_dump_subdevs._entry.380, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.382 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.383, ptr @.str.265, ptr @.str.2, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s:  TUNER_UNIT\0A\00", [45 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.384 = internal global ptr @saa7164_api_dump_subdevs._entry.382, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.385 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.324, ptr @.str.265, ptr @.str.2, i32 1129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.386 = internal global ptr @saa7164_api_dump_subdevs._entry.385, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.387 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.388, ptr @.str.265, ptr @.str.2, i32 1131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s:   sourceid = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.389 = internal global ptr @saa7164_api_dump_subdevs._entry.387, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.390 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.391, ptr @.str.265, ptr @.str.2, i32 1133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.391 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s:   iunit = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.392 = internal global ptr @saa7164_api_dump_subdevs._entry.390, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.393 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.394, ptr @.str.265, ptr @.str.2, i32 1135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s:   tuningstandards = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.395 = internal global ptr @saa7164_api_dump_subdevs._entry.393, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.396 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.397, ptr @.str.265, ptr @.str.2, i32 1137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s:   controlsize = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.398 = internal global ptr @saa7164_api_dump_subdevs._entry.396, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.399 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.400, ptr @.str.265, ptr @.str.2, i32 1139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s:   controls = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.401 = internal global ptr @saa7164_api_dump_subdevs._entry.399, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.402 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.403, ptr @.str.265, ptr @.str.2, i32 1150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.403 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s:   (becomes dev->enc[%d] tuner)\0A\00", [58 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.404 = internal global ptr @saa7164_api_dump_subdevs._entry.402, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.405 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.406, ptr @.str.265, ptr @.str.2, i32 1155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s:  VC_SELECTOR_UNIT\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.407 = internal global ptr @saa7164_api_dump_subdevs._entry.405, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.408 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.324, ptr @.str.265, ptr @.str.2, i32 1157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.409 = internal global ptr @saa7164_api_dump_subdevs._entry.408, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.410 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.411, ptr @.str.265, ptr @.str.2, i32 1159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s:   nrinpins = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.412 = internal global ptr @saa7164_api_dump_subdevs._entry.410, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.413 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.388, ptr @.str.265, ptr @.str.2, i32 1161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.414 = internal global ptr @saa7164_api_dump_subdevs._entry.413, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.415 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.416, ptr @.str.265, ptr @.str.2, i32 1165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:  VC_PROCESSING_UNIT\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.417 = internal global ptr @saa7164_api_dump_subdevs._entry.415, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.418 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.324, ptr @.str.265, ptr @.str.2, i32 1167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.419 = internal global ptr @saa7164_api_dump_subdevs._entry.418, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.420 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.388, ptr @.str.265, ptr @.str.2, i32 1169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.421 = internal global ptr @saa7164_api_dump_subdevs._entry.420, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.422 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.397, ptr @.str.265, ptr @.str.2, i32 1171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.423 = internal global ptr @saa7164_api_dump_subdevs._entry.422, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.424 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.425, ptr @.str.265, ptr @.str.2, i32 1180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.425 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s:   (becomes dev->enc[%d])\0A\00", [32 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.426 = internal global ptr @saa7164_api_dump_subdevs._entry.424, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.427 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.428, ptr @.str.265, ptr @.str.2, i32 1185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.428 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s:  FEATURE_UNIT\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.429 = internal global ptr @saa7164_api_dump_subdevs._entry.427, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.430 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.324, ptr @.str.265, ptr @.str.2, i32 1187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.431 = internal global ptr @saa7164_api_dump_subdevs._entry.430, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.432 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.388, ptr @.str.265, ptr @.str.2, i32 1189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.433 = internal global ptr @saa7164_api_dump_subdevs._entry.432, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.434 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.397, ptr @.str.265, ptr @.str.2, i32 1191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.435 = internal global ptr @saa7164_api_dump_subdevs._entry.434, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.436 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.425, ptr @.str.265, ptr @.str.2, i32 1199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.437 = internal global ptr @saa7164_api_dump_subdevs._entry.436, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.438 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.439, ptr @.str.265, ptr @.str.2, i32 1203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.439 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s:  ENCODER_UNIT\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.440 = internal global ptr @saa7164_api_dump_subdevs._entry.438, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.441 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.442, ptr @.str.265, ptr @.str.2, i32 1204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.442 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s:   subtype = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.443 = internal global ptr @saa7164_api_dump_subdevs._entry.441, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.444 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.324, ptr @.str.265, ptr @.str.2, i32 1205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.445 = internal global ptr @saa7164_api_dump_subdevs._entry.444, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.446 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.447, ptr @.str.265, ptr @.str.2, i32 1207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.447 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:   vsourceid = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.448 = internal global ptr @saa7164_api_dump_subdevs._entry.446, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.449 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.450, ptr @.str.265, ptr @.str.2, i32 1209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.450 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:   asourceid = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.451 = internal global ptr @saa7164_api_dump_subdevs._entry.449, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.452 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.391, ptr @.str.265, ptr @.str.2, i32 1210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.453 = internal global ptr @saa7164_api_dump_subdevs._entry.452, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.454 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.425, ptr @.str.265, ptr @.str.2, i32 1220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.455 = internal global ptr @saa7164_api_dump_subdevs._entry.454, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.456 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.457, ptr @.str.265, ptr @.str.2, i32 1224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.457 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s:  EXTENSION_UNIT\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.458 = internal global ptr @saa7164_api_dump_subdevs._entry.456, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.459 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.324, ptr @.str.265, ptr @.str.2, i32 1227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.460 = internal global ptr @saa7164_api_dump_subdevs._entry.459, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.461 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.462, ptr @.str.265, ptr @.str.2, i32 1229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.462 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s:   deviceid = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.463 = internal global ptr @saa7164_api_dump_subdevs._entry.461, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.464 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.465, ptr @.str.265, ptr @.str.2, i32 1231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.465 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:   devicetype = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.466 = internal global ptr @saa7164_api_dump_subdevs._entry.464, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.467 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.468, ptr @.str.265, ptr @.str.2, i32 1233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.468 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:    = Decoder Device\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.469 = internal global ptr @saa7164_api_dump_subdevs._entry.467, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.470 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.471, ptr @.str.265, ptr @.str.2, i32 1235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.471 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s:    = GPIO Source\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.472 = internal global ptr @saa7164_api_dump_subdevs._entry.470, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.473 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.474, ptr @.str.265, ptr @.str.2, i32 1237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.474 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:    = Video Decoder\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.475 = internal global ptr @saa7164_api_dump_subdevs._entry.473, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.476 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.477, ptr @.str.265, ptr @.str.2, i32 1239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.477 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:    = Audio Decoder\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.478 = internal global ptr @saa7164_api_dump_subdevs._entry.476, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.479 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.480, ptr @.str.265, ptr @.str.2, i32 1241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.480 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s:    = Crossbar\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.481 = internal global ptr @saa7164_api_dump_subdevs._entry.479, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.482 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.483, ptr @.str.265, ptr @.str.2, i32 1243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.483 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s:    = Tuner\0A\00", [46 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.484 = internal global ptr @saa7164_api_dump_subdevs._entry.482, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.485 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.486, ptr @.str.265, ptr @.str.2, i32 1245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.486 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s:    = IF PLL\0A\00", [45 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.487 = internal global ptr @saa7164_api_dump_subdevs._entry.485, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.488 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.489, ptr @.str.265, ptr @.str.2, i32 1247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.489 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s:    = Demodulator\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.490 = internal global ptr @saa7164_api_dump_subdevs._entry.488, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.491 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.492, ptr @.str.265, ptr @.str.2, i32 1249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.492 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s:    = RDS Decoder\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.493 = internal global ptr @saa7164_api_dump_subdevs._entry.491, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.494 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.495, ptr @.str.265, ptr @.str.2, i32 1251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.495 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s:    = Encoder\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.496 = internal global ptr @saa7164_api_dump_subdevs._entry.494, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.497 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.498, ptr @.str.265, ptr @.str.2, i32 1253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.498 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s:    = IR Decoder\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.499 = internal global ptr @saa7164_api_dump_subdevs._entry.497, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.500 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.501, ptr @.str.265, ptr @.str.2, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.501 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s:    = EEPROM\0A\00", [45 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.502 = internal global ptr @saa7164_api_dump_subdevs._entry.500, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.503 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.504, ptr @.str.265, ptr @.str.2, i32 1258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.504 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s:    = VBI Decoder\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.505 = internal global ptr @saa7164_api_dump_subdevs._entry.503, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.506 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.507, ptr @.str.265, ptr @.str.2, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.507 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:    = Streaming Device\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.508 = internal global ptr @saa7164_api_dump_subdevs._entry.506, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.509 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.510, ptr @.str.265, ptr @.str.2, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.510 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s:    = DRM Device\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.511 = internal global ptr @saa7164_api_dump_subdevs._entry.509, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.512 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.513, ptr @.str.265, ptr @.str.2, i32 1267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.513 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:    = Generic Device\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.514 = internal global ptr @saa7164_api_dump_subdevs._entry.512, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.515 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.516, ptr @.str.265, ptr @.str.2, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.516 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s:    = Config Space Device\0A\00", [32 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.517 = internal global ptr @saa7164_api_dump_subdevs._entry.515, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.518 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.519, ptr @.str.265, ptr @.str.2, i32 1272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.519 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s:   numgpiopins = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.520 = internal global ptr @saa7164_api_dump_subdevs._entry.518, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.521 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.522, ptr @.str.265, ptr @.str.2, i32 1274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.522 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s:   numgpiogroups = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.523 = internal global ptr @saa7164_api_dump_subdevs._entry.521, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.524 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.397, ptr @.str.265, ptr @.str.2, i32 1276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.525 = internal global ptr @saa7164_api_dump_subdevs._entry.524, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.526 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.425, ptr @.str.265, ptr @.str.2, i32 1286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.527 = internal global ptr @saa7164_api_dump_subdevs._entry.526, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.528 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.529, ptr @.str.265, ptr @.str.2, i32 1290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.529 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:  PVC_INFRARED_UNIT\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.530 = internal global ptr @saa7164_api_dump_subdevs._entry.528, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.531 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.532, ptr @.str.265, ptr @.str.2, i32 1293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.532 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s:  DRM_UNIT\0A\00", [47 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.533 = internal global ptr @saa7164_api_dump_subdevs._entry.531, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.534 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.535, ptr @.str.265, ptr @.str.2, i32 1296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.535 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: default %d\0A\00", [46 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.536 = internal global ptr @saa7164_api_dump_subdevs._entry.534, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.537 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.538, ptr @.str.265, ptr @.str.2, i32 1299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.538 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s:  1.%x\0A\00", [19 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.539 = internal global ptr @saa7164_api_dump_subdevs._entry.537, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.540 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.541, ptr @.str.265, ptr @.str.2, i32 1300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.541 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s:  2.%x\0A\00", [19 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.542 = internal global ptr @saa7164_api_dump_subdevs._entry.540, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.543 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.544, ptr @.str.265, ptr @.str.2, i32 1301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.544 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s:  3.%x\0A\00", [19 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.545 = internal global ptr @saa7164_api_dump_subdevs._entry.543, section ".printk_index", align 4
@saa7164_api_dump_subdevs._entry.546 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.547, ptr @.str.265, ptr @.str.2, i32 1302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.547 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s:  4.%x\0A\00", [19 x i8] zeroinitializer }, align 32
@saa7164_api_dump_subdevs._entry_ptr.548 = internal global ptr @saa7164_api_dump_subdevs._entry.546, section ".printk_index", align 4
@saa7164_api_configure_port_mpeg2ts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.549, ptr @.str.550, ptr @.str.2, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.549 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:     bFormatIndex = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.550 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"saa7164_api_configure_port_mpeg2ts\00", [61 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_mpeg2ts._entry_ptr = internal global ptr @saa7164_api_configure_port_mpeg2ts._entry, section ".printk_index", align 4
@saa7164_api_configure_port_mpeg2ts._entry.551 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.552, ptr @.str.550, ptr @.str.2, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.552 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:     bDataOffset  = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_mpeg2ts._entry_ptr.553 = internal global ptr @saa7164_api_configure_port_mpeg2ts._entry.551, section ".printk_index", align 4
@saa7164_api_configure_port_mpeg2ts._entry.554 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.555, ptr @.str.550, ptr @.str.2, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.555 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:     bPacketLength= 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_mpeg2ts._entry_ptr.556 = internal global ptr @saa7164_api_configure_port_mpeg2ts._entry.554, section ".printk_index", align 4
@saa7164_api_configure_port_mpeg2ts._entry.557 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.558, ptr @.str.550, ptr @.str.2, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.558 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:     bStrideLength= 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_mpeg2ts._entry_ptr.559 = internal global ptr @saa7164_api_configure_port_mpeg2ts._entry.557, section ".printk_index", align 4
@saa7164_api_configure_port_mpeg2ts._entry.560 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.561, ptr @.str.550, ptr @.str.2, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.561 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:     bguid        = (....)\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_mpeg2ts._entry_ptr.562 = internal global ptr @saa7164_api_configure_port_mpeg2ts._entry.560, section ".printk_index", align 4
@saa7164_api_configure_port_mpeg2ts._entry.563 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.564, ptr @.str.550, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.564 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s:    = port->hwcfg.BARLocation = 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_mpeg2ts._entry_ptr.565 = internal global ptr @saa7164_api_configure_port_mpeg2ts._entry.563, section ".printk_index", align 4
@saa7164_api_configure_port_mpeg2ts._entry.566 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.567, ptr @.str.550, ptr @.str.2, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.567 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s:    = VS_FORMAT_MPEGTS (becomes dev->ts[%d])\0A\00", [45 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_mpeg2ts._entry_ptr.568 = internal global ptr @saa7164_api_configure_port_mpeg2ts._entry.566, section ".printk_index", align 4
@saa7164_api_configure_port_mpeg2ps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.549, ptr @.str.569, ptr @.str.2, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.569 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"saa7164_api_configure_port_mpeg2ps\00", [61 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_mpeg2ps._entry_ptr = internal global ptr @saa7164_api_configure_port_mpeg2ps._entry, section ".printk_index", align 4
@saa7164_api_configure_port_mpeg2ps._entry.570 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.571, ptr @.str.569, ptr @.str.2, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.571 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:     wPacketLength= 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_mpeg2ps._entry_ptr.572 = internal global ptr @saa7164_api_configure_port_mpeg2ps._entry.570, section ".printk_index", align 4
@saa7164_api_configure_port_mpeg2ps._entry.573 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.574, ptr @.str.569, ptr @.str.2, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.574 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:     wPackLength=   0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_mpeg2ps._entry_ptr.575 = internal global ptr @saa7164_api_configure_port_mpeg2ps._entry.573, section ".printk_index", align 4
@saa7164_api_configure_port_mpeg2ps._entry.576 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.577, ptr @.str.569, ptr @.str.2, i32 889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.577 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:     bPackDataType= 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_mpeg2ps._entry_ptr.578 = internal global ptr @saa7164_api_configure_port_mpeg2ps._entry.576, section ".printk_index", align 4
@saa7164_api_configure_port_mpeg2ps._entry.579 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.564, ptr @.str.569, ptr @.str.2, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_mpeg2ps._entry_ptr.580 = internal global ptr @saa7164_api_configure_port_mpeg2ps._entry.579, section ".printk_index", align 4
@saa7164_api_configure_port_mpeg2ps._entry.581 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.582, ptr @.str.569, ptr @.str.2, i32 910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.582 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s:    = VS_FORMAT_MPEGPS (becomes dev->enc[%d])\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_mpeg2ps._entry_ptr.583 = internal global ptr @saa7164_api_configure_port_mpeg2ps._entry.581, section ".printk_index", align 4
@saa7164_api_configure_port_vbi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.584, ptr @.str.585, ptr @.str.2, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.584 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s:     bFormatIndex  = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.585 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"saa7164_api_configure_port_vbi\00", [33 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_vbi._entry_ptr = internal global ptr @saa7164_api_configure_port_vbi._entry, section ".printk_index", align 4
@saa7164_api_configure_port_vbi._entry.586 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.587, ptr @.str.585, ptr @.str.2, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.587 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s:     VideoStandard = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_vbi._entry_ptr.588 = internal global ptr @saa7164_api_configure_port_vbi._entry.586, section ".printk_index", align 4
@saa7164_api_configure_port_vbi._entry.589 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.590, ptr @.str.585, ptr @.str.2, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.590 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s:     StartLine     = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_vbi._entry_ptr.591 = internal global ptr @saa7164_api_configure_port_vbi._entry.589, section ".printk_index", align 4
@saa7164_api_configure_port_vbi._entry.592 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.593, ptr @.str.585, ptr @.str.2, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.593 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s:     EndLine       = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_vbi._entry_ptr.594 = internal global ptr @saa7164_api_configure_port_vbi._entry.592, section ".printk_index", align 4
@saa7164_api_configure_port_vbi._entry.595 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.596, ptr @.str.585, ptr @.str.2, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.596 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s:     FieldRate     = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_vbi._entry_ptr.597 = internal global ptr @saa7164_api_configure_port_vbi._entry.595, section ".printk_index", align 4
@saa7164_api_configure_port_vbi._entry.598 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.599, ptr @.str.585, ptr @.str.2, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.599 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s:     bNumLines     = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_vbi._entry_ptr.600 = internal global ptr @saa7164_api_configure_port_vbi._entry.598, section ".printk_index", align 4
@saa7164_api_configure_port_vbi._entry.601 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.564, ptr @.str.585, ptr @.str.2, i32 838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_vbi._entry_ptr.602 = internal global ptr @saa7164_api_configure_port_vbi._entry.601, section ".printk_index", align 4
@saa7164_api_configure_port_vbi._entry.603 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.604, ptr @.str.585, ptr @.str.2, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.604 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s:    = VS_FORMAT_VBI (becomes dev->en[%d])\0A\00", [48 x i8] zeroinitializer }, align 32
@saa7164_api_configure_port_vbi._entry_ptr.605 = internal global ptr @saa7164_api_configure_port_vbi._entry.603, section ".printk_index", align 4
@saa7164_api_modify_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.606, ptr @.str.607, ptr @.str.2, i32 1484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.606 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: %s(0x%x, %d, %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.607 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"saa7164_api_modify_gpio\00", [40 x i8] zeroinitializer }, align 32
@saa7164_api_modify_gpio._entry_ptr = internal global ptr @saa7164_api_modify_gpio._entry, section ".printk_index", align 4
@saa7164_api_modify_gpio._entry.608 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.607, ptr @.str.2, i32 1496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_api_modify_gpio._entry_ptr.609 = internal global ptr @saa7164_api_modify_gpio._entry.608, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.610 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 3, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.611 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 3, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.612 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.613 = internal global [14 x i64] [i64 12, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6, i64 9, i64 10, i64 11, i64 240, i64 243, i64 244, i64 245]
@__sancov_gen_cov_switch_values.614 = internal global [9 x i64] [i64 7, i64 16, i64 515, i64 1025, i64 1026, i64 1027, i64 1539, i64 1541, i64 61697]
@__sancov_gen_cov_switch_values.615 = internal global [9 x i64] [i64 7, i64 16, i64 515, i64 1025, i64 1026, i64 1027, i64 1539, i64 1541, i64 61697]
@__sancov_gen_cov_switch_values.616 = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 4, i64 9, i64 10, i64 14, i64 15]
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 20, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 30, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 32, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 43, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 52, i32 4 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 58, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 70, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 76, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 78, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 86, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 97, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 108, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 114, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 118, i32 4 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 124, i32 5 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 130, i32 5 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 134, i32 5 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 137, i32 5 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 139, i32 4 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 140, i32 4 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 142, i32 4 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 145, i32 4 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 149, i32 3 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 180, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 191, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 197, i32 3 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 212, i32 3 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 223, i32 3 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 240, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 251, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 257, i32 3 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 262, i32 3 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 267, i32 3 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 272, i32 3 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 277, i32 3 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 286, i32 3 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 288, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 289, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 290, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 291, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 292, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 294, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 296, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 298, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 300, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 302, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 304, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 316, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 340, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 349, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 377, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 383, i32 3 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 397, i32 3 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 401, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 428, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 434, i32 3 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 440, i32 3 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 447, i32 3 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 452, i32 3 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 463, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 468, i32 3 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 480, i32 2 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 486, i32 3 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 491, i32 3 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 496, i32 3 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 498, i32 2 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 511, i32 3 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 517, i32 3 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 522, i32 3 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 524, i32 2 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 537, i32 2 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 550, i32 3 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 564, i32 3 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 575, i32 2 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 585, i32 3 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 600, i32 3 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 602, i32 2 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 671, i32 2 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 674, i32 3 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 678, i32 3 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 682, i32 3 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 686, i32 3 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 690, i32 3 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 694, i32 3 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 698, i32 3 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 702, i32 3 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 707, i32 3 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 736, i32 2 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 773, i32 2 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 779, i32 3 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 792, i32 3 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1316, i32 2 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1322, i32 3 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1324, i32 2 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1336, i32 3 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1341, i32 18 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1341, i32 29 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1360, i32 2 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1378, i32 3 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1387, i32 3 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1391, i32 2 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1400, i32 3 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1422, i32 2 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1432, i32 3 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1440, i32 3 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1449, i32 3 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1453, i32 2 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1472, i32 3 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 160, i32 2 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 168, i32 3 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 617, i32 2 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 650, i32 3 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 657, i32 3 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 937, i32 2 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 948, i32 3 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 951, i32 4 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 954, i32 4 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 956, i32 4 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 961, i32 4 }
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 964, i32 4 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 966, i32 4 }
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 970, i32 5 }
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 973, i32 5 }
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 976, i32 5 }
@___asan_gen_.1294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 979, i32 5 }
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 983, i32 5 }
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 986, i32 5 }
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 990, i32 5 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 993, i32 5 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 996, i32 4 }
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 998, i32 4 }
@___asan_gen_.1336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1000, i32 4 }
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1004, i32 4 }
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1007, i32 4 }
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1009, i32 4 }
@___asan_gen_.1354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1013, i32 5 }
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1016, i32 5 }
@___asan_gen_.1360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1019, i32 5 }
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1022, i32 5 }
@___asan_gen_.1366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1026, i32 5 }
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1029, i32 5 }
@___asan_gen_.1372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1033, i32 5 }
@___asan_gen_.1375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1036, i32 5 }
@___asan_gen_.1378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1039, i32 4 }
@___asan_gen_.1384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1041, i32 4 }
@___asan_gen_.1387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1043, i32 4 }
@___asan_gen_.1393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1045, i32 4 }
@___asan_gen_.1399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1047, i32 4 }
@___asan_gen_.1405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1049, i32 4 }
@___asan_gen_.1411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1051, i32 4 }
@___asan_gen_.1417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1053, i32 4 }
@___asan_gen_.1420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1055, i32 4 }
@___asan_gen_.1426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1057, i32 4 }
@___asan_gen_.1432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1104, i32 6 }
@___asan_gen_.1438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1108, i32 6 }
@___asan_gen_.1444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1112, i32 6 }
@___asan_gen_.1447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1116, i32 6 }
@___asan_gen_.1453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1125, i32 4 }
@___asan_gen_.1456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1128, i32 4 }
@___asan_gen_.1462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1130, i32 4 }
@___asan_gen_.1468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1132, i32 4 }
@___asan_gen_.1474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1134, i32 4 }
@___asan_gen_.1480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1136, i32 4 }
@___asan_gen_.1486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1138, i32 4 }
@___asan_gen_.1492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1148, i32 5 }
@___asan_gen_.1498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1155, i32 4 }
@___asan_gen_.1501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1156, i32 4 }
@___asan_gen_.1507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1158, i32 4 }
@___asan_gen_.1510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1160, i32 4 }
@___asan_gen_.1516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1165, i32 4 }
@___asan_gen_.1519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1166, i32 4 }
@___asan_gen_.1522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1168, i32 4 }
@___asan_gen_.1525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1170, i32 4 }
@___asan_gen_.1531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1179, i32 5 }
@___asan_gen_.1537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1185, i32 4 }
@___asan_gen_.1540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1186, i32 4 }
@___asan_gen_.1543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1188, i32 4 }
@___asan_gen_.1546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1190, i32 4 }
@___asan_gen_.1549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1198, i32 4 }
@___asan_gen_.1555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1203, i32 4 }
@___asan_gen_.1561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1204, i32 4 }
@___asan_gen_.1564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1205, i32 4 }
@___asan_gen_.1570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1206, i32 4 }
@___asan_gen_.1576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1208, i32 4 }
@___asan_gen_.1579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1210, i32 4 }
@___asan_gen_.1582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1218, i32 5 }
@___asan_gen_.1588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1224, i32 4 }
@___asan_gen_.1591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1226, i32 4 }
@___asan_gen_.1597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1228, i32 4 }
@___asan_gen_.1603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1230, i32 4 }
@___asan_gen_.1609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1233, i32 5 }
@___asan_gen_.1615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1235, i32 5 }
@___asan_gen_.1621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1237, i32 5 }
@___asan_gen_.1627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1239, i32 5 }
@___asan_gen_.1633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1241, i32 5 }
@___asan_gen_.1639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1243, i32 5 }
@___asan_gen_.1645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1245, i32 5 }
@___asan_gen_.1651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1247, i32 5 }
@___asan_gen_.1657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1249, i32 5 }
@___asan_gen_.1663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1251, i32 5 }
@___asan_gen_.1669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1253, i32 5 }
@___asan_gen_.1675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1255, i32 5 }
@___asan_gen_.1681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1257, i32 5 }
@___asan_gen_.1687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1260, i32 5 }
@___asan_gen_.1693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1263, i32 5 }
@___asan_gen_.1699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1266, i32 5 }
@___asan_gen_.1705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1269, i32 5 }
@___asan_gen_.1711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1271, i32 4 }
@___asan_gen_.1717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1273, i32 4 }
@___asan_gen_.1720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1275, i32 4 }
@___asan_gen_.1723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1284, i32 5 }
@___asan_gen_.1729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1290, i32 4 }
@___asan_gen_.1735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1293, i32 4 }
@___asan_gen_.1741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1296, i32 4 }
@___asan_gen_.1747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1299, i32 3 }
@___asan_gen_.1753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1300, i32 3 }
@___asan_gen_.1759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1301, i32 3 }
@___asan_gen_.1765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1302, i32 3 }
@___asan_gen_.1774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 851, i32 2 }
@___asan_gen_.1780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 852, i32 2 }
@___asan_gen_.1786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 853, i32 2 }
@___asan_gen_.1792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 854, i32 2 }
@___asan_gen_.1798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 855, i32 2 }
@___asan_gen_.1804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 872, i32 2 }
@___asan_gen_.1810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 875, i32 2 }
@___asan_gen_.1816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 886, i32 2 }
@___asan_gen_.1822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 887, i32 2 }
@___asan_gen_.1828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 888, i32 2 }
@___asan_gen_.1834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 889, i32 2 }
@___asan_gen_.1837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 906, i32 2 }
@___asan_gen_.1843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 909, i32 2 }
@___asan_gen_.1852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 815, i32 2 }
@___asan_gen_.1858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 816, i32 2 }
@___asan_gen_.1864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 817, i32 2 }
@___asan_gen_.1870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 818, i32 2 }
@___asan_gen_.1876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 819, i32 2 }
@___asan_gen_.1882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 820, i32 2 }
@___asan_gen_.1885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 837, i32 2 }
@___asan_gen_.1891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 840, i32 2 }
@___asan_gen_.1898 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1483, i32 2 }
@___asan_gen_.1901 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1902 = private constant [43 x i8] c"../drivers/media/pci/saa7164/saa7164-api.c\00", align 1
@___asan_gen_.1903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1902, i32 1495, i32 3 }
@llvm.compiler.used = appending global [668 x ptr] [ptr @saa7164_api_audio_mute._entry, ptr @saa7164_api_audio_mute._entry.146, ptr @saa7164_api_audio_mute._entry_ptr, ptr @saa7164_api_audio_mute._entry_ptr.147, ptr @saa7164_api_collect_debug._entry, ptr @saa7164_api_collect_debug._entry.10, ptr @saa7164_api_collect_debug._entry.12, ptr @saa7164_api_collect_debug._entry_ptr, ptr @saa7164_api_collect_debug._entry_ptr.11, ptr @saa7164_api_collect_debug._entry_ptr.14, ptr @saa7164_api_configure_dif._entry, ptr @saa7164_api_configure_dif._entry.182, ptr @saa7164_api_configure_dif._entry.185, ptr @saa7164_api_configure_dif._entry.188, ptr @saa7164_api_configure_dif._entry.191, ptr @saa7164_api_configure_dif._entry.194, ptr @saa7164_api_configure_dif._entry.197, ptr @saa7164_api_configure_dif._entry.200, ptr @saa7164_api_configure_dif._entry.203, ptr @saa7164_api_configure_dif._entry.206, ptr @saa7164_api_configure_dif._entry_ptr, ptr @saa7164_api_configure_dif._entry_ptr.184, ptr @saa7164_api_configure_dif._entry_ptr.187, ptr @saa7164_api_configure_dif._entry_ptr.190, ptr @saa7164_api_configure_dif._entry_ptr.193, ptr @saa7164_api_configure_dif._entry_ptr.196, ptr @saa7164_api_configure_dif._entry_ptr.199, ptr @saa7164_api_configure_dif._entry_ptr.202, ptr @saa7164_api_configure_dif._entry_ptr.205, ptr @saa7164_api_configure_dif._entry_ptr.208, ptr @saa7164_api_configure_port_mpeg2ps._entry, ptr @saa7164_api_configure_port_mpeg2ps._entry.570, ptr @saa7164_api_configure_port_mpeg2ps._entry.573, ptr @saa7164_api_configure_port_mpeg2ps._entry.576, ptr @saa7164_api_configure_port_mpeg2ps._entry.579, ptr @saa7164_api_configure_port_mpeg2ps._entry.581, ptr @saa7164_api_configure_port_mpeg2ps._entry_ptr, ptr @saa7164_api_configure_port_mpeg2ps._entry_ptr.572, ptr @saa7164_api_configure_port_mpeg2ps._entry_ptr.575, ptr @saa7164_api_configure_port_mpeg2ps._entry_ptr.578, ptr @saa7164_api_configure_port_mpeg2ps._entry_ptr.580, ptr @saa7164_api_configure_port_mpeg2ps._entry_ptr.583, ptr @saa7164_api_configure_port_mpeg2ts._entry, ptr @saa7164_api_configure_port_mpeg2ts._entry.551, ptr @saa7164_api_configure_port_mpeg2ts._entry.554, ptr @saa7164_api_configure_port_mpeg2ts._entry.557, ptr @saa7164_api_configure_port_mpeg2ts._entry.560, ptr @saa7164_api_configure_port_mpeg2ts._entry.563, ptr @saa7164_api_configure_port_mpeg2ts._entry.566, ptr @saa7164_api_configure_port_mpeg2ts._entry_ptr, ptr @saa7164_api_configure_port_mpeg2ts._entry_ptr.553, ptr @saa7164_api_configure_port_mpeg2ts._entry_ptr.556, ptr @saa7164_api_configure_port_mpeg2ts._entry_ptr.559, ptr @saa7164_api_configure_port_mpeg2ts._entry_ptr.562, ptr @saa7164_api_configure_port_mpeg2ts._entry_ptr.565, ptr @saa7164_api_configure_port_mpeg2ts._entry_ptr.568, ptr @saa7164_api_configure_port_vbi._entry, ptr @saa7164_api_configure_port_vbi._entry.586, ptr @saa7164_api_configure_port_vbi._entry.589, ptr @saa7164_api_configure_port_vbi._entry.592, ptr @saa7164_api_configure_port_vbi._entry.595, ptr @saa7164_api_configure_port_vbi._entry.598, ptr @saa7164_api_configure_port_vbi._entry.601, ptr @saa7164_api_configure_port_vbi._entry.603, ptr @saa7164_api_configure_port_vbi._entry_ptr, ptr @saa7164_api_configure_port_vbi._entry_ptr.588, ptr @saa7164_api_configure_port_vbi._entry_ptr.591, ptr @saa7164_api_configure_port_vbi._entry_ptr.594, ptr @saa7164_api_configure_port_vbi._entry_ptr.597, ptr @saa7164_api_configure_port_vbi._entry_ptr.600, ptr @saa7164_api_configure_port_vbi._entry_ptr.602, ptr @saa7164_api_configure_port_vbi._entry_ptr.605, ptr @saa7164_api_dump_subdevs._entry, ptr @saa7164_api_dump_subdevs._entry.266, ptr @saa7164_api_dump_subdevs._entry.269, ptr @saa7164_api_dump_subdevs._entry.272, ptr @saa7164_api_dump_subdevs._entry.275, ptr @saa7164_api_dump_subdevs._entry.278, ptr @saa7164_api_dump_subdevs._entry.281, ptr @saa7164_api_dump_subdevs._entry.284, ptr @saa7164_api_dump_subdevs._entry.287, ptr @saa7164_api_dump_subdevs._entry.290, ptr @saa7164_api_dump_subdevs._entry.293, ptr @saa7164_api_dump_subdevs._entry.296, ptr @saa7164_api_dump_subdevs._entry.299, ptr @saa7164_api_dump_subdevs._entry.302, ptr @saa7164_api_dump_subdevs._entry.305, ptr @saa7164_api_dump_subdevs._entry.308, ptr @saa7164_api_dump_subdevs._entry.311, ptr @saa7164_api_dump_subdevs._entry.314, ptr @saa7164_api_dump_subdevs._entry.317, ptr @saa7164_api_dump_subdevs._entry.320, ptr @saa7164_api_dump_subdevs._entry.323, ptr @saa7164_api_dump_subdevs._entry.326, ptr @saa7164_api_dump_subdevs._entry.328, ptr @saa7164_api_dump_subdevs._entry.330, ptr @saa7164_api_dump_subdevs._entry.332, ptr @saa7164_api_dump_subdevs._entry.334, ptr @saa7164_api_dump_subdevs._entry.336, ptr @saa7164_api_dump_subdevs._entry.338, ptr @saa7164_api_dump_subdevs._entry.340, ptr @saa7164_api_dump_subdevs._entry.342, ptr @saa7164_api_dump_subdevs._entry.344, ptr @saa7164_api_dump_subdevs._entry.346, ptr @saa7164_api_dump_subdevs._entry.349, ptr @saa7164_api_dump_subdevs._entry.351, ptr @saa7164_api_dump_subdevs._entry.354, ptr @saa7164_api_dump_subdevs._entry.357, ptr @saa7164_api_dump_subdevs._entry.360, ptr @saa7164_api_dump_subdevs._entry.363, ptr @saa7164_api_dump_subdevs._entry.366, ptr @saa7164_api_dump_subdevs._entry.368, ptr @saa7164_api_dump_subdevs._entry.371, ptr @saa7164_api_dump_subdevs._entry.374, ptr @saa7164_api_dump_subdevs._entry.377, ptr @saa7164_api_dump_subdevs._entry.380, ptr @saa7164_api_dump_subdevs._entry.382, ptr @saa7164_api_dump_subdevs._entry.385, ptr @saa7164_api_dump_subdevs._entry.387, ptr @saa7164_api_dump_subdevs._entry.390, ptr @saa7164_api_dump_subdevs._entry.393, ptr @saa7164_api_dump_subdevs._entry.396, ptr @saa7164_api_dump_subdevs._entry.399, ptr @saa7164_api_dump_subdevs._entry.402, ptr @saa7164_api_dump_subdevs._entry.405, ptr @saa7164_api_dump_subdevs._entry.408, ptr @saa7164_api_dump_subdevs._entry.410, ptr @saa7164_api_dump_subdevs._entry.413, ptr @saa7164_api_dump_subdevs._entry.415, ptr @saa7164_api_dump_subdevs._entry.418, ptr @saa7164_api_dump_subdevs._entry.420, ptr @saa7164_api_dump_subdevs._entry.422, ptr @saa7164_api_dump_subdevs._entry.424, ptr @saa7164_api_dump_subdevs._entry.427, ptr @saa7164_api_dump_subdevs._entry.430, ptr @saa7164_api_dump_subdevs._entry.432, ptr @saa7164_api_dump_subdevs._entry.434, ptr @saa7164_api_dump_subdevs._entry.436, ptr @saa7164_api_dump_subdevs._entry.438, ptr @saa7164_api_dump_subdevs._entry.441, ptr @saa7164_api_dump_subdevs._entry.444, ptr @saa7164_api_dump_subdevs._entry.446, ptr @saa7164_api_dump_subdevs._entry.449, ptr @saa7164_api_dump_subdevs._entry.452, ptr @saa7164_api_dump_subdevs._entry.454, ptr @saa7164_api_dump_subdevs._entry.456, ptr @saa7164_api_dump_subdevs._entry.459, ptr @saa7164_api_dump_subdevs._entry.461, ptr @saa7164_api_dump_subdevs._entry.464, ptr @saa7164_api_dump_subdevs._entry.467, ptr @saa7164_api_dump_subdevs._entry.470, ptr @saa7164_api_dump_subdevs._entry.473, ptr @saa7164_api_dump_subdevs._entry.476, ptr @saa7164_api_dump_subdevs._entry.479, ptr @saa7164_api_dump_subdevs._entry.482, ptr @saa7164_api_dump_subdevs._entry.485, ptr @saa7164_api_dump_subdevs._entry.488, ptr @saa7164_api_dump_subdevs._entry.491, ptr @saa7164_api_dump_subdevs._entry.494, ptr @saa7164_api_dump_subdevs._entry.497, ptr @saa7164_api_dump_subdevs._entry.500, ptr @saa7164_api_dump_subdevs._entry.503, ptr @saa7164_api_dump_subdevs._entry.506, ptr @saa7164_api_dump_subdevs._entry.509, ptr @saa7164_api_dump_subdevs._entry.512, ptr @saa7164_api_dump_subdevs._entry.515, ptr @saa7164_api_dump_subdevs._entry.518, ptr @saa7164_api_dump_subdevs._entry.521, ptr @saa7164_api_dump_subdevs._entry.524, ptr @saa7164_api_dump_subdevs._entry.526, ptr @saa7164_api_dump_subdevs._entry.528, ptr @saa7164_api_dump_subdevs._entry.531, ptr @saa7164_api_dump_subdevs._entry.534, ptr @saa7164_api_dump_subdevs._entry.537, ptr @saa7164_api_dump_subdevs._entry.540, ptr @saa7164_api_dump_subdevs._entry.543, ptr @saa7164_api_dump_subdevs._entry.546, ptr @saa7164_api_dump_subdevs._entry_ptr, ptr @saa7164_api_dump_subdevs._entry_ptr.268, ptr @saa7164_api_dump_subdevs._entry_ptr.271, ptr @saa7164_api_dump_subdevs._entry_ptr.274, ptr @saa7164_api_dump_subdevs._entry_ptr.277, ptr @saa7164_api_dump_subdevs._entry_ptr.280, ptr @saa7164_api_dump_subdevs._entry_ptr.283, ptr @saa7164_api_dump_subdevs._entry_ptr.286, ptr @saa7164_api_dump_subdevs._entry_ptr.289, ptr @saa7164_api_dump_subdevs._entry_ptr.292, ptr @saa7164_api_dump_subdevs._entry_ptr.295, ptr @saa7164_api_dump_subdevs._entry_ptr.298, ptr @saa7164_api_dump_subdevs._entry_ptr.301, ptr @saa7164_api_dump_subdevs._entry_ptr.304, ptr @saa7164_api_dump_subdevs._entry_ptr.307, ptr @saa7164_api_dump_subdevs._entry_ptr.310, ptr @saa7164_api_dump_subdevs._entry_ptr.313, ptr @saa7164_api_dump_subdevs._entry_ptr.316, ptr @saa7164_api_dump_subdevs._entry_ptr.319, ptr @saa7164_api_dump_subdevs._entry_ptr.322, ptr @saa7164_api_dump_subdevs._entry_ptr.325, ptr @saa7164_api_dump_subdevs._entry_ptr.327, ptr @saa7164_api_dump_subdevs._entry_ptr.329, ptr @saa7164_api_dump_subdevs._entry_ptr.331, ptr @saa7164_api_dump_subdevs._entry_ptr.333, ptr @saa7164_api_dump_subdevs._entry_ptr.335, ptr @saa7164_api_dump_subdevs._entry_ptr.337, ptr @saa7164_api_dump_subdevs._entry_ptr.339, ptr @saa7164_api_dump_subdevs._entry_ptr.341, ptr @saa7164_api_dump_subdevs._entry_ptr.343, ptr @saa7164_api_dump_subdevs._entry_ptr.345, ptr @saa7164_api_dump_subdevs._entry_ptr.348, ptr @saa7164_api_dump_subdevs._entry_ptr.350, ptr @saa7164_api_dump_subdevs._entry_ptr.353, ptr @saa7164_api_dump_subdevs._entry_ptr.356, ptr @saa7164_api_dump_subdevs._entry_ptr.359, ptr @saa7164_api_dump_subdevs._entry_ptr.362, ptr @saa7164_api_dump_subdevs._entry_ptr.365, ptr @saa7164_api_dump_subdevs._entry_ptr.367, ptr @saa7164_api_dump_subdevs._entry_ptr.370, ptr @saa7164_api_dump_subdevs._entry_ptr.373, ptr @saa7164_api_dump_subdevs._entry_ptr.376, ptr @saa7164_api_dump_subdevs._entry_ptr.379, ptr @saa7164_api_dump_subdevs._entry_ptr.381, ptr @saa7164_api_dump_subdevs._entry_ptr.384, ptr @saa7164_api_dump_subdevs._entry_ptr.386, ptr @saa7164_api_dump_subdevs._entry_ptr.389, ptr @saa7164_api_dump_subdevs._entry_ptr.392, ptr @saa7164_api_dump_subdevs._entry_ptr.395, ptr @saa7164_api_dump_subdevs._entry_ptr.398, ptr @saa7164_api_dump_subdevs._entry_ptr.401, ptr @saa7164_api_dump_subdevs._entry_ptr.404, ptr @saa7164_api_dump_subdevs._entry_ptr.407, ptr @saa7164_api_dump_subdevs._entry_ptr.409, ptr @saa7164_api_dump_subdevs._entry_ptr.412, ptr @saa7164_api_dump_subdevs._entry_ptr.414, ptr @saa7164_api_dump_subdevs._entry_ptr.417, ptr @saa7164_api_dump_subdevs._entry_ptr.419, ptr @saa7164_api_dump_subdevs._entry_ptr.421, ptr @saa7164_api_dump_subdevs._entry_ptr.423, ptr @saa7164_api_dump_subdevs._entry_ptr.426, ptr @saa7164_api_dump_subdevs._entry_ptr.429, ptr @saa7164_api_dump_subdevs._entry_ptr.431, ptr @saa7164_api_dump_subdevs._entry_ptr.433, ptr @saa7164_api_dump_subdevs._entry_ptr.435, ptr @saa7164_api_dump_subdevs._entry_ptr.437, ptr @saa7164_api_dump_subdevs._entry_ptr.440, ptr @saa7164_api_dump_subdevs._entry_ptr.443, ptr @saa7164_api_dump_subdevs._entry_ptr.445, ptr @saa7164_api_dump_subdevs._entry_ptr.448, ptr @saa7164_api_dump_subdevs._entry_ptr.451, ptr @saa7164_api_dump_subdevs._entry_ptr.453, ptr @saa7164_api_dump_subdevs._entry_ptr.455, ptr @saa7164_api_dump_subdevs._entry_ptr.458, ptr @saa7164_api_dump_subdevs._entry_ptr.460, ptr @saa7164_api_dump_subdevs._entry_ptr.463, ptr @saa7164_api_dump_subdevs._entry_ptr.466, ptr @saa7164_api_dump_subdevs._entry_ptr.469, ptr @saa7164_api_dump_subdevs._entry_ptr.472, ptr @saa7164_api_dump_subdevs._entry_ptr.475, ptr @saa7164_api_dump_subdevs._entry_ptr.478, ptr @saa7164_api_dump_subdevs._entry_ptr.481, ptr @saa7164_api_dump_subdevs._entry_ptr.484, ptr @saa7164_api_dump_subdevs._entry_ptr.487, ptr @saa7164_api_dump_subdevs._entry_ptr.490, ptr @saa7164_api_dump_subdevs._entry_ptr.493, ptr @saa7164_api_dump_subdevs._entry_ptr.496, ptr @saa7164_api_dump_subdevs._entry_ptr.499, ptr @saa7164_api_dump_subdevs._entry_ptr.502, ptr @saa7164_api_dump_subdevs._entry_ptr.505, ptr @saa7164_api_dump_subdevs._entry_ptr.508, ptr @saa7164_api_dump_subdevs._entry_ptr.511, ptr @saa7164_api_dump_subdevs._entry_ptr.514, ptr @saa7164_api_dump_subdevs._entry_ptr.517, ptr @saa7164_api_dump_subdevs._entry_ptr.520, ptr @saa7164_api_dump_subdevs._entry_ptr.523, ptr @saa7164_api_dump_subdevs._entry_ptr.525, ptr @saa7164_api_dump_subdevs._entry_ptr.527, ptr @saa7164_api_dump_subdevs._entry_ptr.530, ptr @saa7164_api_dump_subdevs._entry_ptr.533, ptr @saa7164_api_dump_subdevs._entry_ptr.536, ptr @saa7164_api_dump_subdevs._entry_ptr.539, ptr @saa7164_api_dump_subdevs._entry_ptr.542, ptr @saa7164_api_dump_subdevs._entry_ptr.545, ptr @saa7164_api_dump_subdevs._entry_ptr.548, ptr @saa7164_api_enum_subdevs._entry, ptr @saa7164_api_enum_subdevs._entry.218, ptr @saa7164_api_enum_subdevs._entry.220, ptr @saa7164_api_enum_subdevs._entry.223, ptr @saa7164_api_enum_subdevs._entry_ptr, ptr @saa7164_api_enum_subdevs._entry_ptr.219, ptr @saa7164_api_enum_subdevs._entry_ptr.222, ptr @saa7164_api_enum_subdevs._entry_ptr.224, ptr @saa7164_api_get_encoder._entry, ptr @saa7164_api_get_encoder._entry.102, ptr @saa7164_api_get_encoder._entry.105, ptr @saa7164_api_get_encoder._entry.108, ptr @saa7164_api_get_encoder._entry.111, ptr @saa7164_api_get_encoder._entry.114, ptr @saa7164_api_get_encoder._entry.117, ptr @saa7164_api_get_encoder._entry.73, ptr @saa7164_api_get_encoder._entry.75, ptr @saa7164_api_get_encoder._entry.77, ptr @saa7164_api_get_encoder._entry.79, ptr @saa7164_api_get_encoder._entry.81, ptr @saa7164_api_get_encoder._entry.83, ptr @saa7164_api_get_encoder._entry.85, ptr @saa7164_api_get_encoder._entry.87, ptr @saa7164_api_get_encoder._entry.90, ptr @saa7164_api_get_encoder._entry.93, ptr @saa7164_api_get_encoder._entry.96, ptr @saa7164_api_get_encoder._entry.99, ptr @saa7164_api_get_encoder._entry_ptr, ptr @saa7164_api_get_encoder._entry_ptr.101, ptr @saa7164_api_get_encoder._entry_ptr.104, ptr @saa7164_api_get_encoder._entry_ptr.107, ptr @saa7164_api_get_encoder._entry_ptr.110, ptr @saa7164_api_get_encoder._entry_ptr.113, ptr @saa7164_api_get_encoder._entry_ptr.116, ptr @saa7164_api_get_encoder._entry_ptr.119, ptr @saa7164_api_get_encoder._entry_ptr.74, ptr @saa7164_api_get_encoder._entry_ptr.76, ptr @saa7164_api_get_encoder._entry_ptr.78, ptr @saa7164_api_get_encoder._entry_ptr.80, ptr @saa7164_api_get_encoder._entry_ptr.82, ptr @saa7164_api_get_encoder._entry_ptr.84, ptr @saa7164_api_get_encoder._entry_ptr.86, ptr @saa7164_api_get_encoder._entry_ptr.89, ptr @saa7164_api_get_encoder._entry_ptr.92, ptr @saa7164_api_get_encoder._entry_ptr.95, ptr @saa7164_api_get_encoder._entry_ptr.98, ptr @saa7164_api_get_fw_version._entry, ptr @saa7164_api_get_fw_version._entry_ptr, ptr @saa7164_api_get_load_info._entry, ptr @saa7164_api_get_load_info._entry.3, ptr @saa7164_api_get_load_info._entry.6, ptr @saa7164_api_get_load_info._entry_ptr, ptr @saa7164_api_get_load_info._entry_ptr.5, ptr @saa7164_api_get_load_info._entry_ptr.8, ptr @saa7164_api_get_usercontrol._entry, ptr @saa7164_api_get_usercontrol._entry.132, ptr @saa7164_api_get_usercontrol._entry_ptr, ptr @saa7164_api_get_usercontrol._entry_ptr.134, ptr @saa7164_api_get_videomux._entry, ptr @saa7164_api_get_videomux._entry.177, ptr @saa7164_api_get_videomux._entry_ptr, ptr @saa7164_api_get_videomux._entry_ptr.179, ptr @saa7164_api_i2c_read._entry, ptr @saa7164_api_i2c_read._entry.229, ptr @saa7164_api_i2c_read._entry.232, ptr @saa7164_api_i2c_read._entry.235, ptr @saa7164_api_i2c_read._entry.238, ptr @saa7164_api_i2c_read._entry_ptr, ptr @saa7164_api_i2c_read._entry_ptr.231, ptr @saa7164_api_i2c_read._entry_ptr.234, ptr @saa7164_api_i2c_read._entry_ptr.237, ptr @saa7164_api_i2c_read._entry_ptr.240, ptr @saa7164_api_i2c_write._entry, ptr @saa7164_api_i2c_write._entry.243, ptr @saa7164_api_i2c_write._entry.245, ptr @saa7164_api_i2c_write._entry.248, ptr @saa7164_api_i2c_write._entry.250, ptr @saa7164_api_i2c_write._entry.253, ptr @saa7164_api_i2c_write._entry_ptr, ptr @saa7164_api_i2c_write._entry_ptr.244, ptr @saa7164_api_i2c_write._entry_ptr.247, ptr @saa7164_api_i2c_write._entry_ptr.249, ptr @saa7164_api_i2c_write._entry_ptr.252, ptr @saa7164_api_i2c_write._entry_ptr.254, ptr @saa7164_api_initialize_dif._entry, ptr @saa7164_api_initialize_dif._entry_ptr, ptr @saa7164_api_modify_gpio._entry, ptr @saa7164_api_modify_gpio._entry.608, ptr @saa7164_api_modify_gpio._entry_ptr, ptr @saa7164_api_modify_gpio._entry_ptr.609, ptr @saa7164_api_set_aspect_ratio._entry, ptr @saa7164_api_set_aspect_ratio._entry.122, ptr @saa7164_api_set_aspect_ratio._entry.125, ptr @saa7164_api_set_aspect_ratio._entry_ptr, ptr @saa7164_api_set_aspect_ratio._entry_ptr.124, ptr @saa7164_api_set_aspect_ratio._entry_ptr.126, ptr @saa7164_api_set_audio_detection._entry, ptr @saa7164_api_set_audio_detection._entry.173, ptr @saa7164_api_set_audio_detection._entry_ptr, ptr @saa7164_api_set_audio_detection._entry_ptr.175, ptr @saa7164_api_set_audio_std._entry, ptr @saa7164_api_set_audio_std._entry.167, ptr @saa7164_api_set_audio_std._entry.169, ptr @saa7164_api_set_audio_std._entry_ptr, ptr @saa7164_api_set_audio_std._entry_ptr.168, ptr @saa7164_api_set_audio_std._entry_ptr.171, ptr @saa7164_api_set_audio_volume._entry, ptr @saa7164_api_set_audio_volume._entry.149, ptr @saa7164_api_set_audio_volume._entry.151, ptr @saa7164_api_set_audio_volume._entry.153, ptr @saa7164_api_set_audio_volume._entry.155, ptr @saa7164_api_set_audio_volume._entry.158, ptr @saa7164_api_set_audio_volume._entry.160, ptr @saa7164_api_set_audio_volume._entry.162, ptr @saa7164_api_set_audio_volume._entry.164, ptr @saa7164_api_set_audio_volume._entry_ptr, ptr @saa7164_api_set_audio_volume._entry_ptr.150, ptr @saa7164_api_set_audio_volume._entry_ptr.152, ptr @saa7164_api_set_audio_volume._entry_ptr.154, ptr @saa7164_api_set_audio_volume._entry_ptr.157, ptr @saa7164_api_set_audio_volume._entry_ptr.159, ptr @saa7164_api_set_audio_volume._entry_ptr.161, ptr @saa7164_api_set_audio_volume._entry_ptr.163, ptr @saa7164_api_set_audio_volume._entry_ptr.165, ptr @saa7164_api_set_debug._entry, ptr @saa7164_api_set_debug._entry.17, ptr @saa7164_api_set_debug._entry.19, ptr @saa7164_api_set_debug._entry.22, ptr @saa7164_api_set_debug._entry_ptr, ptr @saa7164_api_set_debug._entry_ptr.18, ptr @saa7164_api_set_debug._entry_ptr.21, ptr @saa7164_api_set_debug._entry_ptr.23, ptr @saa7164_api_set_dif._entry, ptr @saa7164_api_set_dif._entry.260, ptr @saa7164_api_set_dif._entry.262, ptr @saa7164_api_set_dif._entry_ptr, ptr @saa7164_api_set_dif._entry_ptr.261, ptr @saa7164_api_set_dif._entry_ptr.263, ptr @saa7164_api_set_encoder._entry, ptr @saa7164_api_set_encoder._entry.64, ptr @saa7164_api_set_encoder._entry.66, ptr @saa7164_api_set_encoder._entry.68, ptr @saa7164_api_set_encoder._entry.70, ptr @saa7164_api_set_encoder._entry_ptr, ptr @saa7164_api_set_encoder._entry_ptr.65, ptr @saa7164_api_set_encoder._entry_ptr.67, ptr @saa7164_api_set_encoder._entry_ptr.69, ptr @saa7164_api_set_encoder._entry_ptr.71, ptr @saa7164_api_set_gop_size._entry, ptr @saa7164_api_set_gop_size._entry.256, ptr @saa7164_api_set_gop_size._entry_ptr, ptr @saa7164_api_set_gop_size._entry_ptr.257, ptr @saa7164_api_set_usercontrol._entry, ptr @saa7164_api_set_usercontrol._entry.129, ptr @saa7164_api_set_usercontrol._entry_ptr, ptr @saa7164_api_set_usercontrol._entry_ptr.130, ptr @saa7164_api_set_vbi_format._entry, ptr @saa7164_api_set_vbi_format._entry.26, ptr @saa7164_api_set_vbi_format._entry.29, ptr @saa7164_api_set_vbi_format._entry.32, ptr @saa7164_api_set_vbi_format._entry.35, ptr @saa7164_api_set_vbi_format._entry.38, ptr @saa7164_api_set_vbi_format._entry.41, ptr @saa7164_api_set_vbi_format._entry.44, ptr @saa7164_api_set_vbi_format._entry.47, ptr @saa7164_api_set_vbi_format._entry.50, ptr @saa7164_api_set_vbi_format._entry.53, ptr @saa7164_api_set_vbi_format._entry.56, ptr @saa7164_api_set_vbi_format._entry.59, ptr @saa7164_api_set_vbi_format._entry_ptr, ptr @saa7164_api_set_vbi_format._entry_ptr.28, ptr @saa7164_api_set_vbi_format._entry_ptr.31, ptr @saa7164_api_set_vbi_format._entry_ptr.34, ptr @saa7164_api_set_vbi_format._entry_ptr.37, ptr @saa7164_api_set_vbi_format._entry_ptr.40, ptr @saa7164_api_set_vbi_format._entry_ptr.43, ptr @saa7164_api_set_vbi_format._entry_ptr.46, ptr @saa7164_api_set_vbi_format._entry_ptr.49, ptr @saa7164_api_set_vbi_format._entry_ptr.52, ptr @saa7164_api_set_vbi_format._entry_ptr.55, ptr @saa7164_api_set_vbi_format._entry_ptr.58, ptr @saa7164_api_set_vbi_format._entry_ptr.61, ptr @saa7164_api_set_videomux._entry, ptr @saa7164_api_set_videomux._entry.137, ptr @saa7164_api_set_videomux._entry.139, ptr @saa7164_api_set_videomux._entry.141, ptr @saa7164_api_set_videomux._entry.143, ptr @saa7164_api_set_videomux._entry_ptr, ptr @saa7164_api_set_videomux._entry_ptr.138, ptr @saa7164_api_set_videomux._entry_ptr.140, ptr @saa7164_api_set_videomux._entry_ptr.142, ptr @saa7164_api_set_videomux._entry_ptr.144, ptr @saa7164_api_transition_port._entry, ptr @saa7164_api_transition_port._entry.213, ptr @saa7164_api_transition_port._entry_ptr, ptr @saa7164_api_transition_port._entry_ptr.215, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.20, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.72, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.127, ptr @.str.128, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.145, ptr @.str.148, ptr @.str.156, ptr @.str.166, ptr @.str.170, ptr @.str.172, ptr @.str.174, ptr @.str.176, ptr @.str.178, ptr @.str.180, ptr @.str.181, ptr @.str.183, ptr @.str.186, ptr @.str.189, ptr @.str.192, ptr @.str.195, ptr @.str.198, ptr @.str.201, ptr @.str.204, ptr @.str.207, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.214, ptr @.str.216, ptr @.str.217, ptr @.str.221, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.230, ptr @.str.233, ptr @.str.236, ptr @.str.239, ptr @.str.241, ptr @.str.242, ptr @.str.246, ptr @.str.251, ptr @.str.255, ptr @.str.258, ptr @.str.259, ptr @.str.264, ptr @.str.265, ptr @.str.267, ptr @.str.270, ptr @.str.273, ptr @.str.276, ptr @.str.279, ptr @.str.282, ptr @.str.285, ptr @.str.288, ptr @.str.291, ptr @.str.294, ptr @.str.297, ptr @.str.300, ptr @.str.303, ptr @.str.306, ptr @.str.309, ptr @.str.312, ptr @.str.315, ptr @.str.318, ptr @.str.321, ptr @.str.324, ptr @.str.347, ptr @.str.352, ptr @.str.355, ptr @.str.358, ptr @.str.361, ptr @.str.364, ptr @.str.369, ptr @.str.372, ptr @.str.375, ptr @.str.378, ptr @.str.383, ptr @.str.388, ptr @.str.391, ptr @.str.394, ptr @.str.397, ptr @.str.400, ptr @.str.403, ptr @.str.406, ptr @.str.411, ptr @.str.416, ptr @.str.425, ptr @.str.428, ptr @.str.439, ptr @.str.442, ptr @.str.447, ptr @.str.450, ptr @.str.457, ptr @.str.462, ptr @.str.465, ptr @.str.468, ptr @.str.471, ptr @.str.474, ptr @.str.477, ptr @.str.480, ptr @.str.483, ptr @.str.486, ptr @.str.489, ptr @.str.492, ptr @.str.495, ptr @.str.498, ptr @.str.501, ptr @.str.504, ptr @.str.507, ptr @.str.510, ptr @.str.513, ptr @.str.516, ptr @.str.519, ptr @.str.522, ptr @.str.529, ptr @.str.532, ptr @.str.535, ptr @.str.538, ptr @.str.541, ptr @.str.544, ptr @.str.547, ptr @.str.549, ptr @.str.550, ptr @.str.552, ptr @.str.555, ptr @.str.558, ptr @.str.561, ptr @.str.564, ptr @.str.567, ptr @.str.569, ptr @.str.571, ptr @.str.574, ptr @.str.577, ptr @.str.582, ptr @.str.584, ptr @.str.585, ptr @.str.587, ptr @.str.590, ptr @.str.593, ptr @.str.596, ptr @.str.599, ptr @.str.604, ptr @.str.606, ptr @.str.607], section "llvm.metadata"
@0 = internal global [429 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_load_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_load_info._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_load_info._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_collect_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_collect_debug._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_collect_debug._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_debug._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_debug._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_debug._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_vbi_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_vbi_format._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_vbi_format._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_vbi_format._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_vbi_format._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_vbi_format._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_vbi_format._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_vbi_format._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_vbi_format._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_vbi_format._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_vbi_format._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_vbi_format._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_vbi_format._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_encoder._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_encoder._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_encoder._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_encoder._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_encoder._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_encoder._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_encoder._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_encoder._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_encoder._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_encoder._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_encoder._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_encoder._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_encoder._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_encoder._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_encoder._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_encoder._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_encoder._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_encoder._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_encoder._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_encoder._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_encoder._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_encoder._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_encoder._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_encoder._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_aspect_ratio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_aspect_ratio._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_aspect_ratio._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_usercontrol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_usercontrol._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_usercontrol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_usercontrol._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_videomux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_videomux._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_videomux._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_videomux._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_videomux._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_audio_mute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_audio_mute._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_audio_volume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_audio_volume._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_audio_volume._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_audio_volume._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_audio_volume._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_audio_volume._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_audio_volume._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_audio_volume._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_audio_volume._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_audio_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_audio_std._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_audio_std._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_audio_detection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_audio_detection._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_videomux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_videomux._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_dif._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_dif._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_dif._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_dif._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_dif._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_dif._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_dif._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_dif._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_dif._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_dif._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_initialize_dif._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_transition_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_transition_port._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_get_fw_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_enum_subdevs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_enum_subdevs._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_enum_subdevs._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_enum_subdevs._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_i2c_read._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_i2c_read._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_i2c_read._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_i2c_read._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_i2c_write._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_i2c_write._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_i2c_write._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_i2c_write._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_i2c_write._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_gop_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_gop_size._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_dif._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_dif._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_set_dif._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.296 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.299 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.311 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.323 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.326 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.328 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.330 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.332 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.334 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.336 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.338 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.340 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.342 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.344 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.346 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.349 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.351 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.354 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.357 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.360 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.363 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.366 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.368 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.371 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.374 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.377 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.380 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.382 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.385 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.387 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.390 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.391 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.393 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.396 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.399 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.402 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.405 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.408 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.410 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.413 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.415 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.418 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.420 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.422 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.424 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.425 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.427 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.430 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.432 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.434 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.436 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.438 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.439 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.441 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.442 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.444 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.446 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.447 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.449 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.450 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.452 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.454 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.456 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.457 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.459 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.461 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.462 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.464 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.465 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.467 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.468 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.470 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.471 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.473 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.474 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.476 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.477 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.479 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.480 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.482 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.483 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.485 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.486 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.488 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.489 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.491 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.492 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.494 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.495 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.497 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.498 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.500 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.501 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.503 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.504 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.506 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.507 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.509 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.510 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.512 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.513 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.515 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.516 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.518 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.519 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.521 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.522 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.524 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.526 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.528 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.529 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.531 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.532 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.534 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.535 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.537 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.538 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.540 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.541 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.543 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.544 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_dump_subdevs._entry.546 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.547 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_mpeg2ts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.549 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.550 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_mpeg2ts._entry.551 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.552 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_mpeg2ts._entry.554 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.555 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_mpeg2ts._entry.557 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.558 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_mpeg2ts._entry.560 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.561 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_mpeg2ts._entry.563 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.564 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_mpeg2ts._entry.566 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.567 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_mpeg2ps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.569 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_mpeg2ps._entry.570 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.571 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_mpeg2ps._entry.573 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.574 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_mpeg2ps._entry.576 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.577 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_mpeg2ps._entry.579 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_mpeg2ps._entry.581 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.582 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_vbi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.584 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.585 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_vbi._entry.586 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.587 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_vbi._entry.589 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.590 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_vbi._entry.592 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.593 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_vbi._entry.595 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.596 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_vbi._entry.598 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.599 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_vbi._entry.601 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_configure_port_vbi._entry.603 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.604 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_modify_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.606 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.607 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1898 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_api_modify_gpio._entry.608 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1901 to i32), i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1903 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_get_load_info(ptr noundef %dev, ptr noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %0 = load i32, ptr @saa_debug, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %and1 = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %1 = call ptr @memset(ptr %i, i32 0, i32 16)
  %call8 = tail call i32 @saa7164_cmd_send(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 129, i16 noundef zeroext 8, i16 noundef zeroext 32, ptr noundef %i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 0
  br i1 %cmp.not, label %do.end7.do.end18_crit_edge, label %do.end12

do.end7.do.end18_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

do.end12:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call8) #10
  br label %do.end18

do.end18:                                         ; preds = %do.end12, %do.end7.do.end18_crit_edge
  %nr = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 13
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 8
  %CPULoad = getelementptr inbounds %struct.tmFwInfoStruct, ptr %i, i32 0, i32 4
  %4 = ptrtoint ptr %CPULoad to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %CPULoad, align 1
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %3, i32 noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end18 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_cmd_send(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_collect_debug(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %d = alloca %struct.tmComResDebugGetData, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %d) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %0 = load i32, ptr @saa_debug, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.9) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %nr = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 13
  %ucDebugData = getelementptr inbounds %struct.tmComResDebugGetData, ptr %d, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %do.end18.while.body_crit_edge, %do.end3
  %dec25 = phi i8 [ -2, %do.end3 ], [ %dec, %do.end18.while.body_crit_edge ]
  %1 = call ptr @memset(ptr %d, i32 0, i32 260)
  %call5 = call i32 @saa7164_cmd_send(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 129, i16 noundef zeroext 12, i16 noundef zeroext 260, ptr noundef nonnull %d) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %while.body.if.end12_crit_edge, label %do.end9

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

do.end9:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %call5) #10
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %while.body.if.end12_crit_edge
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not = icmp eq i32 %3, 0
  br i1 %cmp13.not, label %do.end18, label %if.end12.while.end_crit_edge

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end18:                                         ; preds = %if.end12
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 8
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %5, ptr noundef %ucDebugData) #10
  %dec = add i8 %dec25, -1
  %tobool4.not = icmp eq i8 %dec25, 0
  br i1 %tobool4.not, label %do.end18.while.end_crit_edge, label %do.end18.while.body_crit_edge

do.end18.while.body_crit_edge:                    ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.end18.while.end_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end18.while.end_crit_edge, %if.end12.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %d) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_set_debug(ptr noundef %dev, i8 noundef zeroext %level) local_unnamed_addr #0 align 64 {
entry:
  %lvl = alloca %struct.tmComResDebugSetLevel, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lvl) #7
  %0 = ptrtoint ptr %lvl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lvl, align 4, !annotation !918
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %1 = load i32, ptr @saa_debug, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %conv = zext i8 %level to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name, ptr noundef nonnull @.str.16, i32 noundef %conv) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = call i32 @saa7164_cmd_send(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 129, i16 noundef zeroext 11, i16 noundef zeroext 4, ptr noundef nonnull %lvl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %do.end3.do.body13_crit_edge, label %do.end9

do.end3.do.body13_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13

do.end9:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16, i32 noundef %call4) #10
  br label %do.body13

do.body13:                                        ; preds = %do.end9, %do.end3.do.body13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %2 = load i32, ptr @saa_debug, align 4
  %and14 = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body13.do.end26_crit_edge, label %do.end19

do.body13.do.end26_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26

do.end19:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %name21 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %3 = ptrtoint ptr %lvl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lvl, align 4
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name21, ptr noundef nonnull @.str.16, i32 noundef %4) #10
  br label %do.end26

do.end26:                                         ; preds = %do.end19, %do.body13.do.end26_crit_edge
  %conv27 = zext i8 %level to i32
  %5 = ptrtoint ptr %lvl to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv27, ptr %lvl, align 4
  %call29 = call i32 @saa7164_cmd_send(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 1, i16 noundef zeroext 11, i16 noundef zeroext 4, ptr noundef nonnull %lvl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %do.end26.if.end38_crit_edge, label %do.end35

do.end26.if.end38_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

do.end35:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16, i32 noundef %call29) #10
  br label %if.end38

if.end38:                                         ; preds = %do.end35, %do.end26.if.end38_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lvl) #7
  ret i32 %call29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_set_vbi_format(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %fmt = alloca %struct.tmComResProbeCommit, align 2
  %rsp = alloca %struct.tmComResProbeCommit, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fmt) #7
  %2 = getelementptr inbounds %struct.tmComResProbeCommit, ptr %fmt, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tmComResProbeCommit, ptr %fmt, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp) #7
  %4 = getelementptr inbounds %struct.tmComResProbeCommit, ptr %rsp, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tmComResProbeCommit, ptr %rsp, i32 0, i32 2
  %6 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %rsp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %7 = load i32, ptr @saa_debug, align 4
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %nr = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr, align 8
  %unitid = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %unitid to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %unitid, align 1
  %conv = zext i8 %11 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name, ptr noundef nonnull @.str.25, i32 noundef %9, i32 noundef %conv) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %fmt, align 2
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %2, align 2
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %3, align 1
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port, align 8
  %unitid7 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 4, i32 3
  %17 = ptrtoint ptr %unitid7 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %unitid7, align 1
  %call8 = call i32 @saa7164_cmd_send(ptr noundef %16, i8 noundef zeroext %18, i32 noundef 1, i16 noundef zeroext 1, i16 noundef zeroext 4, ptr noundef nonnull %fmt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 0
  br i1 %cmp.not, label %do.end4.if.end16_crit_edge, label %do.end13

do.end4.if.end16_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end13:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %call8) #10
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %do.end4.if.end16_crit_edge
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port, align 8
  %21 = ptrtoint ptr %unitid7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %unitid7, align 1
  %call20 = call i32 @saa7164_cmd_send(ptr noundef %20, i8 noundef zeroext %22, i32 noundef 129, i16 noundef zeroext 1, i16 noundef zeroext 4, ptr noundef nonnull %rsp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.else, label %if.end153.thread205

if.end153.thread205:                              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25, i32 noundef %call20) #10
  br label %if.end172

if.else:                                          ; preds = %if.end16
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %fmt, ptr noundef nonnull dereferenceable(4) %rsp, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp30 = icmp eq i32 %bcmp, 0
  br i1 %cmp30, label %do.body33, label %if.end153.thread

do.body33:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %23 = load i32, ptr @saa_debug, align 4
  %and34 = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body33.do.end46_crit_edge, label %do.end39

do.body33.do.end46_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %name41 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name41) #10
  br label %do.end46

do.end46:                                         ; preds = %do.end39, %do.body33.do.end46_crit_edge
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port, align 8
  %26 = ptrtoint ptr %unitid7 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %unitid7, align 1
  %call50 = call i32 @saa7164_cmd_send(ptr noundef %25, i8 noundef zeroext %27, i32 noundef 1, i16 noundef zeroext 2, i16 noundef zeroext 4, ptr noundef nonnull %fmt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51.not = icmp eq i32 %call50, 0
  br i1 %cmp51.not, label %do.end46.if.end59_crit_edge, label %do.end56

do.end46.if.end59_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.end56:                                         ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.25, i32 noundef %call50) #10
  br label %if.end59

if.end59:                                         ; preds = %do.end56, %do.end46.if.end59_crit_edge
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port, align 8
  %30 = ptrtoint ptr %unitid7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %unitid7, align 1
  %call63 = call i32 @saa7164_cmd_send(ptr noundef %29, i8 noundef zeroext %31, i32 noundef 129, i16 noundef zeroext 2, i16 noundef zeroext 4, ptr noundef nonnull %rsp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64.not = icmp eq i32 %call63, 0
  br i1 %cmp64.not, label %if.end59.if.end72_crit_edge, label %do.end69

if.end59.if.end72_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

do.end69:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.25, i32 noundef %call63) #10
  br label %if.end72

if.end72:                                         ; preds = %do.end69, %if.end59.if.end72_crit_edge
  %bcmp200 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %fmt, ptr noundef nonnull dereferenceable(4) %rsp, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp200)
  %cmp74.not = icmp eq i32 %bcmp200, 0
  br i1 %cmp74.not, label %do.body83, label %do.end79

do.end79:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.25, i32 noundef %call63) #10
  br label %do.body98

do.body83:                                        ; preds = %if.end72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %32 = load i32, ptr @saa_debug, align 4
  %and84 = and i32 %32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %do.body83.do.body98_crit_edge, label %do.end89

do.body83.do.body98_crit_edge:                    ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body98

do.end89:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #9
  %name91 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name91) #10
  br label %do.body98

do.body98:                                        ; preds = %do.end89, %do.body83.do.body98_crit_edge, %do.end79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %33 = load i32, ptr @saa_debug, align 4
  %and99 = and i32 %33, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %do.body98.do.body114_crit_edge, label %do.end104

do.body98.do.body114_crit_edge:                   ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body114

do.end104:                                        ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #9
  %name106 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %34 = ptrtoint ptr %rsp to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rsp, align 4
  %conv109 = zext i16 %35 to i32
  %call110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name106, i32 noundef %conv109) #10
  br label %do.body114

do.body114:                                       ; preds = %do.end104, %do.body98.do.body114_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %36 = load i32, ptr @saa_debug, align 4
  %and115 = and i32 %36, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %do.body114.do.body130_crit_edge, label %do.end120

do.body114.do.body130_crit_edge:                  ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body130

do.end120:                                        ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #9
  %name122 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %4, align 2
  %conv125 = zext i8 %38 to i32
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name122, i32 noundef %conv125) #10
  br label %do.body130

do.body130:                                       ; preds = %do.end120, %do.body114.do.body130_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %39 = load i32, ptr @saa_debug, align 4
  %and131 = and i32 %39, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %do.body130.if.end153_crit_edge, label %do.end136

do.body130.if.end153_crit_edge:                   ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

do.end136:                                        ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #9
  %name138 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %5, align 1
  %conv141 = zext i8 %41 to i32
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name138, i32 noundef %conv141) #10
  br label %if.end153

if.end153.thread:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.25) #10
  br label %do.body157

if.end153:                                        ; preds = %do.end136, %do.body130.if.end153_crit_edge
  br i1 %cmp64.not, label %if.end153.do.body157_crit_edge, label %if.end153.if.end172_crit_edge

if.end153.if.end172_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end172

if.end153.do.body157_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body157

do.body157:                                       ; preds = %if.end153.do.body157_crit_edge, %if.end153.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %42 = load i32, ptr @saa_debug, align 4
  %and158 = and i32 %42, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %do.body157.if.end172_crit_edge, label %do.end163

do.body157.if.end172_crit_edge:                   ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end172

do.end163:                                        ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #9
  %name165 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %nr167 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %43 = ptrtoint ptr %nr167 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr167, align 8
  %call168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %name165, ptr noundef nonnull @.str.25, i32 noundef %44) #10
  br label %if.end172

if.end172:                                        ; preds = %do.end163, %do.body157.if.end172_crit_edge, %if.end153.if.end172_crit_edge, %if.end153.thread205
  %ret.0203 = phi i32 [ 0, %do.body157.if.end172_crit_edge ], [ 0, %do.end163 ], [ %call63, %if.end153.if.end172_crit_edge ], [ %call20, %if.end153.thread205 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fmt) #7
  ret i32 %ret.0203
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_set_encoder(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %gs.i = alloca %struct.tmComResEncVideoGopStructure, align 1
  %vb = alloca %struct.tmComResEncVideoBitRate, align 1
  %ab = alloca %struct.tmComResEncAudioBitRate, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %vb) #7
  %2 = ptrtoint ptr %vb to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %vb, align 1, !annotation !918
  %3 = getelementptr inbounds %struct.tmComResEncVideoBitRate, ptr %vb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 -1, ptr %3, align 1, !annotation !918
  %5 = getelementptr inbounds %struct.tmComResEncVideoBitRate, ptr %vb, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %ab) #7
  %6 = ptrtoint ptr %ab to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %ab, align 1, !annotation !918
  %7 = getelementptr inbounds %struct.tmComResEncAudioBitRate, ptr %ab, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 -1, ptr %7, align 1, !annotation !918
  %9 = getelementptr inbounds %struct.tmComResEncAudioBitRate, ptr %ab, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 -1, ptr %9, align 1, !annotation !918
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %11 = load i32, ptr @saa_debug, align 4
  %and = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %sourceid = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %sourceid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sourceid, align 1
  %conv = zext i8 %13 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name, ptr noundef nonnull @.str.63, i32 noundef %conv) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %stream_type = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 57, i32 7
  %14 = ptrtoint ptr %stream_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  %spec.select = select i1 %cmp, i8 6, i8 9
  %16 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 41
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select, ptr %16, align 1
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port, align 8
  %sourceid11 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 4, i32 6
  %20 = ptrtoint ptr %sourceid11 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sourceid11, align 1
  %call13 = tail call i32 @saa7164_cmd_send(ptr noundef %19, i8 noundef zeroext %21, i32 noundef 1, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %do.end4.if.end22_crit_edge, label %do.end19

do.end4.if.end22_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end19:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.63, i32 noundef %call13) #10
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %do.end4.if.end22_crit_edge
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port, align 8
  %24 = ptrtoint ptr %sourceid11 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sourceid11, align 1
  %call27 = tail call i32 @saa7164_cmd_send(ptr noundef %23, i8 noundef zeroext %25, i32 noundef 1, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %if.end22.if.end36_crit_edge, label %do.end33

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end33:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.63, i32 noundef %call27) #10
  br label %if.end36

if.end36:                                         ; preds = %do.end33, %if.end22.if.end36_crit_edge
  %bitrate_mode = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 57, i32 6
  %26 = ptrtoint ptr %bitrate_mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bitrate_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp38 = icmp eq i32 %27, 1
  %. = select i1 %cmp38, i8 0, i8 2
  %28 = ptrtoint ptr %vb to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %., ptr %vb, align 1
  %bitrate = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 57, i32 4
  %29 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bitrate, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %3, align 1
  %bitrate_peak = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 57, i32 5
  %32 = ptrtoint ptr %bitrate_peak to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bitrate_peak, align 8
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %5, align 1
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port, align 8
  %37 = ptrtoint ptr %sourceid11 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sourceid11, align 1
  %call49 = call i32 @saa7164_cmd_send(ptr noundef %36, i8 noundef zeroext %38, i32 noundef 1, i16 noundef zeroext 2, i16 noundef zeroext 9, ptr noundef nonnull %vb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50.not = icmp eq i32 %call49, 0
  br i1 %cmp50.not, label %if.end36.if.end58_crit_edge, label %do.end55

if.end36.if.end58_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

do.end55:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.63, i32 noundef %call49) #10
  br label %if.end58

if.end58:                                         ; preds = %do.end55, %if.end36.if.end58_crit_edge
  %39 = ptrtoint ptr %ab to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %ab, align 1
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 384000, ptr %7, align 1
  %41 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 384000, ptr %9, align 1
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port, align 8
  %44 = ptrtoint ptr %sourceid11 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %sourceid11, align 1
  %call63 = call i32 @saa7164_cmd_send(ptr noundef %43, i8 noundef zeroext %45, i32 noundef 1, i16 noundef zeroext 13, i16 noundef zeroext 9, ptr noundef nonnull %ab) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64.not = icmp eq i32 %call63, 0
  br i1 %cmp64.not, label %if.end58.if.end72_crit_edge, label %do.end69

if.end58.if.end72_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

do.end69:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.63, i32 noundef %call63) #10
  br label %if.end72

if.end72:                                         ; preds = %do.end69, %if.end58.if.end72_crit_edge
  %call73 = call i32 @saa7164_api_set_aspect_ratio(ptr noundef %port)
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %gs.i) #7
  %48 = getelementptr inbounds %struct.tmComResEncVideoGopStructure, ptr %gs.i, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %49 = load i32, ptr @saa_debug, align 4
  %and.i = and i32 %49, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end72.do.end4.i_crit_edge, label %do.end.i

if.end72.do.end4.i_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %47, i32 0, i32 16
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i, ptr noundef nonnull @.str.255) #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end72.do.end4.i_crit_edge
  %refdist.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 57, i32 11
  %50 = ptrtoint ptr %refdist.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %refdist.i, align 8
  %conv.i = trunc i32 %51 to i8
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv.i, ptr %48, align 1
  %gop_size.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 57, i32 12
  %53 = ptrtoint ptr %gop_size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %gop_size.i, align 4
  %conv6.i = trunc i32 %54 to i8
  %55 = ptrtoint ptr %gs.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv6.i, ptr %gs.i, align 1
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %port, align 8
  %58 = ptrtoint ptr %sourceid11 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %sourceid11, align 1
  %call8.i = call i32 @saa7164_cmd_send(ptr noundef %57, i8 noundef zeroext %59, i32 noundef 1, i16 noundef zeroext 4, i16 noundef zeroext 2, ptr noundef nonnull %gs.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp.not.i, label %do.end4.i.saa7164_api_set_gop_size.exit_crit_edge, label %do.end13.i

do.end4.i.saa7164_api_set_gop_size.exit_crit_edge: ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa7164_api_set_gop_size.exit

do.end13.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.255, i32 noundef %call8.i) #10
  br label %saa7164_api_set_gop_size.exit

saa7164_api_set_gop_size.exit:                    ; preds = %do.end13.i, %do.end4.i.saa7164_api_set_gop_size.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %gs.i) #7
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %ab) #7
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %vb) #7
  ret i32 %call63
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_set_aspect_ratio(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %ar = alloca %struct.tmComResEncVideoInputAspectRatio, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ar) #7
  %2 = getelementptr inbounds %struct.tmComResEncVideoInputAspectRatio, ptr %ar, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %3 = load i32, ptr @saa_debug, align 4
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %ctl_aspect = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 57, i32 10
  %4 = ptrtoint ptr %ctl_aspect to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctl_aspect, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %name, ptr noundef nonnull @.str.121, i32 noundef %5) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %ctl_aspect6 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 57, i32 10
  %6 = ptrtoint ptr %ctl_aspect6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctl_aspect6, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.body16 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb10
    i32 3, label %sw.bb13
  ]

sw.bb:                                            ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %ar to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %ar, align 1
  br label %do.body22

sw.bb7:                                           ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %ar to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %ar, align 1
  br label %do.body22

sw.bb10:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %ar to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %ar, align 1
  br label %do.body22

sw.bb13:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %ar to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -35, ptr %ar, align 1
  br label %do.body22

do.body16:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7164/saa7164-api.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 337, 0\0A.popsection", ""() #7, !srcloc !919
  unreachable

do.body22:                                        ; preds = %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb
  %.sink = phi i8 [ 1, %sw.bb ], [ 3, %sw.bb7 ], [ 9, %sw.bb10 ], [ 100, %sw.bb13 ]
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink, ptr %2, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %14 = load i32, ptr @saa_debug, align 4
  %and23 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body22.do.end40_crit_edge, label %do.end28

do.body22.do.end40_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40

do.end28:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %name30 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %ar to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ar, align 1
  %conv = zext i8 %16 to i32
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %2, align 1
  %conv36 = zext i8 %18 to i32
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %name30, ptr noundef nonnull @.str.121, i32 noundef %7, i32 noundef %conv, i32 noundef %conv36) #10
  br label %do.end40

do.end40:                                         ; preds = %do.end28, %do.body22.do.end40_crit_edge
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port, align 8
  %sourceid = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 4, i32 6
  %21 = ptrtoint ptr %sourceid to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sourceid, align 1
  %call42 = call i32 @saa7164_cmd_send(ptr noundef %20, i8 noundef zeroext %22, i32 noundef 1, i16 noundef zeroext 10, i16 noundef zeroext 2, ptr noundef nonnull %ar) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp.not = icmp eq i32 %call42, 0
  br i1 %cmp.not, label %do.end40.if.end50_crit_edge, label %do.end47

do.end40.if.end50_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

do.end47:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.121, i32 noundef %call42) #10
  br label %if.end50

if.end50:                                         ; preds = %do.end47, %do.end40.if.end50_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ar) #7
  ret i32 %call42
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_get_encoder(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %v = alloca %struct.tmComResEncVideoBitRate, align 1
  %a = alloca %struct.tmComResEncAudioBitRate, align 1
  %ar = alloca %struct.tmComResEncVideoInputAspectRatio, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %v) #7
  %2 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %v, align 1, !annotation !918
  %3 = getelementptr inbounds %struct.tmComResEncVideoBitRate, ptr %v, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 -1, ptr %3, align 1, !annotation !918
  %5 = getelementptr inbounds %struct.tmComResEncVideoBitRate, ptr %v, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 -1, ptr %5, align 1, !annotation !918
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %a) #7
  %7 = ptrtoint ptr %a to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %a, align 1, !annotation !918
  %8 = getelementptr inbounds %struct.tmComResEncAudioBitRate, ptr %a, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 -1, ptr %8, align 1, !annotation !918
  %10 = getelementptr inbounds %struct.tmComResEncAudioBitRate, ptr %a, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 -1, ptr %10, align 1, !annotation !918
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ar) #7
  %12 = ptrtoint ptr %ar to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %ar, align 1, !annotation !918
  %13 = getelementptr inbounds %struct.tmComResEncVideoInputAspectRatio, ptr %ar, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %13, align 1, !annotation !918
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %15 = load i32, ptr @saa_debug, align 4
  %and = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %sourceid = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 4, i32 6
  %16 = ptrtoint ptr %sourceid to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sourceid, align 1
  %conv = zext i8 %17 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name, ptr noundef nonnull @.str.72, i32 noundef %conv) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %encoder_profile = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 41
  %video_format = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 42
  %video_resolution = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 44
  %audio_format = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 43
  %18 = ptrtoint ptr %encoder_profile to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 0, ptr %encoder_profile, align 1
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port, align 8
  %sourceid7 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 4, i32 6
  %21 = ptrtoint ptr %sourceid7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sourceid7, align 1
  %call9 = tail call i32 @saa7164_cmd_send(ptr noundef %20, i8 noundef zeroext %22, i32 noundef 129, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %encoder_profile) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 0
  br i1 %cmp.not, label %do.end4.if.end17_crit_edge, label %do.end14

do.end4.if.end17_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end14:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.72, i32 noundef %call9) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %do.end4.if.end17_crit_edge
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port, align 8
  %25 = ptrtoint ptr %sourceid7 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sourceid7, align 1
  %call22 = tail call i32 @saa7164_cmd_send(ptr noundef %24, i8 noundef zeroext %26, i32 noundef 129, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef %video_resolution) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end17.if.end31_crit_edge, label %do.end28

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end28:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.72, i32 noundef %call22) #10
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %if.end17.if.end31_crit_edge
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port, align 8
  %29 = ptrtoint ptr %sourceid7 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sourceid7, align 1
  %call36 = tail call i32 @saa7164_cmd_send(ptr noundef %28, i8 noundef zeroext %30, i32 noundef 129, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef %video_format) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %if.end31.if.end45_crit_edge, label %do.end42

if.end31.if.end45_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.end42:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.72, i32 noundef %call36) #10
  br label %if.end45

if.end45:                                         ; preds = %do.end42, %if.end31.if.end45_crit_edge
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port, align 8
  %33 = ptrtoint ptr %sourceid7 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sourceid7, align 1
  %call49 = call i32 @saa7164_cmd_send(ptr noundef %32, i8 noundef zeroext %34, i32 noundef 129, i16 noundef zeroext 2, i16 noundef zeroext 9, ptr noundef nonnull %v) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50.not = icmp eq i32 %call49, 0
  br i1 %cmp50.not, label %if.end45.if.end58_crit_edge, label %do.end55

if.end45.if.end58_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

do.end55:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.72, i32 noundef %call49) #10
  br label %if.end58

if.end58:                                         ; preds = %do.end55, %if.end45.if.end58_crit_edge
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port, align 8
  %37 = ptrtoint ptr %sourceid7 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sourceid7, align 1
  %call63 = call i32 @saa7164_cmd_send(ptr noundef %36, i8 noundef zeroext %38, i32 noundef 129, i16 noundef zeroext 12, i16 noundef zeroext 1, ptr noundef %audio_format) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64.not = icmp eq i32 %call63, 0
  br i1 %cmp64.not, label %if.end58.if.end72_crit_edge, label %do.end69

if.end58.if.end72_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

do.end69:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.72, i32 noundef %call63) #10
  br label %if.end72

if.end72:                                         ; preds = %do.end69, %if.end58.if.end72_crit_edge
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %port, align 8
  %41 = ptrtoint ptr %sourceid7 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sourceid7, align 1
  %call76 = call i32 @saa7164_cmd_send(ptr noundef %40, i8 noundef zeroext %42, i32 noundef 129, i16 noundef zeroext 13, i16 noundef zeroext 9, ptr noundef nonnull %a) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77.not = icmp eq i32 %call76, 0
  br i1 %cmp77.not, label %if.end72.if.end85_crit_edge, label %do.end82

if.end72.if.end85_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

do.end82:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.72, i32 noundef %call76) #10
  br label %if.end85

if.end85:                                         ; preds = %do.end82, %if.end72.if.end85_crit_edge
  %43 = ptrtoint ptr %ar to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %ar, align 1
  %44 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %13, align 1
  %45 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %port, align 8
  %47 = ptrtoint ptr %sourceid7 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %sourceid7, align 1
  %call89 = call i32 @saa7164_cmd_send(ptr noundef %46, i8 noundef zeroext %48, i32 noundef 129, i16 noundef zeroext 10, i16 noundef zeroext 2, ptr noundef nonnull %ar) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90.not = icmp eq i32 %call89, 0
  br i1 %cmp90.not, label %if.end85.do.body99_crit_edge, label %do.end95

if.end85.do.body99_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body99

do.end95:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.72, i32 noundef %call89) #10
  br label %do.body99

do.body99:                                        ; preds = %do.end95, %if.end85.do.body99_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %49 = load i32, ptr @saa_debug, align 4
  %and100 = and i32 %49, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %do.body99.do.body115_crit_edge, label %do.end105

do.body99.do.body115_crit_edge:                   ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body115

do.end105:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #9
  %name107 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %50 = ptrtoint ptr %encoder_profile to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %encoder_profile, align 1
  %conv110 = zext i8 %51 to i32
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name107, i32 noundef %conv110) #10
  br label %do.body115

do.body115:                                       ; preds = %do.end105, %do.body99.do.body115_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %52 = load i32, ptr @saa_debug, align 4
  %and116 = and i32 %52, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %do.body115.do.body131_crit_edge, label %do.end121

do.body115.do.body131_crit_edge:                  ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body131

do.end121:                                        ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #9
  %name123 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %53 = ptrtoint ptr %video_format to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %video_format, align 2
  %conv126 = zext i8 %54 to i32
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %name123, i32 noundef %conv126) #10
  br label %do.body131

do.body131:                                       ; preds = %do.end121, %do.body115.do.body131_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %55 = load i32, ptr @saa_debug, align 4
  %and132 = and i32 %55, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %do.body131.do.body147_crit_edge, label %do.end137

do.body131.do.body147_crit_edge:                  ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body147

do.end137:                                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #9
  %name139 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %56 = ptrtoint ptr %audio_format to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %audio_format, align 1
  %conv142 = zext i8 %57 to i32
  %call143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %name139, i32 noundef %conv142) #10
  br label %do.body147

do.body147:                                       ; preds = %do.end137, %do.body131.do.body147_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %58 = load i32, ptr @saa_debug, align 4
  %and148 = and i32 %58, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %do.body147.do.body163_crit_edge, label %do.end153

do.body147.do.body163_crit_edge:                  ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body163

do.end153:                                        ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #9
  %name155 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %59 = ptrtoint ptr %video_resolution to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %video_resolution, align 8
  %conv158 = zext i8 %60 to i32
  %call159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name155, i32 noundef %conv158) #10
  br label %do.body163

do.body163:                                       ; preds = %do.end153, %do.body147.do.body163_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %61 = load i32, ptr @saa_debug, align 4
  %and164 = and i32 %61, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %do.body163.do.body178_crit_edge, label %do.end169

do.body163.do.body178_crit_edge:                  ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body178

do.end169:                                        ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #9
  %name171 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %62 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %v, align 1
  %conv173 = zext i8 %63 to i32
  %call174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %name171, i32 noundef %conv173) #10
  br label %do.body178

do.body178:                                       ; preds = %do.end169, %do.body163.do.body178_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %64 = load i32, ptr @saa_debug, align 4
  %and179 = and i32 %64, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %do.body178.do.body192_crit_edge, label %do.end184

do.body178.do.body192_crit_edge:                  ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body192

do.end184:                                        ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #9
  %name186 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %3, align 1
  %call188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %name186, i32 noundef %66) #10
  br label %do.body192

do.body192:                                       ; preds = %do.end184, %do.body178.do.body192_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %67 = load i32, ptr @saa_debug, align 4
  %and193 = and i32 %67, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %do.body192.do.body206_crit_edge, label %do.end198

do.body192.do.body206_crit_edge:                  ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body206

do.end198:                                        ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #9
  %name200 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %68 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %5, align 1
  %call202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %name200, i32 noundef %69) #10
  br label %do.body206

do.body206:                                       ; preds = %do.end198, %do.body192.do.body206_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %70 = load i32, ptr @saa_debug, align 4
  %and207 = and i32 %70, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207)
  %tobool208.not = icmp eq i32 %and207, 0
  br i1 %tobool208.not, label %do.body206.do.body221_crit_edge, label %do.end212

do.body206.do.body221_crit_edge:                  ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body221

do.end212:                                        ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #9
  %name214 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %71 = ptrtoint ptr %a to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %a, align 1
  %conv216 = zext i8 %72 to i32
  %call217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %name214, i32 noundef %conv216) #10
  br label %do.body221

do.body221:                                       ; preds = %do.end212, %do.body206.do.body221_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %73 = load i32, ptr @saa_debug, align 4
  %and222 = and i32 %73, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222)
  %tobool223.not = icmp eq i32 %and222, 0
  br i1 %tobool223.not, label %do.body221.do.body235_crit_edge, label %do.end227

do.body221.do.body235_crit_edge:                  ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body235

do.end227:                                        ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #9
  %name229 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %74 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %8, align 1
  %call231 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %name229, i32 noundef %75) #10
  br label %do.body235

do.body235:                                       ; preds = %do.end227, %do.body221.do.body235_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %76 = load i32, ptr @saa_debug, align 4
  %and236 = and i32 %76, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and236)
  %tobool237.not = icmp eq i32 %and236, 0
  br i1 %tobool237.not, label %do.body235.do.body249_crit_edge, label %do.end241

do.body235.do.body249_crit_edge:                  ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body249

do.end241:                                        ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #9
  %name243 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %77 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %10, align 1
  %call245 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %name243, i32 noundef %78) #10
  br label %do.body249

do.body249:                                       ; preds = %do.end241, %do.body235.do.body249_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %79 = load i32, ptr @saa_debug, align 4
  %and250 = and i32 %79, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  br i1 %tobool251.not, label %do.body249.do.end266_crit_edge, label %do.end255

do.body249.do.end266_crit_edge:                   ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end266

do.end255:                                        ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #9
  %name257 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %80 = ptrtoint ptr %ar to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ar, align 1
  %conv260 = zext i8 %81 to i32
  %82 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %13, align 1
  %conv262 = zext i8 %83 to i32
  %call263 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %name257, i32 noundef %conv260, i32 noundef %conv262) #10
  br label %do.end266

do.end266:                                        ; preds = %do.end255, %do.body249.do.end266_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ar) #7
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %v) #7
  ret i32 %call89
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_set_usercontrol(ptr nocapture noundef readonly %port, i8 noundef zeroext %ctl) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #7
  %conv = zext i8 %ctl to i32
  %2 = zext i8 %ctl to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.610)
  switch i8 %ctl, label %entry.cleanup_crit_edge [
    i8 2, label %if.then
    i8 3, label %if.then6
    i8 6, label %if.then11
    i8 7, label %if.then16
    i8 8, label %if.then21
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctl_brightness = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 45
  %3 = ptrtoint ptr %ctl_brightness to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ctl_brightness, align 2
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %val, align 2
  br label %do.body

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctl_contrast = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 46
  %6 = ptrtoint ptr %ctl_contrast to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ctl_contrast, align 4
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %val, align 2
  br label %do.body

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctl_hue = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 47
  %9 = ptrtoint ptr %ctl_hue to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ctl_hue, align 2
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %val, align 2
  br label %do.body

if.then16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctl_saturation = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 48
  %12 = ptrtoint ptr %ctl_saturation to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ctl_saturation, align 8
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %val, align 2
  br label %do.body

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ctl_sharpness = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 49
  %15 = ptrtoint ptr %ctl_sharpness to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ctl_sharpness, align 2
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %val, align 2
  br label %do.body

do.body:                                          ; preds = %if.then21, %if.then16, %if.then11, %if.then6, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %18 = load i32, ptr @saa_debug, align 4
  %and = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end34_crit_edge, label %do.end

do.body.do.end34_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %vsourceid = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 52, i32 4
  %19 = ptrtoint ptr %vsourceid to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %vsourceid, align 1
  %conv29 = zext i8 %20 to i32
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %val, align 2
  %conv31 = zext i16 %22 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %name, ptr noundef nonnull @.str.128, i32 noundef %conv29, i32 noundef %conv, i32 noundef %conv31) #10
  br label %do.end34

do.end34:                                         ; preds = %do.end, %do.body.do.end34_crit_edge
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port, align 8
  %vsourceid37 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 52, i32 4
  %25 = ptrtoint ptr %vsourceid37 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %vsourceid37, align 1
  %conv38 = zext i8 %ctl to i16
  %call39 = call i32 @saa7164_cmd_send(ptr noundef %24, i8 noundef zeroext %26, i32 noundef 1, i16 noundef zeroext %conv38, i16 noundef zeroext 2, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 0
  br i1 %cmp40.not, label %do.end34.cleanup_crit_edge, label %do.end45

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end45:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.128, i32 noundef %call39) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %do.end34.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call39, %do.end45 ], [ 0, %do.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_get_usercontrol(ptr nocapture noundef %port, i8 noundef zeroext %ctl) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val, align 2, !annotation !918
  %vsourceid = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 52, i32 4
  %3 = ptrtoint ptr %vsourceid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %vsourceid, align 1
  %conv = zext i8 %ctl to i16
  %call = call i32 @saa7164_cmd_send(ptr noundef %1, i8 noundef zeroext %4, i32 noundef 129, i16 noundef zeroext %conv, i16 noundef zeroext 2, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %do.body5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.131, i32 noundef %call) #10
  br label %cleanup

do.body5:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %5 = load i32, ptr @saa_debug, align 4
  %and = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body5.do.end16_crit_edge, label %do.end9

do.body5.do.end16_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.end9:                                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %conv11 = zext i8 %ctl to i32
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %val, align 2
  %conv12 = zext i16 %7 to i32
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %name, ptr noundef nonnull @.str.131, i32 noundef %conv11, i32 noundef %conv12) #10
  br label %do.end16

do.end16:                                         ; preds = %do.end9, %do.body5.do.end16_crit_edge
  %8 = zext i8 %ctl to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.611)
  switch i8 %ctl, label %do.end16.cleanup_crit_edge [
    i8 2, label %if.then20
    i8 3, label %if.then24
    i8 6, label %if.then29
    i8 7, label %if.then34
    i8 8, label %if.then39
  ]

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %val, align 2
  %ctl_brightness = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 45
  %11 = ptrtoint ptr %ctl_brightness to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %ctl_brightness, align 2
  br label %cleanup

if.then24:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %val, align 2
  %ctl_contrast = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 46
  %14 = ptrtoint ptr %ctl_contrast to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %ctl_contrast, align 4
  br label %cleanup

if.then29:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %val, align 2
  %ctl_hue = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 47
  %17 = ptrtoint ptr %ctl_hue to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %ctl_hue, align 2
  br label %cleanup

if.then34:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %val, align 2
  %ctl_saturation = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 48
  %20 = ptrtoint ptr %ctl_saturation to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %ctl_saturation, align 8
  br label %cleanup

if.then39:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %val, align 2
  %ctl_sharpness = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 49
  %23 = ptrtoint ptr %ctl_sharpness to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %ctl_sharpness, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.then34, %if.then29, %if.then24, %if.then20, %do.end16.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_set_videomux(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %v.i73 = alloca i8, align 1
  %v.i = alloca i8, align 1
  %inputs = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %inputs) #7
  %2 = call ptr @memcpy(ptr %inputs, ptr @__const.saa7164_api_set_videomux.inputs, i32 7)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %3 = load i32, ptr @saa_debug, align 4
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %mux_input = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 40
  %4 = ptrtoint ptr %mux_input to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mux_input, align 4
  %conv = zext i8 %5 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr [7 x i8], ptr %inputs, i32 0, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %7 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %name, ptr noundef nonnull @.str.136, i32 noundef %conv, i32 noundef %conv5) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v.i) #7
  %10 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %v.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %11 = load i32, ptr @saa_debug, align 4
  %and.i = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end7.do.end4.i_crit_edge, label %do.end.i

do.end7.do.end4.i_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4.i

do.end.i:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %9, i32 0, i32 16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %name.i, ptr noundef nonnull @.str.145, i32 noundef 1) #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %do.end7.do.end4.i_crit_edge
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port, align 8
  %unitid.i = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 51, i32 3
  %14 = ptrtoint ptr %unitid.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %unitid.i, align 1
  %call6.i = call i32 @saa7164_cmd_send(ptr noundef %13, i8 noundef zeroext %15, i32 noundef 1, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %v.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.not.i = icmp eq i32 %call6.i, 0
  br i1 %cmp.not.i, label %saa7164_api_audio_mute.exit.thread, label %do.end13

saa7164_api_audio_mute.exit.thread:               ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i) #7
  br label %if.end16

do.end13:                                         ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.145, i32 noundef %call6.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i) #7
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.136, i32 noundef %call6.i) #10
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %saa7164_api_audio_mute.exit.thread
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port, align 8
  %sourceid = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 53, i32 4
  %18 = ptrtoint ptr %sourceid to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sourceid, align 4
  %mux_input18 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 40
  %call19 = call i32 @saa7164_cmd_send(ptr noundef %17, i8 noundef zeroext %19, i32 noundef 1, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef %mux_input18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %if.end16.if.end28_crit_edge, label %do.end25

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.136, i32 noundef %call19) #10
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %if.end16.if.end28_crit_edge
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port, align 8
  %sourceid30 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 51, i32 4
  %22 = ptrtoint ptr %sourceid30 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sourceid30, align 1
  %24 = ptrtoint ptr %mux_input18 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mux_input18, align 4
  %conv32 = zext i8 %25 to i32
  %sub33 = add nsw i32 %conv32, -1
  %arrayidx34 = getelementptr [7 x i8], ptr %inputs, i32 0, i32 %sub33
  %call35 = call i32 @saa7164_cmd_send(ptr noundef %21, i8 noundef zeroext %23, i32 noundef 1, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef %arrayidx34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %if.end28.if.end44_crit_edge, label %do.end41

if.end28.if.end44_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

do.end41:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.136, i32 noundef %call35) #10
  br label %if.end44

if.end44:                                         ; preds = %do.end41, %if.end28.if.end44_crit_edge
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v.i73) #7
  %28 = ptrtoint ptr %v.i73 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %v.i73, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %29 = load i32, ptr @saa_debug, align 4
  %and.i74 = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74)
  %tobool.not.i75 = icmp eq i32 %and.i74, 0
  br i1 %tobool.not.i75, label %if.end44.do.end4.i82_crit_edge, label %do.end.i78

if.end44.do.end4.i82_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4.i82

do.end.i78:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %name.i76 = getelementptr inbounds %struct.saa7164_dev, ptr %27, i32 0, i32 16
  %call.i77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %name.i76, ptr noundef nonnull @.str.145, i32 noundef 0) #10
  br label %do.end4.i82

do.end4.i82:                                      ; preds = %do.end.i78, %if.end44.do.end4.i82_crit_edge
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port, align 8
  %32 = ptrtoint ptr %unitid.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %unitid.i, align 1
  %call6.i80 = call i32 @saa7164_cmd_send(ptr noundef %31, i8 noundef zeroext %33, i32 noundef 1, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %v.i73) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i80)
  %cmp.not.i81 = icmp eq i32 %call6.i80, 0
  br i1 %cmp.not.i81, label %saa7164_api_audio_mute.exit85.thread, label %do.end51

saa7164_api_audio_mute.exit85.thread:             ; preds = %do.end4.i82
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i73) #7
  br label %if.end54

do.end51:                                         ; preds = %do.end4.i82
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.145, i32 noundef %call6.i80) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i73) #7
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.136, i32 noundef %call6.i80) #10
  br label %if.end54

if.end54:                                         ; preds = %do.end51, %saa7164_api_audio_mute.exit85.thread
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %inputs) #7
  ret i32 %call6.i80
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_audio_mute(ptr nocapture noundef readonly %port, i32 noundef %mute) local_unnamed_addr #0 align 64 {
entry:
  %v = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v) #7
  %conv = trunc i32 %mute to i8
  %2 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %v, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %3 = load i32, ptr @saa_debug, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %name, ptr noundef nonnull @.str.145, i32 noundef %mute) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 8
  %unitid = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 51, i32 3
  %6 = ptrtoint ptr %unitid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %unitid, align 1
  %call6 = call i32 @saa7164_cmd_send(ptr noundef %5, i8 noundef zeroext %7, i32 noundef 1, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %v) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %do.end4.if.end14_crit_edge, label %do.end11

do.end4.if.end14_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end11:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.145, i32 noundef %call6) #10
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %do.end4.if.end14_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v) #7
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_set_audio_volume(ptr nocapture noundef readonly %port, i8 noundef signext %level) local_unnamed_addr #0 align 64 {
entry:
  %v = alloca i16, align 2
  %min = alloca i16, align 2
  %max = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v) #7
  %2 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %v, align 2, !annotation !918
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %min) #7
  %3 = ptrtoint ptr %min to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %min, align 2, !annotation !918
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max) #7
  %4 = ptrtoint ptr %max to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %max, align 2, !annotation !918
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %5 = load i32, ptr @saa_debug, align 4
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %conv = sext i8 %level to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %name, ptr noundef nonnull @.str.148, i32 noundef %conv) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 8
  %unitid = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 51, i32 3
  %8 = ptrtoint ptr %unitid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %unitid, align 1
  %call6 = call i32 @saa7164_cmd_send(ptr noundef %7, i8 noundef zeroext %9, i32 noundef 130, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %min) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %do.end4.if.end14_crit_edge, label %do.end11

do.end4.if.end14_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end11:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.148, i32 noundef %call6) #10
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %do.end4.if.end14_crit_edge
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port, align 8
  %12 = ptrtoint ptr %unitid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %unitid, align 1
  %call18 = call i32 @saa7164_cmd_send(ptr noundef %11, i8 noundef zeroext %13, i32 noundef 131, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %max) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 0
  br i1 %cmp19.not, label %if.end14.if.end27_crit_edge, label %do.end24

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end24:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.148, i32 noundef %call18) #10
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %if.end14.if.end27_crit_edge
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port, align 8
  %16 = ptrtoint ptr %unitid to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %unitid, align 1
  %call31 = call i32 @saa7164_cmd_send(ptr noundef %15, i8 noundef zeroext %17, i32 noundef 129, i16 noundef zeroext 258, i16 noundef zeroext 2, ptr noundef nonnull %v) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %if.end27.do.body41_crit_edge, label %do.end37

if.end27.do.body41_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body41

do.end37:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.148, i32 noundef %call31) #10
  br label %do.body41

do.body41:                                        ; preds = %do.end37, %if.end27.do.body41_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %18 = load i32, ptr @saa_debug, align 4
  %and42 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.body41.do.end58_crit_edge, label %do.end47

do.body41.do.end58_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58

do.end47:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  %name49 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %conv51 = sext i8 %level to i32
  %19 = ptrtoint ptr %min to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %min, align 2
  %conv52 = sext i16 %20 to i32
  %21 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %max, align 2
  %conv53 = sext i16 %22 to i32
  %23 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %v, align 2
  %conv54 = sext i16 %24 to i32
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef %name49, ptr noundef nonnull @.str.148, i32 noundef %conv51, i32 noundef %conv52, i32 noundef %conv53, i32 noundef %conv54) #10
  br label %do.end58

do.end58:                                         ; preds = %do.end47, %do.body41.do.end58_crit_edge
  %conv59 = sext i8 %level to i16
  %25 = ptrtoint ptr %min to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %min, align 2
  %27 = call i16 @llvm.smax.i16(i16 %26, i16 %conv59)
  %28 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %max, align 2
  %30 = call i16 @llvm.smin.i16(i16 %27, i16 %29)
  %31 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %v, align 2
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port, align 8
  %34 = ptrtoint ptr %unitid to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %unitid, align 1
  %call75 = call i32 @saa7164_cmd_send(ptr noundef %33, i8 noundef zeroext %35, i32 noundef 1, i16 noundef zeroext 258, i16 noundef zeroext 2, ptr noundef nonnull %v) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76.not = icmp eq i32 %call75, 0
  br i1 %cmp76.not, label %do.end58.if.end84_crit_edge, label %do.end81

do.end58.if.end84_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

do.end81:                                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #9
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.148, i32 noundef %call75) #10
  br label %if.end84

if.end84:                                         ; preds = %do.end81, %do.end58.if.end84_crit_edge
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port, align 8
  %38 = ptrtoint ptr %unitid to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %unitid, align 1
  %call88 = call i32 @saa7164_cmd_send(ptr noundef %37, i8 noundef zeroext %39, i32 noundef 1, i16 noundef zeroext 514, i16 noundef zeroext 2, ptr noundef nonnull %v) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89.not = icmp eq i32 %call88, 0
  br i1 %cmp89.not, label %if.end84.if.end97_crit_edge, label %do.end94

if.end84.if.end97_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

do.end94:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.148, i32 noundef %call88) #10
  br label %if.end97

if.end97:                                         ; preds = %do.end94, %if.end84.if.end97_crit_edge
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port, align 8
  %42 = ptrtoint ptr %unitid to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %unitid, align 1
  %call101 = call i32 @saa7164_cmd_send(ptr noundef %41, i8 noundef zeroext %43, i32 noundef 129, i16 noundef zeroext 258, i16 noundef zeroext 2, ptr noundef nonnull %v) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102.not = icmp eq i32 %call101, 0
  br i1 %cmp102.not, label %if.end97.do.body111_crit_edge, label %do.end107

if.end97.do.body111_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body111

do.end107:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.148, i32 noundef %call101) #10
  br label %do.body111

do.body111:                                       ; preds = %do.end107, %if.end97.do.body111_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %44 = load i32, ptr @saa_debug, align 4
  %and112 = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %do.body111.do.end128_crit_edge, label %do.end117

do.body111.do.end128_crit_edge:                   ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end128

do.end117:                                        ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #9
  %name119 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %conv121 = sext i8 %level to i32
  %45 = ptrtoint ptr %min to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %min, align 2
  %conv122 = sext i16 %46 to i32
  %47 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %max, align 2
  %conv123 = sext i16 %48 to i32
  %49 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %v, align 2
  %conv124 = sext i16 %50 to i32
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef %name119, ptr noundef nonnull @.str.148, i32 noundef %conv121, i32 noundef %conv122, i32 noundef %conv123, i32 noundef %conv124) #10
  br label %do.end128

do.end128:                                        ; preds = %do.end117, %do.body111.do.end128_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %min) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v) #7
  ret i32 %call101
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_set_audio_std(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %lvl = alloca %struct.tmComResAudioDefaults, align 1
  %tvaudio = alloca %struct.tmComResTunerStandard, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %lvl) #7
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %tvaudio) #7
  %2 = getelementptr inbounds %struct.tmComResTunerStandard, ptr %tvaudio, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %3 = load i32, ptr @saa_debug, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.166) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %4 = call ptr @memset(ptr %lvl, i32 0, i32 6)
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port, align 8
  %unitid = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 51, i32 3
  %7 = ptrtoint ptr %unitid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %unitid, align 1
  %call6 = call i32 @saa7164_cmd_send(ptr noundef %6, i8 noundef zeroext %8, i32 noundef 1, i16 noundef zeroext 13, i16 noundef zeroext 6, ptr noundef nonnull %lvl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %do.end4.if.end13_crit_edge, label %do.end10

do.end4.if.end13_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.end10:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.166, i32 noundef %call6) #10
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %do.end4.if.end13_crit_edge
  %id = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 34, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %id, align 8
  %and14 = and i64 %10, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14)
  %tobool15.not = icmp eq i64 %and14, 0
  %. = select i1 %tobool15.not, i8 8, i8 1
  %.41 = select i1 %tobool15.not, i32 44, i32 1
  %11 = ptrtoint ptr %tvaudio to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %., ptr %tvaudio, align 1
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %.41, ptr %2, align 1
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port, align 8
  %unitid21 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 55, i32 3
  %15 = ptrtoint ptr %unitid21 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %unitid21, align 1
  %call22 = call i32 @saa7164_cmd_send(ptr noundef %14, i8 noundef zeroext %16, i32 noundef 1, i16 noundef zeroext 0, i16 noundef zeroext 5, ptr noundef nonnull %tvaudio) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end13.if.end30_crit_edge, label %do.end27

if.end13.if.end30_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.end27:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.166, i32 noundef %call22) #10
  br label %if.end30

if.end30:                                         ; preds = %do.end27, %if.end13.if.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %tvaudio) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %lvl) #7
  ret i32 %call22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_set_audio_detection(ptr nocapture noundef readonly %port, i32 noundef %autodetect) local_unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.tmComResTunerStandardAuto, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %p) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %2 = load i32, ptr @saa_debug, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %name, ptr noundef nonnull @.str.172, i32 noundef %autodetect) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %autodetect)
  %tobool5.not = icmp ne i32 %autodetect, 0
  %. = zext i1 %tobool5.not to i8
  %3 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %., ptr %p, align 1
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 8
  %unitid = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 55, i32 3
  %6 = ptrtoint ptr %unitid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %unitid, align 1
  %call10 = call i32 @saa7164_cmd_send(ptr noundef %5, i8 noundef zeroext %7, i32 noundef 1, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %p) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 0
  br i1 %cmp.not, label %do.end4.if.end17_crit_edge, label %do.end14

do.end4.if.end17_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end14:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.172, i32 noundef %call10) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %do.end4.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %p) #7
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_get_videomux(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %sourceid = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 53, i32 4
  %2 = ptrtoint ptr %sourceid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sourceid, align 4
  %mux_input = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 40
  %call = tail call i32 @saa7164_cmd_send(ptr noundef %1, i8 noundef zeroext %3, i32 noundef 129, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef %mux_input) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.do.body4_crit_edge, label %do.end

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.176, i32 noundef %call) #10
  br label %do.body4

do.body4:                                         ; preds = %do.end, %entry.do.body4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %4 = load i32, ptr @saa_debug, align 4
  %and = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body4.do.end14_crit_edge, label %do.end8

do.body4.do.end14_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14

do.end8:                                          ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %mux_input to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mux_input, align 4
  %conv = zext i8 %6 to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef %name, ptr noundef nonnull @.str.176, i32 noundef %conv) #10
  br label %do.end14

do.end14:                                         ; preds = %do.end8, %do.body4.do.end14_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_configure_dif(ptr nocapture noundef readonly %port, i32 noundef %std) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %2 = load i32, ptr @saa_debug, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %nr = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef %name, ptr noundef nonnull @.str.181, i32 noundef %4, i32 noundef %std) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %conv = zext i32 %std to i64
  %and5 = and i64 %conv, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5)
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %if.else, label %do.body8

do.body8:                                         ; preds = %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %5 = load i32, ptr @saa_debug, align 4
  %and9 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body8.if.end185_crit_edge, label %do.body8.if.end185.sink.split_crit_edge

do.body8.if.end185.sink.split_crit_edge:          ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185.sink.split

do.body8.if.end185_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.else:                                          ; preds = %do.end4
  %and24 = and i64 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and24)
  %tobool25.not = icmp eq i64 %and24, 0
  br i1 %tobool25.not, label %if.else42, label %do.body27

do.body27:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %6 = load i32, ptr @saa_debug, align 4
  %and28 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body27.if.end185_crit_edge, label %do.body27.if.end185.sink.split_crit_edge

do.body27.if.end185.sink.split_crit_edge:         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185.sink.split

do.body27.if.end185_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.else42:                                        ; preds = %if.else
  %and44 = and i64 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and44)
  %tobool45.not = icmp eq i64 %and44, 0
  br i1 %tobool45.not, label %if.else62, label %do.body47

do.body47:                                        ; preds = %if.else42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %7 = load i32, ptr @saa_debug, align 4
  %and48 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %do.body47.if.end185_crit_edge, label %do.body47.if.end185.sink.split_crit_edge

do.body47.if.end185.sink.split_crit_edge:         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185.sink.split

do.body47.if.end185_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.else62:                                        ; preds = %if.else42
  %and64 = and i64 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and64)
  %tobool65.not = icmp eq i64 %and64, 0
  br i1 %tobool65.not, label %if.else82, label %do.body67

do.body67:                                        ; preds = %if.else62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %8 = load i32, ptr @saa_debug, align 4
  %and68 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body67.if.end185_crit_edge, label %do.body67.if.end185.sink.split_crit_edge

do.body67.if.end185.sink.split_crit_edge:         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185.sink.split

do.body67.if.end185_crit_edge:                    ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.else82:                                        ; preds = %if.else62
  %and84 = and i64 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and84)
  %tobool85.not = icmp eq i64 %and84, 0
  br i1 %tobool85.not, label %if.else102, label %do.body87

do.body87:                                        ; preds = %if.else82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %9 = load i32, ptr @saa_debug, align 4
  %and88 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.body87.if.end185_crit_edge, label %do.body87.if.end185.sink.split_crit_edge

do.body87.if.end185.sink.split_crit_edge:         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185.sink.split

do.body87.if.end185_crit_edge:                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.else102:                                       ; preds = %if.else82
  %and104 = and i64 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and104)
  %tobool105.not = icmp eq i64 %and104, 0
  br i1 %tobool105.not, label %if.else122, label %do.body107

do.body107:                                       ; preds = %if.else102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %10 = load i32, ptr @saa_debug, align 4
  %and108 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %do.body107.if.end185_crit_edge, label %do.body107.if.end185.sink.split_crit_edge

do.body107.if.end185.sink.split_crit_edge:        ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185.sink.split

do.body107.if.end185_crit_edge:                   ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.else122:                                       ; preds = %if.else102
  %and124 = and i64 %conv, 224
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and124)
  %tobool125.not = icmp eq i64 %and124, 0
  br i1 %tobool125.not, label %if.else142, label %do.body127

do.body127:                                       ; preds = %if.else122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %11 = load i32, ptr @saa_debug, align 4
  %and128 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %do.body127.if.end185_crit_edge, label %do.body127.if.end185.sink.split_crit_edge

do.body127.if.end185.sink.split_crit_edge:        ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185.sink.split

do.body127.if.end185_crit_edge:                   ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.else142:                                       ; preds = %if.else122
  %and144 = and i64 %conv, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and144)
  %tobool145.not = icmp eq i64 %and144, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %12 = load i32, ptr @saa_debug, align 4
  %and164 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  %. = select i1 %tobool145.not, i8 -128, i8 32
  %and144.lobit = lshr exact i64 %and144, 22
  %13 = trunc i64 %and144.lobit to i8
  %14 = xor i8 %13, 1
  %.str.207..str.204 = select i1 %tobool145.not, ptr @.str.207, ptr @.str.204
  br i1 %tobool165.not, label %if.else142.if.end185_crit_edge, label %if.else142.if.end185.sink.split_crit_edge

if.else142.if.end185.sink.split_crit_edge:        ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185.sink.split

if.else142.if.end185_crit_edge:                   ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end185

if.end185.sink.split:                             ; preds = %if.else142.if.end185.sink.split_crit_edge, %do.body127.if.end185.sink.split_crit_edge, %do.body107.if.end185.sink.split_crit_edge, %do.body87.if.end185.sink.split_crit_edge, %do.body67.if.end185.sink.split_crit_edge, %do.body47.if.end185.sink.split_crit_edge, %do.body27.if.end185.sink.split_crit_edge, %do.body8.if.end185.sink.split_crit_edge
  %.str.207.sink = phi ptr [ @.str.183, %do.body8.if.end185.sink.split_crit_edge ], [ @.str.186, %do.body27.if.end185.sink.split_crit_edge ], [ @.str.189, %do.body47.if.end185.sink.split_crit_edge ], [ @.str.192, %do.body67.if.end185.sink.split_crit_edge ], [ @.str.195, %do.body87.if.end185.sink.split_crit_edge ], [ @.str.198, %do.body107.if.end185.sink.split_crit_edge ], [ @.str.201, %do.body127.if.end185.sink.split_crit_edge ], [ %.str.207..str.204, %if.else142.if.end185.sink.split_crit_edge ]
  %.sink.ph = phi i8 [ 1, %do.body8.if.end185.sink.split_crit_edge ], [ 8, %do.body27.if.end185.sink.split_crit_edge ], [ 1, %do.body47.if.end185.sink.split_crit_edge ], [ 1, %do.body67.if.end185.sink.split_crit_edge ], [ 1, %do.body87.if.end185.sink.split_crit_edge ], [ 2, %do.body107.if.end185.sink.split_crit_edge ], [ 16, %do.body127.if.end185.sink.split_crit_edge ], [ %., %if.else142.if.end185.sink.split_crit_edge ]
  %agc_disable.0.ph = phi i8 [ 0, %do.body8.if.end185.sink.split_crit_edge ], [ 0, %do.body27.if.end185.sink.split_crit_edge ], [ 0, %do.body47.if.end185.sink.split_crit_edge ], [ 0, %do.body67.if.end185.sink.split_crit_edge ], [ 0, %do.body87.if.end185.sink.split_crit_edge ], [ 0, %do.body107.if.end185.sink.split_crit_edge ], [ 0, %do.body127.if.end185.sink.split_crit_edge ], [ %14, %if.else142.if.end185.sink.split_crit_edge ]
  %name171 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.207.sink, ptr noundef %name171) #10
  br label %if.end185

if.end185:                                        ; preds = %if.end185.sink.split, %if.else142.if.end185_crit_edge, %do.body127.if.end185_crit_edge, %do.body107.if.end185_crit_edge, %do.body87.if.end185_crit_edge, %do.body67.if.end185_crit_edge, %do.body47.if.end185_crit_edge, %do.body27.if.end185_crit_edge, %do.body8.if.end185_crit_edge
  %.sink = phi i8 [ 1, %do.body8.if.end185_crit_edge ], [ 8, %do.body27.if.end185_crit_edge ], [ 1, %do.body47.if.end185_crit_edge ], [ 1, %do.body67.if.end185_crit_edge ], [ 1, %do.body87.if.end185_crit_edge ], [ 2, %do.body107.if.end185_crit_edge ], [ 16, %do.body127.if.end185_crit_edge ], [ %.sink.ph, %if.end185.sink.split ], [ %., %if.else142.if.end185_crit_edge ]
  %agc_disable.0 = phi i8 [ 0, %do.body8.if.end185_crit_edge ], [ 0, %do.body27.if.end185_crit_edge ], [ 0, %do.body47.if.end185_crit_edge ], [ 0, %do.body67.if.end185_crit_edge ], [ 0, %do.body87.if.end185_crit_edge ], [ 0, %do.body107.if.end185_crit_edge ], [ 0, %do.body127.if.end185_crit_edge ], [ %agc_disable.0.ph, %if.end185.sink.split ], [ %14, %if.else142.if.end185_crit_edge ]
  tail call fastcc void @saa7164_api_set_dif(ptr noundef %port, i8 noundef zeroext 0, i8 noundef zeroext %.sink)
  tail call fastcc void @saa7164_api_set_dif(ptr noundef %port, i8 noundef zeroext 72, i8 noundef zeroext -96)
  tail call fastcc void @saa7164_api_set_dif(ptr noundef %port, i8 noundef zeroext -64, i8 noundef zeroext %agc_disable.0)
  tail call fastcc void @saa7164_api_set_dif(ptr noundef %port, i8 noundef zeroext 124, i8 noundef zeroext 4)
  tail call fastcc void @saa7164_api_set_dif(ptr noundef %port, i8 noundef zeroext 4, i8 noundef zeroext 1)
  tail call void @msleep(i32 noundef 100) #7
  tail call fastcc void @saa7164_api_set_dif(ptr noundef %port, i8 noundef zeroext 4, i8 noundef zeroext 0)
  tail call void @msleep(i32 noundef 100) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7164_api_set_dif(ptr nocapture noundef readonly %port, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  %len = alloca i16, align 2
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %len) #7
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %len, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %3 = load i32, ptr @saa_debug, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %nr = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 8
  %type = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %conv = zext i8 %val to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.258, ptr noundef %name, ptr noundef nonnull @.str.259, i32 noundef %5, i32 noundef %7, i32 noundef %conv) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %nr5 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %nr5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %. = select i1 %cmp, i8 -48, i8 -32
  %10 = getelementptr inbounds i8, ptr %buf, i32 16
  %11 = call ptr @memset(ptr %10, i32 0, i32 240)
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %buf, align 1
  %arrayidx10 = getelementptr inbounds [256 x i8], ptr %buf, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr inbounds [256 x i8], ptr %buf, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx11, align 1
  %arrayidx12 = getelementptr inbounds [256 x i8], ptr %buf, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx12, align 1
  %arrayidx13 = getelementptr inbounds [256 x i8], ptr %buf, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %arrayidx13, align 1
  %arrayidx14 = getelementptr inbounds [256 x i8], ptr %buf, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx14, align 1
  %arrayidx15 = getelementptr inbounds [256 x i8], ptr %buf, i32 0, i32 6
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr inbounds [256 x i8], ptr %buf, i32 0, i32 7
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx16, align 1
  %arrayidx17 = getelementptr inbounds [256 x i8], ptr %buf, i32 0, i32 8
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %reg, ptr %arrayidx17, align 1
  %arrayidx18 = getelementptr inbounds [256 x i8], ptr %buf, i32 0, i32 9
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 38, ptr %arrayidx18, align 1
  %arrayidx19 = getelementptr inbounds [256 x i8], ptr %buf, i32 0, i32 10
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %., ptr %arrayidx19, align 1
  %arrayidx20 = getelementptr inbounds [256 x i8], ptr %buf, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -80, ptr %arrayidx20, align 1
  %arrayidx21 = getelementptr inbounds [256 x i8], ptr %buf, i32 0, i32 12
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %val, ptr %arrayidx21, align 1
  %arrayidx22 = getelementptr inbounds [256 x i8], ptr %buf, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx22, align 1
  %arrayidx23 = getelementptr inbounds [256 x i8], ptr %buf, i32 0, i32 14
  %26 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx23, align 1
  %arrayidx24 = getelementptr inbounds [256 x i8], ptr %buf, i32 0, i32 15
  %27 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx24, align 1
  %unitid = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 54, i32 3
  %28 = ptrtoint ptr %unitid to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %unitid, align 1
  %call25 = call i32 @saa7164_cmd_send(ptr noundef %1, i8 noundef zeroext %29, i32 noundef 133, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef nonnull %len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 0
  br i1 %cmp26.not, label %if.end34, label %do.end31

do.end31:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.259, i32 noundef %call25) #10
  br label %cleanup

if.end34:                                         ; preds = %do.end4
  %30 = ptrtoint ptr %unitid to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %unitid, align 1
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %len, align 2
  %call37 = call i32 @saa7164_cmd_send(ptr noundef %1, i8 noundef zeroext %31, i32 noundef 1, i16 noundef zeroext 0, i16 noundef zeroext %33, ptr noundef nonnull %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38.not = icmp eq i32 %call37, 0
  br i1 %cmp38.not, label %if.end34.cleanup_crit_edge, label %do.end43

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end43:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.259, i32 noundef %call37) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %if.end34.cleanup_crit_edge, %do.end31
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %len) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_initialize_dif(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %2 = load i32, ptr @saa_debug, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %nr = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 8
  %type = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef %name, ptr noundef nonnull @.str.210, i32 noundef %4, i32 noundef %6) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %type5 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 1
  %7 = ptrtoint ptr %type5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type5, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.612)
  switch i32 %8, label %do.body31 [
    i32 2, label %do.end4.if.end43_crit_edge
    i32 1, label %if.then9
    i32 3, label %if.then20
  ]

do.end4.if.end43_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then9:                                         ; preds = %do.end4
  %nr10 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %10 = ptrtoint ptr %nr10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11 = icmp eq i32 %11, 0
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2
  br label %if.end39

if.else13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 3
  br label %if.end39

if.then20:                                        ; preds = %do.end4
  %nr21 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %12 = ptrtoint ptr %nr21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp22 = icmp eq i32 %13, 4
  br i1 %cmp22, label %if.then23, label %if.else26

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx25 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 2
  br label %if.end39

if.else26:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx28 = getelementptr %struct.saa7164_dev, ptr %1, i32 0, i32 29, i32 3
  br label %if.end39

do.body31:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7164/saa7164-api.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 759, 0\0A.popsection", ""() #7, !srcloc !920
  unreachable

if.end39:                                         ; preds = %if.else26, %if.then23, %if.else13, %if.then12
  %p.0 = phi ptr [ %arrayidx, %if.then12 ], [ %arrayidx15, %if.else13 ], [ %arrayidx25, %if.then23 ], [ %arrayidx28, %if.else26 ]
  %std.0 = phi i32 [ 0, %if.then12 ], [ 0, %if.else13 ], [ 45056, %if.then23 ], [ 45056, %if.else26 ]
  %tobool40.not = icmp eq ptr %p.0, null
  br i1 %tobool40.not, label %if.end39.if.end43_crit_edge, label %if.then41

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 @saa7164_api_configure_dif(ptr noundef nonnull %p.0, i32 noundef %std.0)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39.if.end43_crit_edge, %do.end4.if.end43_crit_edge
  %ret.0 = phi i32 [ 0, %if.then41 ], [ -22, %if.end39.if.end43_crit_edge ], [ -22, %do.end4.if.end43_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_transition_port(ptr nocapture noundef readonly %port, i8 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %mode.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %mode, ptr %mode.addr, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %1 = load i32, ptr @saa_debug, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 8
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %3, i32 0, i32 16
  %nr = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 8
  %unitid = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %unitid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %unitid, align 1
  %conv = zext i8 %7 to i32
  %conv3 = zext i8 %mode to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef %name, ptr noundef nonnull @.str.212, i32 noundef %5, i32 noundef %conv, i32 noundef %conv3) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port, align 8
  %unitid8 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %unitid8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %unitid8, align 1
  %call9 = call i32 @saa7164_cmd_send(ptr noundef %9, i8 noundef zeroext %11, i32 noundef 1, i16 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef nonnull %mode.addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 0
  br i1 %cmp.not, label %do.end5.if.end21_crit_edge, label %do.end14

do.end5.if.end21_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end14:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %nr16 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %12 = ptrtoint ptr %nr16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr16, align 8
  %14 = ptrtoint ptr %unitid8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %unitid8, align 1
  %conv19 = zext i8 %15 to i32
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.212, i32 noundef %13, i32 noundef %conv19, i32 noundef %call9) #10
  br label %if.end21

if.end21:                                         ; preds = %do.end14, %do.end5.if.end21_crit_edge
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_get_fw_version(ptr noundef %dev, ptr noundef %version) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @saa7164_cmd_send(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 129, i16 noundef zeroext 9, i16 noundef zeroext 4, ptr noundef %version) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.216, i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_read_eeprom(ptr noundef %dev, ptr nocapture noundef writeonly %buf, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 3840, ptr %reg, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %buflen)
  %cmp = icmp slt i32 %buflen, 128
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_bus = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 28
  %call = call i32 @saa7164_api_i2c_read(ptr noundef %i2c_bus, i8 noundef zeroext 80, i32 noundef 2, ptr noundef nonnull %reg, i32 noundef 128, ptr noundef %buf)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_i2c_read(ptr noundef %bus, i8 noundef zeroext %addr, i32 noundef %reglen, ptr nocapture noundef readonly %reg, i32 noundef %datalen, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  %len = alloca i16, align 2
  %buf = alloca [256 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %len) #7
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %len, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %3 = load i32, ptr @saa_debug, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %conv = zext i8 %addr to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef %name, ptr noundef nonnull @.str.228, i32 noundef %conv, i32 noundef %reglen, i32 noundef %datalen) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %reglen)
  %cmp = icmp ugt i32 %reglen, 4
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %4 = getelementptr inbounds i8, ptr %buf, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 248)
  %add.ptr = getelementptr inbounds i8, ptr %buf, i32 8
  %6 = call ptr @memcpy(ptr %add.ptr, ptr %reg, i32 %reglen)
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %reglen, ptr %buf, align 4
  %add.ptr14 = getelementptr inbounds i8, ptr %buf, i32 4
  %8 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %datalen, ptr %add.ptr14, align 4
  %conv15 = zext i8 %addr to i32
  %call16 = tail call i32 @saa7164_i2caddr_to_unitid(ptr noundef %bus, i32 noundef %conv15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end22, label %if.end26

do.end22:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.228, i32 noundef %conv15) #10
  br label %cleanup

if.end26:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 8
  %conv28 = trunc i32 %call16 to i8
  %call29 = call i32 @saa7164_cmd_send(ptr noundef %10, i8 noundef zeroext %conv28, i32 noundef 133, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef nonnull %len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %do.body39, label %do.end35

do.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.228, i32 noundef %call29) #10
  br label %cleanup

do.body39:                                        ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %11 = load i32, ptr @saa_debug, align 4
  %and40 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body39.do.end53_crit_edge, label %do.end45

do.body39.do.end53_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53

do.end45:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  %name47 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %len, align 2
  %conv49 = zext i16 %13 to i32
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, ptr noundef %name47, ptr noundef nonnull @.str.228, i32 noundef %conv49) #10
  br label %do.end53

do.end53:                                         ; preds = %do.end45, %do.body39.do.end53_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %14 = load i32, ptr @saa_debug, align 4
  %and54 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.end53.if.end58_crit_edge, label %if.then56

do.end53.if.end58_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then56:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #9
  call void @print_hex_dump(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.226, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef 32, i1 noundef zeroext false) #7
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %do.end53.if.end58_crit_edge
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 8
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len, align 2
  %call61 = call i32 @saa7164_cmd_send(ptr noundef %16, i8 noundef zeroext %conv28, i32 noundef 129, i16 noundef zeroext 0, i16 noundef zeroext %18, ptr noundef nonnull %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62.not = icmp eq i32 %call61, 0
  br i1 %cmp62.not, label %if.else, label %do.end67

do.end67:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.228, i32 noundef %call61) #10
  br label %cleanup

if.else:                                          ; preds = %if.end58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %19 = load i32, ptr @saa_debug, align 4
  %and70 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.else.if.end74_crit_edge, label %if.then72

if.else.if.end74_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then72:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @print_hex_dump(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.226, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef 256, i1 noundef zeroext false) #7
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.else.if.end74_crit_edge
  %add.ptr77 = getelementptr i8, ptr %add.ptr, i32 %reglen
  %20 = call ptr @memcpy(ptr %data, ptr %add.ptr77, i32 %datalen)
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %do.end67, %do.end35, %do.end22, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end22 ], [ -5, %do.end35 ], [ -5, %do.end4.cleanup_crit_edge ], [ 0, %if.end74 ], [ -5, %do.end67 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %len) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_enum_subdevs(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %buflen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buflen) #7
  %0 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %buflen, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %1 = load i32, ptr @saa_debug, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.217) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = call i32 @saa7164_cmd_send(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 133, i16 noundef zeroext 1, i16 noundef zeroext 4, ptr noundef nonnull %buflen) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %do.end3.do.body12_crit_edge, label %do.end8

do.end3.do.body12_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12

do.end8:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.217, i32 noundef %call4) #10
  br label %do.body12

do.body12:                                        ; preds = %do.end8, %do.end3.do.body12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %2 = load i32, ptr @saa_debug, align 4
  %and13 = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.if.end8.i.i_crit_edge, label %do.end18

do.body12.if.end8.i.i_crit_edge:                  ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

do.end18:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %name20 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %3 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buflen, align 4
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, ptr noundef %name20, ptr noundef nonnull @.str.217, i32 noundef %4) #10
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end18, %do.body12.if.end8.i.i_crit_edge
  %5 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buflen, align 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #12
  %tobool27.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool27.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end29

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end8.i.i
  %7 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buflen, align 4
  %conv = trunc i32 %8 to i16
  %call30 = call i32 @saa7164_cmd_send(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 129, i16 noundef zeroext 1, i16 noundef zeroext %conv, ptr noundef nonnull %call9.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %if.end39, label %do.end36

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.217, i32 noundef %call30) #10
  br label %out

if.end39:                                         ; preds = %if.end29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %9 = load i32, ptr @saa_debug, align 4
  %and40 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end44_crit_edge, label %if.then42

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buflen, align 4
  %and43 = and i32 %11, -16
  call void @print_hex_dump(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.226, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %call9.i.i, i32 noundef %and43, i1 noundef zeroext false) #7
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end39.if.end44_crit_edge
  %12 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buflen, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %14 = load i32, ptr @saa_debug, align 4
  %and.i = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end44.do.end3.i_crit_edge, label %do.end.i

if.end44.do.end3.i_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264, ptr noundef %name.i, ptr noundef nonnull @.str.265, i32 noundef %13, i32 noundef 4) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end44.do.end3.i_crit_edge
  %sub.i = add i32 %13, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp66.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp66.not.i, label %do.end3.i.out_crit_edge, label %for.body.lr.ph.i

do.end3.i.out_crit_edge:                          ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body.lr.ph.i:                                 ; preds = %do.end3.i
  %name16.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %arrayidx1663.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 2
  %arrayidx1666.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 3
  %arrayidx644.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 4
  %arrayidx647.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 5
  %ports.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 29
  %arrayidx624.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 29, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %do.end1795.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %idx.068.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add1798.i, %do.end1795.i.for.body.i_crit_edge ]
  %currpath.067.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %currpath.1.i, %do.end1795.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 %idx.068.i
  %type.i = getelementptr inbounds %struct.tmComResDescrHeader, ptr %add.ptr.i, i32 0, i32 1
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %16)
  %cmp4.not.i = icmp eq i8 %16, 36
  br i1 %cmp4.not.i, label %do.body8.i, label %for.body.i.out_crit_edge

for.body.i.out_crit_edge:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body8.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %17 = load i32, ptr @saa_debug, align 4
  %and9.i = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %do.body8.i.do.end21.i_crit_edge, label %do.end14.i

do.body8.i.do.end21.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21.i

do.end14.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.267, ptr noundef %name16.i, i32 noundef %idx.068.i) #10
  br label %do.end21.i

do.end21.i:                                       ; preds = %do.end14.i, %do.body8.i.do.end21.i_crit_edge
  %subtype.i = getelementptr inbounds %struct.tmComResDescrHeader, ptr %add.ptr.i, i32 0, i32 2
  %18 = ptrtoint ptr %subtype.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %subtype.i, align 1
  %conv22.i = zext i8 %19 to i32
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.613)
  switch i8 %19, label %do.body1715.i [
    i8 -11, label %do.body23.i
    i8 -16, label %do.body38.i
    i8 2, label %do.body71.i
    i8 3, label %do.body285.i
    i8 9, label %do.body718.i
    i8 4, label %sw.bb855.i
    i8 5, label %sw.bb918.i
    i8 6, label %sw.bb1012.i
    i8 10, label %sw.bb1100.i
    i8 11, label %do.body1227.i
    i8 -13, label %do.body1685.i
    i8 -12, label %do.body1700.i
  ]

do.body23.i:                                      ; preds = %do.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %21 = load i32, ptr @saa_debug, align 4
  %and24.i = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %do.body23.i.do.body1732.i_crit_edge, label %do.end29.i

do.body23.i.do.body1732.i_crit_edge:              ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1732.i

do.end29.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #9
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.270, ptr noundef %name16.i) #10
  br label %do.body1732.i

do.body38.i:                                      ; preds = %do.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %22 = load i32, ptr @saa_debug, align 4
  %and39.i = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %do.body38.i.do.end51.i_crit_edge, label %do.end44.i

do.body38.i.do.end51.i_crit_edge:                 ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end51.i

do.end44.i:                                       ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #9
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.273, ptr noundef %name16.i) #10
  br label %do.end51.i

do.end51.i:                                       ; preds = %do.end44.i, %do.body38.i.do.end51.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %23 = load i32, ptr @saa_debug, align 4
  %and54.i = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %do.end51.i.do.end67.i_crit_edge, label %do.end59.i

do.end51.i.do.end67.i_crit_edge:                  ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67.i

do.end59.i:                                       ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  %pathid.i = getelementptr inbounds %struct.tmComResPathDescrHeader, ptr %add.ptr.i, i32 0, i32 3
  %24 = ptrtoint ptr %pathid.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pathid.i, align 1
  %conv63.i = zext i8 %25 to i32
  %call64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.276, ptr noundef %name16.i, i32 noundef %conv63.i) #10
  br label %do.end67.i

do.end67.i:                                       ; preds = %do.end59.i, %do.end51.i.do.end67.i_crit_edge
  %pathid68.i = getelementptr inbounds %struct.tmComResPathDescrHeader, ptr %add.ptr.i, i32 0, i32 3
  %26 = ptrtoint ptr %pathid68.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pathid68.i, align 1
  %conv69.i = zext i8 %27 to i32
  br label %do.body1732.i

do.body71.i:                                      ; preds = %do.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %28 = load i32, ptr @saa_debug, align 4
  %and72.i = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %do.body71.i.do.end84.i_crit_edge, label %do.end77.i

do.body71.i.do.end84.i_crit_edge:                 ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end84.i

do.end77.i:                                       ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #9
  %call81.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.279, ptr noundef %name16.i) #10
  br label %do.end84.i

do.end84.i:                                       ; preds = %do.end77.i, %do.body71.i.do.end84.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %29 = load i32, ptr @saa_debug, align 4
  %and87.i = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %do.end84.i.do.body101.i_crit_edge, label %do.end92.i

do.end84.i.do.body101.i_crit_edge:                ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body101.i

do.end92.i:                                       ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #9
  %terminalid.i = getelementptr inbounds %struct.tmComResAntTermDescrHeader, ptr %add.ptr.i, i32 0, i32 3
  %30 = ptrtoint ptr %terminalid.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %terminalid.i, align 1
  %conv96.i = zext i8 %31 to i32
  %call97.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.282, ptr noundef %name16.i, i32 noundef %conv96.i) #10
  br label %do.body101.i

do.body101.i:                                     ; preds = %do.end92.i, %do.end84.i.do.body101.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %32 = load i32, ptr @saa_debug, align 4
  %and102.i = and i32 %32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102.i)
  %tobool103.not.i = icmp eq i32 %and102.i, 0
  br i1 %tobool103.not.i, label %do.body101.i.do.end115.i_crit_edge, label %do.end107.i

do.body101.i.do.end115.i_crit_edge:               ; preds = %do.body101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end115.i

do.end107.i:                                      ; preds = %do.body101.i
  call void @__sanitizer_cov_trace_pc() #9
  %terminaltype.i = getelementptr inbounds %struct.tmComResAntTermDescrHeader, ptr %add.ptr.i, i32 0, i32 4
  %33 = ptrtoint ptr %terminaltype.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %terminaltype.i, align 1
  %conv111.i = zext i16 %34 to i32
  %call112.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.285, ptr noundef %name16.i, i32 noundef %conv111.i) #10
  br label %do.end115.i

do.end115.i:                                      ; preds = %do.end107.i, %do.body101.i.do.end115.i_crit_edge
  %terminaltype116.i = getelementptr inbounds %struct.tmComResAntTermDescrHeader, ptr %add.ptr.i, i32 0, i32 4
  %35 = ptrtoint ptr %terminaltype116.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %terminaltype116.i, align 1
  %conv117.i = zext i16 %36 to i32
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.614)
  switch i16 %36, label %do.body223.i [
    i16 515, label %do.body119.i
    i16 1539, label %do.body134.i
    i16 1541, label %do.body149.i
    i16 1025, label %do.body164.i
    i16 1026, label %do.body179.i
    i16 1027, label %do.body194.i
    i16 -3839, label %do.body209.i
  ]

do.body119.i:                                     ; preds = %do.end115.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %38 = load i32, ptr @saa_debug, align 4
  %and120.i = and i32 %38, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  br i1 %tobool121.not.i, label %do.body119.i.do.body239.i_crit_edge, label %do.end125.i

do.body119.i.do.body239.i_crit_edge:              ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body239.i

do.end125.i:                                      ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #9
  %call129.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.288, ptr noundef %name16.i) #10
  br label %do.body239.i

do.body134.i:                                     ; preds = %do.end115.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %39 = load i32, ptr @saa_debug, align 4
  %and135.i = and i32 %39, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135.i)
  %tobool136.not.i = icmp eq i32 %and135.i, 0
  br i1 %tobool136.not.i, label %do.body134.i.do.body239.i_crit_edge, label %do.end140.i

do.body134.i.do.body239.i_crit_edge:              ; preds = %do.body134.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body239.i

do.end140.i:                                      ; preds = %do.body134.i
  call void @__sanitizer_cov_trace_pc() #9
  %call144.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.291, ptr noundef %name16.i) #10
  br label %do.body239.i

do.body149.i:                                     ; preds = %do.end115.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %40 = load i32, ptr @saa_debug, align 4
  %and150.i = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150.i)
  %tobool151.not.i = icmp eq i32 %and150.i, 0
  br i1 %tobool151.not.i, label %do.body149.i.do.body239.i_crit_edge, label %do.end155.i

do.body149.i.do.body239.i_crit_edge:              ; preds = %do.body149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body239.i

do.end155.i:                                      ; preds = %do.body149.i
  call void @__sanitizer_cov_trace_pc() #9
  %call159.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294, ptr noundef %name16.i) #10
  br label %do.body239.i

do.body164.i:                                     ; preds = %do.end115.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %41 = load i32, ptr @saa_debug, align 4
  %and165.i = and i32 %41, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165.i)
  %tobool166.not.i = icmp eq i32 %and165.i, 0
  br i1 %tobool166.not.i, label %do.body164.i.do.body239.i_crit_edge, label %do.end170.i

do.body164.i.do.body239.i_crit_edge:              ; preds = %do.body164.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body239.i

do.end170.i:                                      ; preds = %do.body164.i
  call void @__sanitizer_cov_trace_pc() #9
  %call174.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.297, ptr noundef %name16.i) #10
  br label %do.body239.i

do.body179.i:                                     ; preds = %do.end115.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %42 = load i32, ptr @saa_debug, align 4
  %and180.i = and i32 %42, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180.i)
  %tobool181.not.i = icmp eq i32 %and180.i, 0
  br i1 %tobool181.not.i, label %do.body179.i.do.body239.i_crit_edge, label %do.end185.i

do.body179.i.do.body239.i_crit_edge:              ; preds = %do.body179.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body239.i

do.end185.i:                                      ; preds = %do.body179.i
  call void @__sanitizer_cov_trace_pc() #9
  %call189.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.300, ptr noundef %name16.i) #10
  br label %do.body239.i

do.body194.i:                                     ; preds = %do.end115.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %43 = load i32, ptr @saa_debug, align 4
  %and195.i = and i32 %43, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195.i)
  %tobool196.not.i = icmp eq i32 %and195.i, 0
  br i1 %tobool196.not.i, label %do.body194.i.do.body239.i_crit_edge, label %do.end200.i

do.body194.i.do.body239.i_crit_edge:              ; preds = %do.body194.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body239.i

do.end200.i:                                      ; preds = %do.body194.i
  call void @__sanitizer_cov_trace_pc() #9
  %call204.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.303, ptr noundef %name16.i) #10
  br label %do.body239.i

do.body209.i:                                     ; preds = %do.end115.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %44 = load i32, ptr @saa_debug, align 4
  %and210.i = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210.i)
  %tobool211.not.i = icmp eq i32 %and210.i, 0
  br i1 %tobool211.not.i, label %do.body209.i.do.body239.i_crit_edge, label %do.end215.i

do.body209.i.do.body239.i_crit_edge:              ; preds = %do.body209.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body239.i

do.end215.i:                                      ; preds = %do.body209.i
  call void @__sanitizer_cov_trace_pc() #9
  %call219.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.306, ptr noundef %name16.i) #10
  br label %do.body239.i

do.body223.i:                                     ; preds = %do.end115.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %45 = load i32, ptr @saa_debug, align 4
  %and224.i = and i32 %45, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and224.i)
  %tobool225.not.i = icmp eq i32 %and224.i, 0
  br i1 %tobool225.not.i, label %do.body223.i.do.body239.i_crit_edge, label %do.end229.i

do.body223.i.do.body239.i_crit_edge:              ; preds = %do.body223.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body239.i

do.end229.i:                                      ; preds = %do.body223.i
  call void @__sanitizer_cov_trace_pc() #9
  %call235.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.309, ptr noundef %name16.i, i32 noundef %conv117.i) #10
  br label %do.body239.i

do.body239.i:                                     ; preds = %do.end229.i, %do.body223.i.do.body239.i_crit_edge, %do.end215.i, %do.body209.i.do.body239.i_crit_edge, %do.end200.i, %do.body194.i.do.body239.i_crit_edge, %do.end185.i, %do.body179.i.do.body239.i_crit_edge, %do.end170.i, %do.body164.i.do.body239.i_crit_edge, %do.end155.i, %do.body149.i.do.body239.i_crit_edge, %do.end140.i, %do.body134.i.do.body239.i_crit_edge, %do.end125.i, %do.body119.i.do.body239.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %46 = load i32, ptr @saa_debug, align 4
  %and240.i = and i32 %46, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240.i)
  %tobool241.not.i = icmp eq i32 %and240.i, 0
  br i1 %tobool241.not.i, label %do.body239.i.do.body254.i_crit_edge, label %do.end245.i

do.body239.i.do.body254.i_crit_edge:              ; preds = %do.body239.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body254.i

do.end245.i:                                      ; preds = %do.body239.i
  call void @__sanitizer_cov_trace_pc() #9
  %assocterminal.i = getelementptr inbounds %struct.tmComResAntTermDescrHeader, ptr %add.ptr.i, i32 0, i32 5
  %47 = ptrtoint ptr %assocterminal.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %assocterminal.i, align 1
  %conv249.i = zext i8 %48 to i32
  %call250.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.312, ptr noundef %name16.i, i32 noundef %conv249.i) #10
  br label %do.body254.i

do.body254.i:                                     ; preds = %do.end245.i, %do.body239.i.do.body254.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %49 = load i32, ptr @saa_debug, align 4
  %and255.i = and i32 %49, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and255.i)
  %tobool256.not.i = icmp eq i32 %and255.i, 0
  br i1 %tobool256.not.i, label %do.body254.i.do.body269.i_crit_edge, label %do.end260.i

do.body254.i.do.body269.i_crit_edge:              ; preds = %do.body254.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body269.i

do.end260.i:                                      ; preds = %do.body254.i
  call void @__sanitizer_cov_trace_pc() #9
  %iterminal.i = getelementptr inbounds %struct.tmComResAntTermDescrHeader, ptr %add.ptr.i, i32 0, i32 6
  %50 = ptrtoint ptr %iterminal.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %iterminal.i, align 1
  %conv264.i = zext i8 %51 to i32
  %call265.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.315, ptr noundef %name16.i, i32 noundef %conv264.i) #10
  br label %do.body269.i

do.body269.i:                                     ; preds = %do.end260.i, %do.body254.i.do.body269.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %52 = load i32, ptr @saa_debug, align 4
  %and270.i = and i32 %52, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and270.i)
  %tobool271.not.i = icmp eq i32 %and270.i, 0
  br i1 %tobool271.not.i, label %do.body269.i.do.body1732.i_crit_edge, label %do.end275.i

do.body269.i.do.body1732.i_crit_edge:             ; preds = %do.body269.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1732.i

do.end275.i:                                      ; preds = %do.body269.i
  call void @__sanitizer_cov_trace_pc() #9
  %controlsize.i = getelementptr inbounds %struct.tmComResAntTermDescrHeader, ptr %add.ptr.i, i32 0, i32 7
  %53 = ptrtoint ptr %controlsize.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %controlsize.i, align 1
  %conv279.i = zext i8 %54 to i32
  %call280.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.318, ptr noundef %name16.i, i32 noundef %conv279.i) #10
  br label %do.body1732.i

do.body285.i:                                     ; preds = %do.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %55 = load i32, ptr @saa_debug, align 4
  %and286.i = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and286.i)
  %tobool287.not.i = icmp eq i32 %and286.i, 0
  br i1 %tobool287.not.i, label %do.body285.i.do.end298.i_crit_edge, label %do.end291.i

do.body285.i.do.end298.i_crit_edge:               ; preds = %do.body285.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end298.i

do.end291.i:                                      ; preds = %do.body285.i
  call void @__sanitizer_cov_trace_pc() #9
  %call295.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.321, ptr noundef %name16.i) #10
  br label %do.end298.i

do.end298.i:                                      ; preds = %do.end291.i, %do.body285.i.do.end298.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %56 = load i32, ptr @saa_debug, align 4
  %and301.i = and i32 %56, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and301.i)
  %tobool302.not.i = icmp eq i32 %and301.i, 0
  br i1 %tobool302.not.i, label %do.end298.i.do.body315.i_crit_edge, label %do.end306.i

do.end298.i.do.body315.i_crit_edge:               ; preds = %do.end298.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body315.i

do.end306.i:                                      ; preds = %do.end298.i
  call void @__sanitizer_cov_trace_pc() #9
  %unitid.i = getelementptr inbounds %struct.tmComResDMATermDescrHeader, ptr %add.ptr.i, i32 0, i32 3
  %57 = ptrtoint ptr %unitid.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %unitid.i, align 1
  %conv310.i = zext i8 %58 to i32
  %call311.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.324, ptr noundef %name16.i, i32 noundef %conv310.i) #10
  br label %do.body315.i

do.body315.i:                                     ; preds = %do.end306.i, %do.end298.i.do.body315.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %59 = load i32, ptr @saa_debug, align 4
  %and316.i = and i32 %59, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and316.i)
  %tobool317.not.i = icmp eq i32 %and316.i, 0
  br i1 %tobool317.not.i, label %do.body315.i.do.end330.i_crit_edge, label %do.end321.i

do.body315.i.do.end330.i_crit_edge:               ; preds = %do.body315.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end330.i

do.end321.i:                                      ; preds = %do.body315.i
  call void @__sanitizer_cov_trace_pc() #9
  %terminaltype325.i = getelementptr inbounds %struct.tmComResDMATermDescrHeader, ptr %add.ptr.i, i32 0, i32 4
  %60 = ptrtoint ptr %terminaltype325.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %terminaltype325.i, align 1
  %conv326.i = zext i16 %61 to i32
  %call327.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.285, ptr noundef %name16.i, i32 noundef %conv326.i) #10
  br label %do.end330.i

do.end330.i:                                      ; preds = %do.end321.i, %do.body315.i.do.end330.i_crit_edge
  %terminaltype331.i = getelementptr inbounds %struct.tmComResDMATermDescrHeader, ptr %add.ptr.i, i32 0, i32 4
  %62 = ptrtoint ptr %terminaltype331.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %terminaltype331.i, align 1
  %conv332.i = zext i16 %63 to i32
  %64 = zext i16 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.615)
  switch i16 %63, label %do.body439.i [
    i16 515, label %do.body334.i
    i16 1539, label %do.body349.i
    i16 1541, label %do.body364.i
    i16 1025, label %do.body379.i
    i16 1026, label %do.body394.i
    i16 1027, label %do.body409.i
    i16 -3839, label %do.body424.i
  ]

do.body334.i:                                     ; preds = %do.end330.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %65 = load i32, ptr @saa_debug, align 4
  %and335.i = and i32 %65, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and335.i)
  %tobool336.not.i = icmp eq i32 %and335.i, 0
  br i1 %tobool336.not.i, label %do.body334.i.do.body456.i_crit_edge, label %do.end340.i

do.body334.i.do.body456.i_crit_edge:              ; preds = %do.body334.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body456.i

do.end340.i:                                      ; preds = %do.body334.i
  call void @__sanitizer_cov_trace_pc() #9
  %call344.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.288, ptr noundef %name16.i) #10
  br label %do.body456.i

do.body349.i:                                     ; preds = %do.end330.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %66 = load i32, ptr @saa_debug, align 4
  %and350.i = and i32 %66, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and350.i)
  %tobool351.not.i = icmp eq i32 %and350.i, 0
  br i1 %tobool351.not.i, label %do.body349.i.do.body456.i_crit_edge, label %do.end355.i

do.body349.i.do.body456.i_crit_edge:              ; preds = %do.body349.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body456.i

do.end355.i:                                      ; preds = %do.body349.i
  call void @__sanitizer_cov_trace_pc() #9
  %call359.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.291, ptr noundef %name16.i) #10
  br label %do.body456.i

do.body364.i:                                     ; preds = %do.end330.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %67 = load i32, ptr @saa_debug, align 4
  %and365.i = and i32 %67, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and365.i)
  %tobool366.not.i = icmp eq i32 %and365.i, 0
  br i1 %tobool366.not.i, label %do.body364.i.do.body456.i_crit_edge, label %do.end370.i

do.body364.i.do.body456.i_crit_edge:              ; preds = %do.body364.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body456.i

do.end370.i:                                      ; preds = %do.body364.i
  call void @__sanitizer_cov_trace_pc() #9
  %call374.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294, ptr noundef %name16.i) #10
  br label %do.body456.i

do.body379.i:                                     ; preds = %do.end330.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %68 = load i32, ptr @saa_debug, align 4
  %and380.i = and i32 %68, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and380.i)
  %tobool381.not.i = icmp eq i32 %and380.i, 0
  br i1 %tobool381.not.i, label %do.body379.i.do.body456.i_crit_edge, label %do.end385.i

do.body379.i.do.body456.i_crit_edge:              ; preds = %do.body379.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body456.i

do.end385.i:                                      ; preds = %do.body379.i
  call void @__sanitizer_cov_trace_pc() #9
  %call389.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.297, ptr noundef %name16.i) #10
  br label %do.body456.i

do.body394.i:                                     ; preds = %do.end330.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %69 = load i32, ptr @saa_debug, align 4
  %and395.i = and i32 %69, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and395.i)
  %tobool396.not.i = icmp eq i32 %and395.i, 0
  br i1 %tobool396.not.i, label %do.body394.i.do.body456.i_crit_edge, label %do.end400.i

do.body394.i.do.body456.i_crit_edge:              ; preds = %do.body394.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body456.i

do.end400.i:                                      ; preds = %do.body394.i
  call void @__sanitizer_cov_trace_pc() #9
  %call404.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.300, ptr noundef %name16.i) #10
  br label %do.body456.i

do.body409.i:                                     ; preds = %do.end330.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %70 = load i32, ptr @saa_debug, align 4
  %and410.i = and i32 %70, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and410.i)
  %tobool411.not.i = icmp eq i32 %and410.i, 0
  br i1 %tobool411.not.i, label %do.body409.i.do.body456.i_crit_edge, label %do.end415.i

do.body409.i.do.body456.i_crit_edge:              ; preds = %do.body409.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body456.i

do.end415.i:                                      ; preds = %do.body409.i
  call void @__sanitizer_cov_trace_pc() #9
  %call419.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.303, ptr noundef %name16.i) #10
  br label %do.body456.i

do.body424.i:                                     ; preds = %do.end330.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %71 = load i32, ptr @saa_debug, align 4
  %and425.i = and i32 %71, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and425.i)
  %tobool426.not.i = icmp eq i32 %and425.i, 0
  br i1 %tobool426.not.i, label %do.body424.i.do.body456.i_crit_edge, label %do.end430.i

do.body424.i.do.body456.i_crit_edge:              ; preds = %do.body424.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body456.i

do.end430.i:                                      ; preds = %do.body424.i
  call void @__sanitizer_cov_trace_pc() #9
  %call434.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.306, ptr noundef %name16.i) #10
  br label %do.body456.i

do.body439.i:                                     ; preds = %do.end330.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %72 = load i32, ptr @saa_debug, align 4
  %and440.i = and i32 %72, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and440.i)
  %tobool441.not.i = icmp eq i32 %and440.i, 0
  br i1 %tobool441.not.i, label %do.body439.i.do.body456.i_crit_edge, label %do.end445.i

do.body439.i.do.body456.i_crit_edge:              ; preds = %do.body439.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body456.i

do.end445.i:                                      ; preds = %do.body439.i
  call void @__sanitizer_cov_trace_pc() #9
  %call451.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.309, ptr noundef %name16.i, i32 noundef %conv332.i) #10
  br label %do.body456.i

do.body456.i:                                     ; preds = %do.end445.i, %do.body439.i.do.body456.i_crit_edge, %do.end430.i, %do.body424.i.do.body456.i_crit_edge, %do.end415.i, %do.body409.i.do.body456.i_crit_edge, %do.end400.i, %do.body394.i.do.body456.i_crit_edge, %do.end385.i, %do.body379.i.do.body456.i_crit_edge, %do.end370.i, %do.body364.i.do.body456.i_crit_edge, %do.end355.i, %do.body349.i.do.body456.i_crit_edge, %do.end340.i, %do.body334.i.do.body456.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %73 = load i32, ptr @saa_debug, align 4
  %and457.i = and i32 %73, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and457.i)
  %tobool458.not.i = icmp eq i32 %and457.i, 0
  br i1 %tobool458.not.i, label %do.body456.i.do.body472.i_crit_edge, label %do.end462.i

do.body456.i.do.body472.i_crit_edge:              ; preds = %do.body456.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body472.i

do.end462.i:                                      ; preds = %do.body456.i
  call void @__sanitizer_cov_trace_pc() #9
  %assocterminal466.i = getelementptr inbounds %struct.tmComResDMATermDescrHeader, ptr %add.ptr.i, i32 0, i32 5
  %74 = ptrtoint ptr %assocterminal466.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %assocterminal466.i, align 1
  %conv467.i = zext i8 %75 to i32
  %call468.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.312, ptr noundef %name16.i, i32 noundef %conv467.i) #10
  br label %do.body472.i

do.body472.i:                                     ; preds = %do.end462.i, %do.body456.i.do.body472.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %76 = load i32, ptr @saa_debug, align 4
  %and473.i = and i32 %76, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and473.i)
  %tobool474.not.i = icmp eq i32 %and473.i, 0
  br i1 %tobool474.not.i, label %do.body472.i.do.body487.i_crit_edge, label %do.end478.i

do.body472.i.do.body487.i_crit_edge:              ; preds = %do.body472.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body487.i

do.end478.i:                                      ; preds = %do.body472.i
  call void @__sanitizer_cov_trace_pc() #9
  %sourceid.i = getelementptr inbounds %struct.tmComResDMATermDescrHeader, ptr %add.ptr.i, i32 0, i32 6
  %77 = ptrtoint ptr %sourceid.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %sourceid.i, align 1
  %conv482.i = zext i8 %78 to i32
  %call483.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.347, ptr noundef %name16.i, i32 noundef %conv482.i) #10
  br label %do.body487.i

do.body487.i:                                     ; preds = %do.end478.i, %do.body472.i.do.body487.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %79 = load i32, ptr @saa_debug, align 4
  %and488.i = and i32 %79, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and488.i)
  %tobool489.not.i = icmp eq i32 %and488.i, 0
  br i1 %tobool489.not.i, label %do.body487.i.do.body503.i_crit_edge, label %do.end493.i

do.body487.i.do.body503.i_crit_edge:              ; preds = %do.body487.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body503.i

do.end493.i:                                      ; preds = %do.body487.i
  call void @__sanitizer_cov_trace_pc() #9
  %iterminal497.i = getelementptr inbounds %struct.tmComResDMATermDescrHeader, ptr %add.ptr.i, i32 0, i32 7
  %80 = ptrtoint ptr %iterminal497.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %iterminal497.i, align 1
  %conv498.i = zext i8 %81 to i32
  %call499.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.315, ptr noundef %name16.i, i32 noundef %conv498.i) #10
  br label %do.body503.i

do.body503.i:                                     ; preds = %do.end493.i, %do.body487.i.do.body503.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %82 = load i32, ptr @saa_debug, align 4
  %and504.i = and i32 %82, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and504.i)
  %tobool505.not.i = icmp eq i32 %and504.i, 0
  br i1 %tobool505.not.i, label %do.body503.i.do.body517.i_crit_edge, label %do.end509.i

do.body503.i.do.body517.i_crit_edge:              ; preds = %do.body503.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body517.i

do.end509.i:                                      ; preds = %do.body503.i
  call void @__sanitizer_cov_trace_pc() #9
  %BARLocation.i = getelementptr inbounds %struct.tmComResDMATermDescrHeader, ptr %add.ptr.i, i32 0, i32 8
  %83 = ptrtoint ptr %BARLocation.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %BARLocation.i, align 1
  %call513.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.352, ptr noundef %name16.i, i32 noundef %84) #10
  br label %do.body517.i

do.body517.i:                                     ; preds = %do.end509.i, %do.body503.i.do.body517.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %85 = load i32, ptr @saa_debug, align 4
  %and518.i = and i32 %85, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and518.i)
  %tobool519.not.i = icmp eq i32 %and518.i, 0
  br i1 %tobool519.not.i, label %do.body517.i.do.body532.i_crit_edge, label %do.end523.i

do.body517.i.do.body532.i_crit_edge:              ; preds = %do.body517.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body532.i

do.end523.i:                                      ; preds = %do.body517.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.tmComResDMATermDescrHeader, ptr %add.ptr.i, i32 0, i32 9
  %86 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %flags.i, align 1
  %conv527.i = zext i8 %87 to i32
  %call528.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.355, ptr noundef %name16.i, i32 noundef %conv527.i) #10
  br label %do.body532.i

do.body532.i:                                     ; preds = %do.end523.i, %do.body517.i.do.body532.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %88 = load i32, ptr @saa_debug, align 4
  %and533.i = and i32 %88, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and533.i)
  %tobool534.not.i = icmp eq i32 %and533.i, 0
  br i1 %tobool534.not.i, label %do.body532.i.do.body547.i_crit_edge, label %do.end538.i

do.body532.i.do.body547.i_crit_edge:              ; preds = %do.body532.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body547.i

do.end538.i:                                      ; preds = %do.body532.i
  call void @__sanitizer_cov_trace_pc() #9
  %interruptid.i = getelementptr inbounds %struct.tmComResDMATermDescrHeader, ptr %add.ptr.i, i32 0, i32 10
  %89 = ptrtoint ptr %interruptid.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %interruptid.i, align 1
  %conv542.i = zext i8 %90 to i32
  %call543.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.358, ptr noundef %name16.i, i32 noundef %conv542.i) #10
  br label %do.body547.i

do.body547.i:                                     ; preds = %do.end538.i, %do.body532.i.do.body547.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %91 = load i32, ptr @saa_debug, align 4
  %and548.i = and i32 %91, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and548.i)
  %tobool549.not.i = icmp eq i32 %and548.i, 0
  br i1 %tobool549.not.i, label %do.body547.i.do.body562.i_crit_edge, label %do.end553.i

do.body547.i.do.body562.i_crit_edge:              ; preds = %do.body547.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body562.i

do.end553.i:                                      ; preds = %do.body547.i
  call void @__sanitizer_cov_trace_pc() #9
  %buffercount.i = getelementptr inbounds %struct.tmComResDMATermDescrHeader, ptr %add.ptr.i, i32 0, i32 11
  %92 = ptrtoint ptr %buffercount.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %buffercount.i, align 1
  %conv557.i = zext i8 %93 to i32
  %call558.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.361, ptr noundef %name16.i, i32 noundef %conv557.i) #10
  br label %do.body562.i

do.body562.i:                                     ; preds = %do.end553.i, %do.body547.i.do.body562.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %94 = load i32, ptr @saa_debug, align 4
  %and563.i = and i32 %94, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and563.i)
  %tobool564.not.i = icmp eq i32 %and563.i, 0
  br i1 %tobool564.not.i, label %do.body562.i.do.body577.i_crit_edge, label %do.end568.i

do.body562.i.do.body577.i_crit_edge:              ; preds = %do.body562.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body577.i

do.end568.i:                                      ; preds = %do.body562.i
  call void @__sanitizer_cov_trace_pc() #9
  %metadatasize.i = getelementptr inbounds %struct.tmComResDMATermDescrHeader, ptr %add.ptr.i, i32 0, i32 12
  %95 = ptrtoint ptr %metadatasize.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %metadatasize.i, align 1
  %conv572.i = zext i8 %96 to i32
  %call573.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.364, ptr noundef %name16.i, i32 noundef %conv572.i) #10
  br label %do.body577.i

do.body577.i:                                     ; preds = %do.end568.i, %do.body562.i.do.body577.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %97 = load i32, ptr @saa_debug, align 4
  %and578.i = and i32 %97, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and578.i)
  %tobool579.not.i = icmp eq i32 %and578.i, 0
  br i1 %tobool579.not.i, label %do.body577.i.do.body593.i_crit_edge, label %do.end583.i

do.body577.i.do.body593.i_crit_edge:              ; preds = %do.body577.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body593.i

do.end583.i:                                      ; preds = %do.body577.i
  call void @__sanitizer_cov_trace_pc() #9
  %controlsize587.i = getelementptr inbounds %struct.tmComResDMATermDescrHeader, ptr %add.ptr.i, i32 0, i32 14
  %98 = ptrtoint ptr %controlsize587.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %controlsize587.i, align 1
  %conv588.i = zext i8 %99 to i32
  %call589.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.318, ptr noundef %name16.i, i32 noundef %conv588.i) #10
  br label %do.body593.i

do.body593.i:                                     ; preds = %do.end583.i, %do.body577.i.do.body593.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %100 = load i32, ptr @saa_debug, align 4
  %and594.i = and i32 %100, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and594.i)
  %tobool595.not.i = icmp eq i32 %and594.i, 0
  br i1 %tobool595.not.i, label %do.body593.i.do.end607.i_crit_edge, label %do.end599.i

do.body593.i.do.end607.i_crit_edge:               ; preds = %do.body593.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end607.i

do.end599.i:                                      ; preds = %do.body593.i
  call void @__sanitizer_cov_trace_pc() #9
  %numformats.i = getelementptr inbounds %struct.tmComResDMATermDescrHeader, ptr %add.ptr.i, i32 0, i32 13
  %101 = ptrtoint ptr %numformats.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %numformats.i, align 1
  %conv603.i = zext i8 %102 to i32
  %call604.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.369, ptr noundef %name16.i, i32 noundef %conv603.i) #10
  br label %do.end607.i

do.end607.i:                                      ; preds = %do.end599.i, %do.body593.i.do.end607.i_crit_edge
  %numformats611.i = getelementptr inbounds %struct.tmComResDMATermDescrHeader, ptr %add.ptr.i, i32 0, i32 13
  %103 = ptrtoint ptr %numformats611.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %numformats611.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp61363.not.i = icmp eq i8 %104, 0
  br i1 %cmp61363.not.i, label %do.end607.i.do.body1732.i_crit_edge, label %for.body615.lr.ph.i

do.end607.i.do.body1732.i_crit_edge:              ; preds = %do.end607.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1732.i

for.body615.lr.ph.i:                              ; preds = %do.end607.i
  %105 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %add.ptr.i, align 1
  %conv609.i = zext i8 %106 to i32
  %add.i = add i32 %idx.068.i, %conv609.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %currpath.067.i)
  %cmp640.i = icmp eq i32 %currpath.067.i, 1
  %vbiport.0.i = select i1 %cmp640.i, ptr %arrayidx644.i, ptr %arrayidx647.i
  %hwcfg649.i = getelementptr inbounds %struct.saa7164_port, ptr %vbiport.0.i, i32 0, i32 4
  %vbi_fmt_ntsc.i = getelementptr inbounds %struct.saa7164_port, ptr %vbiport.0.i, i32 0, i32 63
  %bFormatIndex.i45.i = getelementptr inbounds %struct.saa7164_port, ptr %vbiport.0.i, i32 0, i32 63, i32 3
  %VideoStandard.i.i = getelementptr inbounds %struct.saa7164_port, ptr %vbiport.0.i, i32 0, i32 63, i32 4
  %StartLine.i.i = getelementptr inbounds %struct.saa7164_port, ptr %vbiport.0.i, i32 0, i32 63, i32 5
  %EndLine.i.i = getelementptr inbounds %struct.saa7164_port, ptr %vbiport.0.i, i32 0, i32 63, i32 6
  %FieldRate.i.i = getelementptr inbounds %struct.saa7164_port, ptr %vbiport.0.i, i32 0, i32 63, i32 7
  %bNumLines.i.i = getelementptr inbounds %struct.saa7164_port, ptr %vbiport.0.i, i32 0, i32 63, i32 8
  %BARLocation.i50.i = getelementptr inbounds %struct.saa7164_port, ptr %vbiport.0.i, i32 0, i32 4, i32 8
  %bufcounter.i51.i = getelementptr inbounds %struct.saa7164_port, ptr %vbiport.0.i, i32 0, i32 5
  %pitch.i53.i = getelementptr inbounds %struct.saa7164_port, ptr %vbiport.0.i, i32 0, i32 6
  %bufsize.i54.i = getelementptr inbounds %struct.saa7164_port, ptr %vbiport.0.i, i32 0, i32 7
  %bufoffset.i55.i = getelementptr inbounds %struct.saa7164_port, ptr %vbiport.0.i, i32 0, i32 8
  %buffercount.i56.i = getelementptr inbounds %struct.saa7164_port, ptr %vbiport.0.i, i32 0, i32 4, i32 11
  %bufptr32l.i58.i = getelementptr inbounds %struct.saa7164_port, ptr %vbiport.0.i, i32 0, i32 9
  %bufptr32h.i59.i = getelementptr inbounds %struct.saa7164_port, ptr %vbiport.0.i, i32 0, i32 10
  %bufptr64.i60.i = getelementptr inbounds %struct.saa7164_port, ptr %vbiport.0.i, i32 0, i32 11
  %nr.i61.i = getelementptr inbounds %struct.saa7164_port, ptr %vbiport.0.i, i32 0, i32 2
  %encport.0.i = select i1 %cmp640.i, ptr %arrayidx1663.i, ptr %arrayidx1666.i
  %hwcfg637.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.0.i, i32 0, i32 4
  %BARLocation.i29.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.0.i, i32 0, i32 4, i32 8
  %bufcounter.i30.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.0.i, i32 0, i32 5
  %pitch.i32.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.0.i, i32 0, i32 6
  %bufsize.i33.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.0.i, i32 0, i32 7
  %bufoffset.i34.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.0.i, i32 0, i32 8
  %buffercount.i35.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.0.i, i32 0, i32 4, i32 11
  %bufptr32l.i37.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.0.i, i32 0, i32 9
  %bufptr32h.i38.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.0.i, i32 0, i32 10
  %bufptr64.i39.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.0.i, i32 0, i32 11
  %nr.i40.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.0.i, i32 0, i32 2
  %tsport.0.i = select i1 %cmp640.i, ptr %ports.i, ptr %arrayidx624.i
  %hwcfg.i = getelementptr inbounds %struct.saa7164_port, ptr %tsport.0.i, i32 0, i32 4
  %BARLocation.i.i = getelementptr inbounds %struct.saa7164_port, ptr %tsport.0.i, i32 0, i32 4, i32 8
  %bufcounter.i.i = getelementptr inbounds %struct.saa7164_port, ptr %tsport.0.i, i32 0, i32 5
  %pitch.i.i = getelementptr inbounds %struct.saa7164_port, ptr %tsport.0.i, i32 0, i32 6
  %bufsize.i.i = getelementptr inbounds %struct.saa7164_port, ptr %tsport.0.i, i32 0, i32 7
  %bufoffset.i.i = getelementptr inbounds %struct.saa7164_port, ptr %tsport.0.i, i32 0, i32 8
  %buffercount.i.i = getelementptr inbounds %struct.saa7164_port, ptr %tsport.0.i, i32 0, i32 4, i32 11
  %bufptr32l.i.i = getelementptr inbounds %struct.saa7164_port, ptr %tsport.0.i, i32 0, i32 9
  %bufptr32h.i.i = getelementptr inbounds %struct.saa7164_port, ptr %tsport.0.i, i32 0, i32 10
  %bufptr64.i.i = getelementptr inbounds %struct.saa7164_port, ptr %tsport.0.i, i32 0, i32 11
  %nr.i.i = getelementptr inbounds %struct.saa7164_port, ptr %tsport.0.i, i32 0, i32 2
  br label %for.body615.i

for.body615.i:                                    ; preds = %sw.epilog713.i.for.body615.i_crit_edge, %for.body615.lr.ph.i
  %next_offset.065.i = phi i32 [ %add.i, %for.body615.lr.ph.i ], [ %add716.i, %sw.epilog713.i.for.body615.i_crit_edge ]
  %i.064.i = phi i32 [ 0, %for.body615.lr.ph.i ], [ %inc.i, %sw.epilog713.i.for.body615.i_crit_edge ]
  %add.ptr616.i = getelementptr i8, ptr %call9.i.i, i32 %next_offset.065.i
  %subtype617.i = getelementptr inbounds %struct.tmComResDescrHeader, ptr %add.ptr616.i, i32 0, i32 2
  %107 = ptrtoint ptr %subtype617.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %subtype617.i, align 1
  %conv618.i = zext i8 %108 to i32
  %109 = zext i8 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.616)
  switch i8 %108, label %do.body697.i [
    i8 10, label %sw.bb619.i
    i8 9, label %sw.bb627.i
    i8 14, label %sw.bb639.i
    i8 15, label %do.body652.i
    i8 4, label %do.body667.i
    i8 2, label %do.body682.i
  ]

sw.bb619.i:                                       ; preds = %for.body615.i
  %110 = call ptr @memcpy(ptr %hwcfg.i, ptr %add.ptr.i, i32 19)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %111 = load i32, ptr @saa_debug, align 4
  %and.i.i = and i32 %111, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb619.i.do.body3.i.i_crit_edge, label %do.end.i.i

sw.bb619.i.do.body3.i.i_crit_edge:                ; preds = %sw.bb619.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3.i.i

do.end.i.i:                                       ; preds = %sw.bb619.i
  call void @__sanitizer_cov_trace_pc() #9
  %bFormatIndex.i.i = getelementptr inbounds %struct.tmComResTSFormatDescrHeader, ptr %add.ptr616.i, i32 0, i32 3
  %112 = ptrtoint ptr %bFormatIndex.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bFormatIndex.i.i, align 1
  %conv.i.i = zext i8 %113 to i32
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.549, ptr noundef %name16.i, i32 noundef %conv.i.i) #10
  br label %do.body3.i.i

do.body3.i.i:                                     ; preds = %do.end.i.i, %sw.bb619.i.do.body3.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %114 = load i32, ptr @saa_debug, align 4
  %and4.i.i = and i32 %114, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %do.body3.i.i.do.body16.i.i_crit_edge, label %do.end8.i.i

do.body3.i.i.do.body16.i.i_crit_edge:             ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16.i.i

do.end8.i.i:                                      ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %bDataOffset.i.i = getelementptr inbounds %struct.tmComResTSFormatDescrHeader, ptr %add.ptr616.i, i32 0, i32 4
  %115 = ptrtoint ptr %bDataOffset.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %bDataOffset.i.i, align 1
  %conv12.i.i = zext i8 %116 to i32
  %call13.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.552, ptr noundef %name16.i, i32 noundef %conv12.i.i) #10
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.end8.i.i, %do.body3.i.i.do.body16.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %117 = load i32, ptr @saa_debug, align 4
  %and17.i.i = and i32 %117, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %do.body16.i.i.do.body29.i.i_crit_edge, label %do.end21.i.i

do.body16.i.i.do.body29.i.i_crit_edge:            ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29.i.i

do.end21.i.i:                                     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %bPacketLength.i.i = getelementptr inbounds %struct.tmComResTSFormatDescrHeader, ptr %add.ptr616.i, i32 0, i32 5
  %118 = ptrtoint ptr %bPacketLength.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %bPacketLength.i.i, align 1
  %conv25.i.i = zext i8 %119 to i32
  %call26.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.555, ptr noundef %name16.i, i32 noundef %conv25.i.i) #10
  br label %do.body29.i.i

do.body29.i.i:                                    ; preds = %do.end21.i.i, %do.body16.i.i.do.body29.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %120 = load i32, ptr @saa_debug, align 4
  %and30.i.i = and i32 %120, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i)
  %tobool31.not.i.i = icmp eq i32 %and30.i.i, 0
  br i1 %tobool31.not.i.i, label %do.body29.i.i.do.body42.i.i_crit_edge, label %do.end34.i.i

do.body29.i.i.do.body42.i.i_crit_edge:            ; preds = %do.body29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body42.i.i

do.end34.i.i:                                     ; preds = %do.body29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %bStrideLength.i.i = getelementptr inbounds %struct.tmComResTSFormatDescrHeader, ptr %add.ptr616.i, i32 0, i32 6
  %121 = ptrtoint ptr %bStrideLength.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %bStrideLength.i.i, align 1
  %conv38.i.i = zext i8 %122 to i32
  %call39.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.558, ptr noundef %name16.i, i32 noundef %conv38.i.i) #10
  br label %do.body42.i.i

do.body42.i.i:                                    ; preds = %do.end34.i.i, %do.body29.i.i.do.body42.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %123 = load i32, ptr @saa_debug, align 4
  %and43.i.i = and i32 %123, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i.i)
  %tobool44.not.i.i = icmp eq i32 %and43.i.i, 0
  br i1 %tobool44.not.i.i, label %do.body42.i.i.do.end53.i.i_crit_edge, label %do.end47.i.i

do.body42.i.i.do.end53.i.i_crit_edge:             ; preds = %do.body42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53.i.i

do.end47.i.i:                                     ; preds = %do.body42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call51.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.561, ptr noundef %name16.i) #10
  br label %do.end53.i.i

do.end53.i.i:                                     ; preds = %do.end47.i.i, %do.body42.i.i.do.end53.i.i_crit_edge
  %124 = ptrtoint ptr %BARLocation.i.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %BARLocation.i.i, align 1
  %126 = ptrtoint ptr %bufcounter.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %bufcounter.i.i, align 4
  %add.i.i = add i32 %125, 8
  %127 = ptrtoint ptr %pitch.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %add.i.i, ptr %pitch.i.i, align 8
  %add58.i.i = add i32 %125, 12
  %128 = ptrtoint ptr %bufsize.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %add58.i.i, ptr %bufsize.i.i, align 4
  %add61.i.i = add i32 %125, 16
  %129 = ptrtoint ptr %bufoffset.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %add61.i.i, ptr %bufoffset.i.i, align 8
  %130 = ptrtoint ptr %buffercount.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %buffercount.i.i, align 1
  %conv66.i.i = zext i8 %131 to i32
  %mul.i.i = shl nuw nsw i32 %conv66.i.i, 2
  %add67.i.i = add i32 %mul.i.i, %add61.i.i
  %add68.i.i = add i32 %add67.i.i, 4
  %132 = ptrtoint ptr %bufptr32l.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %add68.i.i, ptr %bufptr32l.i.i, align 4
  %133 = ptrtoint ptr %bufptr32h.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %add67.i.i, ptr %bufptr32h.i.i, align 8
  %conv85.i.i = zext i32 %add67.i.i to i64
  %134 = ptrtoint ptr %bufptr64.i.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %conv85.i.i, ptr %bufptr64.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %135 = load i32, ptr @saa_debug, align 4
  %and87.i.i = and i32 %135, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i.i)
  %tobool88.not.i.i = icmp eq i32 %and87.i.i, 0
  br i1 %tobool88.not.i.i, label %do.end53.i.i.do.body100.i.i_crit_edge, label %do.end91.i.i

do.end53.i.i.do.body100.i.i_crit_edge:            ; preds = %do.end53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body100.i.i

do.end91.i.i:                                     ; preds = %do.end53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call97.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.564, ptr noundef %name16.i, i32 noundef %125) #10
  br label %do.body100.i.i

do.body100.i.i:                                   ; preds = %do.end91.i.i, %do.end53.i.i.do.body100.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %136 = load i32, ptr @saa_debug, align 4
  %and101.i.i = and i32 %136, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.i.i)
  %tobool102.not.i.i = icmp eq i32 %and101.i.i, 0
  br i1 %tobool102.not.i.i, label %do.body100.i.i.sw.epilog713.i_crit_edge, label %do.end105.i.i

do.body100.i.i.sw.epilog713.i_crit_edge:          ; preds = %do.body100.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog713.i

do.end105.i.i:                                    ; preds = %do.body100.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %137 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %nr.i.i, align 8
  %call109.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.567, ptr noundef %name16.i, i32 noundef %138) #10
  br label %sw.epilog713.i

sw.bb627.i:                                       ; preds = %for.body615.i
  %139 = call ptr @memcpy(ptr %hwcfg637.i, ptr %add.ptr.i, i32 19)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %140 = load i32, ptr @saa_debug, align 4
  %and.i1.i = and i32 %140, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i)
  %tobool.not.i2.i = icmp eq i32 %and.i1.i, 0
  br i1 %tobool.not.i2.i, label %sw.bb627.i.do.body3.i10.i_crit_edge, label %do.end.i7.i

sw.bb627.i.do.body3.i10.i_crit_edge:              ; preds = %sw.bb627.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body3.i10.i

do.end.i7.i:                                      ; preds = %sw.bb627.i
  call void @__sanitizer_cov_trace_pc() #9
  %bFormatIndex.i4.i = getelementptr inbounds %struct.tmComResPSFormatDescrHeader, ptr %add.ptr616.i, i32 0, i32 3
  %141 = ptrtoint ptr %bFormatIndex.i4.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %bFormatIndex.i4.i, align 1
  %conv.i5.i = zext i8 %142 to i32
  %call.i6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.549, ptr noundef %name16.i, i32 noundef %conv.i5.i) #10
  br label %do.body3.i10.i

do.body3.i10.i:                                   ; preds = %do.end.i7.i, %sw.bb627.i.do.body3.i10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %143 = load i32, ptr @saa_debug, align 4
  %and4.i8.i = and i32 %143, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i8.i)
  %tobool5.not.i9.i = icmp eq i32 %and4.i8.i, 0
  br i1 %tobool5.not.i9.i, label %do.body3.i10.i.do.body16.i17.i_crit_edge, label %do.end8.i14.i

do.body3.i10.i.do.body16.i17.i_crit_edge:         ; preds = %do.body3.i10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16.i17.i

do.end8.i14.i:                                    ; preds = %do.body3.i10.i
  call void @__sanitizer_cov_trace_pc() #9
  %wPacketLength.i.i = getelementptr inbounds %struct.tmComResPSFormatDescrHeader, ptr %add.ptr616.i, i32 0, i32 4
  %144 = ptrtoint ptr %wPacketLength.i.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 2)
  %145 = load i16, ptr %wPacketLength.i.i, align 1
  %conv12.i12.i = zext i16 %145 to i32
  %call13.i13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.571, ptr noundef %name16.i, i32 noundef %conv12.i12.i) #10
  br label %do.body16.i17.i

do.body16.i17.i:                                  ; preds = %do.end8.i14.i, %do.body3.i10.i.do.body16.i17.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %146 = load i32, ptr @saa_debug, align 4
  %and17.i15.i = and i32 %146, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i15.i)
  %tobool18.not.i16.i = icmp eq i32 %and17.i15.i, 0
  br i1 %tobool18.not.i16.i, label %do.body16.i17.i.do.body29.i24.i_crit_edge, label %do.end21.i21.i

do.body16.i17.i.do.body29.i24.i_crit_edge:        ; preds = %do.body16.i17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29.i24.i

do.end21.i21.i:                                   ; preds = %do.body16.i17.i
  call void @__sanitizer_cov_trace_pc() #9
  %wPackLength.i.i = getelementptr inbounds %struct.tmComResPSFormatDescrHeader, ptr %add.ptr616.i, i32 0, i32 5
  %147 = ptrtoint ptr %wPackLength.i.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 2)
  %148 = load i16, ptr %wPackLength.i.i, align 1
  %conv25.i19.i = zext i16 %148 to i32
  %call26.i20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.574, ptr noundef %name16.i, i32 noundef %conv25.i19.i) #10
  br label %do.body29.i24.i

do.body29.i24.i:                                  ; preds = %do.end21.i21.i, %do.body16.i17.i.do.body29.i24.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %149 = load i32, ptr @saa_debug, align 4
  %and30.i22.i = and i32 %149, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i22.i)
  %tobool31.not.i23.i = icmp eq i32 %and30.i22.i, 0
  br i1 %tobool31.not.i23.i, label %do.body29.i24.i.do.end41.i.i_crit_edge, label %do.end34.i28.i

do.body29.i24.i.do.end41.i.i_crit_edge:           ; preds = %do.body29.i24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41.i.i

do.end34.i28.i:                                   ; preds = %do.body29.i24.i
  call void @__sanitizer_cov_trace_pc() #9
  %bPackDataType.i.i = getelementptr inbounds %struct.tmComResPSFormatDescrHeader, ptr %add.ptr616.i, i32 0, i32 6
  %150 = ptrtoint ptr %bPackDataType.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %bPackDataType.i.i, align 1
  %conv38.i26.i = zext i8 %151 to i32
  %call39.i27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.577, ptr noundef %name16.i, i32 noundef %conv38.i26.i) #10
  br label %do.end41.i.i

do.end41.i.i:                                     ; preds = %do.end34.i28.i, %do.body29.i24.i.do.end41.i.i_crit_edge
  %152 = ptrtoint ptr %BARLocation.i29.i to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load i32, ptr %BARLocation.i29.i, align 1
  %154 = ptrtoint ptr %bufcounter.i30.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %bufcounter.i30.i, align 4
  %add.i31.i = add i32 %153, 8
  %155 = ptrtoint ptr %pitch.i32.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %add.i31.i, ptr %pitch.i32.i, align 8
  %add46.i.i = add i32 %153, 12
  %156 = ptrtoint ptr %bufsize.i33.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %add46.i.i, ptr %bufsize.i33.i, align 4
  %add49.i.i = add i32 %153, 16
  %157 = ptrtoint ptr %bufoffset.i34.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %add49.i.i, ptr %bufoffset.i34.i, align 8
  %158 = ptrtoint ptr %buffercount.i35.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %buffercount.i35.i, align 1
  %conv54.i.i = zext i8 %159 to i32
  %mul.i36.i = shl nuw nsw i32 %conv54.i.i, 2
  %add55.i.i = add i32 %mul.i36.i, %add49.i.i
  %add56.i.i = add i32 %add55.i.i, 4
  %160 = ptrtoint ptr %bufptr32l.i37.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %add56.i.i, ptr %bufptr32l.i37.i, align 4
  %161 = ptrtoint ptr %bufptr32h.i38.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %add55.i.i, ptr %bufptr32h.i38.i, align 8
  %conv73.i.i = zext i32 %add55.i.i to i64
  %162 = ptrtoint ptr %bufptr64.i39.i to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %conv73.i.i, ptr %bufptr64.i39.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %163 = load i32, ptr @saa_debug, align 4
  %and75.i.i = and i32 %163, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i.i)
  %tobool76.not.i.i = icmp eq i32 %and75.i.i, 0
  br i1 %tobool76.not.i.i, label %do.end41.i.i.do.body88.i.i_crit_edge, label %do.end79.i.i

do.end41.i.i.do.body88.i.i_crit_edge:             ; preds = %do.end41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body88.i.i

do.end79.i.i:                                     ; preds = %do.end41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call85.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.564, ptr noundef %name16.i, i32 noundef %153) #10
  br label %do.body88.i.i

do.body88.i.i:                                    ; preds = %do.end79.i.i, %do.end41.i.i.do.body88.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %164 = load i32, ptr @saa_debug, align 4
  %and89.i.i = and i32 %164, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i.i)
  %tobool90.not.i.i = icmp eq i32 %and89.i.i, 0
  br i1 %tobool90.not.i.i, label %do.body88.i.i.sw.epilog713.i_crit_edge, label %do.end93.i.i

do.body88.i.i.sw.epilog713.i_crit_edge:           ; preds = %do.body88.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog713.i

do.end93.i.i:                                     ; preds = %do.body88.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %nr.i40.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %nr.i40.i, align 8
  %call97.i41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.582, ptr noundef %name16.i, i32 noundef %166) #10
  br label %sw.epilog713.i

sw.bb639.i:                                       ; preds = %for.body615.i
  %167 = call ptr @memcpy(ptr %hwcfg649.i, ptr %add.ptr.i, i32 19)
  %168 = call ptr @memcpy(ptr %vbi_fmt_ntsc.i, ptr %add.ptr616.i, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %169 = load i32, ptr @saa_debug, align 4
  %and.i42.i = and i32 %169, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42.i)
  %tobool.not.i43.i = icmp eq i32 %and.i42.i, 0
  br i1 %tobool.not.i43.i, label %sw.bb639.i.do.body4.i.i_crit_edge, label %do.end.i48.i

sw.bb639.i.do.body4.i.i_crit_edge:                ; preds = %sw.bb639.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4.i.i

do.end.i48.i:                                     ; preds = %sw.bb639.i
  call void @__sanitizer_cov_trace_pc() #9
  %170 = ptrtoint ptr %bFormatIndex.i45.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %bFormatIndex.i45.i, align 1
  %conv.i46.i = zext i8 %171 to i32
  %call.i47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.584, ptr noundef %name16.i, i32 noundef %conv.i46.i) #10
  br label %do.body4.i.i

do.body4.i.i:                                     ; preds = %do.end.i48.i, %sw.bb639.i.do.body4.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %172 = load i32, ptr @saa_debug, align 4
  %and5.i.i = and i32 %172, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %do.body4.i.i.do.body18.i.i_crit_edge, label %do.end10.i.i

do.body4.i.i.do.body18.i.i_crit_edge:             ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body18.i.i

do.end10.i.i:                                     ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %173 = ptrtoint ptr %VideoStandard.i.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %174 = load i32, ptr %VideoStandard.i.i, align 1
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.587, ptr noundef %name16.i, i32 noundef %174) #10
  br label %do.body18.i.i

do.body18.i.i:                                    ; preds = %do.end10.i.i, %do.body4.i.i.do.body18.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %175 = load i32, ptr @saa_debug, align 4
  %and19.i.i = and i32 %175, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %do.body18.i.i.do.body33.i.i_crit_edge, label %do.end24.i.i

do.body18.i.i.do.body33.i.i_crit_edge:            ; preds = %do.body18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body33.i.i

do.end24.i.i:                                     ; preds = %do.body18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %176 = ptrtoint ptr %StartLine.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %StartLine.i.i, align 1
  %conv28.i.i = zext i8 %177 to i32
  %call29.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.590, ptr noundef %name16.i, i32 noundef %conv28.i.i) #10
  br label %do.body33.i.i

do.body33.i.i:                                    ; preds = %do.end24.i.i, %do.body18.i.i.do.body33.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %178 = load i32, ptr @saa_debug, align 4
  %and34.i.i = and i32 %178, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i)
  %tobool35.not.i.i = icmp eq i32 %and34.i.i, 0
  br i1 %tobool35.not.i.i, label %do.body33.i.i.do.body48.i.i_crit_edge, label %do.end39.i.i

do.body33.i.i.do.body48.i.i_crit_edge:            ; preds = %do.body33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body48.i.i

do.end39.i.i:                                     ; preds = %do.body33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %179 = ptrtoint ptr %EndLine.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %EndLine.i.i, align 1
  %conv43.i.i = zext i8 %180 to i32
  %call44.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.593, ptr noundef %name16.i, i32 noundef %conv43.i.i) #10
  br label %do.body48.i.i

do.body48.i.i:                                    ; preds = %do.end39.i.i, %do.body33.i.i.do.body48.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %181 = load i32, ptr @saa_debug, align 4
  %and49.i.i = and i32 %181, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i.i)
  %tobool50.not.i.i = icmp eq i32 %and49.i.i, 0
  br i1 %tobool50.not.i.i, label %do.body48.i.i.do.body63.i.i_crit_edge, label %do.end54.i.i

do.body48.i.i.do.body63.i.i_crit_edge:            ; preds = %do.body48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body63.i.i

do.end54.i.i:                                     ; preds = %do.body48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %182 = ptrtoint ptr %FieldRate.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %FieldRate.i.i, align 1
  %conv58.i.i = zext i8 %183 to i32
  %call59.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.596, ptr noundef %name16.i, i32 noundef %conv58.i.i) #10
  br label %do.body63.i.i

do.body63.i.i:                                    ; preds = %do.end54.i.i, %do.body48.i.i.do.body63.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %184 = load i32, ptr @saa_debug, align 4
  %and64.i.i = and i32 %184, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i.i)
  %tobool65.not.i.i = icmp eq i32 %and64.i.i, 0
  br i1 %tobool65.not.i.i, label %do.body63.i.i.do.end77.i.i_crit_edge, label %do.end69.i.i

do.body63.i.i.do.end77.i.i_crit_edge:             ; preds = %do.body63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77.i.i

do.end69.i.i:                                     ; preds = %do.body63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %185 = ptrtoint ptr %bNumLines.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %bNumLines.i.i, align 1
  %conv73.i49.i = zext i8 %186 to i32
  %call74.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.599, ptr noundef %name16.i, i32 noundef %conv73.i49.i) #10
  br label %do.end77.i.i

do.end77.i.i:                                     ; preds = %do.end69.i.i, %do.body63.i.i.do.end77.i.i_crit_edge
  %187 = ptrtoint ptr %BARLocation.i50.i to i32
  call void @__asan_loadN_noabort(i32 %187, i32 4)
  %188 = load i32, ptr %BARLocation.i50.i, align 1
  %189 = ptrtoint ptr %bufcounter.i51.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %bufcounter.i51.i, align 4
  %add.i52.i = add i32 %188, 8
  %190 = ptrtoint ptr %pitch.i53.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %add.i52.i, ptr %pitch.i53.i, align 8
  %add82.i.i = add i32 %188, 12
  %191 = ptrtoint ptr %bufsize.i54.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %add82.i.i, ptr %bufsize.i54.i, align 4
  %add85.i.i = add i32 %188, 16
  %192 = ptrtoint ptr %bufoffset.i55.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %add85.i.i, ptr %bufoffset.i55.i, align 8
  %193 = ptrtoint ptr %buffercount.i56.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %buffercount.i56.i, align 1
  %conv90.i.i = zext i8 %194 to i32
  %mul.i57.i = shl nuw nsw i32 %conv90.i.i, 2
  %add91.i.i = add i32 %mul.i57.i, %add85.i.i
  %add92.i.i = add i32 %add91.i.i, 4
  %195 = ptrtoint ptr %bufptr32l.i58.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %add92.i.i, ptr %bufptr32l.i58.i, align 4
  %196 = ptrtoint ptr %bufptr32h.i59.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %add91.i.i, ptr %bufptr32h.i59.i, align 8
  %conv109.i.i = zext i32 %add91.i.i to i64
  %197 = ptrtoint ptr %bufptr64.i60.i to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %conv109.i.i, ptr %bufptr64.i60.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %198 = load i32, ptr @saa_debug, align 4
  %and111.i.i = and i32 %198, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111.i.i)
  %tobool112.not.i.i = icmp eq i32 %and111.i.i, 0
  br i1 %tobool112.not.i.i, label %do.end77.i.i.do.body126.i.i_crit_edge, label %do.end116.i.i

do.end77.i.i.do.body126.i.i_crit_edge:            ; preds = %do.end77.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body126.i.i

do.end116.i.i:                                    ; preds = %do.end77.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call122.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.564, ptr noundef %name16.i, i32 noundef %188) #10
  br label %do.body126.i.i

do.body126.i.i:                                   ; preds = %do.end116.i.i, %do.end77.i.i.do.body126.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %199 = load i32, ptr @saa_debug, align 4
  %and127.i.i = and i32 %199, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i.i)
  %tobool128.not.i.i = icmp eq i32 %and127.i.i, 0
  br i1 %tobool128.not.i.i, label %do.body126.i.i.sw.epilog713.i_crit_edge, label %do.end132.i.i

do.body126.i.i.sw.epilog713.i_crit_edge:          ; preds = %do.body126.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog713.i

do.end132.i.i:                                    ; preds = %do.body126.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %200 = ptrtoint ptr %nr.i61.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %nr.i61.i, align 8
  %call136.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.604, ptr noundef %name16.i, i32 noundef %201) #10
  br label %sw.epilog713.i

do.body652.i:                                     ; preds = %for.body615.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %202 = load i32, ptr @saa_debug, align 4
  %and653.i = and i32 %202, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and653.i)
  %tobool654.not.i = icmp eq i32 %and653.i, 0
  br i1 %tobool654.not.i, label %do.body652.i.sw.epilog713.i_crit_edge, label %do.end658.i

do.body652.i.sw.epilog713.i_crit_edge:            ; preds = %do.body652.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog713.i

do.end658.i:                                      ; preds = %do.body652.i
  call void @__sanitizer_cov_trace_pc() #9
  %call662.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.372, ptr noundef %name16.i) #10
  br label %sw.epilog713.i

do.body667.i:                                     ; preds = %for.body615.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %203 = load i32, ptr @saa_debug, align 4
  %and668.i = and i32 %203, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and668.i)
  %tobool669.not.i = icmp eq i32 %and668.i, 0
  br i1 %tobool669.not.i, label %do.body667.i.sw.epilog713.i_crit_edge, label %do.end673.i

do.body667.i.sw.epilog713.i_crit_edge:            ; preds = %do.body667.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog713.i

do.end673.i:                                      ; preds = %do.body667.i
  call void @__sanitizer_cov_trace_pc() #9
  %call677.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.375, ptr noundef %name16.i) #10
  br label %sw.epilog713.i

do.body682.i:                                     ; preds = %for.body615.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %204 = load i32, ptr @saa_debug, align 4
  %and683.i = and i32 %204, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and683.i)
  %tobool684.not.i = icmp eq i32 %and683.i, 0
  br i1 %tobool684.not.i, label %do.body682.i.sw.epilog713.i_crit_edge, label %do.end688.i

do.body682.i.sw.epilog713.i_crit_edge:            ; preds = %do.body682.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog713.i

do.end688.i:                                      ; preds = %do.body682.i
  call void @__sanitizer_cov_trace_pc() #9
  %call692.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.378, ptr noundef %name16.i) #10
  br label %sw.epilog713.i

do.body697.i:                                     ; preds = %for.body615.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %205 = load i32, ptr @saa_debug, align 4
  %and698.i = and i32 %205, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and698.i)
  %tobool699.not.i = icmp eq i32 %and698.i, 0
  br i1 %tobool699.not.i, label %do.body697.i.sw.epilog713.i_crit_edge, label %do.end703.i

do.body697.i.sw.epilog713.i_crit_edge:            ; preds = %do.body697.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog713.i

do.end703.i:                                      ; preds = %do.body697.i
  call void @__sanitizer_cov_trace_pc() #9
  %call709.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.309, ptr noundef %name16.i, i32 noundef %conv618.i) #10
  br label %sw.epilog713.i

sw.epilog713.i:                                   ; preds = %do.end703.i, %do.body697.i.sw.epilog713.i_crit_edge, %do.end688.i, %do.body682.i.sw.epilog713.i_crit_edge, %do.end673.i, %do.body667.i.sw.epilog713.i_crit_edge, %do.end658.i, %do.body652.i.sw.epilog713.i_crit_edge, %do.end132.i.i, %do.body126.i.i.sw.epilog713.i_crit_edge, %do.end93.i.i, %do.body88.i.i.sw.epilog713.i_crit_edge, %do.end105.i.i, %do.body100.i.i.sw.epilog713.i_crit_edge
  %206 = ptrtoint ptr %add.ptr616.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %add.ptr616.i, align 1
  %conv715.i = zext i8 %207 to i32
  %add716.i = add i32 %next_offset.065.i, %conv715.i
  %inc.i = add nuw nsw i32 %i.064.i, 1
  %208 = ptrtoint ptr %numformats611.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %numformats611.i, align 1
  %conv612.i = zext i8 %209 to i32
  %cmp613.i = icmp ult i32 %inc.i, %conv612.i
  br i1 %cmp613.i, label %sw.epilog713.i.for.body615.i_crit_edge, label %sw.epilog713.i.do.body1732.i_crit_edge

sw.epilog713.i.do.body1732.i_crit_edge:           ; preds = %sw.epilog713.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1732.i

sw.epilog713.i.for.body615.i_crit_edge:           ; preds = %sw.epilog713.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body615.i

do.body718.i:                                     ; preds = %do.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %210 = load i32, ptr @saa_debug, align 4
  %and719.i = and i32 %210, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and719.i)
  %tobool720.not.i = icmp eq i32 %and719.i, 0
  br i1 %tobool720.not.i, label %do.body718.i.do.end731.i_crit_edge, label %do.end724.i

do.body718.i.do.end731.i_crit_edge:               ; preds = %do.body718.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end731.i

do.end724.i:                                      ; preds = %do.body718.i
  call void @__sanitizer_cov_trace_pc() #9
  %call728.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.383, ptr noundef %name16.i) #10
  br label %do.end731.i

do.end731.i:                                      ; preds = %do.end724.i, %do.body718.i.do.end731.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %211 = load i32, ptr @saa_debug, align 4
  %and734.i = and i32 %211, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and734.i)
  %tobool735.not.i = icmp eq i32 %and734.i, 0
  br i1 %tobool735.not.i, label %do.end731.i.do.body749.i_crit_edge, label %do.end739.i

do.end731.i.do.body749.i_crit_edge:               ; preds = %do.end731.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body749.i

do.end739.i:                                      ; preds = %do.end731.i
  call void @__sanitizer_cov_trace_pc() #9
  %unitid743.i = getelementptr inbounds %struct.tmComResTunerDescrHeader, ptr %add.ptr.i, i32 0, i32 3
  %212 = ptrtoint ptr %unitid743.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %unitid743.i, align 1
  %conv744.i = zext i8 %213 to i32
  %call745.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.324, ptr noundef %name16.i, i32 noundef %conv744.i) #10
  br label %do.body749.i

do.body749.i:                                     ; preds = %do.end739.i, %do.end731.i.do.body749.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %214 = load i32, ptr @saa_debug, align 4
  %and750.i = and i32 %214, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and750.i)
  %tobool751.not.i = icmp eq i32 %and750.i, 0
  br i1 %tobool751.not.i, label %do.body749.i.do.body765.i_crit_edge, label %do.end755.i

do.body749.i.do.body765.i_crit_edge:              ; preds = %do.body749.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body765.i

do.end755.i:                                      ; preds = %do.body749.i
  call void @__sanitizer_cov_trace_pc() #9
  %sourceid759.i = getelementptr inbounds %struct.tmComResTunerDescrHeader, ptr %add.ptr.i, i32 0, i32 4
  %215 = ptrtoint ptr %sourceid759.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %sourceid759.i, align 1
  %conv760.i = zext i8 %216 to i32
  %call761.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.388, ptr noundef %name16.i, i32 noundef %conv760.i) #10
  br label %do.body765.i

do.body765.i:                                     ; preds = %do.end755.i, %do.body749.i.do.body765.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %217 = load i32, ptr @saa_debug, align 4
  %and766.i = and i32 %217, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and766.i)
  %tobool767.not.i = icmp eq i32 %and766.i, 0
  br i1 %tobool767.not.i, label %do.body765.i.do.body780.i_crit_edge, label %do.end771.i

do.body765.i.do.body780.i_crit_edge:              ; preds = %do.body765.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body780.i

do.end771.i:                                      ; preds = %do.body765.i
  call void @__sanitizer_cov_trace_pc() #9
  %iunit.i = getelementptr inbounds %struct.tmComResTunerDescrHeader, ptr %add.ptr.i, i32 0, i32 5
  %218 = ptrtoint ptr %iunit.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %iunit.i, align 1
  %conv775.i = zext i8 %219 to i32
  %call776.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.391, ptr noundef %name16.i, i32 noundef %conv775.i) #10
  br label %do.body780.i

do.body780.i:                                     ; preds = %do.end771.i, %do.body765.i.do.body780.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %220 = load i32, ptr @saa_debug, align 4
  %and781.i = and i32 %220, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and781.i)
  %tobool782.not.i = icmp eq i32 %and781.i, 0
  br i1 %tobool782.not.i, label %do.body780.i.do.body794.i_crit_edge, label %do.end786.i

do.body780.i.do.body794.i_crit_edge:              ; preds = %do.body780.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body794.i

do.end786.i:                                      ; preds = %do.body780.i
  call void @__sanitizer_cov_trace_pc() #9
  %tuningstandards.i = getelementptr inbounds %struct.tmComResTunerDescrHeader, ptr %add.ptr.i, i32 0, i32 6
  %221 = ptrtoint ptr %tuningstandards.i to i32
  call void @__asan_loadN_noabort(i32 %221, i32 4)
  %222 = load i32, ptr %tuningstandards.i, align 1
  %call790.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.394, ptr noundef %name16.i, i32 noundef %222) #10
  br label %do.body794.i

do.body794.i:                                     ; preds = %do.end786.i, %do.body780.i.do.body794.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %223 = load i32, ptr @saa_debug, align 4
  %and795.i = and i32 %223, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and795.i)
  %tobool796.not.i = icmp eq i32 %and795.i, 0
  br i1 %tobool796.not.i, label %do.body794.i.do.body810.i_crit_edge, label %do.end800.i

do.body794.i.do.body810.i_crit_edge:              ; preds = %do.body794.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body810.i

do.end800.i:                                      ; preds = %do.body794.i
  call void @__sanitizer_cov_trace_pc() #9
  %controlsize804.i = getelementptr inbounds %struct.tmComResTunerDescrHeader, ptr %add.ptr.i, i32 0, i32 7
  %224 = ptrtoint ptr %controlsize804.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %controlsize804.i, align 1
  %conv805.i = zext i8 %225 to i32
  %call806.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.397, ptr noundef %name16.i, i32 noundef %conv805.i) #10
  br label %do.body810.i

do.body810.i:                                     ; preds = %do.end800.i, %do.body794.i.do.body810.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %226 = load i32, ptr @saa_debug, align 4
  %and811.i = and i32 %226, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and811.i)
  %tobool812.not.i = icmp eq i32 %and811.i, 0
  br i1 %tobool812.not.i, label %do.body810.i.do.end823.i_crit_edge, label %do.end816.i

do.body810.i.do.end823.i_crit_edge:               ; preds = %do.body810.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end823.i

do.end816.i:                                      ; preds = %do.body810.i
  call void @__sanitizer_cov_trace_pc() #9
  %controls.i = getelementptr inbounds %struct.tmComResTunerDescrHeader, ptr %add.ptr.i, i32 0, i32 8
  %227 = ptrtoint ptr %controls.i to i32
  call void @__asan_loadN_noabort(i32 %227, i32 4)
  %228 = load i32, ptr %controls.i, align 1
  %call820.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.400, ptr noundef %name16.i, i32 noundef %228) #10
  br label %do.end823.i

do.end823.i:                                      ; preds = %do.end816.i, %do.body810.i.do.end823.i_crit_edge
  %unitid824.i = getelementptr inbounds %struct.tmComResTunerDescrHeader, ptr %add.ptr.i, i32 0, i32 3
  %229 = ptrtoint ptr %unitid824.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %unitid824.i, align 1
  %iunit826.i = getelementptr inbounds %struct.tmComResTunerDescrHeader, ptr %add.ptr.i, i32 0, i32 5
  %231 = ptrtoint ptr %iunit826.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %iunit826.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %230, i8 %232)
  %cmp828.i = icmp eq i8 %230, %232
  br i1 %cmp828.i, label %if.then830.i, label %do.end823.i.do.body1732.i_crit_edge

do.end823.i.do.body1732.i_crit_edge:              ; preds = %do.end823.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1732.i

if.then830.i:                                     ; preds = %do.end823.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %currpath.067.i)
  %cmp831.i = icmp eq i32 %currpath.067.i, 1
  %encport.1.i = select i1 %cmp831.i, ptr %arrayidx1663.i, ptr %arrayidx1666.i
  %tunerunit.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.1.i, i32 0, i32 55
  %233 = call ptr @memcpy(ptr %tunerunit.i, ptr %add.ptr.i, i32 15)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %234 = load i32, ptr @saa_debug, align 4
  %and841.i = and i32 %234, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and841.i)
  %tobool842.not.i = icmp eq i32 %and841.i, 0
  br i1 %tobool842.not.i, label %if.then830.i.do.body1732.i_crit_edge, label %do.end846.i

if.then830.i.do.body1732.i_crit_edge:             ; preds = %if.then830.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1732.i

do.end846.i:                                      ; preds = %if.then830.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.1.i, i32 0, i32 2
  %235 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %nr.i, align 8
  %call850.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.403, ptr noundef %name16.i, i32 noundef %236) #10
  br label %do.body1732.i

sw.bb855.i:                                       ; preds = %do.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %237 = load i32, ptr @saa_debug, align 4
  %and858.i = and i32 %237, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and858.i)
  %tobool859.not.i = icmp eq i32 %and858.i, 0
  br i1 %tobool859.not.i, label %sw.bb855.i.do.body871.i_crit_edge, label %do.end863.i

sw.bb855.i.do.body871.i_crit_edge:                ; preds = %sw.bb855.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body871.i

do.end863.i:                                      ; preds = %sw.bb855.i
  call void @__sanitizer_cov_trace_pc() #9
  %call867.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.406, ptr noundef %name16.i) #10
  br label %do.body871.i

do.body871.i:                                     ; preds = %do.end863.i, %sw.bb855.i.do.body871.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %238 = load i32, ptr @saa_debug, align 4
  %and872.i = and i32 %238, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and872.i)
  %tobool873.not.i = icmp eq i32 %and872.i, 0
  br i1 %tobool873.not.i, label %do.body871.i.do.body887.i_crit_edge, label %do.end877.i

do.body871.i.do.body887.i_crit_edge:              ; preds = %do.body871.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body887.i

do.end877.i:                                      ; preds = %do.body871.i
  call void @__sanitizer_cov_trace_pc() #9
  %unitid881.i = getelementptr inbounds %struct.tmComResSelDescrHeader, ptr %add.ptr.i, i32 0, i32 3
  %239 = ptrtoint ptr %unitid881.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %unitid881.i, align 1
  %conv882.i = zext i8 %240 to i32
  %call883.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.324, ptr noundef %name16.i, i32 noundef %conv882.i) #10
  br label %do.body887.i

do.body887.i:                                     ; preds = %do.end877.i, %do.body871.i.do.body887.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %241 = load i32, ptr @saa_debug, align 4
  %and888.i = and i32 %241, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and888.i)
  %tobool889.not.i = icmp eq i32 %and888.i, 0
  br i1 %tobool889.not.i, label %do.body887.i.do.body902.i_crit_edge, label %do.end893.i

do.body887.i.do.body902.i_crit_edge:              ; preds = %do.body887.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body902.i

do.end893.i:                                      ; preds = %do.body887.i
  call void @__sanitizer_cov_trace_pc() #9
  %nrinpins.i = getelementptr inbounds %struct.tmComResSelDescrHeader, ptr %add.ptr.i, i32 0, i32 4
  %242 = ptrtoint ptr %nrinpins.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %nrinpins.i, align 1
  %conv897.i = zext i8 %243 to i32
  %call898.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.411, ptr noundef %name16.i, i32 noundef %conv897.i) #10
  br label %do.body902.i

do.body902.i:                                     ; preds = %do.end893.i, %do.body887.i.do.body902.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %244 = load i32, ptr @saa_debug, align 4
  %and903.i = and i32 %244, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and903.i)
  %tobool904.not.i = icmp eq i32 %and903.i, 0
  br i1 %tobool904.not.i, label %do.body902.i.do.body1732.i_crit_edge, label %do.end908.i

do.body902.i.do.body1732.i_crit_edge:             ; preds = %do.body902.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1732.i

do.end908.i:                                      ; preds = %do.body902.i
  call void @__sanitizer_cov_trace_pc() #9
  %sourceid912.i = getelementptr inbounds %struct.tmComResSelDescrHeader, ptr %add.ptr.i, i32 0, i32 5
  %245 = ptrtoint ptr %sourceid912.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %sourceid912.i, align 1
  %conv913.i = zext i8 %246 to i32
  %call914.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.388, ptr noundef %name16.i, i32 noundef %conv913.i) #10
  br label %do.body1732.i

sw.bb918.i:                                       ; preds = %do.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %247 = load i32, ptr @saa_debug, align 4
  %and921.i = and i32 %247, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and921.i)
  %tobool922.not.i = icmp eq i32 %and921.i, 0
  br i1 %tobool922.not.i, label %sw.bb918.i.do.body934.i_crit_edge, label %do.end926.i

sw.bb918.i.do.body934.i_crit_edge:                ; preds = %sw.bb918.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body934.i

do.end926.i:                                      ; preds = %sw.bb918.i
  call void @__sanitizer_cov_trace_pc() #9
  %call930.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.416, ptr noundef %name16.i) #10
  br label %do.body934.i

do.body934.i:                                     ; preds = %do.end926.i, %sw.bb918.i.do.body934.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %248 = load i32, ptr @saa_debug, align 4
  %and935.i = and i32 %248, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and935.i)
  %tobool936.not.i = icmp eq i32 %and935.i, 0
  br i1 %tobool936.not.i, label %do.body934.i.do.body950.i_crit_edge, label %do.end940.i

do.body934.i.do.body950.i_crit_edge:              ; preds = %do.body934.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body950.i

do.end940.i:                                      ; preds = %do.body934.i
  call void @__sanitizer_cov_trace_pc() #9
  %unitid944.i = getelementptr inbounds %struct.tmComResProcDescrHeader, ptr %add.ptr.i, i32 0, i32 3
  %249 = ptrtoint ptr %unitid944.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %unitid944.i, align 1
  %conv945.i = zext i8 %250 to i32
  %call946.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.324, ptr noundef %name16.i, i32 noundef %conv945.i) #10
  br label %do.body950.i

do.body950.i:                                     ; preds = %do.end940.i, %do.body934.i.do.body950.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %251 = load i32, ptr @saa_debug, align 4
  %and951.i = and i32 %251, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and951.i)
  %tobool952.not.i = icmp eq i32 %and951.i, 0
  br i1 %tobool952.not.i, label %do.body950.i.do.body966.i_crit_edge, label %do.end956.i

do.body950.i.do.body966.i_crit_edge:              ; preds = %do.body950.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body966.i

do.end956.i:                                      ; preds = %do.body950.i
  call void @__sanitizer_cov_trace_pc() #9
  %sourceid960.i = getelementptr inbounds %struct.tmComResProcDescrHeader, ptr %add.ptr.i, i32 0, i32 4
  %252 = ptrtoint ptr %sourceid960.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %sourceid960.i, align 1
  %conv961.i = zext i8 %253 to i32
  %call962.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.388, ptr noundef %name16.i, i32 noundef %conv961.i) #10
  br label %do.body966.i

do.body966.i:                                     ; preds = %do.end956.i, %do.body950.i.do.body966.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %254 = load i32, ptr @saa_debug, align 4
  %and967.i = and i32 %254, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and967.i)
  %tobool968.not.i = icmp eq i32 %and967.i, 0
  br i1 %tobool968.not.i, label %do.body966.i.do.end981.i_crit_edge, label %do.end972.i

do.body966.i.do.end981.i_crit_edge:               ; preds = %do.body966.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end981.i

do.end972.i:                                      ; preds = %do.body966.i
  call void @__sanitizer_cov_trace_pc() #9
  %controlsize976.i = getelementptr inbounds %struct.tmComResProcDescrHeader, ptr %add.ptr.i, i32 0, i32 6
  %255 = ptrtoint ptr %controlsize976.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %controlsize976.i, align 1
  %conv977.i = zext i8 %256 to i32
  %call978.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.397, ptr noundef %name16.i, i32 noundef %conv977.i) #10
  br label %do.end981.i

do.end981.i:                                      ; preds = %do.end972.i, %do.body966.i.do.end981.i_crit_edge
  %controlsize982.i = getelementptr inbounds %struct.tmComResProcDescrHeader, ptr %add.ptr.i, i32 0, i32 6
  %257 = ptrtoint ptr %controlsize982.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %controlsize982.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %258)
  %cmp984.i = icmp eq i8 %258, 4
  br i1 %cmp984.i, label %if.then986.i, label %do.end981.i.do.body1732.i_crit_edge

do.end981.i.do.body1732.i_crit_edge:              ; preds = %do.end981.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1732.i

if.then986.i:                                     ; preds = %do.end981.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %currpath.067.i)
  %cmp987.i = icmp eq i32 %currpath.067.i, 1
  %encport.2.i = select i1 %cmp987.i, ptr %arrayidx1663.i, ptr %arrayidx1666.i
  %vidproc.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.2.i, i32 0, i32 53
  %259 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %259, i32 8)
  %260 = load i64, ptr %add.ptr.i, align 1
  %261 = ptrtoint ptr %vidproc.i to i32
  call void @__asan_store8_noabort(i32 %261)
  store i64 %260, ptr %vidproc.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %262 = load i32, ptr @saa_debug, align 4
  %and997.i = and i32 %262, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and997.i)
  %tobool998.not.i = icmp eq i32 %and997.i, 0
  br i1 %tobool998.not.i, label %if.then986.i.do.body1732.i_crit_edge, label %do.end1002.i

if.then986.i.do.body1732.i_crit_edge:             ; preds = %if.then986.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1732.i

do.end1002.i:                                     ; preds = %if.then986.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr1006.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.2.i, i32 0, i32 2
  %263 = ptrtoint ptr %nr1006.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %nr1006.i, align 8
  %call1007.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.425, ptr noundef %name16.i, i32 noundef %264) #10
  br label %do.body1732.i

sw.bb1012.i:                                      ; preds = %do.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %265 = load i32, ptr @saa_debug, align 4
  %and1015.i = and i32 %265, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1015.i)
  %tobool1016.not.i = icmp eq i32 %and1015.i, 0
  br i1 %tobool1016.not.i, label %sw.bb1012.i.do.body1028.i_crit_edge, label %do.end1020.i

sw.bb1012.i.do.body1028.i_crit_edge:              ; preds = %sw.bb1012.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1028.i

do.end1020.i:                                     ; preds = %sw.bb1012.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1024.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.428, ptr noundef %name16.i) #10
  br label %do.body1028.i

do.body1028.i:                                    ; preds = %do.end1020.i, %sw.bb1012.i.do.body1028.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %266 = load i32, ptr @saa_debug, align 4
  %and1029.i = and i32 %266, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1029.i)
  %tobool1030.not.i = icmp eq i32 %and1029.i, 0
  br i1 %tobool1030.not.i, label %do.body1028.i.do.body1044.i_crit_edge, label %do.end1034.i

do.body1028.i.do.body1044.i_crit_edge:            ; preds = %do.body1028.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1044.i

do.end1034.i:                                     ; preds = %do.body1028.i
  call void @__sanitizer_cov_trace_pc() #9
  %unitid1038.i = getelementptr inbounds %struct.tmComResAFeatureDescrHeader, ptr %add.ptr.i, i32 0, i32 3
  %267 = ptrtoint ptr %unitid1038.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %unitid1038.i, align 1
  %conv1039.i = zext i8 %268 to i32
  %call1040.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.324, ptr noundef %name16.i, i32 noundef %conv1039.i) #10
  br label %do.body1044.i

do.body1044.i:                                    ; preds = %do.end1034.i, %do.body1028.i.do.body1044.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %269 = load i32, ptr @saa_debug, align 4
  %and1045.i = and i32 %269, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1045.i)
  %tobool1046.not.i = icmp eq i32 %and1045.i, 0
  br i1 %tobool1046.not.i, label %do.body1044.i.do.body1060.i_crit_edge, label %do.end1050.i

do.body1044.i.do.body1060.i_crit_edge:            ; preds = %do.body1044.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1060.i

do.end1050.i:                                     ; preds = %do.body1044.i
  call void @__sanitizer_cov_trace_pc() #9
  %sourceid1054.i = getelementptr inbounds %struct.tmComResAFeatureDescrHeader, ptr %add.ptr.i, i32 0, i32 4
  %270 = ptrtoint ptr %sourceid1054.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %sourceid1054.i, align 1
  %conv1055.i = zext i8 %271 to i32
  %call1056.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.388, ptr noundef %name16.i, i32 noundef %conv1055.i) #10
  br label %do.body1060.i

do.body1060.i:                                    ; preds = %do.end1050.i, %do.body1044.i.do.body1060.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %272 = load i32, ptr @saa_debug, align 4
  %and1061.i = and i32 %272, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1061.i)
  %tobool1062.not.i = icmp eq i32 %and1061.i, 0
  br i1 %tobool1062.not.i, label %do.body1060.i.do.end1075.i_crit_edge, label %do.end1066.i

do.body1060.i.do.end1075.i_crit_edge:             ; preds = %do.body1060.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1075.i

do.end1066.i:                                     ; preds = %do.body1060.i
  call void @__sanitizer_cov_trace_pc() #9
  %controlsize1070.i = getelementptr inbounds %struct.tmComResAFeatureDescrHeader, ptr %add.ptr.i, i32 0, i32 5
  %273 = ptrtoint ptr %controlsize1070.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %controlsize1070.i, align 1
  %conv1071.i = zext i8 %274 to i32
  %call1072.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.397, ptr noundef %name16.i, i32 noundef %conv1071.i) #10
  br label %do.end1075.i

do.end1075.i:                                     ; preds = %do.end1066.i, %do.body1060.i.do.end1075.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %currpath.067.i)
  %cmp1076.i = icmp eq i32 %currpath.067.i, 1
  %encport.3.i = select i1 %cmp1076.i, ptr %arrayidx1663.i, ptr %arrayidx1666.i
  %audfeat.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.3.i, i32 0, i32 51
  %275 = call ptr @memcpy(ptr %audfeat.i, ptr %add.ptr.i, i32 6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %276 = load i32, ptr @saa_debug, align 4
  %and1086.i = and i32 %276, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1086.i)
  %tobool1087.not.i = icmp eq i32 %and1086.i, 0
  br i1 %tobool1087.not.i, label %do.end1075.i.do.body1732.i_crit_edge, label %do.end1091.i

do.end1075.i.do.body1732.i_crit_edge:             ; preds = %do.end1075.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1732.i

do.end1091.i:                                     ; preds = %do.end1075.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr1095.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.3.i, i32 0, i32 2
  %277 = ptrtoint ptr %nr1095.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %nr1095.i, align 8
  %call1096.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.425, ptr noundef %name16.i, i32 noundef %278) #10
  br label %do.body1732.i

sw.bb1100.i:                                      ; preds = %do.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %279 = load i32, ptr @saa_debug, align 4
  %and1103.i = and i32 %279, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1103.i)
  %tobool1104.not.i = icmp eq i32 %and1103.i, 0
  br i1 %tobool1104.not.i, label %sw.bb1100.i.do.body1116.i_crit_edge, label %do.end1108.i

sw.bb1100.i.do.body1116.i_crit_edge:              ; preds = %sw.bb1100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1116.i

do.end1108.i:                                     ; preds = %sw.bb1100.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1112.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.439, ptr noundef %name16.i) #10
  br label %do.body1116.i

do.body1116.i:                                    ; preds = %do.end1108.i, %sw.bb1100.i.do.body1116.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %280 = load i32, ptr @saa_debug, align 4
  %and1117.i = and i32 %280, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1117.i)
  %tobool1118.not.i = icmp eq i32 %and1117.i, 0
  br i1 %tobool1118.not.i, label %do.body1116.i.do.body1132.i_crit_edge, label %do.end1122.i

do.body1116.i.do.body1132.i_crit_edge:            ; preds = %do.body1116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1132.i

do.end1122.i:                                     ; preds = %do.body1116.i
  call void @__sanitizer_cov_trace_pc() #9
  %281 = ptrtoint ptr %subtype.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %subtype.i, align 1
  %conv1127.i = zext i8 %282 to i32
  %call1128.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.442, ptr noundef %name16.i, i32 noundef %conv1127.i) #10
  br label %do.body1132.i

do.body1132.i:                                    ; preds = %do.end1122.i, %do.body1116.i.do.body1132.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %283 = load i32, ptr @saa_debug, align 4
  %and1133.i = and i32 %283, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1133.i)
  %tobool1134.not.i = icmp eq i32 %and1133.i, 0
  br i1 %tobool1134.not.i, label %do.body1132.i.do.body1148.i_crit_edge, label %do.end1138.i

do.body1132.i.do.body1148.i_crit_edge:            ; preds = %do.body1132.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1148.i

do.end1138.i:                                     ; preds = %do.body1132.i
  call void @__sanitizer_cov_trace_pc() #9
  %unitid1142.i = getelementptr inbounds %struct.tmComResEncoderDescrHeader, ptr %add.ptr.i, i32 0, i32 3
  %284 = ptrtoint ptr %unitid1142.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %unitid1142.i, align 1
  %conv1143.i = zext i8 %285 to i32
  %call1144.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.324, ptr noundef %name16.i, i32 noundef %conv1143.i) #10
  br label %do.body1148.i

do.body1148.i:                                    ; preds = %do.end1138.i, %do.body1132.i.do.body1148.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %286 = load i32, ptr @saa_debug, align 4
  %and1149.i = and i32 %286, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1149.i)
  %tobool1150.not.i = icmp eq i32 %and1149.i, 0
  br i1 %tobool1150.not.i, label %do.body1148.i.do.body1163.i_crit_edge, label %do.end1154.i

do.body1148.i.do.body1163.i_crit_edge:            ; preds = %do.body1148.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1163.i

do.end1154.i:                                     ; preds = %do.body1148.i
  call void @__sanitizer_cov_trace_pc() #9
  %vsourceid.i = getelementptr inbounds %struct.tmComResEncoderDescrHeader, ptr %add.ptr.i, i32 0, i32 4
  %287 = ptrtoint ptr %vsourceid.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %vsourceid.i, align 1
  %conv1158.i = zext i8 %288 to i32
  %call1159.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.447, ptr noundef %name16.i, i32 noundef %conv1158.i) #10
  br label %do.body1163.i

do.body1163.i:                                    ; preds = %do.end1154.i, %do.body1148.i.do.body1163.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %289 = load i32, ptr @saa_debug, align 4
  %and1164.i = and i32 %289, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1164.i)
  %tobool1165.not.i = icmp eq i32 %and1164.i, 0
  br i1 %tobool1165.not.i, label %do.body1163.i.do.body1178.i_crit_edge, label %do.end1169.i

do.body1163.i.do.body1178.i_crit_edge:            ; preds = %do.body1163.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1178.i

do.end1169.i:                                     ; preds = %do.body1163.i
  call void @__sanitizer_cov_trace_pc() #9
  %asourceid.i = getelementptr inbounds %struct.tmComResEncoderDescrHeader, ptr %add.ptr.i, i32 0, i32 5
  %290 = ptrtoint ptr %asourceid.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %asourceid.i, align 1
  %conv1173.i = zext i8 %291 to i32
  %call1174.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.450, ptr noundef %name16.i, i32 noundef %conv1173.i) #10
  br label %do.body1178.i

do.body1178.i:                                    ; preds = %do.end1169.i, %do.body1163.i.do.body1178.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %292 = load i32, ptr @saa_debug, align 4
  %and1179.i = and i32 %292, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1179.i)
  %tobool1180.not.i = icmp eq i32 %and1179.i, 0
  br i1 %tobool1180.not.i, label %do.body1178.i.do.end1193.i_crit_edge, label %do.end1184.i

do.body1178.i.do.end1193.i_crit_edge:             ; preds = %do.body1178.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1193.i

do.end1184.i:                                     ; preds = %do.body1178.i
  call void @__sanitizer_cov_trace_pc() #9
  %iunit1188.i = getelementptr inbounds %struct.tmComResEncoderDescrHeader, ptr %add.ptr.i, i32 0, i32 6
  %293 = ptrtoint ptr %iunit1188.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %iunit1188.i, align 1
  %conv1189.i = zext i8 %294 to i32
  %call1190.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.391, ptr noundef %name16.i, i32 noundef %conv1189.i) #10
  br label %do.end1193.i

do.end1193.i:                                     ; preds = %do.end1184.i, %do.body1178.i.do.end1193.i_crit_edge
  %iunit1194.i = getelementptr inbounds %struct.tmComResEncoderDescrHeader, ptr %add.ptr.i, i32 0, i32 6
  %295 = ptrtoint ptr %iunit1194.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %iunit1194.i, align 1
  %unitid1196.i = getelementptr inbounds %struct.tmComResEncoderDescrHeader, ptr %add.ptr.i, i32 0, i32 3
  %297 = ptrtoint ptr %unitid1196.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %unitid1196.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %296, i8 %298)
  %cmp1198.i = icmp eq i8 %296, %298
  br i1 %cmp1198.i, label %if.then1200.i, label %do.end1193.i.do.body1732.i_crit_edge

do.end1193.i.do.body1732.i_crit_edge:             ; preds = %do.end1193.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1732.i

if.then1200.i:                                    ; preds = %do.end1193.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %currpath.067.i)
  %cmp1201.i = icmp eq i32 %currpath.067.i, 1
  %encport.4.i = select i1 %cmp1201.i, ptr %arrayidx1663.i, ptr %arrayidx1666.i
  %encunit.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.4.i, i32 0, i32 52
  %299 = call ptr @memcpy(ptr %encunit.i, ptr %add.ptr.i, i32 29)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %300 = load i32, ptr @saa_debug, align 4
  %and1211.i = and i32 %300, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1211.i)
  %tobool1212.not.i = icmp eq i32 %and1211.i, 0
  br i1 %tobool1212.not.i, label %if.then1200.i.do.body1732.i_crit_edge, label %do.end1216.i

if.then1200.i.do.body1732.i_crit_edge:            ; preds = %if.then1200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1732.i

do.end1216.i:                                     ; preds = %if.then1200.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr1220.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.4.i, i32 0, i32 2
  %301 = ptrtoint ptr %nr1220.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %nr1220.i, align 8
  %call1221.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.425, ptr noundef %name16.i, i32 noundef %302) #10
  br label %do.body1732.i

do.body1227.i:                                    ; preds = %do.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %303 = load i32, ptr @saa_debug, align 4
  %and1228.i = and i32 %303, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1228.i)
  %tobool1229.not.i = icmp eq i32 %and1228.i, 0
  br i1 %tobool1229.not.i, label %do.body1227.i.do.end1240.i_crit_edge, label %do.end1233.i

do.body1227.i.do.end1240.i_crit_edge:             ; preds = %do.body1227.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1240.i

do.end1233.i:                                     ; preds = %do.body1227.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1237.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.457, ptr noundef %name16.i) #10
  br label %do.end1240.i

do.end1240.i:                                     ; preds = %do.end1233.i, %do.body1227.i.do.end1240.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %304 = load i32, ptr @saa_debug, align 4
  %and1243.i = and i32 %304, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1243.i)
  %tobool1244.not.i = icmp eq i32 %and1243.i, 0
  br i1 %tobool1244.not.i, label %do.end1240.i.do.body1258.i_crit_edge, label %do.end1248.i

do.end1240.i.do.body1258.i_crit_edge:             ; preds = %do.end1240.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1258.i

do.end1248.i:                                     ; preds = %do.end1240.i
  call void @__sanitizer_cov_trace_pc() #9
  %unitid1252.i = getelementptr inbounds %struct.tmComResExtDevDescrHeader, ptr %add.ptr.i, i32 0, i32 3
  %305 = ptrtoint ptr %unitid1252.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %unitid1252.i, align 1
  %conv1253.i = zext i8 %306 to i32
  %call1254.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.324, ptr noundef %name16.i, i32 noundef %conv1253.i) #10
  br label %do.body1258.i

do.body1258.i:                                    ; preds = %do.end1248.i, %do.end1240.i.do.body1258.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %307 = load i32, ptr @saa_debug, align 4
  %and1259.i = and i32 %307, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1259.i)
  %tobool1260.not.i = icmp eq i32 %and1259.i, 0
  br i1 %tobool1260.not.i, label %do.body1258.i.do.body1273.i_crit_edge, label %do.end1264.i

do.body1258.i.do.body1273.i_crit_edge:            ; preds = %do.body1258.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1273.i

do.end1264.i:                                     ; preds = %do.body1258.i
  call void @__sanitizer_cov_trace_pc() #9
  %deviceid.i = getelementptr inbounds %struct.tmComResExtDevDescrHeader, ptr %add.ptr.i, i32 0, i32 5
  %308 = ptrtoint ptr %deviceid.i to i32
  call void @__asan_loadN_noabort(i32 %308, i32 2)
  %309 = load i16, ptr %deviceid.i, align 1
  %conv1268.i = zext i16 %309 to i32
  %call1269.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.462, ptr noundef %name16.i, i32 noundef %conv1268.i) #10
  br label %do.body1273.i

do.body1273.i:                                    ; preds = %do.end1264.i, %do.body1258.i.do.body1273.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %310 = load i32, ptr @saa_debug, align 4
  %and1274.i = and i32 %310, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1274.i)
  %tobool1275.not.i = icmp eq i32 %and1274.i, 0
  br i1 %tobool1275.not.i, label %do.body1273.i.do.end1286.i_crit_edge, label %do.end1279.i

do.body1273.i.do.end1286.i_crit_edge:             ; preds = %do.body1273.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1286.i

do.end1279.i:                                     ; preds = %do.body1273.i
  call void @__sanitizer_cov_trace_pc() #9
  %devicetype.i = getelementptr inbounds %struct.tmComResExtDevDescrHeader, ptr %add.ptr.i, i32 0, i32 4
  %311 = ptrtoint ptr %devicetype.i to i32
  call void @__asan_loadN_noabort(i32 %311, i32 4)
  %312 = load i32, ptr %devicetype.i, align 1
  %call1283.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.465, ptr noundef %name16.i, i32 noundef %312) #10
  br label %do.end1286.i

do.end1286.i:                                     ; preds = %do.end1279.i, %do.body1273.i.do.end1286.i_crit_edge
  %devicetype1287.i = getelementptr inbounds %struct.tmComResExtDevDescrHeader, ptr %add.ptr.i, i32 0, i32 4
  %313 = ptrtoint ptr %devicetype1287.i to i32
  call void @__asan_loadN_noabort(i32 %313, i32 4)
  %314 = load i32, ptr %devicetype1287.i, align 1
  %and1288.i = and i32 %314, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1288.i)
  %tobool1289.not.i = icmp eq i32 %and1288.i, 0
  br i1 %tobool1289.not.i, label %do.end1286.i.if.end1305.i_crit_edge, label %do.body1291.i

do.end1286.i.if.end1305.i_crit_edge:              ; preds = %do.end1286.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1305.i

do.body1291.i:                                    ; preds = %do.end1286.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %315 = load i32, ptr @saa_debug, align 4
  %and1292.i = and i32 %315, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1292.i)
  %tobool1293.not.i = icmp eq i32 %and1292.i, 0
  br i1 %tobool1293.not.i, label %do.body1291.i.if.end1305.i_crit_edge, label %do.end1297.i

do.body1291.i.if.end1305.i_crit_edge:             ; preds = %do.body1291.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1305.i

do.end1297.i:                                     ; preds = %do.body1291.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1301.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.468, ptr noundef %name16.i) #10
  br label %if.end1305.i

if.end1305.i:                                     ; preds = %do.end1297.i, %do.body1291.i.if.end1305.i_crit_edge, %do.end1286.i.if.end1305.i_crit_edge
  %316 = ptrtoint ptr %devicetype1287.i to i32
  call void @__asan_loadN_noabort(i32 %316, i32 4)
  %317 = load i32, ptr %devicetype1287.i, align 1
  %and1307.i = and i32 %317, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1307.i)
  %tobool1308.not.i = icmp eq i32 %and1307.i, 0
  br i1 %tobool1308.not.i, label %if.end1305.i.if.end1324.i_crit_edge, label %do.body1310.i

if.end1305.i.if.end1324.i_crit_edge:              ; preds = %if.end1305.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1324.i

do.body1310.i:                                    ; preds = %if.end1305.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %318 = load i32, ptr @saa_debug, align 4
  %and1311.i = and i32 %318, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1311.i)
  %tobool1312.not.i = icmp eq i32 %and1311.i, 0
  br i1 %tobool1312.not.i, label %do.body1310.i.if.end1324.i_crit_edge, label %do.end1316.i

do.body1310.i.if.end1324.i_crit_edge:             ; preds = %do.body1310.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1324.i

do.end1316.i:                                     ; preds = %do.body1310.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1320.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.471, ptr noundef %name16.i) #10
  br label %if.end1324.i

if.end1324.i:                                     ; preds = %do.end1316.i, %do.body1310.i.if.end1324.i_crit_edge, %if.end1305.i.if.end1324.i_crit_edge
  %319 = ptrtoint ptr %devicetype1287.i to i32
  call void @__asan_loadN_noabort(i32 %319, i32 4)
  %320 = load i32, ptr %devicetype1287.i, align 1
  %and1326.i = and i32 %320, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1326.i)
  %tobool1327.not.i = icmp eq i32 %and1326.i, 0
  br i1 %tobool1327.not.i, label %if.end1324.i.if.end1343.i_crit_edge, label %do.body1329.i

if.end1324.i.if.end1343.i_crit_edge:              ; preds = %if.end1324.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1343.i

do.body1329.i:                                    ; preds = %if.end1324.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %321 = load i32, ptr @saa_debug, align 4
  %and1330.i = and i32 %321, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1330.i)
  %tobool1331.not.i = icmp eq i32 %and1330.i, 0
  br i1 %tobool1331.not.i, label %do.body1329.i.if.end1343.i_crit_edge, label %do.end1335.i

do.body1329.i.if.end1343.i_crit_edge:             ; preds = %do.body1329.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1343.i

do.end1335.i:                                     ; preds = %do.body1329.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1339.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.474, ptr noundef %name16.i) #10
  br label %if.end1343.i

if.end1343.i:                                     ; preds = %do.end1335.i, %do.body1329.i.if.end1343.i_crit_edge, %if.end1324.i.if.end1343.i_crit_edge
  %322 = ptrtoint ptr %devicetype1287.i to i32
  call void @__asan_loadN_noabort(i32 %322, i32 4)
  %323 = load i32, ptr %devicetype1287.i, align 1
  %and1345.i = and i32 %323, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1345.i)
  %tobool1346.not.i = icmp eq i32 %and1345.i, 0
  br i1 %tobool1346.not.i, label %if.end1343.i.if.end1362.i_crit_edge, label %do.body1348.i

if.end1343.i.if.end1362.i_crit_edge:              ; preds = %if.end1343.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1362.i

do.body1348.i:                                    ; preds = %if.end1343.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %324 = load i32, ptr @saa_debug, align 4
  %and1349.i = and i32 %324, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1349.i)
  %tobool1350.not.i = icmp eq i32 %and1349.i, 0
  br i1 %tobool1350.not.i, label %do.body1348.i.if.end1362.i_crit_edge, label %do.end1354.i

do.body1348.i.if.end1362.i_crit_edge:             ; preds = %do.body1348.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1362.i

do.end1354.i:                                     ; preds = %do.body1348.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1358.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.477, ptr noundef %name16.i) #10
  br label %if.end1362.i

if.end1362.i:                                     ; preds = %do.end1354.i, %do.body1348.i.if.end1362.i_crit_edge, %if.end1343.i.if.end1362.i_crit_edge
  %325 = ptrtoint ptr %devicetype1287.i to i32
  call void @__asan_loadN_noabort(i32 %325, i32 4)
  %326 = load i32, ptr %devicetype1287.i, align 1
  %and1364.i = and i32 %326, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1364.i)
  %tobool1365.not.i = icmp eq i32 %and1364.i, 0
  br i1 %tobool1365.not.i, label %if.end1362.i.if.end1381.i_crit_edge, label %do.body1367.i

if.end1362.i.if.end1381.i_crit_edge:              ; preds = %if.end1362.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1381.i

do.body1367.i:                                    ; preds = %if.end1362.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %327 = load i32, ptr @saa_debug, align 4
  %and1368.i = and i32 %327, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1368.i)
  %tobool1369.not.i = icmp eq i32 %and1368.i, 0
  br i1 %tobool1369.not.i, label %do.body1367.i.if.end1381.i_crit_edge, label %do.end1373.i

do.body1367.i.if.end1381.i_crit_edge:             ; preds = %do.body1367.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1381.i

do.end1373.i:                                     ; preds = %do.body1367.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1377.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.480, ptr noundef %name16.i) #10
  br label %if.end1381.i

if.end1381.i:                                     ; preds = %do.end1373.i, %do.body1367.i.if.end1381.i_crit_edge, %if.end1362.i.if.end1381.i_crit_edge
  %328 = ptrtoint ptr %devicetype1287.i to i32
  call void @__asan_loadN_noabort(i32 %328, i32 4)
  %329 = load i32, ptr %devicetype1287.i, align 1
  %and1383.i = and i32 %329, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1383.i)
  %tobool1384.not.i = icmp eq i32 %and1383.i, 0
  br i1 %tobool1384.not.i, label %if.end1381.i.if.end1400.i_crit_edge, label %do.body1386.i

if.end1381.i.if.end1400.i_crit_edge:              ; preds = %if.end1381.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1400.i

do.body1386.i:                                    ; preds = %if.end1381.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %330 = load i32, ptr @saa_debug, align 4
  %and1387.i = and i32 %330, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1387.i)
  %tobool1388.not.i = icmp eq i32 %and1387.i, 0
  br i1 %tobool1388.not.i, label %do.body1386.i.if.end1400.i_crit_edge, label %do.end1392.i

do.body1386.i.if.end1400.i_crit_edge:             ; preds = %do.body1386.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1400.i

do.end1392.i:                                     ; preds = %do.body1386.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1396.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.483, ptr noundef %name16.i) #10
  br label %if.end1400.i

if.end1400.i:                                     ; preds = %do.end1392.i, %do.body1386.i.if.end1400.i_crit_edge, %if.end1381.i.if.end1400.i_crit_edge
  %331 = ptrtoint ptr %devicetype1287.i to i32
  call void @__asan_loadN_noabort(i32 %331, i32 4)
  %332 = load i32, ptr %devicetype1287.i, align 1
  %and1402.i = and i32 %332, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1402.i)
  %tobool1403.not.i = icmp eq i32 %and1402.i, 0
  br i1 %tobool1403.not.i, label %if.end1400.i.if.end1419.i_crit_edge, label %do.body1405.i

if.end1400.i.if.end1419.i_crit_edge:              ; preds = %if.end1400.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1419.i

do.body1405.i:                                    ; preds = %if.end1400.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %333 = load i32, ptr @saa_debug, align 4
  %and1406.i = and i32 %333, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1406.i)
  %tobool1407.not.i = icmp eq i32 %and1406.i, 0
  br i1 %tobool1407.not.i, label %do.body1405.i.if.end1419.i_crit_edge, label %do.end1411.i

do.body1405.i.if.end1419.i_crit_edge:             ; preds = %do.body1405.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1419.i

do.end1411.i:                                     ; preds = %do.body1405.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1415.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.486, ptr noundef %name16.i) #10
  br label %if.end1419.i

if.end1419.i:                                     ; preds = %do.end1411.i, %do.body1405.i.if.end1419.i_crit_edge, %if.end1400.i.if.end1419.i_crit_edge
  %334 = ptrtoint ptr %devicetype1287.i to i32
  call void @__asan_loadN_noabort(i32 %334, i32 4)
  %335 = load i32, ptr %devicetype1287.i, align 1
  %and1421.i = and i32 %335, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1421.i)
  %tobool1422.not.i = icmp eq i32 %and1421.i, 0
  br i1 %tobool1422.not.i, label %if.end1419.i.if.end1438.i_crit_edge, label %do.body1424.i

if.end1419.i.if.end1438.i_crit_edge:              ; preds = %if.end1419.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1438.i

do.body1424.i:                                    ; preds = %if.end1419.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %336 = load i32, ptr @saa_debug, align 4
  %and1425.i = and i32 %336, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1425.i)
  %tobool1426.not.i = icmp eq i32 %and1425.i, 0
  br i1 %tobool1426.not.i, label %do.body1424.i.if.end1438.i_crit_edge, label %do.end1430.i

do.body1424.i.if.end1438.i_crit_edge:             ; preds = %do.body1424.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1438.i

do.end1430.i:                                     ; preds = %do.body1424.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1434.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.489, ptr noundef %name16.i) #10
  br label %if.end1438.i

if.end1438.i:                                     ; preds = %do.end1430.i, %do.body1424.i.if.end1438.i_crit_edge, %if.end1419.i.if.end1438.i_crit_edge
  %337 = ptrtoint ptr %devicetype1287.i to i32
  call void @__asan_loadN_noabort(i32 %337, i32 4)
  %338 = load i32, ptr %devicetype1287.i, align 1
  %and1440.i = and i32 %338, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1440.i)
  %tobool1441.not.i = icmp eq i32 %and1440.i, 0
  br i1 %tobool1441.not.i, label %if.end1438.i.if.end1457.i_crit_edge, label %do.body1443.i

if.end1438.i.if.end1457.i_crit_edge:              ; preds = %if.end1438.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1457.i

do.body1443.i:                                    ; preds = %if.end1438.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %339 = load i32, ptr @saa_debug, align 4
  %and1444.i = and i32 %339, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1444.i)
  %tobool1445.not.i = icmp eq i32 %and1444.i, 0
  br i1 %tobool1445.not.i, label %do.body1443.i.if.end1457.i_crit_edge, label %do.end1449.i

do.body1443.i.if.end1457.i_crit_edge:             ; preds = %do.body1443.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1457.i

do.end1449.i:                                     ; preds = %do.body1443.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1453.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.492, ptr noundef %name16.i) #10
  br label %if.end1457.i

if.end1457.i:                                     ; preds = %do.end1449.i, %do.body1443.i.if.end1457.i_crit_edge, %if.end1438.i.if.end1457.i_crit_edge
  %340 = ptrtoint ptr %devicetype1287.i to i32
  call void @__asan_loadN_noabort(i32 %340, i32 4)
  %341 = load i32, ptr %devicetype1287.i, align 1
  %and1459.i = and i32 %341, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1459.i)
  %tobool1460.not.i = icmp eq i32 %and1459.i, 0
  br i1 %tobool1460.not.i, label %if.end1457.i.if.end1476.i_crit_edge, label %do.body1462.i

if.end1457.i.if.end1476.i_crit_edge:              ; preds = %if.end1457.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1476.i

do.body1462.i:                                    ; preds = %if.end1457.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %342 = load i32, ptr @saa_debug, align 4
  %and1463.i = and i32 %342, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1463.i)
  %tobool1464.not.i = icmp eq i32 %and1463.i, 0
  br i1 %tobool1464.not.i, label %do.body1462.i.if.end1476.i_crit_edge, label %do.end1468.i

do.body1462.i.if.end1476.i_crit_edge:             ; preds = %do.body1462.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1476.i

do.end1468.i:                                     ; preds = %do.body1462.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1472.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.495, ptr noundef %name16.i) #10
  br label %if.end1476.i

if.end1476.i:                                     ; preds = %do.end1468.i, %do.body1462.i.if.end1476.i_crit_edge, %if.end1457.i.if.end1476.i_crit_edge
  %343 = ptrtoint ptr %devicetype1287.i to i32
  call void @__asan_loadN_noabort(i32 %343, i32 4)
  %344 = load i32, ptr %devicetype1287.i, align 1
  %and1478.i = and i32 %344, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1478.i)
  %tobool1479.not.i = icmp eq i32 %and1478.i, 0
  br i1 %tobool1479.not.i, label %if.end1476.i.if.end1495.i_crit_edge, label %do.body1481.i

if.end1476.i.if.end1495.i_crit_edge:              ; preds = %if.end1476.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1495.i

do.body1481.i:                                    ; preds = %if.end1476.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %345 = load i32, ptr @saa_debug, align 4
  %and1482.i = and i32 %345, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1482.i)
  %tobool1483.not.i = icmp eq i32 %and1482.i, 0
  br i1 %tobool1483.not.i, label %do.body1481.i.if.end1495.i_crit_edge, label %do.end1487.i

do.body1481.i.if.end1495.i_crit_edge:             ; preds = %do.body1481.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1495.i

do.end1487.i:                                     ; preds = %do.body1481.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1491.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.498, ptr noundef %name16.i) #10
  br label %if.end1495.i

if.end1495.i:                                     ; preds = %do.end1487.i, %do.body1481.i.if.end1495.i_crit_edge, %if.end1476.i.if.end1495.i_crit_edge
  %346 = ptrtoint ptr %devicetype1287.i to i32
  call void @__asan_loadN_noabort(i32 %346, i32 4)
  %347 = load i32, ptr %devicetype1287.i, align 1
  %and1497.i = and i32 %347, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1497.i)
  %tobool1498.not.i = icmp eq i32 %and1497.i, 0
  br i1 %tobool1498.not.i, label %if.end1495.i.if.end1514.i_crit_edge, label %do.body1500.i

if.end1495.i.if.end1514.i_crit_edge:              ; preds = %if.end1495.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1514.i

do.body1500.i:                                    ; preds = %if.end1495.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %348 = load i32, ptr @saa_debug, align 4
  %and1501.i = and i32 %348, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1501.i)
  %tobool1502.not.i = icmp eq i32 %and1501.i, 0
  br i1 %tobool1502.not.i, label %do.body1500.i.if.end1514.i_crit_edge, label %do.end1506.i

do.body1500.i.if.end1514.i_crit_edge:             ; preds = %do.body1500.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1514.i

do.end1506.i:                                     ; preds = %do.body1500.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1510.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.501, ptr noundef %name16.i) #10
  br label %if.end1514.i

if.end1514.i:                                     ; preds = %do.end1506.i, %do.body1500.i.if.end1514.i_crit_edge, %if.end1495.i.if.end1514.i_crit_edge
  %349 = ptrtoint ptr %devicetype1287.i to i32
  call void @__asan_loadN_noabort(i32 %349, i32 4)
  %350 = load i32, ptr %devicetype1287.i, align 1
  %and1516.i = and i32 %350, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1516.i)
  %tobool1517.not.i = icmp eq i32 %and1516.i, 0
  br i1 %tobool1517.not.i, label %if.end1514.i.if.end1533.i_crit_edge, label %do.body1519.i

if.end1514.i.if.end1533.i_crit_edge:              ; preds = %if.end1514.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1533.i

do.body1519.i:                                    ; preds = %if.end1514.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %351 = load i32, ptr @saa_debug, align 4
  %and1520.i = and i32 %351, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1520.i)
  %tobool1521.not.i = icmp eq i32 %and1520.i, 0
  br i1 %tobool1521.not.i, label %do.body1519.i.if.end1533.i_crit_edge, label %do.end1525.i

do.body1519.i.if.end1533.i_crit_edge:             ; preds = %do.body1519.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1533.i

do.end1525.i:                                     ; preds = %do.body1519.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1529.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.504, ptr noundef %name16.i) #10
  br label %if.end1533.i

if.end1533.i:                                     ; preds = %do.end1525.i, %do.body1519.i.if.end1533.i_crit_edge, %if.end1514.i.if.end1533.i_crit_edge
  %352 = ptrtoint ptr %devicetype1287.i to i32
  call void @__asan_loadN_noabort(i32 %352, i32 4)
  %353 = load i32, ptr %devicetype1287.i, align 1
  %and1535.i = and i32 %353, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1535.i)
  %tobool1536.not.i = icmp eq i32 %and1535.i, 0
  br i1 %tobool1536.not.i, label %if.end1533.i.if.end1552.i_crit_edge, label %do.body1538.i

if.end1533.i.if.end1552.i_crit_edge:              ; preds = %if.end1533.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1552.i

do.body1538.i:                                    ; preds = %if.end1533.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %354 = load i32, ptr @saa_debug, align 4
  %and1539.i = and i32 %354, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1539.i)
  %tobool1540.not.i = icmp eq i32 %and1539.i, 0
  br i1 %tobool1540.not.i, label %do.body1538.i.if.end1552.i_crit_edge, label %do.end1544.i

do.body1538.i.if.end1552.i_crit_edge:             ; preds = %do.body1538.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1552.i

do.end1544.i:                                     ; preds = %do.body1538.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1548.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.507, ptr noundef %name16.i) #10
  br label %if.end1552.i

if.end1552.i:                                     ; preds = %do.end1544.i, %do.body1538.i.if.end1552.i_crit_edge, %if.end1533.i.if.end1552.i_crit_edge
  %355 = ptrtoint ptr %devicetype1287.i to i32
  call void @__asan_loadN_noabort(i32 %355, i32 4)
  %356 = load i32, ptr %devicetype1287.i, align 1
  %and1554.i = and i32 %356, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1554.i)
  %tobool1555.not.i = icmp eq i32 %and1554.i, 0
  br i1 %tobool1555.not.i, label %if.end1552.i.if.end1571.i_crit_edge, label %do.body1557.i

if.end1552.i.if.end1571.i_crit_edge:              ; preds = %if.end1552.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1571.i

do.body1557.i:                                    ; preds = %if.end1552.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %357 = load i32, ptr @saa_debug, align 4
  %and1558.i = and i32 %357, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1558.i)
  %tobool1559.not.i = icmp eq i32 %and1558.i, 0
  br i1 %tobool1559.not.i, label %do.body1557.i.if.end1571.i_crit_edge, label %do.end1563.i

do.body1557.i.if.end1571.i_crit_edge:             ; preds = %do.body1557.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1571.i

do.end1563.i:                                     ; preds = %do.body1557.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1567.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.510, ptr noundef %name16.i) #10
  br label %if.end1571.i

if.end1571.i:                                     ; preds = %do.end1563.i, %do.body1557.i.if.end1571.i_crit_edge, %if.end1552.i.if.end1571.i_crit_edge
  %358 = ptrtoint ptr %devicetype1287.i to i32
  call void @__asan_loadN_noabort(i32 %358, i32 4)
  %359 = load i32, ptr %devicetype1287.i, align 1
  %and1573.i = and i32 %359, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1573.i)
  %tobool1574.not.i = icmp eq i32 %and1573.i, 0
  br i1 %tobool1574.not.i, label %if.end1571.i.if.end1590.i_crit_edge, label %do.body1576.i

if.end1571.i.if.end1590.i_crit_edge:              ; preds = %if.end1571.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1590.i

do.body1576.i:                                    ; preds = %if.end1571.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %360 = load i32, ptr @saa_debug, align 4
  %and1577.i = and i32 %360, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1577.i)
  %tobool1578.not.i = icmp eq i32 %and1577.i, 0
  br i1 %tobool1578.not.i, label %do.body1576.i.if.end1590thread-pre-split.i_crit_edge, label %do.end1582.i

do.body1576.i.if.end1590thread-pre-split.i_crit_edge: ; preds = %do.body1576.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end1590thread-pre-split.i

do.end1582.i:                                     ; preds = %do.body1576.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1586.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.513, ptr noundef %name16.i) #10
  br label %if.end1590thread-pre-split.i

if.end1590thread-pre-split.i:                     ; preds = %do.end1582.i, %do.body1576.i.if.end1590thread-pre-split.i_crit_edge
  %361 = ptrtoint ptr %devicetype1287.i to i32
  call void @__asan_loadN_noabort(i32 %361, i32 4)
  %.pr.i = load i32, ptr %devicetype1287.i, align 1
  br label %if.end1590.i

if.end1590.i:                                     ; preds = %if.end1590thread-pre-split.i, %if.end1571.i.if.end1590.i_crit_edge
  %362 = phi i32 [ %.pr.i, %if.end1590thread-pre-split.i ], [ %359, %if.end1571.i.if.end1590.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %362)
  %tobool1593.not.i = icmp sgt i32 %362, -1
  br i1 %tobool1593.not.i, label %if.end1590.i.do.body1610.i_crit_edge, label %do.body1595.i

if.end1590.i.do.body1610.i_crit_edge:             ; preds = %if.end1590.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1610.i

do.body1595.i:                                    ; preds = %if.end1590.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %363 = load i32, ptr @saa_debug, align 4
  %and1596.i = and i32 %363, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1596.i)
  %tobool1597.not.i = icmp eq i32 %and1596.i, 0
  br i1 %tobool1597.not.i, label %do.body1595.i.do.body1610.i_crit_edge, label %do.end1601.i

do.body1595.i.do.body1610.i_crit_edge:            ; preds = %do.body1595.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1610.i

do.end1601.i:                                     ; preds = %do.body1595.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1605.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.516, ptr noundef %name16.i) #10
  br label %do.body1610.i

do.body1610.i:                                    ; preds = %do.end1601.i, %do.body1595.i.do.body1610.i_crit_edge, %if.end1590.i.do.body1610.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %364 = load i32, ptr @saa_debug, align 4
  %and1611.i = and i32 %364, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1611.i)
  %tobool1612.not.i = icmp eq i32 %and1611.i, 0
  br i1 %tobool1612.not.i, label %do.body1610.i.do.body1624.i_crit_edge, label %do.end1616.i

do.body1610.i.do.body1624.i_crit_edge:            ; preds = %do.body1610.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1624.i

do.end1616.i:                                     ; preds = %do.body1610.i
  call void @__sanitizer_cov_trace_pc() #9
  %numgpiopins.i = getelementptr inbounds %struct.tmComResExtDevDescrHeader, ptr %add.ptr.i, i32 0, i32 6
  %365 = ptrtoint ptr %numgpiopins.i to i32
  call void @__asan_loadN_noabort(i32 %365, i32 4)
  %366 = load i32, ptr %numgpiopins.i, align 1
  %call1620.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.519, ptr noundef %name16.i, i32 noundef %366) #10
  br label %do.body1624.i

do.body1624.i:                                    ; preds = %do.end1616.i, %do.body1610.i.do.body1624.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %367 = load i32, ptr @saa_debug, align 4
  %and1625.i = and i32 %367, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1625.i)
  %tobool1626.not.i = icmp eq i32 %and1625.i, 0
  br i1 %tobool1626.not.i, label %do.body1624.i.do.body1639.i_crit_edge, label %do.end1630.i

do.body1624.i.do.body1639.i_crit_edge:            ; preds = %do.body1624.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1639.i

do.end1630.i:                                     ; preds = %do.body1624.i
  call void @__sanitizer_cov_trace_pc() #9
  %numgpiogroups.i = getelementptr inbounds %struct.tmComResExtDevDescrHeader, ptr %add.ptr.i, i32 0, i32 7
  %368 = ptrtoint ptr %numgpiogroups.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %numgpiogroups.i, align 1
  %conv1634.i = zext i8 %369 to i32
  %call1635.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.522, ptr noundef %name16.i, i32 noundef %conv1634.i) #10
  br label %do.body1639.i

do.body1639.i:                                    ; preds = %do.end1630.i, %do.body1624.i.do.body1639.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %370 = load i32, ptr @saa_debug, align 4
  %and1640.i = and i32 %370, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1640.i)
  %tobool1641.not.i = icmp eq i32 %and1640.i, 0
  br i1 %tobool1641.not.i, label %do.body1639.i.do.end1654.i_crit_edge, label %do.end1645.i

do.body1639.i.do.end1654.i_crit_edge:             ; preds = %do.body1639.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1654.i

do.end1645.i:                                     ; preds = %do.body1639.i
  call void @__sanitizer_cov_trace_pc() #9
  %controlsize1649.i = getelementptr inbounds %struct.tmComResExtDevDescrHeader, ptr %add.ptr.i, i32 0, i32 8
  %371 = ptrtoint ptr %controlsize1649.i to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %controlsize1649.i, align 1
  %conv1650.i = zext i8 %372 to i32
  %call1651.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.397, ptr noundef %name16.i, i32 noundef %conv1650.i) #10
  br label %do.end1654.i

do.end1654.i:                                     ; preds = %do.end1645.i, %do.body1639.i.do.end1654.i_crit_edge
  %373 = ptrtoint ptr %devicetype1287.i to i32
  call void @__asan_loadN_noabort(i32 %373, i32 4)
  %374 = load i32, ptr %devicetype1287.i, align 1
  %and1656.i = and i32 %374, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1656.i)
  %tobool1657.not.i = icmp eq i32 %and1656.i, 0
  br i1 %tobool1657.not.i, label %do.end1654.i.do.body1732.i_crit_edge, label %if.then1658.i

do.end1654.i.do.body1732.i_crit_edge:             ; preds = %do.end1654.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1732.i

if.then1658.i:                                    ; preds = %do.end1654.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %currpath.067.i)
  %cmp1659.i = icmp eq i32 %currpath.067.i, 1
  %encport.5.i = select i1 %cmp1659.i, ptr %arrayidx1663.i, ptr %arrayidx1666.i
  %ifunit.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.5.i, i32 0, i32 54
  %375 = call ptr @memcpy(ptr %ifunit.i, ptr %add.ptr.i, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %376 = load i32, ptr @saa_debug, align 4
  %and1669.i = and i32 %376, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1669.i)
  %tobool1670.not.i = icmp eq i32 %and1669.i, 0
  br i1 %tobool1670.not.i, label %if.then1658.i.do.body1732.i_crit_edge, label %do.end1674.i

if.then1658.i.do.body1732.i_crit_edge:            ; preds = %if.then1658.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1732.i

do.end1674.i:                                     ; preds = %if.then1658.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr1678.i = getelementptr inbounds %struct.saa7164_port, ptr %encport.5.i, i32 0, i32 2
  %377 = ptrtoint ptr %nr1678.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %nr1678.i, align 8
  %call1679.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.425, ptr noundef %name16.i, i32 noundef %378) #10
  br label %do.body1732.i

do.body1685.i:                                    ; preds = %do.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %379 = load i32, ptr @saa_debug, align 4
  %and1686.i = and i32 %379, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1686.i)
  %tobool1687.not.i = icmp eq i32 %and1686.i, 0
  br i1 %tobool1687.not.i, label %do.body1685.i.do.body1732.i_crit_edge, label %do.end1691.i

do.body1685.i.do.body1732.i_crit_edge:            ; preds = %do.body1685.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1732.i

do.end1691.i:                                     ; preds = %do.body1685.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1695.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.529, ptr noundef %name16.i) #10
  br label %do.body1732.i

do.body1700.i:                                    ; preds = %do.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %380 = load i32, ptr @saa_debug, align 4
  %and1701.i = and i32 %380, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1701.i)
  %tobool1702.not.i = icmp eq i32 %and1701.i, 0
  br i1 %tobool1702.not.i, label %do.body1700.i.do.body1732.i_crit_edge, label %do.end1706.i

do.body1700.i.do.body1732.i_crit_edge:            ; preds = %do.body1700.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1732.i

do.end1706.i:                                     ; preds = %do.body1700.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1710.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.532, ptr noundef %name16.i) #10
  br label %do.body1732.i

do.body1715.i:                                    ; preds = %do.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %381 = load i32, ptr @saa_debug, align 4
  %and1716.i = and i32 %381, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1716.i)
  %tobool1717.not.i = icmp eq i32 %and1716.i, 0
  br i1 %tobool1717.not.i, label %do.body1715.i.do.body1732.i_crit_edge, label %do.end1721.i

do.body1715.i.do.body1732.i_crit_edge:            ; preds = %do.body1715.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1732.i

do.end1721.i:                                     ; preds = %do.body1715.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1727.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.535, ptr noundef %name16.i, i32 noundef %conv22.i) #10
  br label %do.body1732.i

do.body1732.i:                                    ; preds = %do.end1721.i, %do.body1715.i.do.body1732.i_crit_edge, %do.end1706.i, %do.body1700.i.do.body1732.i_crit_edge, %do.end1691.i, %do.body1685.i.do.body1732.i_crit_edge, %do.end1674.i, %if.then1658.i.do.body1732.i_crit_edge, %do.end1654.i.do.body1732.i_crit_edge, %do.end1216.i, %if.then1200.i.do.body1732.i_crit_edge, %do.end1193.i.do.body1732.i_crit_edge, %do.end1091.i, %do.end1075.i.do.body1732.i_crit_edge, %do.end1002.i, %if.then986.i.do.body1732.i_crit_edge, %do.end981.i.do.body1732.i_crit_edge, %do.end908.i, %do.body902.i.do.body1732.i_crit_edge, %do.end846.i, %if.then830.i.do.body1732.i_crit_edge, %do.end823.i.do.body1732.i_crit_edge, %sw.epilog713.i.do.body1732.i_crit_edge, %do.end607.i.do.body1732.i_crit_edge, %do.end275.i, %do.body269.i.do.body1732.i_crit_edge, %do.end67.i, %do.end29.i, %do.body23.i.do.body1732.i_crit_edge
  %currpath.1.i = phi i32 [ %currpath.067.i, %do.end1721.i ], [ %currpath.067.i, %do.body1715.i.do.body1732.i_crit_edge ], [ %currpath.067.i, %do.end1706.i ], [ %currpath.067.i, %do.body1700.i.do.body1732.i_crit_edge ], [ %currpath.067.i, %do.end1691.i ], [ %currpath.067.i, %do.body1685.i.do.body1732.i_crit_edge ], [ %currpath.067.i, %do.end1674.i ], [ %currpath.067.i, %if.then1658.i.do.body1732.i_crit_edge ], [ %currpath.067.i, %do.end1654.i.do.body1732.i_crit_edge ], [ %currpath.067.i, %do.end1216.i ], [ %currpath.067.i, %if.then1200.i.do.body1732.i_crit_edge ], [ %currpath.067.i, %do.end1193.i.do.body1732.i_crit_edge ], [ %currpath.067.i, %do.end1091.i ], [ %currpath.067.i, %do.end1075.i.do.body1732.i_crit_edge ], [ %currpath.067.i, %do.end1002.i ], [ %currpath.067.i, %if.then986.i.do.body1732.i_crit_edge ], [ %currpath.067.i, %do.end981.i.do.body1732.i_crit_edge ], [ %currpath.067.i, %do.end908.i ], [ %currpath.067.i, %do.body902.i.do.body1732.i_crit_edge ], [ %currpath.067.i, %do.end846.i ], [ %currpath.067.i, %if.then830.i.do.body1732.i_crit_edge ], [ %currpath.067.i, %do.end823.i.do.body1732.i_crit_edge ], [ %currpath.067.i, %do.end275.i ], [ %currpath.067.i, %do.body269.i.do.body1732.i_crit_edge ], [ %conv69.i, %do.end67.i ], [ %currpath.067.i, %do.end29.i ], [ %currpath.067.i, %do.body23.i.do.body1732.i_crit_edge ], [ %currpath.067.i, %do.end607.i.do.body1732.i_crit_edge ], [ %currpath.067.i, %sw.epilog713.i.do.body1732.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %382 = load i32, ptr @saa_debug, align 4
  %and1733.i = and i32 %382, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1733.i)
  %tobool1734.not.i = icmp eq i32 %and1733.i, 0
  br i1 %tobool1734.not.i, label %do.body1732.i.do.body1748.i_crit_edge, label %do.end1738.i

do.body1732.i.do.body1748.i_crit_edge:            ; preds = %do.body1732.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1748.i

do.end1738.i:                                     ; preds = %do.body1732.i
  call void @__sanitizer_cov_trace_pc() #9
  %383 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %add.ptr.i, align 1
  %conv1743.i = zext i8 %384 to i32
  %call1744.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.538, ptr noundef %name16.i, i32 noundef %conv1743.i) #10
  br label %do.body1748.i

do.body1748.i:                                    ; preds = %do.end1738.i, %do.body1732.i.do.body1748.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %385 = load i32, ptr @saa_debug, align 4
  %and1749.i = and i32 %385, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1749.i)
  %tobool1750.not.i = icmp eq i32 %and1749.i, 0
  br i1 %tobool1750.not.i, label %do.body1748.i.do.body1764.i_crit_edge, label %do.end1754.i

do.body1748.i.do.body1764.i_crit_edge:            ; preds = %do.body1748.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1764.i

do.end1754.i:                                     ; preds = %do.body1748.i
  call void @__sanitizer_cov_trace_pc() #9
  %386 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %type.i, align 1
  %conv1759.i = zext i8 %387 to i32
  %call1760.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.541, ptr noundef %name16.i, i32 noundef %conv1759.i) #10
  br label %do.body1764.i

do.body1764.i:                                    ; preds = %do.end1754.i, %do.body1748.i.do.body1764.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %388 = load i32, ptr @saa_debug, align 4
  %and1765.i = and i32 %388, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1765.i)
  %tobool1766.not.i = icmp eq i32 %and1765.i, 0
  br i1 %tobool1766.not.i, label %do.body1764.i.do.body1780.i_crit_edge, label %do.end1770.i

do.body1764.i.do.body1780.i_crit_edge:            ; preds = %do.body1764.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1780.i

do.end1770.i:                                     ; preds = %do.body1764.i
  call void @__sanitizer_cov_trace_pc() #9
  %389 = ptrtoint ptr %subtype.i to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %subtype.i, align 1
  %conv1775.i = zext i8 %390 to i32
  %call1776.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.544, ptr noundef %name16.i, i32 noundef %conv1775.i) #10
  br label %do.body1780.i

do.body1780.i:                                    ; preds = %do.end1770.i, %do.body1764.i.do.body1780.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %391 = load i32, ptr @saa_debug, align 4
  %and1781.i = and i32 %391, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1781.i)
  %tobool1782.not.i = icmp eq i32 %and1781.i, 0
  br i1 %tobool1782.not.i, label %do.body1780.i.do.end1795.i_crit_edge, label %do.end1786.i

do.body1780.i.do.end1795.i_crit_edge:             ; preds = %do.body1780.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1795.i

do.end1786.i:                                     ; preds = %do.body1780.i
  call void @__sanitizer_cov_trace_pc() #9
  %unitid1790.i = getelementptr inbounds %struct.tmComResDescrHeader, ptr %add.ptr.i, i32 0, i32 3
  %392 = ptrtoint ptr %unitid1790.i to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %unitid1790.i, align 1
  %conv1791.i = zext i8 %393 to i32
  %call1792.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.547, ptr noundef %name16.i, i32 noundef %conv1791.i) #10
  br label %do.end1795.i

do.end1795.i:                                     ; preds = %do.end1786.i, %do.body1780.i.do.end1795.i_crit_edge
  %394 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %add.ptr.i, align 1
  %conv1797.i = zext i8 %395 to i32
  %add1798.i = add i32 %idx.068.i, %conv1797.i
  %cmp.i = icmp ult i32 %add1798.i, %sub.i
  br i1 %cmp.i, label %do.end1795.i.for.body.i_crit_edge, label %do.end1795.i.out_crit_edge

do.end1795.i.out_crit_edge:                       ; preds = %do.end1795.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end1795.i.for.body.i_crit_edge:                ; preds = %do.end1795.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

out:                                              ; preds = %do.end1795.i.out_crit_edge, %for.body.i.out_crit_edge, %do.end3.i.out_crit_edge, %do.end36
  call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %out ], [ 12, %if.end8.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buflen) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_i2caddr_to_unitid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_i2c_write(ptr noundef %bus, i8 noundef zeroext %addr, i32 noundef %datalen, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  %len = alloca i16, align 2
  %buf = alloca [256 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %len) #7
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %len, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %3 = load i32, ptr @saa_debug, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %conv = zext i8 %addr to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241, ptr noundef %name, ptr noundef nonnull @.str.242, i32 noundef %conv, i32 noundef %datalen) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %4 = add i32 %datalen, -233
  call void @__sanitizer_cov_trace_const_cmp4(i32 -232, i32 %4)
  %5 = icmp ult i32 %4, -232
  br i1 %5, label %do.end4.cleanup_crit_edge, label %if.end9

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %do.end4
  %6 = getelementptr inbounds i8, ptr %buf, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 248)
  %conv11 = zext i8 %addr to i32
  %call12 = tail call i32 @saa7164_i2caddr_to_unitid(ptr noundef %bus, i32 noundef %conv11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end18, label %if.end22

do.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.242, i32 noundef %conv11) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end9
  %call24 = tail call i32 @saa7164_i2caddr_to_reglen(ptr noundef %bus, i32 noundef %conv11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.246, ptr noundef nonnull @.str.242) #10
  br label %cleanup

if.end33:                                         ; preds = %if.end22
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 8
  %conv35 = trunc i32 %call12 to i8
  %call36 = call i32 @saa7164_cmd_send(ptr noundef %9, i8 noundef zeroext %conv35, i32 noundef 133, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef nonnull %len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %do.body46, label %do.end42

do.end42:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.242, i32 noundef %call36) #10
  br label %cleanup

do.body46:                                        ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %10 = load i32, ptr @saa_debug, align 4
  %and47 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body46.do.end60_crit_edge, label %do.end52

do.body46.do.end60_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

do.end52:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  %name54 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len, align 2
  %conv56 = zext i16 %12 to i32
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251, ptr noundef %name54, ptr noundef nonnull @.str.242, i32 noundef %conv56, i32 noundef %call12) #10
  br label %do.end60

do.end60:                                         ; preds = %do.end52, %do.body46.do.end60_crit_edge
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call24, ptr %buf, align 4
  %sub = sub nsw i32 %datalen, %call24
  %add.ptr63 = getelementptr inbounds i8, ptr %buf, i32 4
  %14 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %add.ptr63, align 4
  %add.ptr65 = getelementptr inbounds i8, ptr %buf, i32 8
  %15 = call ptr @memcpy(ptr %add.ptr65, ptr %data, i32 %datalen)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %16 = load i32, ptr @saa_debug, align 4
  %and66 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.end60.if.end70_crit_edge, label %if.then68

do.end60.if.end70_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then68:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  call void @print_hex_dump(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.226, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef 256, i1 noundef zeroext false) #7
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %do.end60.if.end70_crit_edge
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus, align 8
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %len, align 2
  %call73 = call i32 @saa7164_cmd_send(ptr noundef %18, i8 noundef zeroext %conv35, i32 noundef 1, i16 noundef zeroext 0, i16 noundef zeroext %20, ptr noundef nonnull %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74.not = icmp eq i32 %call73, 0
  br i1 %cmp74.not, label %if.end70.cleanup_crit_edge, label %do.end79

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end79:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.242, i32 noundef %call73) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end79, %if.end70.cleanup_crit_edge, %do.end42, %do.end30, %do.end18, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end18 ], [ -5, %do.end30 ], [ -5, %do.end42 ], [ -5, %do.end4.cleanup_crit_edge ], [ -5, %do.end79 ], [ 0, %if.end70.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %len) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_i2caddr_to_reglen(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_set_gpiobit(ptr noundef %dev, i8 noundef zeroext %unitid, i8 noundef zeroext %pin) local_unnamed_addr #0 align 64 {
entry:
  %t.i = alloca %struct.tmComResGPIO, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %t.i) #7
  %0 = getelementptr inbounds %struct.tmComResGPIO, ptr %t.i, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %1 = load i32, ptr @saa_debug, align 4
  %and.i = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end5.i_crit_edge, label %do.end.i

entry.do.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %conv.i = zext i8 %unitid to i32
  %conv2.i = zext i8 %pin to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.606, ptr noundef %name.i, ptr noundef nonnull @.str.607, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef 1) #10
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %entry.do.end5.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %pin)
  %cmp.i = icmp ugt i8 %pin, 7
  br i1 %cmp.i, label %do.end5.i.saa7164_api_modify_gpio.exit_crit_edge, label %if.end12.i

do.end5.i.saa7164_api_modify_gpio.exit_crit_edge: ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa7164_api_modify_gpio.exit

if.end12.i:                                       ; preds = %do.end5.i
  %conv6.i = zext i8 %pin to i32
  %2 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv6.i, ptr %t.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %0, align 4
  %call16.i = call i32 @saa7164_cmd_send(ptr noundef %dev, i8 noundef zeroext %unitid, i32 noundef 1, i16 noundef zeroext 1, i16 noundef zeroext 5, ptr noundef nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.not.i = icmp eq i32 %call16.i, 0
  br i1 %cmp17.not.i, label %if.end12.i.saa7164_api_modify_gpio.exit_crit_edge, label %do.end22.i

if.end12.i.saa7164_api_modify_gpio.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa7164_api_modify_gpio.exit

do.end22.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.607, i32 noundef %call16.i) #10
  br label %saa7164_api_modify_gpio.exit

saa7164_api_modify_gpio.exit:                     ; preds = %do.end22.i, %if.end12.i.saa7164_api_modify_gpio.exit_crit_edge, %do.end5.i.saa7164_api_modify_gpio.exit_crit_edge
  %retval.0.i = phi i32 [ 9, %do.end5.i.saa7164_api_modify_gpio.exit_crit_edge ], [ %call16.i, %do.end22.i ], [ 0, %if.end12.i.saa7164_api_modify_gpio.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %t.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_api_clear_gpiobit(ptr noundef %dev, i8 noundef zeroext %unitid, i8 noundef zeroext %pin) local_unnamed_addr #0 align 64 {
entry:
  %t.i = alloca %struct.tmComResGPIO, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %t.i) #7
  %0 = getelementptr inbounds %struct.tmComResGPIO, ptr %t.i, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %1 = load i32, ptr @saa_debug, align 4
  %and.i = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end5.i_crit_edge, label %do.end.i

entry.do.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %conv.i = zext i8 %unitid to i32
  %conv2.i = zext i8 %pin to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.606, ptr noundef %name.i, ptr noundef nonnull @.str.607, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef 0) #10
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %entry.do.end5.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %pin)
  %cmp.i = icmp ugt i8 %pin, 7
  br i1 %cmp.i, label %do.end5.i.saa7164_api_modify_gpio.exit_crit_edge, label %if.end12.i

do.end5.i.saa7164_api_modify_gpio.exit_crit_edge: ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa7164_api_modify_gpio.exit

if.end12.i:                                       ; preds = %do.end5.i
  %conv6.i = zext i8 %pin to i32
  %2 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv6.i, ptr %t.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %0, align 4
  %call16.i = call i32 @saa7164_cmd_send(ptr noundef %dev, i8 noundef zeroext %unitid, i32 noundef 1, i16 noundef zeroext 1, i16 noundef zeroext 5, ptr noundef nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.not.i = icmp eq i32 %call16.i, 0
  br i1 %cmp17.not.i, label %if.end12.i.saa7164_api_modify_gpio.exit_crit_edge, label %do.end22.i

if.end12.i.saa7164_api_modify_gpio.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %saa7164_api_modify_gpio.exit

do.end22.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.607, i32 noundef %call16.i) #10
  br label %saa7164_api_modify_gpio.exit

saa7164_api_modify_gpio.exit:                     ; preds = %do.end22.i, %if.end12.i.saa7164_api_modify_gpio.exit_crit_edge, %do.end5.i.saa7164_api_modify_gpio.exit_crit_edge
  %retval.0.i = phi i32 [ 9, %do.end5.i.saa7164_api_modify_gpio.exit_crit_edge ], [ %call16.i, %do.end22.i ], [ 0, %if.end12.i.saa7164_api_modify_gpio.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %t.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 429)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 429)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !190, !191, !193, !194, !195, !196, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !212, !214, !215, !217, !218, !220, !221, !223, !224, !226, !227, !228, !230, !231, !233, !234, !235, !237, !238, !240, !241, !243, !244, !246, !247, !248, !250, !251, !253, !254, !256, !257, !259, !260, !262, !263, !264, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !316, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !331, !332, !333, !335, !336, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !355, !356, !357, !359, !360, !362, !364, !366, !367, !368, !369, !371, !372, !373, !375, !376, !377, !379, !380, !381, !383, !384, !385, !387, !388, !389, !390, !392, !393, !395, !396, !397, !399, !400, !402, !403, !404, !406, !407, !409, !410, !411, !413, !414, !416, !417, !418, !419, !421, !422, !424, !425, !427, !428, !429, !430, !432, !433, !434, !436, !437, !438, !440, !441, !442, !444, !445, !446, !448, !449, !450, !452, !453, !454, !456, !457, !458, !460, !461, !462, !464, !465, !466, !468, !469, !470, !472, !473, !474, !476, !477, !478, !480, !481, !482, !484, !485, !486, !488, !489, !490, !492, !493, !494, !496, !497, !498, !500, !501, !502, !504, !505, !506, !508, !509, !510, !512, !513, !515, !516, !518, !519, !521, !522, !524, !525, !527, !528, !530, !531, !533, !534, !536, !537, !539, !540, !542, !543, !544, !546, !547, !549, !550, !551, !553, !554, !555, !557, !558, !559, !561, !562, !563, !565, !566, !567, !569, !570, !572, !573, !574, !576, !577, !578, !580, !581, !582, !584, !585, !586, !588, !589, !591, !592, !593, !595, !596, !598, !599, !600, !602, !603, !604, !606, !607, !608, !610, !611, !612, !614, !615, !616, !618, !619, !620, !622, !623, !624, !626, !627, !629, !630, !631, !633, !634, !636, !637, !638, !640, !641, !643, !644, !646, !647, !649, !650, !651, !653, !654, !655, !657, !658, !660, !661, !663, !664, !666, !667, !669, !670, !671, !673, !674, !675, !677, !678, !680, !681, !682, !684, !685, !686, !688, !689, !691, !692, !694, !695, !696, !698, !699, !701, !702, !703, !705, !706, !707, !709, !710, !711, !713, !714, !715, !717, !718, !719, !721, !722, !723, !725, !726, !727, !729, !730, !731, !733, !734, !735, !737, !738, !739, !741, !742, !743, !745, !746, !747, !749, !750, !751, !753, !754, !755, !757, !758, !759, !761, !762, !763, !765, !766, !767, !769, !770, !771, !773, !774, !775, !777, !778, !779, !781, !782, !783, !785, !786, !788, !789, !791, !792, !793, !795, !796, !797, !799, !800, !801, !803, !804, !805, !807, !808, !809, !811, !812, !813, !815, !816, !817, !819, !820, !821, !822, !824, !825, !826, !828, !829, !830, !832, !833, !834, !836, !837, !838, !840, !841, !842, !844, !845, !846, !848, !849, !850, !852, !853, !854, !856, !857, !858, !860, !861, !862, !864, !865, !867, !868, !869, !871, !872, !873, !874, !876, !877, !878, !880, !881, !882, !884, !885, !886, !888, !889, !890, !892, !893, !894, !896, !897, !899, !900, !901, !903, !904, !905, !906, !908}
!llvm.module.flags = !{!909, !910, !911, !912, !913, !914, !915, !916}
!llvm.ident = !{!917}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 20, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @saa7164_api_get_load_info._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @saa7164_api_get_load_info._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 30, i32 3}
!8 = !{ptr @saa7164_api_get_load_info._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @saa7164_api_get_load_info._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 32, i32 2}
!12 = !{ptr @saa7164_api_get_load_info._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @saa7164_api_get_load_info._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 43, i32 2}
!16 = !{ptr @saa7164_api_collect_debug._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @saa7164_api_collect_debug._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @saa7164_api_collect_debug._entry.10, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 52, i32 4}
!20 = !{ptr @saa7164_api_collect_debug._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 58, i32 3}
!23 = !{ptr @saa7164_api_collect_debug._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @saa7164_api_collect_debug._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 70, i32 2}
!27 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @saa7164_api_set_debug._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @saa7164_api_set_debug._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @saa7164_api_set_debug._entry.17, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 76, i32 3}
!32 = !{ptr @saa7164_api_set_debug._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 78, i32 2}
!35 = !{ptr @saa7164_api_set_debug._entry.19, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @saa7164_api_set_debug._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @saa7164_api_set_debug._entry.22, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 86, i32 3}
!39 = !{ptr @saa7164_api_set_debug._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 97, i32 2}
!42 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @saa7164_api_set_vbi_format._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @saa7164_api_set_vbi_format._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 108, i32 3}
!47 = !{ptr @saa7164_api_set_vbi_format._entry.26, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @saa7164_api_set_vbi_format._entry_ptr.28, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 114, i32 3}
!51 = !{ptr @saa7164_api_set_vbi_format._entry.29, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @saa7164_api_set_vbi_format._entry_ptr.31, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 118, i32 4}
!55 = !{ptr @saa7164_api_set_vbi_format._entry.32, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @saa7164_api_set_vbi_format._entry_ptr.34, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 124, i32 5}
!59 = !{ptr @saa7164_api_set_vbi_format._entry.35, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @saa7164_api_set_vbi_format._entry_ptr.37, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.39, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 130, i32 5}
!63 = !{ptr @saa7164_api_set_vbi_format._entry.38, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @saa7164_api_set_vbi_format._entry_ptr.40, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.42, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 134, i32 5}
!67 = !{ptr @saa7164_api_set_vbi_format._entry.41, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @saa7164_api_set_vbi_format._entry_ptr.43, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.45, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 137, i32 5}
!71 = !{ptr @saa7164_api_set_vbi_format._entry.44, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @saa7164_api_set_vbi_format._entry_ptr.46, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.48, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 139, i32 4}
!75 = !{ptr @saa7164_api_set_vbi_format._entry.47, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @saa7164_api_set_vbi_format._entry_ptr.49, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.51, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 140, i32 4}
!79 = !{ptr @saa7164_api_set_vbi_format._entry.50, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @saa7164_api_set_vbi_format._entry_ptr.52, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.54, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 142, i32 4}
!83 = !{ptr @saa7164_api_set_vbi_format._entry.53, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @saa7164_api_set_vbi_format._entry_ptr.55, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.57, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 145, i32 4}
!87 = !{ptr @saa7164_api_set_vbi_format._entry.56, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @saa7164_api_set_vbi_format._entry_ptr.58, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.60, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 149, i32 3}
!91 = !{ptr @saa7164_api_set_vbi_format._entry.59, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @saa7164_api_set_vbi_format._entry_ptr.61, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.62, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 180, i32 2}
!95 = !{ptr @.str.63, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @saa7164_api_set_encoder._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @saa7164_api_set_encoder._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @saa7164_api_set_encoder._entry.64, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 191, i32 3}
!100 = !{ptr @saa7164_api_set_encoder._entry_ptr.65, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @saa7164_api_set_encoder._entry.66, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 197, i32 3}
!103 = !{ptr @saa7164_api_set_encoder._entry_ptr.67, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @saa7164_api_set_encoder._entry.68, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 212, i32 3}
!106 = !{ptr @saa7164_api_set_encoder._entry_ptr.69, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @saa7164_api_set_encoder._entry.70, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 223, i32 3}
!109 = !{ptr @saa7164_api_set_encoder._entry_ptr.71, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.72, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 240, i32 2}
!112 = !{ptr @saa7164_api_get_encoder._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @saa7164_api_get_encoder._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @saa7164_api_get_encoder._entry.73, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 251, i32 3}
!116 = !{ptr @saa7164_api_get_encoder._entry_ptr.74, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @saa7164_api_get_encoder._entry.75, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 257, i32 3}
!119 = !{ptr @saa7164_api_get_encoder._entry_ptr.76, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @saa7164_api_get_encoder._entry.77, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 262, i32 3}
!122 = !{ptr @saa7164_api_get_encoder._entry_ptr.78, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @saa7164_api_get_encoder._entry.79, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 267, i32 3}
!125 = !{ptr @saa7164_api_get_encoder._entry_ptr.80, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @saa7164_api_get_encoder._entry.81, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 272, i32 3}
!128 = !{ptr @saa7164_api_get_encoder._entry_ptr.82, !127, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @saa7164_api_get_encoder._entry.83, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 277, i32 3}
!131 = !{ptr @saa7164_api_get_encoder._entry_ptr.84, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @saa7164_api_get_encoder._entry.85, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 286, i32 3}
!134 = !{ptr @saa7164_api_get_encoder._entry_ptr.86, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.88, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 288, i32 2}
!137 = !{ptr @saa7164_api_get_encoder._entry.87, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @saa7164_api_get_encoder._entry_ptr.89, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.91, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 289, i32 2}
!141 = !{ptr @saa7164_api_get_encoder._entry.90, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @saa7164_api_get_encoder._entry_ptr.92, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.94, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 290, i32 2}
!145 = !{ptr @saa7164_api_get_encoder._entry.93, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @saa7164_api_get_encoder._entry_ptr.95, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.97, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 291, i32 2}
!149 = !{ptr @saa7164_api_get_encoder._entry.96, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @saa7164_api_get_encoder._entry_ptr.98, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.100, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 292, i32 2}
!153 = !{ptr @saa7164_api_get_encoder._entry.99, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @saa7164_api_get_encoder._entry_ptr.101, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.103, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 294, i32 2}
!157 = !{ptr @saa7164_api_get_encoder._entry.102, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @saa7164_api_get_encoder._entry_ptr.104, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.106, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 296, i32 2}
!161 = !{ptr @saa7164_api_get_encoder._entry.105, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @saa7164_api_get_encoder._entry_ptr.107, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.109, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 298, i32 2}
!165 = !{ptr @saa7164_api_get_encoder._entry.108, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @saa7164_api_get_encoder._entry_ptr.110, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.112, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 300, i32 2}
!169 = !{ptr @saa7164_api_get_encoder._entry.111, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @saa7164_api_get_encoder._entry_ptr.113, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.115, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 302, i32 2}
!173 = !{ptr @saa7164_api_get_encoder._entry.114, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @saa7164_api_get_encoder._entry_ptr.116, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.118, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 304, i32 2}
!177 = !{ptr @saa7164_api_get_encoder._entry.117, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @saa7164_api_get_encoder._entry_ptr.119, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.120, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 316, i32 2}
!181 = !{ptr @.str.121, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @saa7164_api_set_aspect_ratio._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @saa7164_api_set_aspect_ratio._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.123, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 340, i32 2}
!186 = !{ptr @saa7164_api_set_aspect_ratio._entry.122, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @saa7164_api_set_aspect_ratio._entry_ptr.124, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @saa7164_api_set_aspect_ratio._entry.125, !189, !"_entry", i1 false, i1 false}
!189 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 349, i32 3}
!190 = !{ptr @saa7164_api_set_aspect_ratio._entry_ptr.126, !189, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.127, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 377, i32 2}
!193 = !{ptr @.str.128, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @saa7164_api_set_usercontrol._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @saa7164_api_set_usercontrol._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @saa7164_api_set_usercontrol._entry.129, !197, !"_entry", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 383, i32 3}
!198 = !{ptr @saa7164_api_set_usercontrol._entry_ptr.130, !197, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.131, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 397, i32 3}
!201 = !{ptr @saa7164_api_get_usercontrol._entry, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @saa7164_api_get_usercontrol._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.133, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 401, i32 2}
!205 = !{ptr @saa7164_api_get_usercontrol._entry.132, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @saa7164_api_get_usercontrol._entry_ptr.134, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.135, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 428, i32 2}
!209 = !{ptr @.str.136, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @saa7164_api_set_videomux._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @saa7164_api_set_videomux._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @saa7164_api_set_videomux._entry.137, !213, !"_entry", i1 false, i1 false}
!213 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 434, i32 3}
!214 = !{ptr @saa7164_api_set_videomux._entry_ptr.138, !213, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @saa7164_api_set_videomux._entry.139, !216, !"_entry", i1 false, i1 false}
!216 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 440, i32 3}
!217 = !{ptr @saa7164_api_set_videomux._entry_ptr.140, !216, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @saa7164_api_set_videomux._entry.141, !219, !"_entry", i1 false, i1 false}
!219 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 447, i32 3}
!220 = !{ptr @saa7164_api_set_videomux._entry_ptr.142, !219, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @saa7164_api_set_videomux._entry.143, !222, !"_entry", i1 false, i1 false}
!222 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 452, i32 3}
!223 = !{ptr @saa7164_api_set_videomux._entry_ptr.144, !222, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.145, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 463, i32 2}
!226 = !{ptr @saa7164_api_audio_mute._entry, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @saa7164_api_audio_mute._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @saa7164_api_audio_mute._entry.146, !229, !"_entry", i1 false, i1 false}
!229 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 468, i32 3}
!230 = !{ptr @saa7164_api_audio_mute._entry_ptr.147, !229, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.148, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 480, i32 2}
!233 = !{ptr @saa7164_api_set_audio_volume._entry, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @saa7164_api_set_audio_volume._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @saa7164_api_set_audio_volume._entry.149, !236, !"_entry", i1 false, i1 false}
!236 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 486, i32 3}
!237 = !{ptr @saa7164_api_set_audio_volume._entry_ptr.150, !236, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @saa7164_api_set_audio_volume._entry.151, !239, !"_entry", i1 false, i1 false}
!239 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 491, i32 3}
!240 = !{ptr @saa7164_api_set_audio_volume._entry_ptr.152, !239, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @saa7164_api_set_audio_volume._entry.153, !242, !"_entry", i1 false, i1 false}
!242 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 496, i32 3}
!243 = !{ptr @saa7164_api_set_audio_volume._entry_ptr.154, !242, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.156, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 498, i32 2}
!246 = !{ptr @saa7164_api_set_audio_volume._entry.155, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @saa7164_api_set_audio_volume._entry_ptr.157, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @saa7164_api_set_audio_volume._entry.158, !249, !"_entry", i1 false, i1 false}
!249 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 511, i32 3}
!250 = !{ptr @saa7164_api_set_audio_volume._entry_ptr.159, !249, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @saa7164_api_set_audio_volume._entry.160, !252, !"_entry", i1 false, i1 false}
!252 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 517, i32 3}
!253 = !{ptr @saa7164_api_set_audio_volume._entry_ptr.161, !252, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @saa7164_api_set_audio_volume._entry.162, !255, !"_entry", i1 false, i1 false}
!255 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 522, i32 3}
!256 = !{ptr @saa7164_api_set_audio_volume._entry_ptr.163, !255, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @saa7164_api_set_audio_volume._entry.164, !258, !"_entry", i1 false, i1 false}
!258 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 524, i32 2}
!259 = !{ptr @saa7164_api_set_audio_volume._entry_ptr.165, !258, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.166, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 537, i32 2}
!262 = !{ptr @saa7164_api_set_audio_std._entry, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @saa7164_api_set_audio_std._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @saa7164_api_set_audio_std._entry.167, !265, !"_entry", i1 false, i1 false}
!265 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 550, i32 3}
!266 = !{ptr @saa7164_api_set_audio_std._entry_ptr.168, !265, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.170, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 564, i32 3}
!269 = !{ptr @saa7164_api_set_audio_std._entry.169, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @saa7164_api_set_audio_std._entry_ptr.171, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.172, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 575, i32 2}
!273 = !{ptr @saa7164_api_set_audio_detection._entry, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @saa7164_api_set_audio_detection._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.174, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 585, i32 3}
!277 = !{ptr @saa7164_api_set_audio_detection._entry.173, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @saa7164_api_set_audio_detection._entry_ptr.175, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.176, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 600, i32 3}
!281 = !{ptr @saa7164_api_get_videomux._entry, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @saa7164_api_get_videomux._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.178, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 602, i32 2}
!285 = !{ptr @saa7164_api_get_videomux._entry.177, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @saa7164_api_get_videomux._entry_ptr.179, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.180, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 671, i32 2}
!289 = !{ptr @.str.181, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @saa7164_api_configure_dif._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @saa7164_api_configure_dif._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.183, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 674, i32 3}
!294 = !{ptr @saa7164_api_configure_dif._entry.182, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @saa7164_api_configure_dif._entry_ptr.184, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.186, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 678, i32 3}
!298 = !{ptr @saa7164_api_configure_dif._entry.185, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @saa7164_api_configure_dif._entry_ptr.187, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.189, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 682, i32 3}
!302 = !{ptr @saa7164_api_configure_dif._entry.188, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @saa7164_api_configure_dif._entry_ptr.190, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.192, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 686, i32 3}
!306 = !{ptr @saa7164_api_configure_dif._entry.191, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @saa7164_api_configure_dif._entry_ptr.193, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.195, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 690, i32 3}
!310 = !{ptr @saa7164_api_configure_dif._entry.194, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @saa7164_api_configure_dif._entry_ptr.196, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.198, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 694, i32 3}
!314 = !{ptr @saa7164_api_configure_dif._entry.197, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @saa7164_api_configure_dif._entry_ptr.199, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.201, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 698, i32 3}
!318 = !{ptr @saa7164_api_configure_dif._entry.200, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @saa7164_api_configure_dif._entry_ptr.202, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.204, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 702, i32 3}
!322 = !{ptr @saa7164_api_configure_dif._entry.203, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @saa7164_api_configure_dif._entry_ptr.205, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.207, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 707, i32 3}
!326 = !{ptr @saa7164_api_configure_dif._entry.206, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @saa7164_api_configure_dif._entry_ptr.208, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.209, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 736, i32 2}
!330 = !{ptr @.str.210, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @saa7164_api_initialize_dif._entry, !329, !"_entry", i1 false, i1 false}
!332 = !{ptr @saa7164_api_initialize_dif._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.211, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 773, i32 2}
!335 = !{ptr @.str.212, !334, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @saa7164_api_transition_port._entry, !334, !"_entry", i1 false, i1 false}
!337 = !{ptr @saa7164_api_transition_port._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.214, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 779, i32 3}
!340 = !{ptr @saa7164_api_transition_port._entry.213, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @saa7164_api_transition_port._entry_ptr.215, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.216, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 792, i32 3}
!344 = !{ptr @saa7164_api_get_fw_version._entry, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @saa7164_api_get_fw_version._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.217, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1316, i32 2}
!348 = !{ptr @saa7164_api_enum_subdevs._entry, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @saa7164_api_enum_subdevs._entry_ptr, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @saa7164_api_enum_subdevs._entry.218, !351, !"_entry", i1 false, i1 false}
!351 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1322, i32 3}
!352 = !{ptr @saa7164_api_enum_subdevs._entry_ptr.219, !351, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.221, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1324, i32 2}
!355 = !{ptr @saa7164_api_enum_subdevs._entry.220, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @saa7164_api_enum_subdevs._entry_ptr.222, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @saa7164_api_enum_subdevs._entry.223, !358, !"_entry", i1 false, i1 false}
!358 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1336, i32 3}
!359 = !{ptr @saa7164_api_enum_subdevs._entry_ptr.224, !358, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.225, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1341, i32 18}
!362 = !{ptr @.str.226, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1341, i32 29}
!364 = !{ptr @.str.227, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1360, i32 2}
!366 = !{ptr @.str.228, !365, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @saa7164_api_i2c_read._entry, !365, !"_entry", i1 false, i1 false}
!368 = !{ptr @saa7164_api_i2c_read._entry_ptr, !365, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.230, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1378, i32 3}
!371 = !{ptr @saa7164_api_i2c_read._entry.229, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @saa7164_api_i2c_read._entry_ptr.231, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.233, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1387, i32 3}
!375 = !{ptr @saa7164_api_i2c_read._entry.232, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @saa7164_api_i2c_read._entry_ptr.234, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.236, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1391, i32 2}
!379 = !{ptr @saa7164_api_i2c_read._entry.235, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @saa7164_api_i2c_read._entry_ptr.237, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.239, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1400, i32 3}
!383 = !{ptr @saa7164_api_i2c_read._entry.238, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @saa7164_api_i2c_read._entry_ptr.240, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.241, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1422, i32 2}
!387 = !{ptr @.str.242, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @saa7164_api_i2c_write._entry, !386, !"_entry", i1 false, i1 false}
!389 = !{ptr @saa7164_api_i2c_write._entry_ptr, !386, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @saa7164_api_i2c_write._entry.243, !391, !"_entry", i1 false, i1 false}
!391 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1432, i32 3}
!392 = !{ptr @saa7164_api_i2c_write._entry_ptr.244, !391, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.246, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1440, i32 3}
!395 = !{ptr @saa7164_api_i2c_write._entry.245, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @saa7164_api_i2c_write._entry_ptr.247, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @saa7164_api_i2c_write._entry.248, !398, !"_entry", i1 false, i1 false}
!398 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1449, i32 3}
!399 = !{ptr @saa7164_api_i2c_write._entry_ptr.249, !398, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.251, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1453, i32 2}
!402 = !{ptr @saa7164_api_i2c_write._entry.250, !401, !"_entry", i1 false, i1 false}
!403 = !{ptr @saa7164_api_i2c_write._entry_ptr.252, !401, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @saa7164_api_i2c_write._entry.253, !405, !"_entry", i1 false, i1 false}
!405 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1472, i32 3}
!406 = !{ptr @saa7164_api_i2c_write._entry_ptr.254, !405, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.255, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 160, i32 2}
!409 = !{ptr @saa7164_api_set_gop_size._entry, !408, !"_entry", i1 false, i1 false}
!410 = !{ptr @saa7164_api_set_gop_size._entry_ptr, !408, !"_entry_ptr", i1 false, i1 false}
!411 = !{ptr @saa7164_api_set_gop_size._entry.256, !412, !"_entry", i1 false, i1 false}
!412 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 168, i32 3}
!413 = !{ptr @saa7164_api_set_gop_size._entry_ptr.257, !412, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.258, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 617, i32 2}
!416 = !{ptr @.str.259, !415, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @saa7164_api_set_dif._entry, !415, !"_entry", i1 false, i1 false}
!418 = !{ptr @saa7164_api_set_dif._entry_ptr, !415, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @saa7164_api_set_dif._entry.260, !420, !"_entry", i1 false, i1 false}
!420 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 650, i32 3}
!421 = !{ptr @saa7164_api_set_dif._entry_ptr.261, !420, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @saa7164_api_set_dif._entry.262, !423, !"_entry", i1 false, i1 false}
!423 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 657, i32 3}
!424 = !{ptr @saa7164_api_set_dif._entry_ptr.263, !423, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.264, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 937, i32 2}
!427 = !{ptr @.str.265, !426, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @saa7164_api_dump_subdevs._entry, !426, !"_entry", i1 false, i1 false}
!429 = !{ptr @saa7164_api_dump_subdevs._entry_ptr, !426, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.267, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 948, i32 3}
!432 = !{ptr @saa7164_api_dump_subdevs._entry.266, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.268, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.270, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 951, i32 4}
!436 = !{ptr @saa7164_api_dump_subdevs._entry.269, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.271, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.273, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 954, i32 4}
!440 = !{ptr @saa7164_api_dump_subdevs._entry.272, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.274, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.276, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 956, i32 4}
!444 = !{ptr @saa7164_api_dump_subdevs._entry.275, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.277, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.279, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 961, i32 4}
!448 = !{ptr @saa7164_api_dump_subdevs._entry.278, !447, !"_entry", i1 false, i1 false}
!449 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.280, !447, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.282, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 964, i32 4}
!452 = !{ptr @saa7164_api_dump_subdevs._entry.281, !451, !"_entry", i1 false, i1 false}
!453 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.283, !451, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.285, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 966, i32 4}
!456 = !{ptr @saa7164_api_dump_subdevs._entry.284, !455, !"_entry", i1 false, i1 false}
!457 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.286, !455, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.288, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 970, i32 5}
!460 = !{ptr @saa7164_api_dump_subdevs._entry.287, !459, !"_entry", i1 false, i1 false}
!461 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.289, !459, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @.str.291, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 973, i32 5}
!464 = !{ptr @saa7164_api_dump_subdevs._entry.290, !463, !"_entry", i1 false, i1 false}
!465 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.292, !463, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @.str.294, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 976, i32 5}
!468 = !{ptr @saa7164_api_dump_subdevs._entry.293, !467, !"_entry", i1 false, i1 false}
!469 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.295, !467, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @.str.297, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 979, i32 5}
!472 = !{ptr @saa7164_api_dump_subdevs._entry.296, !471, !"_entry", i1 false, i1 false}
!473 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.298, !471, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @.str.300, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 983, i32 5}
!476 = !{ptr @saa7164_api_dump_subdevs._entry.299, !475, !"_entry", i1 false, i1 false}
!477 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.301, !475, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @.str.303, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 986, i32 5}
!480 = !{ptr @saa7164_api_dump_subdevs._entry.302, !479, !"_entry", i1 false, i1 false}
!481 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.304, !479, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @.str.306, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 990, i32 5}
!484 = !{ptr @saa7164_api_dump_subdevs._entry.305, !483, !"_entry", i1 false, i1 false}
!485 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.307, !483, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.309, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 993, i32 5}
!488 = !{ptr @saa7164_api_dump_subdevs._entry.308, !487, !"_entry", i1 false, i1 false}
!489 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.310, !487, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @.str.312, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 996, i32 4}
!492 = !{ptr @saa7164_api_dump_subdevs._entry.311, !491, !"_entry", i1 false, i1 false}
!493 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.313, !491, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.315, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 998, i32 4}
!496 = !{ptr @saa7164_api_dump_subdevs._entry.314, !495, !"_entry", i1 false, i1 false}
!497 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.316, !495, !"_entry_ptr", i1 false, i1 false}
!498 = !{ptr @.str.318, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1000, i32 4}
!500 = !{ptr @saa7164_api_dump_subdevs._entry.317, !499, !"_entry", i1 false, i1 false}
!501 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.319, !499, !"_entry_ptr", i1 false, i1 false}
!502 = !{ptr @.str.321, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1004, i32 4}
!504 = !{ptr @saa7164_api_dump_subdevs._entry.320, !503, !"_entry", i1 false, i1 false}
!505 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.322, !503, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @.str.324, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1007, i32 4}
!508 = !{ptr @saa7164_api_dump_subdevs._entry.323, !507, !"_entry", i1 false, i1 false}
!509 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.325, !507, !"_entry_ptr", i1 false, i1 false}
!510 = !{ptr @saa7164_api_dump_subdevs._entry.326, !511, !"_entry", i1 false, i1 false}
!511 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1009, i32 4}
!512 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.327, !511, !"_entry_ptr", i1 false, i1 false}
!513 = !{ptr @saa7164_api_dump_subdevs._entry.328, !514, !"_entry", i1 false, i1 false}
!514 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1013, i32 5}
!515 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.329, !514, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @saa7164_api_dump_subdevs._entry.330, !517, !"_entry", i1 false, i1 false}
!517 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1016, i32 5}
!518 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.331, !517, !"_entry_ptr", i1 false, i1 false}
!519 = !{ptr @saa7164_api_dump_subdevs._entry.332, !520, !"_entry", i1 false, i1 false}
!520 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1019, i32 5}
!521 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.333, !520, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @saa7164_api_dump_subdevs._entry.334, !523, !"_entry", i1 false, i1 false}
!523 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1022, i32 5}
!524 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.335, !523, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @saa7164_api_dump_subdevs._entry.336, !526, !"_entry", i1 false, i1 false}
!526 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1026, i32 5}
!527 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.337, !526, !"_entry_ptr", i1 false, i1 false}
!528 = !{ptr @saa7164_api_dump_subdevs._entry.338, !529, !"_entry", i1 false, i1 false}
!529 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1029, i32 5}
!530 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.339, !529, !"_entry_ptr", i1 false, i1 false}
!531 = !{ptr @saa7164_api_dump_subdevs._entry.340, !532, !"_entry", i1 false, i1 false}
!532 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1033, i32 5}
!533 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.341, !532, !"_entry_ptr", i1 false, i1 false}
!534 = !{ptr @saa7164_api_dump_subdevs._entry.342, !535, !"_entry", i1 false, i1 false}
!535 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1036, i32 5}
!536 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.343, !535, !"_entry_ptr", i1 false, i1 false}
!537 = !{ptr @saa7164_api_dump_subdevs._entry.344, !538, !"_entry", i1 false, i1 false}
!538 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1039, i32 4}
!539 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.345, !538, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @.str.347, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1041, i32 4}
!542 = !{ptr @saa7164_api_dump_subdevs._entry.346, !541, !"_entry", i1 false, i1 false}
!543 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.348, !541, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @saa7164_api_dump_subdevs._entry.349, !545, !"_entry", i1 false, i1 false}
!545 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1043, i32 4}
!546 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.350, !545, !"_entry_ptr", i1 false, i1 false}
!547 = !{ptr @.str.352, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1045, i32 4}
!549 = !{ptr @saa7164_api_dump_subdevs._entry.351, !548, !"_entry", i1 false, i1 false}
!550 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.353, !548, !"_entry_ptr", i1 false, i1 false}
!551 = !{ptr @.str.355, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1047, i32 4}
!553 = !{ptr @saa7164_api_dump_subdevs._entry.354, !552, !"_entry", i1 false, i1 false}
!554 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.356, !552, !"_entry_ptr", i1 false, i1 false}
!555 = !{ptr @.str.358, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1049, i32 4}
!557 = !{ptr @saa7164_api_dump_subdevs._entry.357, !556, !"_entry", i1 false, i1 false}
!558 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.359, !556, !"_entry_ptr", i1 false, i1 false}
!559 = !{ptr @.str.361, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1051, i32 4}
!561 = !{ptr @saa7164_api_dump_subdevs._entry.360, !560, !"_entry", i1 false, i1 false}
!562 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.362, !560, !"_entry_ptr", i1 false, i1 false}
!563 = !{ptr @.str.364, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1053, i32 4}
!565 = !{ptr @saa7164_api_dump_subdevs._entry.363, !564, !"_entry", i1 false, i1 false}
!566 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.365, !564, !"_entry_ptr", i1 false, i1 false}
!567 = !{ptr @saa7164_api_dump_subdevs._entry.366, !568, !"_entry", i1 false, i1 false}
!568 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1055, i32 4}
!569 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.367, !568, !"_entry_ptr", i1 false, i1 false}
!570 = !{ptr @.str.369, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1057, i32 4}
!572 = !{ptr @saa7164_api_dump_subdevs._entry.368, !571, !"_entry", i1 false, i1 false}
!573 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.370, !571, !"_entry_ptr", i1 false, i1 false}
!574 = !{ptr @.str.372, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1104, i32 6}
!576 = !{ptr @saa7164_api_dump_subdevs._entry.371, !575, !"_entry", i1 false, i1 false}
!577 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.373, !575, !"_entry_ptr", i1 false, i1 false}
!578 = !{ptr @.str.375, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1108, i32 6}
!580 = !{ptr @saa7164_api_dump_subdevs._entry.374, !579, !"_entry", i1 false, i1 false}
!581 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.376, !579, !"_entry_ptr", i1 false, i1 false}
!582 = !{ptr @.str.378, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1112, i32 6}
!584 = !{ptr @saa7164_api_dump_subdevs._entry.377, !583, !"_entry", i1 false, i1 false}
!585 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.379, !583, !"_entry_ptr", i1 false, i1 false}
!586 = !{ptr @saa7164_api_dump_subdevs._entry.380, !587, !"_entry", i1 false, i1 false}
!587 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1116, i32 6}
!588 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.381, !587, !"_entry_ptr", i1 false, i1 false}
!589 = !{ptr @.str.383, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1125, i32 4}
!591 = !{ptr @saa7164_api_dump_subdevs._entry.382, !590, !"_entry", i1 false, i1 false}
!592 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.384, !590, !"_entry_ptr", i1 false, i1 false}
!593 = !{ptr @saa7164_api_dump_subdevs._entry.385, !594, !"_entry", i1 false, i1 false}
!594 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1128, i32 4}
!595 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.386, !594, !"_entry_ptr", i1 false, i1 false}
!596 = !{ptr @.str.388, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1130, i32 4}
!598 = !{ptr @saa7164_api_dump_subdevs._entry.387, !597, !"_entry", i1 false, i1 false}
!599 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.389, !597, !"_entry_ptr", i1 false, i1 false}
!600 = !{ptr @.str.391, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1132, i32 4}
!602 = !{ptr @saa7164_api_dump_subdevs._entry.390, !601, !"_entry", i1 false, i1 false}
!603 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.392, !601, !"_entry_ptr", i1 false, i1 false}
!604 = !{ptr @.str.394, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1134, i32 4}
!606 = !{ptr @saa7164_api_dump_subdevs._entry.393, !605, !"_entry", i1 false, i1 false}
!607 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.395, !605, !"_entry_ptr", i1 false, i1 false}
!608 = !{ptr @.str.397, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1136, i32 4}
!610 = !{ptr @saa7164_api_dump_subdevs._entry.396, !609, !"_entry", i1 false, i1 false}
!611 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.398, !609, !"_entry_ptr", i1 false, i1 false}
!612 = !{ptr @.str.400, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1138, i32 4}
!614 = !{ptr @saa7164_api_dump_subdevs._entry.399, !613, !"_entry", i1 false, i1 false}
!615 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.401, !613, !"_entry_ptr", i1 false, i1 false}
!616 = !{ptr @.str.403, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1148, i32 5}
!618 = !{ptr @saa7164_api_dump_subdevs._entry.402, !617, !"_entry", i1 false, i1 false}
!619 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.404, !617, !"_entry_ptr", i1 false, i1 false}
!620 = !{ptr @.str.406, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1155, i32 4}
!622 = !{ptr @saa7164_api_dump_subdevs._entry.405, !621, !"_entry", i1 false, i1 false}
!623 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.407, !621, !"_entry_ptr", i1 false, i1 false}
!624 = !{ptr @saa7164_api_dump_subdevs._entry.408, !625, !"_entry", i1 false, i1 false}
!625 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1156, i32 4}
!626 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.409, !625, !"_entry_ptr", i1 false, i1 false}
!627 = !{ptr @.str.411, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1158, i32 4}
!629 = !{ptr @saa7164_api_dump_subdevs._entry.410, !628, !"_entry", i1 false, i1 false}
!630 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.412, !628, !"_entry_ptr", i1 false, i1 false}
!631 = !{ptr @saa7164_api_dump_subdevs._entry.413, !632, !"_entry", i1 false, i1 false}
!632 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1160, i32 4}
!633 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.414, !632, !"_entry_ptr", i1 false, i1 false}
!634 = !{ptr @.str.416, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1165, i32 4}
!636 = !{ptr @saa7164_api_dump_subdevs._entry.415, !635, !"_entry", i1 false, i1 false}
!637 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.417, !635, !"_entry_ptr", i1 false, i1 false}
!638 = !{ptr @saa7164_api_dump_subdevs._entry.418, !639, !"_entry", i1 false, i1 false}
!639 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1166, i32 4}
!640 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.419, !639, !"_entry_ptr", i1 false, i1 false}
!641 = !{ptr @saa7164_api_dump_subdevs._entry.420, !642, !"_entry", i1 false, i1 false}
!642 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1168, i32 4}
!643 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.421, !642, !"_entry_ptr", i1 false, i1 false}
!644 = !{ptr @saa7164_api_dump_subdevs._entry.422, !645, !"_entry", i1 false, i1 false}
!645 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1170, i32 4}
!646 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.423, !645, !"_entry_ptr", i1 false, i1 false}
!647 = !{ptr @.str.425, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1179, i32 5}
!649 = !{ptr @saa7164_api_dump_subdevs._entry.424, !648, !"_entry", i1 false, i1 false}
!650 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.426, !648, !"_entry_ptr", i1 false, i1 false}
!651 = !{ptr @.str.428, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1185, i32 4}
!653 = !{ptr @saa7164_api_dump_subdevs._entry.427, !652, !"_entry", i1 false, i1 false}
!654 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.429, !652, !"_entry_ptr", i1 false, i1 false}
!655 = !{ptr @saa7164_api_dump_subdevs._entry.430, !656, !"_entry", i1 false, i1 false}
!656 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1186, i32 4}
!657 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.431, !656, !"_entry_ptr", i1 false, i1 false}
!658 = !{ptr @saa7164_api_dump_subdevs._entry.432, !659, !"_entry", i1 false, i1 false}
!659 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1188, i32 4}
!660 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.433, !659, !"_entry_ptr", i1 false, i1 false}
!661 = !{ptr @saa7164_api_dump_subdevs._entry.434, !662, !"_entry", i1 false, i1 false}
!662 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1190, i32 4}
!663 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.435, !662, !"_entry_ptr", i1 false, i1 false}
!664 = !{ptr @saa7164_api_dump_subdevs._entry.436, !665, !"_entry", i1 false, i1 false}
!665 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1198, i32 4}
!666 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.437, !665, !"_entry_ptr", i1 false, i1 false}
!667 = !{ptr @.str.439, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1203, i32 4}
!669 = !{ptr @saa7164_api_dump_subdevs._entry.438, !668, !"_entry", i1 false, i1 false}
!670 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.440, !668, !"_entry_ptr", i1 false, i1 false}
!671 = !{ptr @.str.442, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1204, i32 4}
!673 = !{ptr @saa7164_api_dump_subdevs._entry.441, !672, !"_entry", i1 false, i1 false}
!674 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.443, !672, !"_entry_ptr", i1 false, i1 false}
!675 = !{ptr @saa7164_api_dump_subdevs._entry.444, !676, !"_entry", i1 false, i1 false}
!676 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1205, i32 4}
!677 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.445, !676, !"_entry_ptr", i1 false, i1 false}
!678 = !{ptr @.str.447, !679, !"<string literal>", i1 false, i1 false}
!679 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1206, i32 4}
!680 = !{ptr @saa7164_api_dump_subdevs._entry.446, !679, !"_entry", i1 false, i1 false}
!681 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.448, !679, !"_entry_ptr", i1 false, i1 false}
!682 = !{ptr @.str.450, !683, !"<string literal>", i1 false, i1 false}
!683 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1208, i32 4}
!684 = !{ptr @saa7164_api_dump_subdevs._entry.449, !683, !"_entry", i1 false, i1 false}
!685 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.451, !683, !"_entry_ptr", i1 false, i1 false}
!686 = !{ptr @saa7164_api_dump_subdevs._entry.452, !687, !"_entry", i1 false, i1 false}
!687 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1210, i32 4}
!688 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.453, !687, !"_entry_ptr", i1 false, i1 false}
!689 = !{ptr @saa7164_api_dump_subdevs._entry.454, !690, !"_entry", i1 false, i1 false}
!690 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1218, i32 5}
!691 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.455, !690, !"_entry_ptr", i1 false, i1 false}
!692 = !{ptr @.str.457, !693, !"<string literal>", i1 false, i1 false}
!693 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1224, i32 4}
!694 = !{ptr @saa7164_api_dump_subdevs._entry.456, !693, !"_entry", i1 false, i1 false}
!695 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.458, !693, !"_entry_ptr", i1 false, i1 false}
!696 = !{ptr @saa7164_api_dump_subdevs._entry.459, !697, !"_entry", i1 false, i1 false}
!697 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1226, i32 4}
!698 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.460, !697, !"_entry_ptr", i1 false, i1 false}
!699 = !{ptr @.str.462, !700, !"<string literal>", i1 false, i1 false}
!700 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1228, i32 4}
!701 = !{ptr @saa7164_api_dump_subdevs._entry.461, !700, !"_entry", i1 false, i1 false}
!702 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.463, !700, !"_entry_ptr", i1 false, i1 false}
!703 = !{ptr @.str.465, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1230, i32 4}
!705 = !{ptr @saa7164_api_dump_subdevs._entry.464, !704, !"_entry", i1 false, i1 false}
!706 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.466, !704, !"_entry_ptr", i1 false, i1 false}
!707 = !{ptr @.str.468, !708, !"<string literal>", i1 false, i1 false}
!708 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1233, i32 5}
!709 = !{ptr @saa7164_api_dump_subdevs._entry.467, !708, !"_entry", i1 false, i1 false}
!710 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.469, !708, !"_entry_ptr", i1 false, i1 false}
!711 = !{ptr @.str.471, !712, !"<string literal>", i1 false, i1 false}
!712 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1235, i32 5}
!713 = !{ptr @saa7164_api_dump_subdevs._entry.470, !712, !"_entry", i1 false, i1 false}
!714 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.472, !712, !"_entry_ptr", i1 false, i1 false}
!715 = !{ptr @.str.474, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1237, i32 5}
!717 = !{ptr @saa7164_api_dump_subdevs._entry.473, !716, !"_entry", i1 false, i1 false}
!718 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.475, !716, !"_entry_ptr", i1 false, i1 false}
!719 = !{ptr @.str.477, !720, !"<string literal>", i1 false, i1 false}
!720 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1239, i32 5}
!721 = !{ptr @saa7164_api_dump_subdevs._entry.476, !720, !"_entry", i1 false, i1 false}
!722 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.478, !720, !"_entry_ptr", i1 false, i1 false}
!723 = !{ptr @.str.480, !724, !"<string literal>", i1 false, i1 false}
!724 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1241, i32 5}
!725 = !{ptr @saa7164_api_dump_subdevs._entry.479, !724, !"_entry", i1 false, i1 false}
!726 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.481, !724, !"_entry_ptr", i1 false, i1 false}
!727 = !{ptr @.str.483, !728, !"<string literal>", i1 false, i1 false}
!728 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1243, i32 5}
!729 = !{ptr @saa7164_api_dump_subdevs._entry.482, !728, !"_entry", i1 false, i1 false}
!730 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.484, !728, !"_entry_ptr", i1 false, i1 false}
!731 = !{ptr @.str.486, !732, !"<string literal>", i1 false, i1 false}
!732 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1245, i32 5}
!733 = !{ptr @saa7164_api_dump_subdevs._entry.485, !732, !"_entry", i1 false, i1 false}
!734 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.487, !732, !"_entry_ptr", i1 false, i1 false}
!735 = !{ptr @.str.489, !736, !"<string literal>", i1 false, i1 false}
!736 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1247, i32 5}
!737 = !{ptr @saa7164_api_dump_subdevs._entry.488, !736, !"_entry", i1 false, i1 false}
!738 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.490, !736, !"_entry_ptr", i1 false, i1 false}
!739 = !{ptr @.str.492, !740, !"<string literal>", i1 false, i1 false}
!740 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1249, i32 5}
!741 = !{ptr @saa7164_api_dump_subdevs._entry.491, !740, !"_entry", i1 false, i1 false}
!742 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.493, !740, !"_entry_ptr", i1 false, i1 false}
!743 = !{ptr @.str.495, !744, !"<string literal>", i1 false, i1 false}
!744 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1251, i32 5}
!745 = !{ptr @saa7164_api_dump_subdevs._entry.494, !744, !"_entry", i1 false, i1 false}
!746 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.496, !744, !"_entry_ptr", i1 false, i1 false}
!747 = !{ptr @.str.498, !748, !"<string literal>", i1 false, i1 false}
!748 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1253, i32 5}
!749 = !{ptr @saa7164_api_dump_subdevs._entry.497, !748, !"_entry", i1 false, i1 false}
!750 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.499, !748, !"_entry_ptr", i1 false, i1 false}
!751 = !{ptr @.str.501, !752, !"<string literal>", i1 false, i1 false}
!752 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1255, i32 5}
!753 = !{ptr @saa7164_api_dump_subdevs._entry.500, !752, !"_entry", i1 false, i1 false}
!754 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.502, !752, !"_entry_ptr", i1 false, i1 false}
!755 = !{ptr @.str.504, !756, !"<string literal>", i1 false, i1 false}
!756 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1257, i32 5}
!757 = !{ptr @saa7164_api_dump_subdevs._entry.503, !756, !"_entry", i1 false, i1 false}
!758 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.505, !756, !"_entry_ptr", i1 false, i1 false}
!759 = !{ptr @.str.507, !760, !"<string literal>", i1 false, i1 false}
!760 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1260, i32 5}
!761 = !{ptr @saa7164_api_dump_subdevs._entry.506, !760, !"_entry", i1 false, i1 false}
!762 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.508, !760, !"_entry_ptr", i1 false, i1 false}
!763 = !{ptr @.str.510, !764, !"<string literal>", i1 false, i1 false}
!764 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1263, i32 5}
!765 = !{ptr @saa7164_api_dump_subdevs._entry.509, !764, !"_entry", i1 false, i1 false}
!766 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.511, !764, !"_entry_ptr", i1 false, i1 false}
!767 = !{ptr @.str.513, !768, !"<string literal>", i1 false, i1 false}
!768 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1266, i32 5}
!769 = !{ptr @saa7164_api_dump_subdevs._entry.512, !768, !"_entry", i1 false, i1 false}
!770 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.514, !768, !"_entry_ptr", i1 false, i1 false}
!771 = !{ptr @.str.516, !772, !"<string literal>", i1 false, i1 false}
!772 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1269, i32 5}
!773 = !{ptr @saa7164_api_dump_subdevs._entry.515, !772, !"_entry", i1 false, i1 false}
!774 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.517, !772, !"_entry_ptr", i1 false, i1 false}
!775 = !{ptr @.str.519, !776, !"<string literal>", i1 false, i1 false}
!776 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1271, i32 4}
!777 = !{ptr @saa7164_api_dump_subdevs._entry.518, !776, !"_entry", i1 false, i1 false}
!778 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.520, !776, !"_entry_ptr", i1 false, i1 false}
!779 = !{ptr @.str.522, !780, !"<string literal>", i1 false, i1 false}
!780 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1273, i32 4}
!781 = !{ptr @saa7164_api_dump_subdevs._entry.521, !780, !"_entry", i1 false, i1 false}
!782 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.523, !780, !"_entry_ptr", i1 false, i1 false}
!783 = !{ptr @saa7164_api_dump_subdevs._entry.524, !784, !"_entry", i1 false, i1 false}
!784 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1275, i32 4}
!785 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.525, !784, !"_entry_ptr", i1 false, i1 false}
!786 = !{ptr @saa7164_api_dump_subdevs._entry.526, !787, !"_entry", i1 false, i1 false}
!787 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1284, i32 5}
!788 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.527, !787, !"_entry_ptr", i1 false, i1 false}
!789 = !{ptr @.str.529, !790, !"<string literal>", i1 false, i1 false}
!790 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1290, i32 4}
!791 = !{ptr @saa7164_api_dump_subdevs._entry.528, !790, !"_entry", i1 false, i1 false}
!792 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.530, !790, !"_entry_ptr", i1 false, i1 false}
!793 = !{ptr @.str.532, !794, !"<string literal>", i1 false, i1 false}
!794 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1293, i32 4}
!795 = !{ptr @saa7164_api_dump_subdevs._entry.531, !794, !"_entry", i1 false, i1 false}
!796 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.533, !794, !"_entry_ptr", i1 false, i1 false}
!797 = !{ptr @.str.535, !798, !"<string literal>", i1 false, i1 false}
!798 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1296, i32 4}
!799 = !{ptr @saa7164_api_dump_subdevs._entry.534, !798, !"_entry", i1 false, i1 false}
!800 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.536, !798, !"_entry_ptr", i1 false, i1 false}
!801 = !{ptr @.str.538, !802, !"<string literal>", i1 false, i1 false}
!802 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1299, i32 3}
!803 = !{ptr @saa7164_api_dump_subdevs._entry.537, !802, !"_entry", i1 false, i1 false}
!804 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.539, !802, !"_entry_ptr", i1 false, i1 false}
!805 = !{ptr @.str.541, !806, !"<string literal>", i1 false, i1 false}
!806 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1300, i32 3}
!807 = !{ptr @saa7164_api_dump_subdevs._entry.540, !806, !"_entry", i1 false, i1 false}
!808 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.542, !806, !"_entry_ptr", i1 false, i1 false}
!809 = !{ptr @.str.544, !810, !"<string literal>", i1 false, i1 false}
!810 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1301, i32 3}
!811 = !{ptr @saa7164_api_dump_subdevs._entry.543, !810, !"_entry", i1 false, i1 false}
!812 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.545, !810, !"_entry_ptr", i1 false, i1 false}
!813 = !{ptr @.str.547, !814, !"<string literal>", i1 false, i1 false}
!814 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1302, i32 3}
!815 = !{ptr @saa7164_api_dump_subdevs._entry.546, !814, !"_entry", i1 false, i1 false}
!816 = !{ptr @saa7164_api_dump_subdevs._entry_ptr.548, !814, !"_entry_ptr", i1 false, i1 false}
!817 = !{ptr @.str.549, !818, !"<string literal>", i1 false, i1 false}
!818 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 851, i32 2}
!819 = !{ptr @.str.550, !818, !"<string literal>", i1 false, i1 false}
!820 = !{ptr @saa7164_api_configure_port_mpeg2ts._entry, !818, !"_entry", i1 false, i1 false}
!821 = !{ptr @saa7164_api_configure_port_mpeg2ts._entry_ptr, !818, !"_entry_ptr", i1 false, i1 false}
!822 = !{ptr @.str.552, !823, !"<string literal>", i1 false, i1 false}
!823 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 852, i32 2}
!824 = !{ptr @saa7164_api_configure_port_mpeg2ts._entry.551, !823, !"_entry", i1 false, i1 false}
!825 = !{ptr @saa7164_api_configure_port_mpeg2ts._entry_ptr.553, !823, !"_entry_ptr", i1 false, i1 false}
!826 = !{ptr @.str.555, !827, !"<string literal>", i1 false, i1 false}
!827 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 853, i32 2}
!828 = !{ptr @saa7164_api_configure_port_mpeg2ts._entry.554, !827, !"_entry", i1 false, i1 false}
!829 = !{ptr @saa7164_api_configure_port_mpeg2ts._entry_ptr.556, !827, !"_entry_ptr", i1 false, i1 false}
!830 = !{ptr @.str.558, !831, !"<string literal>", i1 false, i1 false}
!831 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 854, i32 2}
!832 = !{ptr @saa7164_api_configure_port_mpeg2ts._entry.557, !831, !"_entry", i1 false, i1 false}
!833 = !{ptr @saa7164_api_configure_port_mpeg2ts._entry_ptr.559, !831, !"_entry_ptr", i1 false, i1 false}
!834 = !{ptr @.str.561, !835, !"<string literal>", i1 false, i1 false}
!835 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 855, i32 2}
!836 = !{ptr @saa7164_api_configure_port_mpeg2ts._entry.560, !835, !"_entry", i1 false, i1 false}
!837 = !{ptr @saa7164_api_configure_port_mpeg2ts._entry_ptr.562, !835, !"_entry_ptr", i1 false, i1 false}
!838 = !{ptr @.str.564, !839, !"<string literal>", i1 false, i1 false}
!839 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 872, i32 2}
!840 = !{ptr @saa7164_api_configure_port_mpeg2ts._entry.563, !839, !"_entry", i1 false, i1 false}
!841 = !{ptr @saa7164_api_configure_port_mpeg2ts._entry_ptr.565, !839, !"_entry_ptr", i1 false, i1 false}
!842 = !{ptr @.str.567, !843, !"<string literal>", i1 false, i1 false}
!843 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 875, i32 2}
!844 = !{ptr @saa7164_api_configure_port_mpeg2ts._entry.566, !843, !"_entry", i1 false, i1 false}
!845 = !{ptr @saa7164_api_configure_port_mpeg2ts._entry_ptr.568, !843, !"_entry_ptr", i1 false, i1 false}
!846 = !{ptr @.str.569, !847, !"<string literal>", i1 false, i1 false}
!847 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 886, i32 2}
!848 = !{ptr @saa7164_api_configure_port_mpeg2ps._entry, !847, !"_entry", i1 false, i1 false}
!849 = !{ptr @saa7164_api_configure_port_mpeg2ps._entry_ptr, !847, !"_entry_ptr", i1 false, i1 false}
!850 = !{ptr @.str.571, !851, !"<string literal>", i1 false, i1 false}
!851 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 887, i32 2}
!852 = !{ptr @saa7164_api_configure_port_mpeg2ps._entry.570, !851, !"_entry", i1 false, i1 false}
!853 = !{ptr @saa7164_api_configure_port_mpeg2ps._entry_ptr.572, !851, !"_entry_ptr", i1 false, i1 false}
!854 = !{ptr @.str.574, !855, !"<string literal>", i1 false, i1 false}
!855 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 888, i32 2}
!856 = !{ptr @saa7164_api_configure_port_mpeg2ps._entry.573, !855, !"_entry", i1 false, i1 false}
!857 = !{ptr @saa7164_api_configure_port_mpeg2ps._entry_ptr.575, !855, !"_entry_ptr", i1 false, i1 false}
!858 = !{ptr @.str.577, !859, !"<string literal>", i1 false, i1 false}
!859 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 889, i32 2}
!860 = !{ptr @saa7164_api_configure_port_mpeg2ps._entry.576, !859, !"_entry", i1 false, i1 false}
!861 = !{ptr @saa7164_api_configure_port_mpeg2ps._entry_ptr.578, !859, !"_entry_ptr", i1 false, i1 false}
!862 = !{ptr @saa7164_api_configure_port_mpeg2ps._entry.579, !863, !"_entry", i1 false, i1 false}
!863 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 906, i32 2}
!864 = !{ptr @saa7164_api_configure_port_mpeg2ps._entry_ptr.580, !863, !"_entry_ptr", i1 false, i1 false}
!865 = !{ptr @.str.582, !866, !"<string literal>", i1 false, i1 false}
!866 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 909, i32 2}
!867 = !{ptr @saa7164_api_configure_port_mpeg2ps._entry.581, !866, !"_entry", i1 false, i1 false}
!868 = !{ptr @saa7164_api_configure_port_mpeg2ps._entry_ptr.583, !866, !"_entry_ptr", i1 false, i1 false}
!869 = !{ptr @.str.584, !870, !"<string literal>", i1 false, i1 false}
!870 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 815, i32 2}
!871 = !{ptr @.str.585, !870, !"<string literal>", i1 false, i1 false}
!872 = !{ptr @saa7164_api_configure_port_vbi._entry, !870, !"_entry", i1 false, i1 false}
!873 = !{ptr @saa7164_api_configure_port_vbi._entry_ptr, !870, !"_entry_ptr", i1 false, i1 false}
!874 = !{ptr @.str.587, !875, !"<string literal>", i1 false, i1 false}
!875 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 816, i32 2}
!876 = !{ptr @saa7164_api_configure_port_vbi._entry.586, !875, !"_entry", i1 false, i1 false}
!877 = !{ptr @saa7164_api_configure_port_vbi._entry_ptr.588, !875, !"_entry_ptr", i1 false, i1 false}
!878 = !{ptr @.str.590, !879, !"<string literal>", i1 false, i1 false}
!879 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 817, i32 2}
!880 = !{ptr @saa7164_api_configure_port_vbi._entry.589, !879, !"_entry", i1 false, i1 false}
!881 = !{ptr @saa7164_api_configure_port_vbi._entry_ptr.591, !879, !"_entry_ptr", i1 false, i1 false}
!882 = !{ptr @.str.593, !883, !"<string literal>", i1 false, i1 false}
!883 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 818, i32 2}
!884 = !{ptr @saa7164_api_configure_port_vbi._entry.592, !883, !"_entry", i1 false, i1 false}
!885 = !{ptr @saa7164_api_configure_port_vbi._entry_ptr.594, !883, !"_entry_ptr", i1 false, i1 false}
!886 = !{ptr @.str.596, !887, !"<string literal>", i1 false, i1 false}
!887 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 819, i32 2}
!888 = !{ptr @saa7164_api_configure_port_vbi._entry.595, !887, !"_entry", i1 false, i1 false}
!889 = !{ptr @saa7164_api_configure_port_vbi._entry_ptr.597, !887, !"_entry_ptr", i1 false, i1 false}
!890 = !{ptr @.str.599, !891, !"<string literal>", i1 false, i1 false}
!891 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 820, i32 2}
!892 = !{ptr @saa7164_api_configure_port_vbi._entry.598, !891, !"_entry", i1 false, i1 false}
!893 = !{ptr @saa7164_api_configure_port_vbi._entry_ptr.600, !891, !"_entry_ptr", i1 false, i1 false}
!894 = !{ptr @saa7164_api_configure_port_vbi._entry.601, !895, !"_entry", i1 false, i1 false}
!895 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 837, i32 2}
!896 = !{ptr @saa7164_api_configure_port_vbi._entry_ptr.602, !895, !"_entry_ptr", i1 false, i1 false}
!897 = !{ptr @.str.604, !898, !"<string literal>", i1 false, i1 false}
!898 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 840, i32 2}
!899 = !{ptr @saa7164_api_configure_port_vbi._entry.603, !898, !"_entry", i1 false, i1 false}
!900 = !{ptr @saa7164_api_configure_port_vbi._entry_ptr.605, !898, !"_entry_ptr", i1 false, i1 false}
!901 = !{ptr @.str.606, !902, !"<string literal>", i1 false, i1 false}
!902 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1483, i32 2}
!903 = !{ptr @.str.607, !902, !"<string literal>", i1 false, i1 false}
!904 = !{ptr @saa7164_api_modify_gpio._entry, !902, !"_entry", i1 false, i1 false}
!905 = !{ptr @saa7164_api_modify_gpio._entry_ptr, !902, !"_entry_ptr", i1 false, i1 false}
!906 = !{ptr @saa7164_api_modify_gpio._entry.608, !907, !"_entry", i1 false, i1 false}
!907 = !{!"../drivers/media/pci/saa7164/saa7164-api.c", i32 1495, i32 3}
!908 = !{ptr @saa7164_api_modify_gpio._entry_ptr.609, !907, !"_entry_ptr", i1 false, i1 false}
!909 = !{i32 1, !"wchar_size", i32 2}
!910 = !{i32 1, !"min_enum_size", i32 4}
!911 = !{i32 8, !"branch-target-enforcement", i32 0}
!912 = !{i32 8, !"sign-return-address", i32 0}
!913 = !{i32 8, !"sign-return-address-all", i32 0}
!914 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!915 = !{i32 7, !"uwtable", i32 1}
!916 = !{i32 7, !"frame-pointer", i32 2}
!917 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!918 = !{!"auto-init"}
!919 = !{i64 2158566895, i64 2158567399, i64 2158566932, i64 2158566988, i64 2158567022, i64 2158567046, i64 2158567087, i64 2158567108, i64 2158567136, i64 2158567170}
!920 = !{i64 2158640413, i64 2158640917, i64 2158640450, i64 2158640506, i64 2158640540, i64 2158640564, i64 2158640605, i64 2158640626, i64 2158640654, i64 2158640688}
