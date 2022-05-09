; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7164/saa7164-bus.c_pt.bc'
source_filename = "../drivers/media/pci/saa7164/saa7164-bus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.tmComResInfo = type <{ i8, i8, i16, i32, i16, i8 }>

@saa7164_bus_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&b->lock\00", [23 x i8] zeroinitializer }, align 32
@saa_debug = external dso_local local_unnamed_addr global i32, align 4
@saa7164_bus_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: Dumping the bus structure:\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"saa7164_bus_dump\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/saa7164/saa7164-bus.c\00", [56 x i8] zeroinitializer }, align 32
@saa7164_bus_dump._entry_ptr = internal global ptr @saa7164_bus_dump._entry, section ".printk_index", align 4
@saa7164_bus_dump._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:  .type             = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7164_bus_dump._entry_ptr.6 = internal global ptr @saa7164_bus_dump._entry.4, section ".printk_index", align 4
@saa7164_bus_dump._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:  .dev->bmmio       = 0x%p\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_bus_dump._entry_ptr.9 = internal global ptr @saa7164_bus_dump._entry.7, section ".printk_index", align 4
@saa7164_bus_dump._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:  .m_wMaxReqSize    = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_bus_dump._entry_ptr.12 = internal global ptr @saa7164_bus_dump._entry.10, section ".printk_index", align 4
@saa7164_bus_dump._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:  .m_pdwSetRing     = 0x%p\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_bus_dump._entry_ptr.15 = internal global ptr @saa7164_bus_dump._entry.13, section ".printk_index", align 4
@saa7164_bus_dump._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:  .m_dwSizeSetRing  = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_bus_dump._entry_ptr.18 = internal global ptr @saa7164_bus_dump._entry.16, section ".printk_index", align 4
@saa7164_bus_dump._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:  .m_pdwGetRing     = 0x%p\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_bus_dump._entry_ptr.21 = internal global ptr @saa7164_bus_dump._entry.19, section ".printk_index", align 4
@saa7164_bus_dump._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:  .m_dwSizeGetRing  = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_bus_dump._entry_ptr.24 = internal global ptr @saa7164_bus_dump._entry.22, section ".printk_index", align 4
@saa7164_bus_dump._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s:  .m_dwSetReadPos   = 0x%x (0x%08x)\0A\00", [54 x i8] zeroinitializer }, align 32
@saa7164_bus_dump._entry_ptr.27 = internal global ptr @saa7164_bus_dump._entry.25, section ".printk_index", align 4
@saa7164_bus_dump._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s:  .m_dwSetWritePos  = 0x%x (0x%08x)\0A\00", [54 x i8] zeroinitializer }, align 32
@saa7164_bus_dump._entry_ptr.30 = internal global ptr @saa7164_bus_dump._entry.28, section ".printk_index", align 4
@saa7164_bus_dump._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s:  .m_dwGetReadPos   = 0x%x (0x%08x)\0A\00", [54 x i8] zeroinitializer }, align 32
@saa7164_bus_dump._entry_ptr.33 = internal global ptr @saa7164_bus_dump._entry.31, section ".printk_index", align 4
@saa7164_bus_dump._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s:  .m_dwGetWritePos  = 0x%x (0x%08x)\0A\00", [54 x i8] zeroinitializer }, align 32
@saa7164_bus_dump._entry_ptr.36 = internal global ptr @saa7164_bus_dump._entry.34, section ".printk_index", align 4
@saa7164_bus_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\013%s() !msg\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa7164_bus_set\00", [16 x i8] zeroinitializer }, align 32
@saa7164_bus_set._entry_ptr = internal global ptr @saa7164_bus_set._entry, section ".printk_index", align 4
@saa7164_bus_set._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s: %s()\0A\00", [20 x i8] zeroinitializer }, align 32
@saa7164_bus_set._entry_ptr.41 = internal global ptr @saa7164_bus_set._entry.39, section ".printk_index", align 4
@saa7164_bus_set._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.3, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s() Exceeded dev->bus.m_wMaxReqSize\0A\00", [56 x i8] zeroinitializer }, align 32
@saa7164_bus_set._entry_ptr.44 = internal global ptr @saa7164_bus_set._entry.42, section ".printk_index", align 4
@saa7164_bus_set._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.3, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s() Missing message buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7164_bus_set._entry_ptr.47 = internal global ptr @saa7164_bus_set._entry.45, section ".printk_index", align 4
@saa7164_bus_set._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.3, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s() bytes_to_write = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@saa7164_bus_set._entry_ptr.50 = internal global ptr @saa7164_bus_set._entry.48, section ".printk_index", align 4
@saa7164_bus_set._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.38, ptr @.str.3, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s() free_write_space = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@saa7164_bus_set._entry_ptr.53 = internal global ptr @saa7164_bus_set._entry.51, section ".printk_index", align 4
@saa7164_bus_set._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.38, ptr @.str.3, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s() curr_srp = %x\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_bus_set._entry_ptr.56 = internal global ptr @saa7164_bus_set._entry.54, section ".printk_index", align 4
@saa7164_bus_set._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.38, ptr @.str.3, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s() curr_swp = %x\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_bus_set._entry_ptr.59 = internal global ptr @saa7164_bus_set._entry.57, section ".printk_index", align 4
@saa7164_bus_set._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.38, ptr @.str.3, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013%s() bus timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7164_bus_set._entry_ptr.62 = internal global ptr @saa7164_bus_set._entry.60, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@saa7164_bus_set._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.38, ptr @.str.3, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s() new_swp = %x\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7164_bus_set._entry_ptr.65 = internal global ptr @saa7164_bus_set._entry.63, section ".printk_index", align 4
@saa7164_bus_set._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.38, ptr @.str.3, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: %s() bus->m_dwSizeSetRing = %x\0A\00", [58 x i8] zeroinitializer }, align 32
@saa7164_bus_set._entry_ptr.68 = internal global ptr @saa7164_bus_set._entry.66, section ".printk_index", align 4
@saa7164_bus_set._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.38, ptr @.str.3, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: %s() space_rem = %x\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_bus_set._entry_ptr.71 = internal global ptr @saa7164_bus_set._entry.69, section ".printk_index", align 4
@saa7164_bus_set._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.38, ptr @.str.3, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s() sizeof(*msg) = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_bus_set._entry_ptr.74 = internal global ptr @saa7164_bus_set._entry.72, section ".printk_index", align 4
@saa7164_bus_set._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.38, ptr @.str.3, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: %s() tr4\0A\00", [16 x i8] zeroinitializer }, align 32
@saa7164_bus_set._entry_ptr.77 = internal global ptr @saa7164_bus_set._entry.75, section ".printk_index", align 4
@saa7164_bus_set._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.38, ptr @.str.3, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: %s() tr5\0A\00", [16 x i8] zeroinitializer }, align 32
@saa7164_bus_set._entry_ptr.80 = internal global ptr @saa7164_bus_set._entry.78, section ".printk_index", align 4
@saa7164_bus_set._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.38, ptr @.str.3, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: %s() tr6\0A\00", [16 x i8] zeroinitializer }, align 32
@saa7164_bus_set._entry_ptr.83 = internal global ptr @saa7164_bus_set._entry.81, section ".printk_index", align 4
@saa7164_bus_set._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.38, ptr @.str.3, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_bus_set._entry_ptr.85 = internal global ptr @saa7164_bus_set._entry.84, section ".printk_index", align 4
@saa7164_bus_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.86, ptr @.str.3, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa7164_bus_get\00", [16 x i8] zeroinitializer }, align 32
@saa7164_bus_get._entry_ptr = internal global ptr @saa7164_bus_get._entry, section ".printk_index", align 4
@saa7164_bus_get._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.3, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s() Missing msg buf, size should be %d bytes\0A\00", [47 x i8] zeroinitializer }, align 32
@saa7164_bus_get._entry_ptr.89 = internal global ptr @saa7164_bus_get._entry.87, section ".printk_index", align 4
@saa7164_bus_get._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.3, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s() No message/response found\0A\00", [62 x i8] zeroinitializer }, align 32
@saa7164_bus_get._entry_ptr.92 = internal global ptr @saa7164_bus_get._entry.90, section ".printk_index", align 4
@saa7164_bus_get._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.86, ptr @.str.3, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s() Unexpected msg miss-match\0A\00", [62 x i8] zeroinitializer }, align 32
@saa7164_bus_get._entry_ptr.95 = internal global ptr @saa7164_bus_get._entry.93, section ".printk_index", align 4
@saa7164_bus_get._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.86, ptr @.str.3, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013%s() Invalid bus state, missing msg or mangled ring, faulty H/W / bad code?\0A\00", [49 x i8] zeroinitializer }, align 32
@saa7164_bus_get._entry_ptr.98 = internal global ptr @saa7164_bus_get._entry.96, section ".printk_index", align 4
@saa7164_bus_dumpmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.3, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Dumping msg structure:\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saa7164_bus_dumpmsg\00", [44 x i8] zeroinitializer }, align 32
@saa7164_bus_dumpmsg._entry_ptr = internal global ptr @saa7164_bus_dumpmsg._entry, section ".printk_index", align 4
@saa7164_bus_dumpmsg._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.3, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:  .id               = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7164_bus_dumpmsg._entry_ptr.103 = internal global ptr @saa7164_bus_dumpmsg._entry.101, section ".printk_index", align 4
@saa7164_bus_dumpmsg._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.100, ptr @.str.3, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:  .flags            = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_bus_dumpmsg._entry_ptr.106 = internal global ptr @saa7164_bus_dumpmsg._entry.104, section ".printk_index", align 4
@saa7164_bus_dumpmsg._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.100, ptr @.str.3, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:  .size             = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_bus_dumpmsg._entry_ptr.109 = internal global ptr @saa7164_bus_dumpmsg._entry.107, section ".printk_index", align 4
@saa7164_bus_dumpmsg._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.100, ptr @.str.3, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:  .command          = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_bus_dumpmsg._entry_ptr.112 = internal global ptr @saa7164_bus_dumpmsg._entry.110, section ".printk_index", align 4
@saa7164_bus_dumpmsg._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.100, ptr @.str.3, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:  .controlselector  = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_bus_dumpmsg._entry_ptr.115 = internal global ptr @saa7164_bus_dumpmsg._entry.113, section ".printk_index", align 4
@saa7164_bus_dumpmsg._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.100, ptr @.str.3, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:  .seqno            = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7164_bus_dumpmsg._entry_ptr.118 = internal global ptr @saa7164_bus_dumpmsg._entry.116, section ".printk_index", align 4
@saa7164_bus_dumpmsg._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.100, ptr @.str.3, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:  .buffer (ignored)\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_bus_dumpmsg._entry_ptr.121 = internal global ptr @saa7164_bus_dumpmsg._entry.119, section ".printk_index", align 4
@___asan_gen_.122 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 17, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 46, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 47, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 48, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 49, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 50, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 51, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 52, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 53, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 55, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 58, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 61, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 64, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 130, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 134, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 139, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 145, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 166, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 169, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 172, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 173, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 179, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 205, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 206, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 229, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 232, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 236, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 247, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 269, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 277, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 320, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 326, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 357, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 395, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 416, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 98, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 99, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 100, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 101, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 102, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 103, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 104, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.386 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.387 = private constant [43 x i8] c"../drivers/media/pci/saa7164/saa7164-bus.c\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 106, i32 3 }
@llvm.compiler.used = appending global [131 x ptr] [ptr @saa7164_bus_dump._entry, ptr @saa7164_bus_dump._entry.10, ptr @saa7164_bus_dump._entry.13, ptr @saa7164_bus_dump._entry.16, ptr @saa7164_bus_dump._entry.19, ptr @saa7164_bus_dump._entry.22, ptr @saa7164_bus_dump._entry.25, ptr @saa7164_bus_dump._entry.28, ptr @saa7164_bus_dump._entry.31, ptr @saa7164_bus_dump._entry.34, ptr @saa7164_bus_dump._entry.4, ptr @saa7164_bus_dump._entry.7, ptr @saa7164_bus_dump._entry_ptr, ptr @saa7164_bus_dump._entry_ptr.12, ptr @saa7164_bus_dump._entry_ptr.15, ptr @saa7164_bus_dump._entry_ptr.18, ptr @saa7164_bus_dump._entry_ptr.21, ptr @saa7164_bus_dump._entry_ptr.24, ptr @saa7164_bus_dump._entry_ptr.27, ptr @saa7164_bus_dump._entry_ptr.30, ptr @saa7164_bus_dump._entry_ptr.33, ptr @saa7164_bus_dump._entry_ptr.36, ptr @saa7164_bus_dump._entry_ptr.6, ptr @saa7164_bus_dump._entry_ptr.9, ptr @saa7164_bus_dumpmsg._entry, ptr @saa7164_bus_dumpmsg._entry.101, ptr @saa7164_bus_dumpmsg._entry.104, ptr @saa7164_bus_dumpmsg._entry.107, ptr @saa7164_bus_dumpmsg._entry.110, ptr @saa7164_bus_dumpmsg._entry.113, ptr @saa7164_bus_dumpmsg._entry.116, ptr @saa7164_bus_dumpmsg._entry.119, ptr @saa7164_bus_dumpmsg._entry_ptr, ptr @saa7164_bus_dumpmsg._entry_ptr.103, ptr @saa7164_bus_dumpmsg._entry_ptr.106, ptr @saa7164_bus_dumpmsg._entry_ptr.109, ptr @saa7164_bus_dumpmsg._entry_ptr.112, ptr @saa7164_bus_dumpmsg._entry_ptr.115, ptr @saa7164_bus_dumpmsg._entry_ptr.118, ptr @saa7164_bus_dumpmsg._entry_ptr.121, ptr @saa7164_bus_get._entry, ptr @saa7164_bus_get._entry.87, ptr @saa7164_bus_get._entry.90, ptr @saa7164_bus_get._entry.93, ptr @saa7164_bus_get._entry.96, ptr @saa7164_bus_get._entry_ptr, ptr @saa7164_bus_get._entry_ptr.89, ptr @saa7164_bus_get._entry_ptr.92, ptr @saa7164_bus_get._entry_ptr.95, ptr @saa7164_bus_get._entry_ptr.98, ptr @saa7164_bus_set._entry, ptr @saa7164_bus_set._entry.39, ptr @saa7164_bus_set._entry.42, ptr @saa7164_bus_set._entry.45, ptr @saa7164_bus_set._entry.48, ptr @saa7164_bus_set._entry.51, ptr @saa7164_bus_set._entry.54, ptr @saa7164_bus_set._entry.57, ptr @saa7164_bus_set._entry.60, ptr @saa7164_bus_set._entry.63, ptr @saa7164_bus_set._entry.66, ptr @saa7164_bus_set._entry.69, ptr @saa7164_bus_set._entry.72, ptr @saa7164_bus_set._entry.75, ptr @saa7164_bus_set._entry.78, ptr @saa7164_bus_set._entry.81, ptr @saa7164_bus_set._entry.84, ptr @saa7164_bus_set._entry_ptr, ptr @saa7164_bus_set._entry_ptr.41, ptr @saa7164_bus_set._entry_ptr.44, ptr @saa7164_bus_set._entry_ptr.47, ptr @saa7164_bus_set._entry_ptr.50, ptr @saa7164_bus_set._entry_ptr.53, ptr @saa7164_bus_set._entry_ptr.56, ptr @saa7164_bus_set._entry_ptr.59, ptr @saa7164_bus_set._entry_ptr.62, ptr @saa7164_bus_set._entry_ptr.65, ptr @saa7164_bus_set._entry_ptr.68, ptr @saa7164_bus_set._entry_ptr.71, ptr @saa7164_bus_set._entry_ptr.74, ptr @saa7164_bus_set._entry_ptr.77, ptr @saa7164_bus_set._entry_ptr.80, ptr @saa7164_bus_set._entry_ptr.83, ptr @saa7164_bus_set._entry_ptr.85, ptr @saa7164_bus_setup.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dump._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dump._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dump._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dump._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dump._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dump._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dump._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dump._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dump._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dump._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dump._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_set._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_set._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_set._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_set._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_set._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_set._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_set._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_set._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_set._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_set._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_set._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_set._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_set._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_set._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_set._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_set._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_get._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_get._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_get._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_get._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dumpmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dumpmsg._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dumpmsg._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dumpmsg._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dumpmsg._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dumpmsg._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dumpmsg._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bus_dumpmsg._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_bus_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22
  %lock = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 10
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @saa7164_bus_setup.__key) #5
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %bus, align 4
  %m_wMaxReqSize = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 1
  %1 = ptrtoint ptr %m_wMaxReqSize to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 256, ptr %m_wMaxReqSize, align 4
  %bmmio = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 9
  %2 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmmio, align 8
  %busdesc = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 21
  %4 = ptrtoint ptr %busdesc to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %busdesc, align 8
  %conv = trunc i64 %5 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv
  %m_pdwSetRing = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 2
  %6 = ptrtoint ptr %m_pdwSetRing to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %m_pdwSetRing, align 4
  %m_dwSizeSetRing = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 3
  %7 = ptrtoint ptr %m_dwSizeSetRing to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4096, ptr %m_dwSizeSetRing, align 4
  %ResponseRing = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 21, i32 1
  %8 = ptrtoint ptr %ResponseRing to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ResponseRing, align 8
  %conv3 = trunc i64 %9 to i32
  %add.ptr4 = getelementptr i8, ptr %3, i32 %conv3
  %m_pdwGetRing = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 4
  %10 = ptrtoint ptr %m_pdwGetRing to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4, ptr %m_pdwGetRing, align 4
  %m_dwSizeGetRing = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 5
  %11 = ptrtoint ptr %m_dwSizeGetRing to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4096, ptr %m_dwSizeGetRing, align 4
  %BARLocation = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 20, i32 9
  %12 = ptrtoint ptr %BARLocation to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %BARLocation, align 1
  %conv5 = zext i8 %13 to i32
  %add = add nuw nsw i32 %conv5, 16
  %m_dwSetWritePos = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 6
  %14 = ptrtoint ptr %m_dwSetWritePos to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %m_dwSetWritePos, align 4
  %add7 = add nuw nsw i32 %conv5, 20
  %m_dwSetReadPos = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 7
  %15 = ptrtoint ptr %m_dwSetReadPos to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add7, ptr %m_dwSetReadPos, align 4
  %add9 = add nuw nsw i32 %conv5, 24
  %m_dwGetWritePos = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 8
  %16 = ptrtoint ptr %m_dwGetWritePos to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add9, ptr %m_dwGetWritePos, align 4
  %add11 = add nuw nsw i32 %conv5, 28
  %m_dwGetReadPos = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 9
  %17 = ptrtoint ptr %m_dwGetReadPos to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add11, ptr %m_dwGetReadPos, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7164_bus_dump(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %0 = load i32, ptr @saa_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body4_crit_edge, label %do.end

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name) #8
  br label %do.body4

do.body4:                                         ; preds = %do.end, %entry.do.body4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %1 = load i32, ptr @saa_debug, align 4
  %and5 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.body4.do.body18_crit_edge, label %do.end10

do.body4.do.body18_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18

do.end10:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %name12 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name12, i32 noundef %3) #8
  br label %do.body18

do.body18:                                        ; preds = %do.end10, %do.body4.do.body18_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %4 = load i32, ptr @saa_debug, align 4
  %and19 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.do.body32_crit_edge, label %do.end24

do.body18.do.body32_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body32

do.end24:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  %name26 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %bmmio = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 9
  %5 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bmmio, align 8
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name26, ptr noundef %6) #8
  br label %do.body32

do.body32:                                        ; preds = %do.end24, %do.body18.do.body32_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %7 = load i32, ptr @saa_debug, align 4
  %and33 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body32.do.body46_crit_edge, label %do.end38

do.body32.do.body46_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body46

do.end38:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #7
  %name40 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %m_wMaxReqSize = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 1
  %8 = ptrtoint ptr %m_wMaxReqSize to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %m_wMaxReqSize, align 4
  %conv = zext i16 %9 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name40, i32 noundef %conv) #8
  br label %do.body46

do.body46:                                        ; preds = %do.end38, %do.body32.do.body46_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %10 = load i32, ptr @saa_debug, align 4
  %and47 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.body46.do.body60_crit_edge, label %do.end52

do.body46.do.body60_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body60

do.end52:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #7
  %name54 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %m_pdwSetRing = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 2
  %11 = ptrtoint ptr %m_pdwSetRing to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m_pdwSetRing, align 4
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name54, ptr noundef %12) #8
  br label %do.body60

do.body60:                                        ; preds = %do.end52, %do.body46.do.body60_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %13 = load i32, ptr @saa_debug, align 4
  %and61 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body60.do.body74_crit_edge, label %do.end66

do.body60.do.body74_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body74

do.end66:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  %name68 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %m_dwSizeSetRing = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 3
  %14 = ptrtoint ptr %m_dwSizeSetRing to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m_dwSizeSetRing, align 4
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name68, i32 noundef %15) #8
  br label %do.body74

do.body74:                                        ; preds = %do.end66, %do.body60.do.body74_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %16 = load i32, ptr @saa_debug, align 4
  %and75 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body74.do.body88_crit_edge, label %do.end80

do.body74.do.body88_crit_edge:                    ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body88

do.end80:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  %name82 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %m_pdwGetRing = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 4
  %17 = ptrtoint ptr %m_pdwGetRing to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m_pdwGetRing, align 4
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name82, ptr noundef %18) #8
  br label %do.body88

do.body88:                                        ; preds = %do.end80, %do.body74.do.body88_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %19 = load i32, ptr @saa_debug, align 4
  %and89 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body88.do.body102_crit_edge, label %do.end94

do.body88.do.body102_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body102

do.end94:                                         ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #7
  %name96 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %m_dwSizeGetRing = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 5
  %20 = ptrtoint ptr %m_dwSizeGetRing to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %m_dwSizeGetRing, align 4
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name96, i32 noundef %21) #8
  br label %do.body102

do.body102:                                       ; preds = %do.end94, %do.body88.do.body102_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %22 = load i32, ptr @saa_debug, align 4
  %and103 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %do.body102.do.body120_crit_edge, label %do.end108

do.body102.do.body120_crit_edge:                  ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body120

do.end108:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #7
  %name110 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %m_dwSetReadPos = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 7
  %23 = ptrtoint ptr %m_dwSetReadPos to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %m_dwSetReadPos, align 4
  %lmmio = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 8
  %25 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio, align 4
  %shr = lshr i32 %24, 2
  %add.ptr = getelementptr i32, ptr %26, i32 %shr
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !183
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !184
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name110, i32 noundef %24, i32 noundef %28) #8
  br label %do.body120

do.body120:                                       ; preds = %do.end108, %do.body102.do.body120_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %29 = load i32, ptr @saa_debug, align 4
  %and121 = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %do.body120.do.body143_crit_edge, label %do.end126

do.body120.do.body143_crit_edge:                  ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body143

do.end126:                                        ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #7
  %name128 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %m_dwSetWritePos = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 6
  %30 = ptrtoint ptr %m_dwSetWritePos to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %m_dwSetWritePos, align 4
  %lmmio132 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 8
  %32 = ptrtoint ptr %lmmio132 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lmmio132, align 4
  %shr134 = lshr i32 %31, 2
  %add.ptr135 = getelementptr i32, ptr %33, i32 %shr134
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135) #5, !srcloc !183
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !185
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name128, i32 noundef %31, i32 noundef %35) #8
  br label %do.body143

do.body143:                                       ; preds = %do.end126, %do.body120.do.body143_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %36 = load i32, ptr @saa_debug, align 4
  %and144 = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %do.body143.do.body166_crit_edge, label %do.end149

do.body143.do.body166_crit_edge:                  ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body166

do.end149:                                        ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #7
  %name151 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %m_dwGetReadPos = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 9
  %37 = ptrtoint ptr %m_dwGetReadPos to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %m_dwGetReadPos, align 4
  %lmmio155 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 8
  %39 = ptrtoint ptr %lmmio155 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lmmio155, align 4
  %shr157 = lshr i32 %38, 2
  %add.ptr158 = getelementptr i32, ptr %40, i32 %shr157
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr158) #5, !srcloc !183
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !186
  %call162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name151, i32 noundef %38, i32 noundef %42) #8
  br label %do.body166

do.body166:                                       ; preds = %do.end149, %do.body143.do.body166_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %43 = load i32, ptr @saa_debug, align 4
  %and167 = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %do.body166.do.end188_crit_edge, label %do.end172

do.body166.do.end188_crit_edge:                   ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end188

do.end172:                                        ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #7
  %name174 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %m_dwGetWritePos = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 8
  %44 = ptrtoint ptr %m_dwGetWritePos to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %m_dwGetWritePos, align 4
  %lmmio178 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 8
  %46 = ptrtoint ptr %lmmio178 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lmmio178, align 4
  %shr180 = lshr i32 %45, 2
  %add.ptr181 = getelementptr i32, ptr %47, i32 %shr180
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr181) #5, !srcloc !183
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !187
  %call185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name174, i32 noundef %45, i32 noundef %49) #8
  br label %do.end188

do.end188:                                        ; preds = %do.end172, %do.body166.do.end188_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_bus_set(ptr noundef %dev, ptr noundef %msg, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %msg, null
  br i1 %tobool.not, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #8
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %0 = load i32, ptr @saa_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body2.do.end12_crit_edge, label %do.end7

do.body2.do.end12_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

do.end7:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name, ptr noundef nonnull @.str.38) #8
  br label %do.end12

do.end12:                                         ; preds = %do.end7, %do.body2.do.end12_crit_edge
  tail call fastcc void @saa7164_bus_verify(ptr noundef %dev)
  %size13 = getelementptr inbounds %struct.tmComResInfo, ptr %msg, i32 0, i32 2
  %1 = ptrtoint ptr %size13 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %size13, align 1
  %m_wMaxReqSize = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 1
  %3 = ptrtoint ptr %m_wMaxReqSize to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %m_wMaxReqSize, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %4)
  %cmp = icmp ugt i16 %2, %4
  br i1 %cmp, label %do.end20, label %if.end23

do.end20:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.38) #8
  br label %cleanup

if.end23:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp26.not = icmp ne i16 %2, 0
  %cmp28 = icmp eq ptr %buf, null
  %or.cond = and i1 %cmp28, %cmp26.not
  br i1 %or.cond, label %do.end33, label %if.end36

do.end33:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.38) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end23
  %lock = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %5 = ptrtoint ptr %size13 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %size13, align 1
  %conv38 = zext i16 %6 to i32
  %add = add nuw nsw i32 %conv38, 11
  %lmmio = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %m_dwSetReadPos = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 7
  %9 = ptrtoint ptr %m_dwSetReadPos to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %m_dwSetReadPos, align 4
  %shr = lshr i32 %10, 2
  %add.ptr = getelementptr i32, ptr %8, i32 %shr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !183
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !188
  %13 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio, align 4
  %m_dwSetWritePos = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 6
  %15 = ptrtoint ptr %m_dwSetWritePos to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_dwSetWritePos, align 4
  %shr45 = lshr i32 %16, 2
  %add.ptr46 = getelementptr i32, ptr %14, i32 %shr45
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #5, !srcloc !183
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !189
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %18)
  %cmp50 = icmp ugt i32 %12, %18
  br i1 %cmp50, label %if.end36.do.body56_crit_edge, label %if.else

if.end36.do.body56_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body56

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %m_dwSizeSetRing = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 3
  %19 = ptrtoint ptr %m_dwSizeSetRing to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %m_dwSizeSetRing, align 4
  %add53 = add i32 %20, %12
  br label %do.body56

do.body56:                                        ; preds = %if.else, %if.end36.do.body56_crit_edge
  %.pn = phi i32 [ %add53, %if.else ], [ %12, %if.end36.do.body56_crit_edge ]
  %free_write_space.0 = sub i32 %.pn, %18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %21 = load i32, ptr @saa_debug, align 4
  %and57 = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body56.do.body70_crit_edge, label %do.end62

do.body56.do.body70_crit_edge:                    ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body70

do.end62:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  %name64 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name64, ptr noundef nonnull @.str.38, i32 noundef %add) #8
  br label %do.body70

do.body70:                                        ; preds = %do.end62, %do.body56.do.body70_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %22 = load i32, ptr @saa_debug, align 4
  %and71 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.body70.do.body84_crit_edge, label %do.end76

do.body70.do.body84_crit_edge:                    ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body84

do.end76:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #7
  %name78 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name78, ptr noundef nonnull @.str.38, i32 noundef %free_write_space.0) #8
  br label %do.body84

do.body84:                                        ; preds = %do.end76, %do.body70.do.body84_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %23 = load i32, ptr @saa_debug, align 4
  %and85 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %do.body84.do.body98_crit_edge, label %do.end90

do.body84.do.body98_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body98

do.end90:                                         ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #7
  %name92 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name92, ptr noundef nonnull @.str.38, i32 noundef %12) #8
  br label %do.body98

do.body98:                                        ; preds = %do.end90, %do.body84.do.body98_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %24 = load i32, ptr @saa_debug, align 4
  %and99 = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %do.body98.do.end111_crit_edge, label %do.end104

do.body98.do.end111_crit_edge:                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end111

do.end104:                                        ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #7
  %name106 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name106, ptr noundef nonnull @.str.38, i32 noundef %18) #8
  br label %do.end111

do.end111:                                        ; preds = %do.end104, %do.body98.do.end111_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %free_write_space.0)
  %cmp112.not450 = icmp ult i32 %add, %free_write_space.0
  br i1 %cmp112.not450, label %do.end111.while.end_crit_edge, label %while.body.lr.ph

do.end111.while.end_crit_edge:                    ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end111
  %m_dwSizeSetRing137 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end140.while.body_crit_edge, %while.body.lr.ph
  %timeout.0451 = phi i32 [ 50, %while.body.lr.ph ], [ %dec, %if.end140.while.body_crit_edge ]
  %dec = add nsw i32 %timeout.0451, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0451)
  %cmp114 = icmp eq i32 %timeout.0451, 0
  br i1 %cmp114, label %do.end119, label %if.end122

do.end119:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.38) #8
  br label %out

if.end122:                                        ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #5
  %26 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio, align 4
  %28 = ptrtoint ptr %m_dwSetReadPos to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %m_dwSetReadPos, align 4
  %shr127 = lshr i32 %29, 2
  %add.ptr128 = getelementptr i32, ptr %27, i32 %shr127
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr128) #5, !srcloc !183
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !190
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %18)
  %cmp132 = icmp ugt i32 %31, %18
  br i1 %cmp132, label %if.end122.if.end140_crit_edge, label %if.else136

if.end122.if.end140_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140

if.else136:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %m_dwSizeSetRing137 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %m_dwSizeSetRing137, align 4
  %add138 = add i32 %33, %31
  br label %if.end140

if.end140:                                        ; preds = %if.else136, %if.end122.if.end140_crit_edge
  %.pn449 = phi i32 [ %add138, %if.else136 ], [ %31, %if.end122.if.end140_crit_edge ]
  %free_write_space.2 = sub i32 %.pn449, %18
  %cmp112.not = icmp ult i32 %add, %free_write_space.2
  br i1 %cmp112.not, label %if.end140.while.end_crit_edge, label %if.end140.while.body_crit_edge

if.end140.while.body_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end140.while.end_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end140.while.end_crit_edge, %do.end111.while.end_crit_edge
  %add141 = add i32 %18, %add
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %34 = load i32, ptr @saa_debug, align 4
  %and143 = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %while.end.do.body156_crit_edge, label %do.end148

while.end.do.body156_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body156

do.end148:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %name150 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name150, ptr noundef nonnull @.str.38, i32 noundef %add141) #8
  br label %do.body156

do.body156:                                       ; preds = %do.end148, %while.end.do.body156_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %35 = load i32, ptr @saa_debug, align 4
  %and157 = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %do.body156.do.end170_crit_edge, label %do.end162

do.body156.do.end170_crit_edge:                   ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end170

do.end162:                                        ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #7
  %name164 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %m_dwSizeSetRing166 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 3
  %36 = ptrtoint ptr %m_dwSizeSetRing166 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %m_dwSizeSetRing166, align 4
  %call167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name164, ptr noundef nonnull @.str.38, i32 noundef %37) #8
  br label %do.end170

do.end170:                                        ; preds = %do.end162, %do.body156.do.end170_crit_edge
  %38 = ptrtoint ptr %size13 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %size13, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %41 = ptrtoint ptr %size13 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %size13, align 1
  %command = getelementptr inbounds %struct.tmComResInfo, ptr %msg, i32 0, i32 3
  %42 = ptrtoint ptr %command to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %command, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %command to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %command, align 1
  %controlselector = getelementptr inbounds %struct.tmComResInfo, ptr %msg, i32 0, i32 4
  %46 = ptrtoint ptr %controlselector to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %controlselector, align 1
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  %49 = ptrtoint ptr %controlselector to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %48, ptr %controlselector, align 1
  %m_dwSizeSetRing176 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 3
  %50 = ptrtoint ptr %m_dwSizeSetRing176 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %m_dwSizeSetRing176, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add141, i32 %51)
  %cmp177 = icmp ugt i32 %add141, %51
  br i1 %cmp177, label %if.then179, label %do.body278

if.then179:                                       ; preds = %do.end170
  %sub181 = sub i32 %add141, %51
  %sub183 = sub i32 %51, %18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %52 = load i32, ptr @saa_debug, align 4
  %and185 = and i32 %52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.then179.do.body198_crit_edge, label %do.end190

if.then179.do.body198_crit_edge:                  ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body198

do.end190:                                        ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #7
  %name192 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name192, ptr noundef nonnull @.str.38, i32 noundef %sub183) #8
  br label %do.body198

do.body198:                                       ; preds = %do.end190, %if.then179.do.body198_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %53 = load i32, ptr @saa_debug, align 4
  %and199 = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %do.body198.do.end211_crit_edge, label %do.end204

do.body198.do.end211_crit_edge:                   ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end211

do.end204:                                        ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #7
  %name206 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name206, ptr noundef nonnull @.str.38, i32 noundef 11) #8
  br label %do.end211

do.end211:                                        ; preds = %do.end204, %do.body198.do.end211_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub183)
  %cmp212 = icmp ult i32 %sub183, 11
  br i1 %cmp212, label %do.body215, label %if.else237

do.body215:                                       ; preds = %do.end211
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %54 = load i32, ptr @saa_debug, align 4
  %and216 = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %do.body215.do.end228_crit_edge, label %do.end221

do.body215.do.end228_crit_edge:                   ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end228

do.end221:                                        ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #7
  %name223 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name223, ptr noundef nonnull @.str.38) #8
  br label %do.end228

do.end228:                                        ; preds = %do.end221, %do.body215.do.end228_crit_edge
  %m_pdwSetRing = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 2
  %55 = ptrtoint ptr %m_pdwSetRing to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %m_pdwSetRing, align 4
  %add.ptr229 = getelementptr i8, ptr %56, i32 %18
  tail call void @mmiocpy(ptr noundef %add.ptr229, ptr noundef nonnull %msg, i32 noundef %sub183) #5
  %57 = ptrtoint ptr %m_pdwSetRing to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %m_pdwSetRing, align 4
  %add.ptr231 = getelementptr i8, ptr %msg, i32 %sub183
  %sub232 = sub nuw nsw i32 11, %sub183
  tail call void @mmiocpy(ptr noundef %58, ptr noundef %add.ptr231, i32 noundef %sub232) #5
  %59 = ptrtoint ptr %m_pdwSetRing to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %m_pdwSetRing, align 4
  %add.ptr234 = getelementptr i8, ptr %60, i32 11
  %idx.neg = sub nsw i32 0, %sub183
  %add.ptr235 = getelementptr i8, ptr %add.ptr234, i32 %idx.neg
  %conv236 = zext i16 %39 to i32
  tail call void @mmiocpy(ptr noundef %add.ptr235, ptr noundef %buf, i32 noundef %conv236) #5
  br label %do.body299

if.else237:                                       ; preds = %do.end211
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub183)
  %cmp238 = icmp eq i32 %sub183, 11
  br i1 %cmp238, label %do.body241, label %if.else259

do.body241:                                       ; preds = %if.else237
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %61 = load i32, ptr @saa_debug, align 4
  %and242 = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and242)
  %tobool243.not = icmp eq i32 %and242, 0
  br i1 %tobool243.not, label %do.body241.do.end254_crit_edge, label %do.end247

do.body241.do.end254_crit_edge:                   ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end254

do.end247:                                        ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #7
  %name249 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call251 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name249, ptr noundef nonnull @.str.38) #8
  br label %do.end254

do.end254:                                        ; preds = %do.end247, %do.body241.do.end254_crit_edge
  %m_pdwSetRing255 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 2
  %62 = ptrtoint ptr %m_pdwSetRing255 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %m_pdwSetRing255, align 4
  %add.ptr256 = getelementptr i8, ptr %63, i32 %18
  tail call void @mmiocpy(ptr noundef %add.ptr256, ptr noundef nonnull %msg, i32 noundef 11) #5
  %64 = ptrtoint ptr %m_pdwSetRing255 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %m_pdwSetRing255, align 4
  %conv258 = zext i16 %39 to i32
  tail call void @mmiocpy(ptr noundef %65, ptr noundef %buf, i32 noundef %conv258) #5
  br label %do.body299

if.else259:                                       ; preds = %if.else237
  %m_pdwSetRing260 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 2
  %66 = ptrtoint ptr %m_pdwSetRing260 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %m_pdwSetRing260, align 4
  %add.ptr261 = getelementptr i8, ptr %67, i32 %18
  tail call void @mmiocpy(ptr noundef %add.ptr261, ptr noundef nonnull %msg, i32 noundef 11) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp263.not = icmp eq i16 %39, 0
  br i1 %cmp263.not, label %if.else259.do.body299_crit_edge, label %if.then265

if.else259.do.body299_crit_edge:                  ; preds = %if.else259
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body299

if.then265:                                       ; preds = %if.else259
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %m_pdwSetRing260 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %m_pdwSetRing260, align 4
  %add.ptr267 = getelementptr i8, ptr %69, i32 %18
  %add.ptr268 = getelementptr i8, ptr %add.ptr267, i32 11
  %sub269 = add i32 %sub183, -11
  tail call void @mmiocpy(ptr noundef %add.ptr268, ptr noundef %buf, i32 noundef %sub269) #5
  %70 = ptrtoint ptr %m_pdwSetRing260 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %m_pdwSetRing260, align 4
  %add.ptr271 = getelementptr i8, ptr %buf, i32 %sub183
  %add.ptr272 = getelementptr i8, ptr %add.ptr271, i32 -11
  %sub273 = sub i32 %add, %sub183
  tail call void @mmiocpy(ptr noundef %71, ptr noundef %add.ptr272, i32 noundef %sub273) #5
  br label %do.body299

do.body278:                                       ; preds = %do.end170
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %72 = load i32, ptr @saa_debug, align 4
  %and279 = and i32 %72, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and279)
  %tobool280.not = icmp eq i32 %and279, 0
  br i1 %tobool280.not, label %do.body278.do.end291_crit_edge, label %do.end284

do.body278.do.end291_crit_edge:                   ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end291

do.end284:                                        ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #7
  %name286 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call288 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name286, ptr noundef nonnull @.str.38) #8
  br label %do.end291

do.end291:                                        ; preds = %do.end284, %do.body278.do.end291_crit_edge
  %m_pdwSetRing292 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 2
  %73 = ptrtoint ptr %m_pdwSetRing292 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %m_pdwSetRing292, align 4
  %add.ptr293 = getelementptr i8, ptr %74, i32 %18
  tail call void @mmiocpy(ptr noundef %add.ptr293, ptr noundef nonnull %msg, i32 noundef 11) #5
  %75 = ptrtoint ptr %m_pdwSetRing292 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %m_pdwSetRing292, align 4
  %add.ptr295 = getelementptr i8, ptr %76, i32 %18
  %add.ptr296 = getelementptr i8, ptr %add.ptr295, i32 11
  %conv297 = zext i16 %39 to i32
  tail call void @mmiocpy(ptr noundef %add.ptr296, ptr noundef %buf, i32 noundef %conv297) #5
  br label %do.body299

do.body299:                                       ; preds = %do.end291, %if.then265, %if.else259.do.body299_crit_edge, %do.end254, %do.end228
  %new_swp.0 = phi i32 [ %sub181, %do.end228 ], [ %sub181, %do.end254 ], [ %sub181, %if.then265 ], [ %sub181, %if.else259.do.body299_crit_edge ], [ %add141, %do.end291 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %77 = load i32, ptr @saa_debug, align 4
  %and300 = and i32 %77, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and300)
  %tobool301.not = icmp eq i32 %and300, 0
  br i1 %tobool301.not, label %do.body299.do.body313_crit_edge, label %do.end305

do.body299.do.body313_crit_edge:                  ; preds = %do.body299
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body313

do.end305:                                        ; preds = %do.body299
  call void @__sanitizer_cov_trace_pc() #7
  %name307 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call309 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name307, ptr noundef nonnull @.str.38, i32 noundef %new_swp.0) #8
  br label %do.body313

do.body313:                                       ; preds = %do.end305, %do.body299.do.body313_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !191
  tail call void @arm_heavy_mb() #5
  %78 = tail call i32 @llvm.bswap.i32(i32 %new_swp.0)
  %79 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lmmio, align 4
  %81 = ptrtoint ptr %m_dwSetWritePos to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %m_dwSetWritePos, align 4
  %shr318 = lshr i32 %82, 2
  %add.ptr319 = getelementptr i32, ptr %80, i32 %shr318
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr319, i32 %78) #5, !srcloc !192
  %83 = ptrtoint ptr %size13 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %size13, align 1
  %85 = tail call i16 @llvm.bswap.i16(i16 %84)
  %86 = ptrtoint ptr %size13 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 %85, ptr %size13, align 1
  %87 = ptrtoint ptr %command to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %command, align 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %90 = ptrtoint ptr %command to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %89, ptr %command, align 1
  %91 = ptrtoint ptr %controlselector to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %controlselector, align 1
  %93 = tail call i16 @llvm.bswap.i16(i16 %92)
  %94 = ptrtoint ptr %controlselector to i32
  call void @__asan_storeN_noabort(i32 %94, i32 2)
  store i16 %93, ptr %controlselector, align 1
  br label %out

out:                                              ; preds = %do.body313, %do.end119
  %ret.0 = phi i32 [ 12, %do.end119 ], [ 0, %do.body313 ]
  tail call void @saa7164_bus_dump(ptr noundef %dev)
  tail call void @mutex_unlock(ptr noundef %lock) #5
  tail call fastcc void @saa7164_bus_verify(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end33, %do.end20, %do.end
  %retval.0 = phi i32 [ 9, %do.end20 ], [ 9, %do.end33 ], [ %ret.0, %out ], [ 9, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7164_bus_verify(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lmmio = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %m_dwSetReadPos = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 7
  %2 = ptrtoint ptr %m_dwSetReadPos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_dwSetReadPos, align 4
  %shr = lshr i32 %3, 2
  %add.ptr = getelementptr i32, ptr %1, i32 %shr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !183
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !193
  %m_dwSizeSetRing = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 3
  %6 = ptrtoint ptr %m_dwSizeSetRing to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_dwSizeSetRing, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ugt i32 %5, %7
  %spec.select = zext i1 %cmp to i32
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %m_dwSetWritePos = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 6
  %10 = ptrtoint ptr %m_dwSetWritePos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_dwSetWritePos, align 4
  %shr5 = lshr i32 %11, 2
  %add.ptr6 = getelementptr i32, ptr %9, i32 %shr5
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !183
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !194
  %14 = ptrtoint ptr %m_dwSizeSetRing to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m_dwSizeSetRing, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp11 = icmp ugt i32 %13, %15
  %inc13 = select i1 %cmp, i32 2, i32 1
  %bug.1 = select i1 %cmp11, i32 %inc13, i32 %spec.select
  %16 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lmmio, align 4
  %m_dwGetReadPos = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 9
  %18 = ptrtoint ptr %m_dwGetReadPos to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %m_dwGetReadPos, align 4
  %shr18 = lshr i32 %19, 2
  %add.ptr19 = getelementptr i32, ptr %17, i32 %shr18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #5, !srcloc !183
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !195
  %m_dwSizeGetRing = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 5
  %22 = ptrtoint ptr %m_dwSizeGetRing to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %m_dwSizeGetRing, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp23 = icmp ugt i32 %21, %23
  %inc25 = zext i1 %cmp23 to i32
  %bug.2 = add nuw nsw i32 %bug.1, %inc25
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %m_dwGetWritePos = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 8
  %26 = ptrtoint ptr %m_dwGetWritePos to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %m_dwGetWritePos, align 4
  %shr30 = lshr i32 %27, 2
  %add.ptr31 = getelementptr i32, ptr %25, i32 %shr30
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #5, !srcloc !183
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !196
  %30 = ptrtoint ptr %m_dwSizeGetRing to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %m_dwSizeGetRing, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp36 = icmp ugt i32 %29, %31
  %inc38.neg = sext i1 %cmp36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bug.2, i32 %inc38.neg)
  %tobool.not = icmp eq i32 %bug.2, %inc38.neg
  br i1 %tobool.not, label %if.end44, label %if.then40

if.then40:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  store i32 65535, ptr @saa_debug, align 4
  tail call void @saa7164_bus_dump(ptr noundef %dev)
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  store i32 1024, ptr @saa_debug, align 4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7164/saa7164-bus.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 91, 0\0A.popsection", ""() #5, !srcloc !197
  unreachable

if.end44:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_bus_get(ptr noundef %dev, ptr noundef %msg, ptr noundef %buf, i32 noundef %peekonly) local_unnamed_addr #0 align 64 {
entry:
  %msg_tmp = alloca %struct.tmComResInfo, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %msg_tmp) #5
  %0 = getelementptr inbounds %struct.tmComResInfo, ptr %msg_tmp, i32 0, i32 2
  %1 = getelementptr inbounds %struct.tmComResInfo, ptr %msg_tmp, i32 0, i32 3
  %2 = getelementptr inbounds %struct.tmComResInfo, ptr %msg_tmp, i32 0, i32 4
  %3 = getelementptr inbounds %struct.tmComResInfo, ptr %msg_tmp, i32 0, i32 5
  %4 = call ptr @memset(ptr %msg_tmp, i32 255, i32 11)
  tail call fastcc void @saa7164_bus_verify(ptr noundef %dev)
  %cmp = icmp eq ptr %msg, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct.tmComResInfo, ptr %msg, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %size, align 1
  %conv = zext i16 %6 to i32
  %m_wMaxReqSize = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 1
  %7 = ptrtoint ptr %m_wMaxReqSize to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %m_wMaxReqSize, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp4 = icmp ugt i16 %6, %8
  br i1 %cmp4, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.86) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peekonly)
  %cmp8 = icmp eq i32 %peekonly, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp12.not = icmp ne i16 %6, 0
  %or.cond = select i1 %cmp8, i1 %cmp12.not, i1 false
  %cmp15 = icmp eq ptr %buf, null
  %or.cond301 = and i1 %cmp15, %or.cond
  br i1 %or.cond301, label %do.end20, label %if.end25

do.end20:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.86, i32 noundef %conv) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end7
  %lock = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %lmmio = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 8
  %9 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio, align 4
  %m_dwGetWritePos = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 8
  %11 = ptrtoint ptr %m_dwGetWritePos to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %m_dwGetWritePos, align 4
  %shr = lshr i32 %12, 2
  %add.ptr = getelementptr i32, ptr %10, i32 %shr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !183
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !198
  %15 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio, align 4
  %m_dwGetReadPos = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 9
  %17 = ptrtoint ptr %m_dwGetReadPos to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m_dwGetReadPos, align 4
  %shr32 = lshr i32 %18, 2
  %add.ptr33 = getelementptr i32, ptr %16, i32 %shr32
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #5, !srcloc !183
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !199
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %19)
  %cmp37 = icmp eq i32 %13, %19
  br i1 %cmp37, label %if.end25.out_crit_edge, label %if.end40

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end40:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %20)
  %cmp41.not = icmp ult i32 %14, %20
  br i1 %cmp41.not, label %if.else, label %if.end40.if.end45_crit_edge

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.else:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %m_dwSizeGetRing = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 5
  %21 = ptrtoint ptr %m_dwSizeGetRing to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %m_dwSizeGetRing, align 4
  %add = add i32 %22, %14
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.end40.if.end45_crit_edge
  %.pn = phi i32 [ %add, %if.else ], [ %14, %if.end40.if.end45_crit_edge ]
  %write_distance.0 = sub i32 %.pn, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %write_distance.0)
  %cmp46 = icmp ult i32 %write_distance.0, 11
  br i1 %cmp46, label %do.end51, label %if.end54

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.86) #8
  br label %out

if.end54:                                         ; preds = %if.end45
  %add55 = add i32 %20, 11
  %m_dwSizeGetRing56 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 5
  %23 = ptrtoint ptr %m_dwSizeGetRing56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %m_dwSizeGetRing56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add55, i32 %24)
  %cmp57 = icmp ugt i32 %add55, %24
  br i1 %cmp57, label %if.then59, label %if.else68

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %sub63 = sub i32 %24, %20
  %m_pdwGetRing = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 4
  %25 = ptrtoint ptr %m_pdwGetRing to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m_pdwGetRing, align 4
  %add.ptr64 = getelementptr i8, ptr %26, i32 %20
  call void @mmiocpy(ptr noundef nonnull %msg_tmp, ptr noundef %add.ptr64, i32 noundef %sub63) #5
  %add.ptr65 = getelementptr i8, ptr %msg_tmp, i32 %sub63
  %27 = ptrtoint ptr %m_pdwGetRing to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %m_pdwGetRing, align 4
  %sub67 = sub i32 11, %sub63
  call void @mmiocpy(ptr noundef %add.ptr65, ptr noundef %28, i32 noundef %sub67) #5
  br label %if.end71

if.else68:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %m_pdwGetRing69 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 4
  %29 = ptrtoint ptr %m_pdwGetRing69 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %m_pdwGetRing69, align 4
  %add.ptr70 = getelementptr i8, ptr %30, i32 %20
  call void @mmiocpy(ptr noundef nonnull %msg_tmp, ptr noundef %add.ptr70, i32 noundef 11) #5
  br label %if.end71

if.end71:                                         ; preds = %if.else68, %if.then59
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %0, align 1
  %33 = call i16 @llvm.bswap.i16(i16 %32)
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %0, align 1
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %1, align 1
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %1, align 1
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %2, align 1
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %41, ptr %2, align 1
  %43 = call ptr @memcpy(ptr %msg, ptr %msg_tmp, i32 11)
  br i1 %cmp8, label %if.end77, label %if.end71.out_crit_edge

if.end71.out_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end77:                                         ; preds = %if.end71
  %44 = ptrtoint ptr %msg_tmp to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %msg_tmp, align 1
  %46 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %msg, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp81.not = icmp eq i8 %45, %47
  br i1 %cmp81.not, label %lor.lhs.false, label %if.end77.do.end110_crit_edge

if.end77.do.end110_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end110

lor.lhs.false:                                    ; preds = %if.end77
  %command84 = getelementptr inbounds %struct.tmComResInfo, ptr %msg, i32 0, i32 3
  %48 = ptrtoint ptr %command84 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %command84, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %49)
  %cmp85.not = icmp eq i32 %37, %49
  br i1 %cmp85.not, label %lor.lhs.false87, label %lor.lhs.false.do.end110_crit_edge

lor.lhs.false.do.end110_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end110

lor.lhs.false87:                                  ; preds = %lor.lhs.false
  %controlselector90 = getelementptr inbounds %struct.tmComResInfo, ptr %msg, i32 0, i32 4
  %50 = ptrtoint ptr %controlselector90 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %controlselector90, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %51)
  %cmp92.not = icmp eq i16 %41, %51
  br i1 %cmp92.not, label %lor.lhs.false94, label %lor.lhs.false87.do.end110_crit_edge

lor.lhs.false87.do.end110_crit_edge:              ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end110

lor.lhs.false94:                                  ; preds = %lor.lhs.false87
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %3, align 1
  %seqno96 = getelementptr inbounds %struct.tmComResInfo, ptr %msg, i32 0, i32 5
  %54 = ptrtoint ptr %seqno96 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %seqno96, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp98.not = icmp eq i8 %53, %55
  br i1 %cmp98.not, label %lor.lhs.false100, label %lor.lhs.false94.do.end110_crit_edge

lor.lhs.false94.do.end110_crit_edge:              ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end110

lor.lhs.false100:                                 ; preds = %lor.lhs.false94
  %56 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %size, align 1
  %conv104 = zext i16 %57 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %57)
  %cmp105.not = icmp eq i16 %33, %57
  br i1 %cmp105.not, label %if.end113, label %lor.lhs.false100.do.end110_crit_edge

lor.lhs.false100.do.end110_crit_edge:             ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end110

do.end110:                                        ; preds = %lor.lhs.false100.do.end110_crit_edge, %lor.lhs.false94.do.end110_crit_edge, %lor.lhs.false87.do.end110_crit_edge, %lor.lhs.false.do.end110_crit_edge, %if.end77.do.end110_crit_edge
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.86) #8
  call fastcc void @saa7164_bus_dumpmsg(ptr noundef %dev, ptr noundef nonnull %msg, ptr noundef %buf)
  call fastcc void @saa7164_bus_dumpmsg(ptr noundef %dev, ptr noundef nonnull %msg_tmp, ptr noundef null)
  br label %out

if.end113:                                        ; preds = %lor.lhs.false100
  %add118 = add nuw nsw i32 %conv104, 11
  br i1 %cmp41.not, label %if.else123, label %if.end113.if.end127_crit_edge

if.end113.if.end127_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127

if.else123:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %m_dwSizeGetRing56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %m_dwSizeGetRing56, align 4
  %add125 = add i32 %59, %14
  br label %if.end127

if.end127:                                        ; preds = %if.else123, %if.end113.if.end127_crit_edge
  %.pn300 = phi i32 [ %add125, %if.else123 ], [ %14, %if.end113.if.end127_crit_edge ]
  %write_distance.1 = sub i32 %.pn300, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %add118, i32 %write_distance.1)
  %cmp128 = icmp ugt i32 %add118, %write_distance.1
  br i1 %cmp128, label %do.end133, label %if.end136

do.end133:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.86) #8
  br label %out

if.end136:                                        ; preds = %if.end127
  %add137 = add i32 %add118, %20
  %60 = ptrtoint ptr %m_dwSizeGetRing56 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %m_dwSizeGetRing56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add137, i32 %61)
  %cmp139 = icmp ugt i32 %add137, %61
  br i1 %cmp139, label %if.then141, label %if.else177

if.then141:                                       ; preds = %if.end136
  %sub143 = sub i32 %add137, %61
  %sub145 = sub i32 %61, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub145)
  %cmp146 = icmp ult i32 %sub145, 11
  br i1 %cmp146, label %if.then148, label %if.else155

if.then148:                                       ; preds = %if.then141
  br i1 %cmp15, label %if.then148.do.body185_crit_edge, label %if.then150

if.then148.do.body185_crit_edge:                  ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body185

if.then150:                                       ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #7
  %m_pdwGetRing151 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 4
  %62 = ptrtoint ptr %m_pdwGetRing151 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %m_pdwGetRing151, align 4
  %add.ptr152 = getelementptr i8, ptr %63, i32 11
  %idx.neg = sub nsw i32 0, %sub145
  %add.ptr153 = getelementptr i8, ptr %add.ptr152, i32 %idx.neg
  call void @mmiocpy(ptr noundef nonnull %buf, ptr noundef %add.ptr153, i32 noundef %conv104) #5
  br label %do.body185

if.else155:                                       ; preds = %if.then141
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub145)
  %cmp156 = icmp eq i32 %sub145, 11
  br i1 %cmp156, label %if.then158, label %if.else163

if.then158:                                       ; preds = %if.else155
  br i1 %cmp15, label %if.then158.do.body185_crit_edge, label %if.then160

if.then158.do.body185_crit_edge:                  ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body185

if.then160:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #7
  %m_pdwGetRing161 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 4
  %64 = ptrtoint ptr %m_pdwGetRing161 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %m_pdwGetRing161, align 4
  call void @mmiocpy(ptr noundef nonnull %buf, ptr noundef %65, i32 noundef %conv104) #5
  br label %do.body185

if.else163:                                       ; preds = %if.else155
  br i1 %cmp15, label %if.else163.do.body185_crit_edge, label %if.then165

if.else163.do.body185_crit_edge:                  ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body185

if.then165:                                       ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #7
  %m_pdwGetRing166 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 4
  %66 = ptrtoint ptr %m_pdwGetRing166 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %m_pdwGetRing166, align 4
  %add.ptr167 = getelementptr i8, ptr %67, i32 %20
  %add.ptr168 = getelementptr i8, ptr %add.ptr167, i32 11
  %sub169 = add i32 %sub145, -11
  call void @mmiocpy(ptr noundef nonnull %buf, ptr noundef %add.ptr168, i32 noundef %sub169) #5
  %add.ptr170 = getelementptr i8, ptr %buf, i32 %sub145
  %add.ptr171 = getelementptr i8, ptr %add.ptr170, i32 -11
  %68 = ptrtoint ptr %m_pdwGetRing166 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %m_pdwGetRing166, align 4
  %sub173 = sub i32 %add118, %sub145
  call void @mmiocpy(ptr noundef %add.ptr171, ptr noundef %69, i32 noundef %sub173) #5
  br label %do.body185

if.else177:                                       ; preds = %if.end136
  br i1 %cmp15, label %if.else177.do.body185_crit_edge, label %if.then179

if.else177.do.body185_crit_edge:                  ; preds = %if.else177
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body185

if.then179:                                       ; preds = %if.else177
  call void @__sanitizer_cov_trace_pc() #7
  %m_pdwGetRing180 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 4
  %70 = ptrtoint ptr %m_pdwGetRing180 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %m_pdwGetRing180, align 4
  %add.ptr181 = getelementptr i8, ptr %71, i32 %20
  %add.ptr182 = getelementptr i8, ptr %add.ptr181, i32 11
  call void @mmiocpy(ptr noundef nonnull %buf, ptr noundef %add.ptr182, i32 noundef %conv104) #5
  br label %do.body185

do.body185:                                       ; preds = %if.then179, %if.else177.do.body185_crit_edge, %if.then165, %if.else163.do.body185_crit_edge, %if.then160, %if.then158.do.body185_crit_edge, %if.then150, %if.then148.do.body185_crit_edge
  %new_grp.0 = phi i32 [ %sub143, %if.then150 ], [ %sub143, %if.then148.do.body185_crit_edge ], [ %sub143, %if.then160 ], [ %sub143, %if.then158.do.body185_crit_edge ], [ %sub143, %if.then165 ], [ %sub143, %if.else163.do.body185_crit_edge ], [ %add137, %if.then179 ], [ %add137, %if.else177.do.body185_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !200
  call void @arm_heavy_mb() #5
  %72 = call i32 @llvm.bswap.i32(i32 %new_grp.0)
  %73 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lmmio, align 4
  %75 = ptrtoint ptr %m_dwGetReadPos to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %m_dwGetReadPos, align 4
  %shr190 = lshr i32 %76, 2
  %add.ptr191 = getelementptr i32, ptr %74, i32 %shr190
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191, i32 %72) #5, !srcloc !192
  br label %out

out:                                              ; preds = %do.body185, %do.end133, %do.end110, %if.end71.out_crit_edge, %do.end51, %if.end25.out_crit_edge
  %ret.0 = phi i32 [ 62, %do.end51 ], [ 62, %do.end110 ], [ 62, %do.end133 ], [ 34, %if.end25.out_crit_edge ], [ 0, %if.end71.out_crit_edge ], [ 0, %do.body185 ]
  call void @mutex_unlock(ptr noundef %lock) #5
  call fastcc void @saa7164_bus_verify(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 9, %do.end ], [ 9, %do.end20 ], [ %ret.0, %out ], [ 9, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %msg_tmp) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7164_bus_dumpmsg(ptr noundef %dev, ptr nocapture noundef readonly %m, ptr noundef readnone %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %0 = load i32, ptr @saa_debug, align 4
  %and = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %do.end

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %name) #8
  br label %do.body3

do.body3:                                         ; preds = %do.end, %entry.do.body3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %1 = load i32, ptr @saa_debug, align 4
  %and4 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.body3.do.body15_crit_edge, label %do.end8

do.body3.do.body15_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

do.end8:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %name10 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %m to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %m, align 1
  %conv = zext i8 %3 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name10, i32 noundef %conv) #8
  br label %do.body15

do.body15:                                        ; preds = %do.end8, %do.body3.do.body15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %4 = load i32, ptr @saa_debug, align 4
  %and16 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body15.do.body28_crit_edge, label %do.end20

do.body15.do.body28_crit_edge:                    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body28

do.end20:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  %name22 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %flags = getelementptr inbounds %struct.tmComResInfo, ptr %m, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flags, align 1
  %conv24 = zext i8 %6 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %name22, i32 noundef %conv24) #8
  br label %do.body28

do.body28:                                        ; preds = %do.end20, %do.body15.do.body28_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %7 = load i32, ptr @saa_debug, align 4
  %and29 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.do.body41_crit_edge, label %do.end33

do.body28.do.body41_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body41

do.end33:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #7
  %name35 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %size = getelementptr inbounds %struct.tmComResInfo, ptr %m, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %size, align 1
  %conv37 = zext i16 %9 to i32
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name35, i32 noundef %conv37) #8
  br label %do.body41

do.body41:                                        ; preds = %do.end33, %do.body28.do.body41_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %10 = load i32, ptr @saa_debug, align 4
  %and42 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.body41.do.body53_crit_edge, label %do.end46

do.body41.do.body53_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body53

do.end46:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  %name48 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %command = getelementptr inbounds %struct.tmComResInfo, ptr %m, i32 0, i32 3
  %11 = ptrtoint ptr %command to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %command, align 1
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name48, i32 noundef %12) #8
  br label %do.body53

do.body53:                                        ; preds = %do.end46, %do.body41.do.body53_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %13 = load i32, ptr @saa_debug, align 4
  %and54 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body53.do.body66_crit_edge, label %do.end58

do.body53.do.body66_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body66

do.end58:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #7
  %name60 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %controlselector = getelementptr inbounds %struct.tmComResInfo, ptr %m, i32 0, i32 4
  %14 = ptrtoint ptr %controlselector to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %controlselector, align 1
  %conv62 = zext i16 %15 to i32
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %name60, i32 noundef %conv62) #8
  br label %do.body66

do.body66:                                        ; preds = %do.end58, %do.body53.do.body66_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %16 = load i32, ptr @saa_debug, align 4
  %and67 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %do.body66.do.end78_crit_edge, label %do.end71

do.body66.do.end78_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end78

do.end71:                                         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  %name73 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %seqno = getelementptr inbounds %struct.tmComResInfo, ptr %m, i32 0, i32 5
  %17 = ptrtoint ptr %seqno to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %seqno, align 1
  %conv75 = zext i8 %18 to i32
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %name73, i32 noundef %conv75) #8
  br label %do.end78

do.end78:                                         ; preds = %do.end71, %do.body66.do.end78_crit_edge
  %tobool79.not = icmp eq ptr %buf, null
  br i1 %tobool79.not, label %do.end78.if.end93_crit_edge, label %do.body81

do.end78.if.end93_crit_edge:                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

do.body81:                                        ; preds = %do.end78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %19 = load i32, ptr @saa_debug, align 4
  %and82 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %do.body81.if.end93_crit_edge, label %do.end86

do.body81.if.end93_crit_edge:                     ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

do.end86:                                         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  %name88 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %name88) #8
  br label %if.end93

if.end93:                                         ; preds = %do.end86, %do.body81.if.end93_crit_edge, %do.end78.if.end93_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @saa7164_bus_setup.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 17, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 46, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @saa7164_bus_dump._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @saa7164_bus_dump._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 47, i32 2}
!11 = !{ptr @saa7164_bus_dump._entry.4, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @saa7164_bus_dump._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 48, i32 2}
!15 = !{ptr @saa7164_bus_dump._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @saa7164_bus_dump._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 49, i32 2}
!19 = !{ptr @saa7164_bus_dump._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @saa7164_bus_dump._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 50, i32 2}
!23 = !{ptr @saa7164_bus_dump._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @saa7164_bus_dump._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 51, i32 2}
!27 = !{ptr @saa7164_bus_dump._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @saa7164_bus_dump._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 52, i32 2}
!31 = !{ptr @saa7164_bus_dump._entry.19, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @saa7164_bus_dump._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 53, i32 2}
!35 = !{ptr @saa7164_bus_dump._entry.22, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @saa7164_bus_dump._entry_ptr.24, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.26, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 55, i32 2}
!39 = !{ptr @saa7164_bus_dump._entry.25, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @saa7164_bus_dump._entry_ptr.27, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.29, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 58, i32 2}
!43 = !{ptr @saa7164_bus_dump._entry.28, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @saa7164_bus_dump._entry_ptr.30, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.32, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 61, i32 2}
!47 = !{ptr @saa7164_bus_dump._entry.31, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @saa7164_bus_dump._entry_ptr.33, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.35, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 64, i32 2}
!51 = !{ptr @saa7164_bus_dump._entry.34, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @saa7164_bus_dump._entry_ptr.36, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.37, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 130, i32 3}
!55 = !{ptr @.str.38, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @saa7164_bus_set._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @saa7164_bus_set._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.40, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 134, i32 2}
!60 = !{ptr @saa7164_bus_set._entry.39, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @saa7164_bus_set._entry_ptr.41, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.43, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 139, i32 3}
!64 = !{ptr @saa7164_bus_set._entry.42, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @saa7164_bus_set._entry_ptr.44, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.46, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 145, i32 3}
!68 = !{ptr @saa7164_bus_set._entry.45, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @saa7164_bus_set._entry_ptr.47, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.49, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 166, i32 2}
!72 = !{ptr @saa7164_bus_set._entry.48, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @saa7164_bus_set._entry_ptr.50, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.52, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 169, i32 2}
!76 = !{ptr @saa7164_bus_set._entry.51, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @saa7164_bus_set._entry_ptr.53, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.55, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 172, i32 2}
!80 = !{ptr @saa7164_bus_set._entry.54, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @saa7164_bus_set._entry_ptr.56, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.58, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 173, i32 2}
!84 = !{ptr @saa7164_bus_set._entry.57, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @saa7164_bus_set._entry_ptr.59, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.61, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 179, i32 4}
!88 = !{ptr @saa7164_bus_set._entry.60, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @saa7164_bus_set._entry_ptr.62, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.64, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 205, i32 2}
!92 = !{ptr @saa7164_bus_set._entry.63, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @saa7164_bus_set._entry_ptr.65, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.67, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 206, i32 2}
!96 = !{ptr @saa7164_bus_set._entry.66, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @saa7164_bus_set._entry_ptr.68, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.70, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 229, i32 3}
!100 = !{ptr @saa7164_bus_set._entry.69, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @saa7164_bus_set._entry_ptr.71, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.73, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 232, i32 3}
!104 = !{ptr @saa7164_bus_set._entry.72, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @saa7164_bus_set._entry_ptr.74, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.76, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 236, i32 4}
!108 = !{ptr @saa7164_bus_set._entry.75, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @saa7164_bus_set._entry_ptr.77, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.79, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 247, i32 4}
!112 = !{ptr @saa7164_bus_set._entry.78, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @saa7164_bus_set._entry_ptr.80, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.82, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 269, i32 3}
!116 = !{ptr @saa7164_bus_set._entry.81, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @saa7164_bus_set._entry_ptr.83, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @saa7164_bus_set._entry.84, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 277, i32 2}
!120 = !{ptr @saa7164_bus_set._entry_ptr.85, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.86, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 320, i32 3}
!123 = !{ptr @saa7164_bus_get._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @saa7164_bus_get._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.88, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 326, i32 3}
!127 = !{ptr @saa7164_bus_get._entry.87, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @saa7164_bus_get._entry_ptr.89, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.91, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 357, i32 3}
!131 = !{ptr @saa7164_bus_get._entry.90, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @saa7164_bus_get._entry_ptr.92, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.94, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 395, i32 3}
!135 = !{ptr @saa7164_bus_get._entry.93, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @saa7164_bus_get._entry_ptr.95, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.97, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 416, i32 3}
!139 = !{ptr @saa7164_bus_get._entry.96, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @saa7164_bus_get._entry_ptr.98, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.99, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 98, i32 2}
!143 = !{ptr @.str.100, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @saa7164_bus_dumpmsg._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @saa7164_bus_dumpmsg._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.102, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 99, i32 2}
!148 = !{ptr @saa7164_bus_dumpmsg._entry.101, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @saa7164_bus_dumpmsg._entry_ptr.103, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.105, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 100, i32 2}
!152 = !{ptr @saa7164_bus_dumpmsg._entry.104, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @saa7164_bus_dumpmsg._entry_ptr.106, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.108, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 101, i32 2}
!156 = !{ptr @saa7164_bus_dumpmsg._entry.107, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @saa7164_bus_dumpmsg._entry_ptr.109, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.111, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 102, i32 2}
!160 = !{ptr @saa7164_bus_dumpmsg._entry.110, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @saa7164_bus_dumpmsg._entry_ptr.112, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.114, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 103, i32 2}
!164 = !{ptr @saa7164_bus_dumpmsg._entry.113, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @saa7164_bus_dumpmsg._entry_ptr.115, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.117, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 104, i32 2}
!168 = !{ptr @saa7164_bus_dumpmsg._entry.116, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @saa7164_bus_dumpmsg._entry_ptr.118, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.120, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/pci/saa7164/saa7164-bus.c", i32 106, i32 3}
!172 = !{ptr @saa7164_bus_dumpmsg._entry.119, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @saa7164_bus_dumpmsg._entry_ptr.121, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 1, !"min_enum_size", i32 4}
!176 = !{i32 8, !"branch-target-enforcement", i32 0}
!177 = !{i32 8, !"sign-return-address", i32 0}
!178 = !{i32 8, !"sign-return-address-all", i32 0}
!179 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!183 = !{i64 5010012}
!184 = !{i64 2158474159}
!185 = !{i64 2158476660}
!186 = !{i64 2158479150}
!187 = !{i64 2158481651}
!188 = !{i64 2158505519}
!189 = !{i64 2158506167}
!190 = !{i64 2158516249}
!191 = !{i64 2158534865}
!192 = !{i64 5009594}
!193 = !{i64 2158482284}
!194 = !{i64 2158482922}
!195 = !{i64 2158483555}
!196 = !{i64 2158484193}
!197 = !{i64 2158484465, i64 2158484968, i64 2158484502, i64 2158484558, i64 2158484592, i64 2158484616, i64 2158484657, i64 2158484678, i64 2158484706, i64 2158484740}
!198 = !{i64 2158539465}
!199 = !{i64 2158540108}
!200 = !{i64 2158546458}
