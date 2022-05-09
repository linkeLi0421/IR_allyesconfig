; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7164/saa7164-cmd.c_pt.bc'
source_filename = "../drivers/media/pci/saa7164/saa7164-cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tmComResInfo = type <{ i8, i8, i16, i32, i16, i8 }>
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@saa_debug = external dso_local local_unnamed_addr global i32, align 4
@saa7164_irq_dequeue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s: %s()\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saa7164_irq_dequeue\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/saa7164/saa7164-cmd.c\00", [56 x i8] zeroinitializer }, align 32
@saa7164_irq_dequeue._entry_ptr = internal global ptr @saa7164_irq_dequeue._entry, section ".printk_index", align 4
@saa7164_irq_dequeue._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s() timeout = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7164_irq_dequeue._entry_ptr.5 = internal global ptr @saa7164_irq_dequeue._entry.3, section ".printk_index", align 4
@saa7164_irq_dequeue._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: %s() signalled seqno(%d) (for dequeue)\0A\00", [50 x i8] zeroinitializer }, align 32
@saa7164_irq_dequeue._entry_ptr.8 = internal global ptr @saa7164_irq_dequeue._entry.6, section ".printk_index", align 4
@saa7164_irq_dequeue._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s() found timed out command on the bus\0A\00", [53 x i8] zeroinitializer }, align 32
@saa7164_irq_dequeue._entry_ptr.11 = internal global ptr @saa7164_irq_dequeue._entry.9, section ".printk_index", align 4
@saa7164_irq_dequeue._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s() ret = %x\0A\00", [47 x i8] zeroinitializer }, align 32
@saa7164_irq_dequeue._entry_ptr.14 = internal global ptr @saa7164_irq_dequeue._entry.12, section ".printk_index", align 4
@saa7164_cmd_signal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"saa7164_cmd_signal\00", [45 x i8] zeroinitializer }, align 32
@saa7164_cmd_signal._entry_ptr = internal global ptr @saa7164_cmd_signal._entry, section ".printk_index", align 4
@saa7164_cmd_signal._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: seqno %d inuse, sig = %d, t/out = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@saa7164_cmd_signal._entry_ptr.18 = internal global ptr @saa7164_cmd_signal._entry.16, section ".printk_index", align 4
@saa7164_cmd_signal._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %s(seqno=%d) calling wake_up\0A\00", [60 x i8] zeroinitializer }, align 32
@saa7164_cmd_signal._entry_ptr.21 = internal global ptr @saa7164_cmd_signal._entry.19, section ".printk_index", align 4
@saa7164_cmd_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s: %s(unitid = %s (%d) , command = 0x%x, sel = 0x%x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"saa7164_cmd_send\00", [47 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr = internal global ptr @saa7164_cmd_send._entry, section ".printk_index", align 4
@saa7164_cmd_send._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s() Invalid param\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.26 = internal global ptr @saa7164_cmd_send._entry.24, section ".printk_index", align 4
@saa7164_cmd_send._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s() No free sequences\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.29 = internal global ptr @saa7164_cmd_send._entry.27, section ".printk_index", align 4
@saa7164_cmd_send._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s() pcommand_t.seqno = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.32 = internal global ptr @saa7164_cmd_send._entry.30, section ".printk_index", align 4
@saa7164_cmd_send._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s() pcommand_t.size = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.35 = internal global ptr @saa7164_cmd_send._entry.33, section ".printk_index", align 4
@saa7164_cmd_send._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.23, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s() set command failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.38 = internal global ptr @saa7164_cmd_send._entry.36, section ".printk_index", align 4
@saa7164_cmd_send._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.23, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: %s() loop\0A\00", [47 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.41 = internal global ptr @saa7164_cmd_send._entry.39, section ".printk_index", align 4
@saa7164_cmd_send._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.23, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s() loop ret = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.44 = internal global ptr @saa7164_cmd_send._entry.42, section ".printk_index", align 4
@saa7164_cmd_send._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.23, ptr @.str.2, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013Event timed out\0A\00", [45 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.47 = internal global ptr @saa7164_cmd_send._entry.45, section ".printk_index", align 4
@saa7164_cmd_send._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.23, ptr @.str.2, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013spurious error\0A\00", [46 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.50 = internal global ptr @saa7164_cmd_send._entry.48, section ".printk_index", align 4
@saa7164_cmd_send._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.23, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s() SAA_ERR_EMPTY\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.53 = internal global ptr @saa7164_cmd_send._entry.51, section ".printk_index", align 4
@saa7164_cmd_send._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.23, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013peek failed\0A\00", [17 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.56 = internal global ptr @saa7164_cmd_send._entry.54, section ".printk_index", align 4
@saa7164_cmd_send._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.23, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %s() presponse_t->seqno = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.59 = internal global ptr @saa7164_cmd_send._entry.57, section ".printk_index", align 4
@saa7164_cmd_send._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.23, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: %s() presponse_t->flags = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.62 = internal global ptr @saa7164_cmd_send._entry.60, section ".printk_index", align 4
@saa7164_cmd_send._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.23, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: %s() presponse_t->size = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.65 = internal global ptr @saa7164_cmd_send._entry.63, section ".printk_index", align 4
@saa7164_cmd_send._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.23, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\017%s: wrong event: seqno = %d, expected seqno = %d, will dequeue regardless\0A\00", [51 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.68 = internal global ptr @saa7164_cmd_send._entry.66, section ".printk_index", align 4
@saa7164_cmd_send._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.23, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013dequeue failed, ret = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.71 = internal global ptr @saa7164_cmd_send._entry.69, section ".printk_index", align 4
@saa7164_cmd_send._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.23, ptr @.str.2, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013dequeue exceeded, safety exit\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.74 = internal global ptr @saa7164_cmd_send._entry.72, section ".printk_index", align 4
@saa7164_cmd_send._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.23, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\013get error(2)\0A\00", [16 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.77 = internal global ptr @saa7164_cmd_send._entry.75, section ".printk_index", align 4
@saa7164_cmd_send._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.23, ptr @.str.2, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: %s() errdata %02x%02x%02x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.80 = internal global ptr @saa7164_cmd_send._entry.78, section ".printk_index", align 4
@saa7164_cmd_send._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.23, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %s() cmd, error code  = 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.83 = internal global ptr @saa7164_cmd_send._entry.81, section ".printk_index", align 4
@saa7164_cmd_send._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.23, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s() INVALID_COMMAND\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.86 = internal global ptr @saa7164_cmd_send._entry.84, section ".printk_index", align 4
@saa7164_cmd_send._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.23, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s() INVALID_DATA\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.89 = internal global ptr @saa7164_cmd_send._entry.87, section ".printk_index", align 4
@saa7164_cmd_send._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.23, ptr @.str.2, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s() TIMEOUT\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.92 = internal global ptr @saa7164_cmd_send._entry.90, section ".printk_index", align 4
@saa7164_cmd_send._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.23, ptr @.str.2, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: %s() NAK\0A\00", [16 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.95 = internal global ptr @saa7164_cmd_send._entry.93, section ".printk_index", align 4
@saa7164_cmd_send._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.23, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: %s() UNKNOWN OR INVALID CONTROL\0A\00", [57 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.98 = internal global ptr @saa7164_cmd_send._entry.96, section ".printk_index", align 4
@saa7164_cmd_send._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.23, ptr @.str.2, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s() UNKNOWN\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.101 = internal global ptr @saa7164_cmd_send._entry.99, section ".printk_index", align 4
@saa7164_cmd_send._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.23, ptr @.str.2, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013dequeue(2) failed\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.104 = internal global ptr @saa7164_cmd_send._entry.102, section ".printk_index", align 4
@saa7164_cmd_send._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.23, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s() Invalid\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.107 = internal global ptr @saa7164_cmd_send._entry.105, section ".printk_index", align 4
@saa7164_cmd_send._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.23, ptr @.str.2, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\013get failed\0A\00", [18 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.110 = internal global ptr @saa7164_cmd_send._entry.108, section ".printk_index", align 4
@saa7164_cmd_send._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.23, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013dequeue(3) failed\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.113 = internal global ptr @saa7164_cmd_send._entry.111, section ".printk_index", align 4
@saa7164_cmd_send._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.23, ptr @.str.2, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.115 = internal global ptr @saa7164_cmd_send._entry.114, section ".printk_index", align 4
@saa7164_cmd_send._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.23, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: %s() Resp recd\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.118 = internal global ptr @saa7164_cmd_send._entry.116, section ".printk_index", align 4
@saa7164_cmd_send._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.23, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.120 = internal global ptr @saa7164_cmd_send._entry.119, section ".printk_index", align 4
@saa7164_cmd_send._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.23, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: %s() Calling dequeue then exit\0A\00", [58 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.123 = internal global ptr @saa7164_cmd_send._entry.121, section ".printk_index", align 4
@saa7164_cmd_send._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.23, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013dequeue(4) failed\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7164_cmd_send._entry_ptr.126 = internal global ptr @saa7164_cmd_send._entry.124, section ".printk_index", align 4
@saa7164_cmd_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\013%s() !msg\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa7164_cmd_set\00", [16 x i8] zeroinitializer }, align 32
@saa7164_cmd_set._entry_ptr = internal global ptr @saa7164_cmd_set._entry, section ".printk_index", align 4
@saa7164_cmd_set._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s() set failed %d\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7164_cmd_set._entry_ptr.131 = internal global ptr @saa7164_cmd_set._entry.129, section ".printk_index", align 4
@saa7164_cmd_set._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.128, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s() set last failed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_cmd_set._entry_ptr.134 = internal global ptr @saa7164_cmd_set._entry.132, section ".printk_index", align 4
@saa7164_cmd_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s(seqno=%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"saa7164_cmd_wait\00", [47 x i8] zeroinitializer }, align 32
@saa7164_cmd_wait._entry_ptr = internal global ptr @saa7164_cmd_wait._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@saa7164_cmd_wait._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: %s(seqno=%d) Waiting (signalled=%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@saa7164_cmd_wait._entry_ptr.139 = internal global ptr @saa7164_cmd_wait._entry.137, section ".printk_index", align 4
@waitsecs = external dso_local local_unnamed_addr global i32, align 4
@saa7164_cmd_wait._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.136, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: %s(seqno=%d) Waiting res = %d (signalled=%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7164_cmd_wait._entry_ptr.142 = internal global ptr @saa7164_cmd_wait._entry.140, section ".printk_index", align 4
@saa7164_cmd_wait._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.136, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s(seqno=%d) seqno is invalid\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_cmd_wait._entry_ptr.145 = internal global ptr @saa7164_cmd_wait._entry.143, section ".printk_index", align 4
@saa7164_cmd_dequeue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.146, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saa7164_cmd_dequeue\00", [44 x i8] zeroinitializer }, align 32
@saa7164_cmd_dequeue._entry_ptr = internal global ptr @saa7164_cmd_dequeue._entry, section ".printk_index", align 4
@saa7164_cmd_dequeue._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.146, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_cmd_dequeue._entry_ptr.148 = internal global ptr @saa7164_cmd_dequeue._entry.147, section ".printk_index", align 4
@saa7164_cmd_dequeue._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.146, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013found timed out command on the bus\0A\00", [58 x i8] zeroinitializer }, align 32
@saa7164_cmd_dequeue._entry_ptr.151 = internal global ptr @saa7164_cmd_dequeue._entry.149, section ".printk_index", align 4
@saa7164_cmd_dequeue._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.146, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\013ret = %x\0A\00", [20 x i8] zeroinitializer }, align 32
@saa7164_cmd_dequeue._entry_ptr.154 = internal global ptr @saa7164_cmd_dequeue._entry.152, section ".printk_index", align 4
@saa7164_cmd_dequeue._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.146, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013split response\0A\00", [46 x i8] zeroinitializer }, align 32
@saa7164_cmd_dequeue._entry_ptr.157 = internal global ptr @saa7164_cmd_dequeue._entry.155, section ".printk_index", align 4
@saa7164_cmd_dequeue._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.146, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013 timeout continue\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7164_cmd_dequeue._entry_ptr.160 = internal global ptr @saa7164_cmd_dequeue._entry.158, section ".printk_index", align 4
@saa7164_cmd_dequeue._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.146, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_cmd_dequeue._entry_ptr.162 = internal global ptr @saa7164_cmd_dequeue._entry.161, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 34]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 50]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 34]
@__sancov_gen_cov_switch_values.165 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 34]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 34]
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 75, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 88, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 90, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 96, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 102, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 302, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 307, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 318, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 339, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 344, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 361, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 372, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 375, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 380, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 396, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 399, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 404, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 410, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 417, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 421, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 425, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 428, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 431, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 437, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 443, i32 5 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 446, i32 6 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 461, i32 5 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 467, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 472, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 477, i32 5 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 482, i32 5 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 487, i32 5 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 491, i32 5 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 496, i32 5 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 502, i32 5 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 508, i32 5 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 523, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 526, i32 5 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 532, i32 5 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 539, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 545, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 551, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 559, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 563, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 183, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 206, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 226, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 255, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 268, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 287, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 293, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 127, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 141, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 143, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 147, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 156, i32 5 }
@___asan_gen_.513 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 160, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.517 = private constant [43 x i8] c"../drivers/media/pci/saa7164/saa7164-cmd.c\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 164, i32 3 }
@llvm.compiler.used = appending global [175 x ptr] [ptr @saa7164_cmd_dequeue._entry, ptr @saa7164_cmd_dequeue._entry.147, ptr @saa7164_cmd_dequeue._entry.149, ptr @saa7164_cmd_dequeue._entry.152, ptr @saa7164_cmd_dequeue._entry.155, ptr @saa7164_cmd_dequeue._entry.158, ptr @saa7164_cmd_dequeue._entry.161, ptr @saa7164_cmd_dequeue._entry_ptr, ptr @saa7164_cmd_dequeue._entry_ptr.148, ptr @saa7164_cmd_dequeue._entry_ptr.151, ptr @saa7164_cmd_dequeue._entry_ptr.154, ptr @saa7164_cmd_dequeue._entry_ptr.157, ptr @saa7164_cmd_dequeue._entry_ptr.160, ptr @saa7164_cmd_dequeue._entry_ptr.162, ptr @saa7164_cmd_send._entry, ptr @saa7164_cmd_send._entry.102, ptr @saa7164_cmd_send._entry.105, ptr @saa7164_cmd_send._entry.108, ptr @saa7164_cmd_send._entry.111, ptr @saa7164_cmd_send._entry.114, ptr @saa7164_cmd_send._entry.116, ptr @saa7164_cmd_send._entry.119, ptr @saa7164_cmd_send._entry.121, ptr @saa7164_cmd_send._entry.124, ptr @saa7164_cmd_send._entry.24, ptr @saa7164_cmd_send._entry.27, ptr @saa7164_cmd_send._entry.30, ptr @saa7164_cmd_send._entry.33, ptr @saa7164_cmd_send._entry.36, ptr @saa7164_cmd_send._entry.39, ptr @saa7164_cmd_send._entry.42, ptr @saa7164_cmd_send._entry.45, ptr @saa7164_cmd_send._entry.48, ptr @saa7164_cmd_send._entry.51, ptr @saa7164_cmd_send._entry.54, ptr @saa7164_cmd_send._entry.57, ptr @saa7164_cmd_send._entry.60, ptr @saa7164_cmd_send._entry.63, ptr @saa7164_cmd_send._entry.66, ptr @saa7164_cmd_send._entry.69, ptr @saa7164_cmd_send._entry.72, ptr @saa7164_cmd_send._entry.75, ptr @saa7164_cmd_send._entry.78, ptr @saa7164_cmd_send._entry.81, ptr @saa7164_cmd_send._entry.84, ptr @saa7164_cmd_send._entry.87, ptr @saa7164_cmd_send._entry.90, ptr @saa7164_cmd_send._entry.93, ptr @saa7164_cmd_send._entry.96, ptr @saa7164_cmd_send._entry.99, ptr @saa7164_cmd_send._entry_ptr, ptr @saa7164_cmd_send._entry_ptr.101, ptr @saa7164_cmd_send._entry_ptr.104, ptr @saa7164_cmd_send._entry_ptr.107, ptr @saa7164_cmd_send._entry_ptr.110, ptr @saa7164_cmd_send._entry_ptr.113, ptr @saa7164_cmd_send._entry_ptr.115, ptr @saa7164_cmd_send._entry_ptr.118, ptr @saa7164_cmd_send._entry_ptr.120, ptr @saa7164_cmd_send._entry_ptr.123, ptr @saa7164_cmd_send._entry_ptr.126, ptr @saa7164_cmd_send._entry_ptr.26, ptr @saa7164_cmd_send._entry_ptr.29, ptr @saa7164_cmd_send._entry_ptr.32, ptr @saa7164_cmd_send._entry_ptr.35, ptr @saa7164_cmd_send._entry_ptr.38, ptr @saa7164_cmd_send._entry_ptr.41, ptr @saa7164_cmd_send._entry_ptr.44, ptr @saa7164_cmd_send._entry_ptr.47, ptr @saa7164_cmd_send._entry_ptr.50, ptr @saa7164_cmd_send._entry_ptr.53, ptr @saa7164_cmd_send._entry_ptr.56, ptr @saa7164_cmd_send._entry_ptr.59, ptr @saa7164_cmd_send._entry_ptr.62, ptr @saa7164_cmd_send._entry_ptr.65, ptr @saa7164_cmd_send._entry_ptr.68, ptr @saa7164_cmd_send._entry_ptr.71, ptr @saa7164_cmd_send._entry_ptr.74, ptr @saa7164_cmd_send._entry_ptr.77, ptr @saa7164_cmd_send._entry_ptr.80, ptr @saa7164_cmd_send._entry_ptr.83, ptr @saa7164_cmd_send._entry_ptr.86, ptr @saa7164_cmd_send._entry_ptr.89, ptr @saa7164_cmd_send._entry_ptr.92, ptr @saa7164_cmd_send._entry_ptr.95, ptr @saa7164_cmd_send._entry_ptr.98, ptr @saa7164_cmd_set._entry, ptr @saa7164_cmd_set._entry.129, ptr @saa7164_cmd_set._entry.132, ptr @saa7164_cmd_set._entry_ptr, ptr @saa7164_cmd_set._entry_ptr.131, ptr @saa7164_cmd_set._entry_ptr.134, ptr @saa7164_cmd_signal._entry, ptr @saa7164_cmd_signal._entry.16, ptr @saa7164_cmd_signal._entry.19, ptr @saa7164_cmd_signal._entry_ptr, ptr @saa7164_cmd_signal._entry_ptr.18, ptr @saa7164_cmd_signal._entry_ptr.21, ptr @saa7164_cmd_wait._entry, ptr @saa7164_cmd_wait._entry.137, ptr @saa7164_cmd_wait._entry.140, ptr @saa7164_cmd_wait._entry.143, ptr @saa7164_cmd_wait._entry_ptr, ptr @saa7164_cmd_wait._entry_ptr.139, ptr @saa7164_cmd_wait._entry_ptr.142, ptr @saa7164_cmd_wait._entry_ptr.145, ptr @saa7164_irq_dequeue._entry, ptr @saa7164_irq_dequeue._entry.12, ptr @saa7164_irq_dequeue._entry.3, ptr @saa7164_irq_dequeue._entry.6, ptr @saa7164_irq_dequeue._entry.9, ptr @saa7164_irq_dequeue._entry_ptr, ptr @saa7164_irq_dequeue._entry_ptr.11, ptr @saa7164_irq_dequeue._entry_ptr.14, ptr @saa7164_irq_dequeue._entry_ptr.5, ptr @saa7164_irq_dequeue._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.117, ptr @.str.122, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.141, ptr @.str.144, ptr @.str.146, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.159], section "llvm.metadata"
@0 = internal global [117 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_irq_dequeue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_irq_dequeue._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_irq_dequeue._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_irq_dequeue._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_irq_dequeue._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_signal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_signal._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_signal._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_send._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_set._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_set._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_wait._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_wait._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_wait._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_dequeue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_dequeue._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_dequeue._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_dequeue._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_dequeue._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_dequeue._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_cmd_dequeue._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_irq_dequeue(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca [512 x i8], align 1
  %tRsp = alloca %struct.tmComResInfo, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %tmp) #4
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 512)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %1 = load i32, ptr @saa_debug, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %seqno = getelementptr inbounds %struct.tmComResInfo, ptr %tRsp, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 27
  %name19 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  br label %do.body5

do.body5:                                         ; preds = %do.cond66.do.body5_crit_edge, %do.end4
  %i.0 = phi i32 [ 0, %do.end4 ], [ %inc, %do.cond66.do.body5_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %tRsp) #4
  %2 = call ptr @memset(ptr %tRsp, i32 0, i32 11)
  %call6 = call i32 @saa7164_bus_get(ptr noundef %dev, ptr noundef nonnull %tRsp, ptr noundef null, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp.not = icmp eq i32 %call6, 0
  br i1 %cmp.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %do.body5
  %3 = ptrtoint ptr %seqno to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %seqno, align 1
  %idxprom = zext i8 %4 to i32
  %wait = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom, i32 5
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %inuse.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom, i32 1
  %5 = ptrtoint ptr %inuse.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inuse.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp eq i32 %6, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end8.saa7164_cmd_timeout_get.exit_crit_edge

if.end8.saa7164_cmd_timeout_get.exit_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_cmd_timeout_get.exit

land.lhs.true.i:                                  ; preds = %if.end8
  %arrayidx.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %4)
  %cmp6.i = icmp eq i8 %8, %4
  br i1 %cmp6.i, label %if.then.i, label %land.lhs.true.i.saa7164_cmd_timeout_get.exit_crit_edge

land.lhs.true.i.saa7164_cmd_timeout_get.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_cmd_timeout_get.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %timeout.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom, i32 2
  %9 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timeout.i, align 8
  br label %saa7164_cmd_timeout_get.exit

saa7164_cmd_timeout_get.exit:                     ; preds = %if.then.i, %land.lhs.true.i.saa7164_cmd_timeout_get.exit_crit_edge, %if.end8.saa7164_cmd_timeout_get.exit_crit_edge
  %ret.0.i = phi i32 [ %10, %if.then.i ], [ 0, %land.lhs.true.i.saa7164_cmd_timeout_get.exit_crit_edge ], [ 0, %if.end8.saa7164_cmd_timeout_get.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %11 = load i32, ptr @saa_debug, align 4
  %and12 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %saa7164_cmd_timeout_get.exit.do.end24_crit_edge, label %do.end17

saa7164_cmd_timeout_get.exit.do.end24_crit_edge:  ; preds = %saa7164_cmd_timeout_get.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end24

do.end17:                                         ; preds = %saa7164_cmd_timeout_get.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name19, ptr noundef nonnull @.str.1, i32 noundef %ret.0.i) #7
  br label %do.end24

do.end24:                                         ; preds = %do.end17, %saa7164_cmd_timeout_get.exit.do.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool25.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool25.not, label %do.body27, label %do.end48

do.body27:                                        ; preds = %do.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %12 = load i32, ptr @saa_debug, align 4
  %and28 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body27.do.end41_crit_edge, label %do.end33

do.body27.do.end41_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end41

do.end33:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %seqno to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %seqno, align 1
  %conv = zext i8 %14 to i32
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name19, ptr noundef nonnull @.str.1, i32 noundef %conv) #7
  br label %do.end41

do.end41:                                         ; preds = %do.end33, %do.body27.do.end41_crit_edge
  %15 = ptrtoint ptr %seqno to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %seqno, align 1
  %idxprom44 = zext i8 %16 to i32
  %signalled = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom44, i32 3
  %17 = ptrtoint ptr %signalled to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %signalled, align 4
  call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  br label %do.cond66

do.end48:                                         ; preds = %do.end24
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1) #7
  %call51 = call i32 @saa7164_bus_get(ptr noundef %dev, ptr noundef nonnull %tRsp, ptr noundef nonnull %tmp, i32 noundef 0) #4
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef %call51) #7
  %18 = zext i32 %call51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call51, label %do.end48.cleanup.thread_crit_edge [
    i32 34, label %cleanup.thread.loopexit
    i32 0, label %do.end48.do.cond66_crit_edge
  ]

do.end48.do.cond66_crit_edge:                     ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond66

do.end48.cleanup.thread_crit_edge:                ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

cleanup.thread.loopexit:                          ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.loopexit, %do.end48.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ 0, %cleanup.thread.loopexit ], [ %call51, %do.end48.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %tRsp) #4
  br label %cleanup70

cleanup:                                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %tRsp) #4
  br label %cleanup70

do.cond66:                                        ; preds = %do.end48.do.cond66_crit_edge, %do.end41
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %tRsp) #4
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 33
  br i1 %exitcond.not, label %do.cond66.cleanup70_crit_edge, label %do.cond66.do.body5_crit_edge

do.cond66.do.body5_crit_edge:                     ; preds = %do.cond66
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5

do.cond66.cleanup70_crit_edge:                    ; preds = %do.cond66
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup70

cleanup70:                                        ; preds = %do.cond66.cleanup70_crit_edge, %cleanup, %cleanup.thread
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ %call6, %cleanup ], [ 0, %do.cond66.cleanup70_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %tmp) #4
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_bus_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7164_cmd_signal(ptr noundef %dev, i8 noundef zeroext %seqno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %0 = load i32, ptr @saa_debug, align 4
  %and = and i32 %0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.15) #7
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %lock = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %name14 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  br label %for.body

for.cond28.preheader:                             ; preds = %for.inc
  %inuse34.peel = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 0, i32 1
  %1 = ptrtoint ptr %inuse34.peel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %inuse34.peel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp35.peel = icmp eq i32 %2, 1
  br i1 %cmp35.peel, label %do.body49.peel, label %for.cond28.preheader.for.body31.preheader_crit_edge

for.cond28.preheader.for.body31.preheader_crit_edge: ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body31.preheader

do.body49.peel:                                   ; preds = %for.cond28.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %3 = load i32, ptr @saa_debug, align 4
  %and50.peel = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.peel)
  %tobool51.not.peel = icmp eq i32 %and50.peel, 0
  br i1 %tobool51.not.peel, label %do.body49.peel.do.end62.peel_crit_edge, label %do.end55.peel

do.body49.peel.do.end62.peel_crit_edge:           ; preds = %do.body49.peel
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end62.peel

do.end55.peel:                                    ; preds = %do.body49.peel
  call void @__sanitizer_cov_trace_pc() #6
  %call59.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name14, ptr noundef nonnull @.str.15, i32 noundef 0) #7
  br label %do.end62.peel

do.end62.peel:                                    ; preds = %do.end55.peel, %do.body49.peel.do.end62.peel_crit_edge
  %signalled65.peel = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 0, i32 3
  %4 = ptrtoint ptr %signalled65.peel to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %signalled65.peel, align 4
  %wait.peel = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %wait.peel, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  br label %for.body31.preheader

for.body31.preheader:                             ; preds = %do.end62.peel, %for.cond28.preheader.for.body31.preheader_crit_edge
  br label %for.body31

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end3
  %i.0100 = phi i32 [ 0, %do.end3 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %i.0100
  %inuse = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %i.0100, i32 1
  %5 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp4 = icmp eq i32 %6, 1
  br i1 %cmp4, label %do.body6, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.body6:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %7 = load i32, ptr @saa_debug, align 4
  %and7 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body6.for.inc_crit_edge, label %do.end12

do.body6.for.inc_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end12:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 8
  %conv = zext i8 %9 to i32
  %signalled = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %i.0100, i32 3
  %10 = ptrtoint ptr %signalled to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %signalled, align 4
  %timeout = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %i.0100, i32 2
  %12 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timeout, align 8
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name14, i32 noundef %conv, i32 noundef %11, i32 noundef %13) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end12, %do.body6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.cond28.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body31:                                       ; preds = %for.inc69.for.body31_crit_edge, %for.body31.preheader
  %i.1102 = phi i32 [ %inc70, %for.inc69.for.body31_crit_edge ], [ 1, %for.body31.preheader ]
  %inuse34 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %i.1102, i32 1
  %14 = ptrtoint ptr %inuse34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inuse34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp35 = icmp eq i32 %15, 1
  br i1 %cmp35, label %lor.lhs.false, label %for.body31.for.inc69_crit_edge

for.body31.for.inc69_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc69

lor.lhs.false:                                    ; preds = %for.body31
  %signalled41 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %i.1102, i32 3
  %16 = ptrtoint ptr %signalled41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %signalled41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool42.not = icmp eq i32 %17, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %lor.lhs.false.do.body49_crit_edge

lor.lhs.false.do.body49_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body49

lor.lhs.false43:                                  ; preds = %lor.lhs.false
  %timeout46 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %i.1102, i32 2
  %18 = ptrtoint ptr %timeout46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timeout46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool47.not = icmp eq i32 %19, 0
  br i1 %tobool47.not, label %lor.lhs.false43.for.inc69_crit_edge, label %lor.lhs.false43.do.body49_crit_edge

lor.lhs.false43.do.body49_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body49

lor.lhs.false43.for.inc69_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc69

do.body49:                                        ; preds = %lor.lhs.false43.do.body49_crit_edge, %lor.lhs.false.do.body49_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %20 = load i32, ptr @saa_debug, align 4
  %and50 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body49.do.end62_crit_edge, label %do.end55

do.body49.do.end62_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end62

do.end55:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #6
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name14, ptr noundef nonnull @.str.15, i32 noundef %i.1102) #7
  br label %do.end62

do.end62:                                         ; preds = %do.end55, %do.body49.do.end62_crit_edge
  %signalled65 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %i.1102, i32 3
  %21 = ptrtoint ptr %signalled65 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %signalled65, align 4
  %wait = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %i.1102, i32 5
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  br label %for.inc69

for.inc69:                                        ; preds = %do.end62, %lor.lhs.false43.for.inc69_crit_edge, %for.body31.for.inc69_crit_edge
  %inc70 = add nuw nsw i32 %i.1102, 1
  %exitcond104.not = icmp eq i32 %inc70, 256
  br i1 %exitcond104.not, label %for.end71, label %for.inc69.for.body31_crit_edge, !llvm.loop !242

for.inc69.for.body31_crit_edge:                   ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body31

for.end71:                                        ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_cmd_send(ptr noundef %dev, i8 noundef zeroext %id, i32 noundef %command, i16 noundef zeroext %controlselector, i16 noundef zeroext %size, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %command_t = alloca %struct.tmComResInfo, align 1
  %response_t = alloca %struct.tmComResInfo, align 1
  %errdata = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %command_t) #4
  %0 = getelementptr inbounds %struct.tmComResInfo, ptr %command_t, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tmComResInfo, ptr %command_t, i32 0, i32 2
  %2 = getelementptr inbounds %struct.tmComResInfo, ptr %command_t, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tmComResInfo, ptr %command_t, i32 0, i32 4
  %4 = getelementptr inbounds %struct.tmComResInfo, ptr %command_t, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %response_t) #4
  %5 = getelementptr inbounds %struct.tmComResInfo, ptr %response_t, i32 0, i32 1
  %6 = getelementptr inbounds %struct.tmComResInfo, ptr %response_t, i32 0, i32 2
  %7 = getelementptr inbounds %struct.tmComResInfo, ptr %response_t, i32 0, i32 3
  %8 = getelementptr inbounds %struct.tmComResInfo, ptr %response_t, i32 0, i32 4
  %9 = getelementptr inbounds %struct.tmComResInfo, ptr %response_t, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %errdata) #4
  %10 = call ptr @memset(ptr %errdata, i32 255, i32 256)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %11 = load i32, ptr @saa_debug, align 4
  %and = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call = tail call ptr @saa7164_unitid_name(ptr noundef %dev, i8 noundef zeroext %id) #4
  %conv = zext i8 %id to i32
  %conv2 = zext i16 %controlselector to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name, ptr noundef nonnull @.str.23, ptr noundef %call, i32 noundef %conv, i32 noundef %command, i32 noundef %conv2) #7
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %conv6 = zext i16 %size to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size)
  %cmp = icmp eq i16 %size, 0
  %cmp8 = icmp eq ptr %buf, null
  %or.cond = or i1 %cmp, %cmp8
  br i1 %or.cond, label %do.end13, label %if.end16

do.end13:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #7
  br label %cleanup

if.end16:                                         ; preds = %do.end5
  %12 = getelementptr inbounds i8, ptr %command_t, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %12, align 1
  %14 = call ptr @memset(ptr %response_t, i32 0, i32 11)
  %15 = ptrtoint ptr %command_t to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %id, ptr %command_t, align 1
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %command, ptr %2, align 1
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %controlselector, ptr %3, align 1
  %lock.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end16
  %i.025.i = phi i32 [ 0, %if.end16 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %inuse.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %i.025.i, i32 1
  %18 = ptrtoint ptr %inuse.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inuse.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1.i = icmp eq i32 %19, 0
  br i1 %cmp1.i, label %saa7164_cmd_alloc_seqno.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %saa7164_cmd_alloc_seqno.exit.thread, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

saa7164_cmd_alloc_seqno.exit.thread:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %lock.i) #4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.23) #7
  br label %cleanup

saa7164_cmd_alloc_seqno.exit:                     ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %i.025.i
  %20 = ptrtoint ptr %inuse.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %inuse.i, align 4
  %signalled.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %i.025.i, i32 3
  %21 = ptrtoint ptr %signalled.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %signalled.i, align 4
  %timeout.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %i.025.i, i32 2
  %22 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %timeout.i, align 8
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 8
  tail call void @mutex_unlock(ptr noundef %lock.i) #4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %4, align 1
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %size, ptr %1, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %27 = load i32, ptr @saa_debug, align 4
  %and34 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %saa7164_cmd_alloc_seqno.exit.do.body49_crit_edge, label %do.end39

saa7164_cmd_alloc_seqno.exit.do.body49_crit_edge: ; preds = %saa7164_cmd_alloc_seqno.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body49

do.end39:                                         ; preds = %saa7164_cmd_alloc_seqno.exit
  call void @__sanitizer_cov_trace_pc() #6
  %name41 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %conv44 = zext i8 %24 to i32
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name41, ptr noundef nonnull @.str.23, i32 noundef %conv44) #7
  br label %do.body49

do.body49:                                        ; preds = %do.end39, %saa7164_cmd_alloc_seqno.exit.do.body49_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %28 = load i32, ptr @saa_debug, align 4
  %and50 = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body49.do.end64_crit_edge, label %do.end55

do.body49.do.end64_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end64

do.end55:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #6
  %name57 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %1, align 1
  %conv60 = zext i16 %30 to i32
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name57, ptr noundef nonnull @.str.23, i32 noundef %conv60) #7
  br label %do.end64

do.end64:                                         ; preds = %do.end55, %do.body49.do.end64_crit_edge
  %31 = ptrtoint ptr %command_t to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %command_t, align 1
  %idxprom.i = zext i8 %32 to i32
  %lock.i666 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom.i, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i666, i32 noundef 0) #4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %1, align 1
  %m_wMaxReqSize.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 22, i32 1
  %35 = ptrtoint ptr %m_wMaxReqSize.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %m_wMaxReqSize.i, align 4
  %.frozen = freeze i16 %34
  %.frozen910 = freeze i16 %36
  %div113.i = udiv i16 %.frozen, %.frozen910
  %div.zext.i = zext i16 %div113.i to i32
  %37 = mul i16 %div113.i, %.frozen910
  %rem114.i.decomposed = sub i16 %.frozen, %37
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem114.i.decomposed)
  %cmp.i = icmp eq i16 %rem114.i.decomposed, 0
  %sub.i = sext i1 %cmp.i to i32
  %spec.select.i = add nsw i32 %sub.i, %div.zext.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp13118.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %cmp13118.not.i, label %do.end64.if.end42.i_crit_edge, label %for.body.i667.preheader

do.end64.if.end42.i_crit_edge:                    ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i

for.body.i667.preheader:                          ; preds = %do.end64
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %0, align 1
  %40 = or i8 %39, 16
  store i8 %40, ptr %0, align 1
  %41 = ptrtoint ptr %m_wMaxReqSize.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %m_wMaxReqSize.i, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %42, ptr %1, align 1
  %call22.i755 = call i32 @saa7164_bus_set(ptr noundef %dev, ptr noundef nonnull %command_t, ptr noundef %buf) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i755)
  %cmp23.not.i756 = icmp eq i32 %call22.i755, 0
  br i1 %cmp23.not.i756, label %for.body.i667.preheader.if.end34.i_crit_edge, label %for.body.i667.preheader.do.end28.i_crit_edge

for.body.i667.preheader.do.end28.i_crit_edge:     ; preds = %for.body.i667.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end28.i

for.body.i667.preheader.if.end34.i_crit_edge:     ; preds = %for.body.i667.preheader
  br label %if.end34.i

for.body.i667:                                    ; preds = %if.end34.i
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %0, align 1
  %46 = or i8 %45, 16
  store i8 %46, ptr %0, align 1
  %47 = ptrtoint ptr %m_wMaxReqSize.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %m_wMaxReqSize.i, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %48, ptr %1, align 1
  %conv21.i = zext i16 %48 to i32
  %mul.i = mul nuw i32 %conv21.i, %conv12.i
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %mul.i
  %call22.i = call i32 @saa7164_bus_set(ptr noundef %dev, ptr noundef nonnull %command_t, ptr noundef %add.ptr.i) #4
  %cmp23.not.i = icmp eq i32 %call22.i, 0
  br i1 %cmp23.not.i, label %for.body.i667.if.end34.i_crit_edge, label %for.body.i667.do.end28.i_crit_edge

for.body.i667.do.end28.i_crit_edge:               ; preds = %for.body.i667
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end28.i

for.body.i667.if.end34.i_crit_edge:               ; preds = %for.body.i667
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

do.end28.i:                                       ; preds = %for.body.i667.do.end28.i_crit_edge, %for.body.i667.preheader.do.end28.i_crit_edge
  %tobool65.not120.i.lcssa = phi i32 [ 32, %for.body.i667.preheader.do.end28.i_crit_edge ], [ 21, %for.body.i667.do.end28.i_crit_edge ]
  %call22.i.lcssa = phi i32 [ %call22.i755, %for.body.i667.preheader.do.end28.i_crit_edge ], [ %call22.i, %for.body.i667.do.end28.i_crit_edge ]
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.128, i32 noundef %call22.i.lcssa) #7
  br label %saa7164_cmd_set.exit

if.end34.i:                                       ; preds = %for.body.i667.if.end34.i_crit_edge, %for.body.i667.preheader.if.end34.i_crit_edge
  %idx.0119.i757 = phi i16 [ %inc.i668, %for.body.i667.if.end34.i_crit_edge ], [ 0, %for.body.i667.preheader.if.end34.i_crit_edge ]
  %inc.i668 = add i16 %idx.0119.i757, 1
  %conv12.i = zext i16 %inc.i668 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %conv12.i)
  %cmp13.i = icmp ugt i32 %spec.select.i, %conv12.i
  br i1 %cmp13.i, label %for.body.i667, label %for.end.i

for.end.i:                                        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc.i668)
  %cmp36.not.i = icmp eq i16 %inc.i668, 0
  br i1 %cmp36.not.i, label %for.end.i.if.end42.i_crit_edge, label %if.then38.i

for.end.i.if.end42.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i

if.then38.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %0, align 1
  %52 = and i8 %51, -17
  store i8 %52, ptr %0, align 1
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %for.end.i.if.end42.i_crit_edge, %do.end64.if.end42.i_crit_edge
  %conv12.lcssa133.i = phi i32 [ %conv12.i, %if.then38.i ], [ 0, %for.end.i.if.end42.i_crit_edge ], [ 0, %do.end64.if.end42.i_crit_edge ]
  %tobool65.not.lcssa132.i = phi i32 [ 21, %if.then38.i ], [ 21, %for.end.i.if.end42.i_crit_edge ], [ 32, %do.end64.if.end42.i_crit_edge ]
  %idx.0.lcssa131.i = phi i16 [ %inc.i668, %if.then38.i ], [ 0, %for.end.i.if.end42.i_crit_edge ], [ 0, %do.end64.if.end42.i_crit_edge ]
  %53 = ptrtoint ptr %m_wMaxReqSize.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %m_wMaxReqSize.i, align 4
  %mul47.i = mul i16 %54, %idx.0.lcssa131.i
  %sub48.i = sub i16 %34, %mul47.i
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %sub48.i, ptr %1, align 1
  %conv53.i = zext i16 %54 to i32
  %mul54.i = mul nuw i32 %conv12.lcssa133.i, %conv53.i
  %add.ptr55.i = getelementptr i8, ptr %buf, i32 %mul54.i
  %call56.i = call i32 @saa7164_bus_set(ptr noundef %dev, ptr noundef nonnull %command_t, ptr noundef %add.ptr55.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %cmp57.not.i = icmp eq i32 %call56.i, 0
  br i1 %cmp57.not.i, label %if.end42.i.saa7164_cmd_set.exit_crit_edge, label %do.end62.i

if.end42.i.saa7164_cmd_set.exit_crit_edge:        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_cmd_set.exit

do.end62.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #6
  %call64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.128, i32 noundef %call56.i) #7
  br label %saa7164_cmd_set.exit

saa7164_cmd_set.exit:                             ; preds = %do.end62.i, %if.end42.i.saa7164_cmd_set.exit_crit_edge, %do.end28.i
  %ret.0.i669 = phi i32 [ %tobool65.not120.i.lcssa, %do.end28.i ], [ %tobool65.not.lcssa132.i, %do.end62.i ], [ 0, %if.end42.i.saa7164_cmd_set.exit_crit_edge ]
  %56 = ptrtoint ptr %command_t to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %command_t, align 1
  %idxprom71.i = zext i8 %57 to i32
  %lock73.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom71.i, i32 4
  call void @mutex_unlock(ptr noundef %lock73.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i669)
  %cmp66.not = icmp eq i32 %ret.0.i669, 0
  br i1 %cmp66.not, label %while.cond.preheader, label %do.end71

while.cond.preheader:                             ; preds = %saa7164_cmd_set.exit
  %name90 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  br label %while.cond.outer.outer

while.cond.outer.outer:                           ; preds = %do.end237.while.cond.outer.outer_crit_edge, %while.cond.preheader
  %safety.0.ph.ph = phi i32 [ %inc, %do.end237.while.cond.outer.outer_crit_edge ], [ 0, %while.cond.preheader ]
  %data_recd.0.ph.ph = phi i16 [ %data_recd.0.ph725, %do.end237.while.cond.outer.outer_crit_edge ], [ 0, %while.cond.preheader ]
  br label %while.cond.outer

do.end71:                                         ; preds = %saa7164_cmd_set.exit
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.23, i32 noundef %ret.0.i669) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %ret.0.i669)
  %cmp74.not = icmp eq i32 %ret.0.i669, 21
  %58 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %4, align 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %idxprom.i679 = zext i8 %59 to i32
  %inuse.i680 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom.i679, i32 1
  %60 = ptrtoint ptr %inuse.i680 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %inuse.i680, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp.i681 = icmp eq i32 %61, 1
  br i1 %cmp74.not, label %if.else, label %if.then76

if.then76:                                        ; preds = %do.end71
  br i1 %cmp.i681, label %land.lhs.true.i, label %if.then76.saa7164_cmd_free_seqno.exit_crit_edge

if.then76.saa7164_cmd_free_seqno.exit_crit_edge:  ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_cmd_free_seqno.exit

land.lhs.true.i:                                  ; preds = %if.then76
  %arrayidx.i674 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom.i679
  %62 = ptrtoint ptr %arrayidx.i674 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i674, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %59)
  %cmp6.i = icmp eq i8 %63, %59
  br i1 %cmp6.i, label %if.then.i677, label %land.lhs.true.i.saa7164_cmd_free_seqno.exit_crit_edge

land.lhs.true.i.saa7164_cmd_free_seqno.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_cmd_free_seqno.exit

if.then.i677:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %inuse.i680 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %inuse.i680, align 4
  %signalled.i675 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom.i679, i32 3
  %65 = ptrtoint ptr %signalled.i675 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %signalled.i675, align 4
  %timeout.i676 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom.i679, i32 2
  %66 = ptrtoint ptr %timeout.i676 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %timeout.i676, align 8
  br label %saa7164_cmd_free_seqno.exit

saa7164_cmd_free_seqno.exit:                      ; preds = %if.then.i677, %land.lhs.true.i.saa7164_cmd_free_seqno.exit_crit_edge, %if.then76.saa7164_cmd_free_seqno.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #4
  br label %cleanup

if.else:                                          ; preds = %do.end71
  br i1 %cmp.i681, label %land.lhs.true.i684, label %if.else.saa7164_cmd_timeout_seqno.exit_crit_edge

if.else.saa7164_cmd_timeout_seqno.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_cmd_timeout_seqno.exit

land.lhs.true.i684:                               ; preds = %if.else
  %arrayidx.i682 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom.i679
  %67 = ptrtoint ptr %arrayidx.i682 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i682, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %59)
  %cmp6.i683 = icmp eq i8 %68, %59
  br i1 %cmp6.i683, label %if.then.i686, label %land.lhs.true.i684.saa7164_cmd_timeout_seqno.exit_crit_edge

land.lhs.true.i684.saa7164_cmd_timeout_seqno.exit_crit_edge: ; preds = %land.lhs.true.i684
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_cmd_timeout_seqno.exit

if.then.i686:                                     ; preds = %land.lhs.true.i684
  call void @__sanitizer_cov_trace_pc() #6
  %timeout.i685 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom.i679, i32 2
  %69 = ptrtoint ptr %timeout.i685 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %timeout.i685, align 8
  br label %saa7164_cmd_timeout_seqno.exit

saa7164_cmd_timeout_seqno.exit:                   ; preds = %if.then.i686, %land.lhs.true.i684.saa7164_cmd_timeout_seqno.exit_crit_edge, %if.else.saa7164_cmd_timeout_seqno.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #4
  br label %cleanup

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer724
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %70 = load i32, ptr @saa_debug, align 4
  %and83 = and i32 %70, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %while.cond.do.end95_crit_edge, label %do.end88

while.cond.do.end95_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end95

do.end88:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name90, ptr noundef nonnull @.str.23) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %.pr = load i32, ptr @saa_debug, align 4
  br label %do.end95

do.end95:                                         ; preds = %do.end88, %while.cond.do.end95_crit_edge
  %71 = phi i32 [ %.pr, %do.end88 ], [ %70, %while.cond.do.end95_crit_edge ]
  %72 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %71)
  %cmp.i687 = icmp ugt i32 %71, 3
  br i1 %cmp.i687, label %if.then.i688, label %do.end95.do.body.i_crit_edge

do.end95.do.body.i_crit_edge:                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

if.then.i688:                                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #6
  call void @saa7164_bus_dump(ptr noundef %dev) #4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i688, %do.end95.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %74 = load i32, ptr @saa_debug, align 4
  %and.i = and i32 %74, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %.pre.i = zext i8 %73 to i32
  br i1 %tobool.not.i, label %do.body.i.do.end5.i_crit_edge, label %do.end.i

do.body.i.do.end5.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %name90, ptr noundef nonnull @.str.136, i32 noundef %.pre.i) #7
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %do.body.i.do.end5.i_crit_edge
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %inuse.i691 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %.pre.i, i32 1
  %75 = ptrtoint ptr %inuse.i691 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %inuse.i691, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp6.i692 = icmp eq i32 %76, 1
  br i1 %cmp6.i692, label %land.lhs.true.i694, label %do.end5.i.if.end20.thread.i_crit_edge

do.end5.i.if.end20.thread.i_crit_edge:            ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.thread.i

land.lhs.true.i694:                               ; preds = %do.end5.i
  %arrayidx.i693 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %.pre.i
  %77 = ptrtoint ptr %arrayidx.i693 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i693, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %78, i8 %73)
  %cmp14.i = icmp eq i8 %78, %73
  %wait.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %.pre.i, i32 5
  br i1 %cmp14.i, label %if.end20.i, label %land.lhs.true.i694.if.end20.thread.i_crit_edge

land.lhs.true.i694.if.end20.thread.i_crit_edge:   ; preds = %land.lhs.true.i694
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.thread.i

if.end20.thread.i:                                ; preds = %land.lhs.true.i694.if.end20.thread.i_crit_edge, %do.end5.i.if.end20.thread.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #4
  br label %do.end133.i

if.end20.i:                                       ; preds = %land.lhs.true.i694
  call void @mutex_unlock(ptr noundef %lock.i) #4
  %tobool22.not.i = icmp eq ptr %wait.i, null
  br i1 %tobool22.not.i, label %if.end20.i.do.end133.i_crit_edge, label %if.then23.i

if.end20.i.do.end133.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end133.i

if.then23.i:                                      ; preds = %if.end20.i
  %signalled.i695 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %.pre.i, i32 3
  %79 = ptrtoint ptr %signalled.i695 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %signalled.i695, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp27.i = icmp eq i32 %80, 0
  br i1 %cmp27.i, label %if.then29.i, label %if.then23.i.saa7164_cmd_wait.exit_crit_edge

if.then23.i.saa7164_cmd_wait.exit_crit_edge:      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_cmd_wait.exit

if.then29.i:                                      ; preds = %if.then23.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %82 = load i32, ptr @saa_debug, align 4
  %and31.i = and i32 %82, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.then29.i.do.end48.i_crit_edge, label %do.end36.i

if.then29.i.do.end48.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end48.i

do.end36.i:                                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #6
  %call45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %name90, ptr noundef nonnull @.str.136, i32 noundef %.pre.i, i32 noundef 0) #7
  br label %do.end48.i

do.end48.i:                                       ; preds = %do.end36.i, %if.then29.i.do.end48.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @waitsecs to i32))
  %83 = load i32, ptr @waitsecs, align 4
  %mul.i696 = mul i32 %83, 100
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 280) #4
  %84 = ptrtoint ptr %signalled.i695 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %signalled.i695, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool59.not.i = icmp eq i32 %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i696)
  %tobool69.not185.i = icmp eq i32 %mul.i696, 0
  %tobool69.not.i = select i1 %tobool59.not.i, i1 %tobool69.not185.i, i1 false
  %not.tobool59.not.i = xor i1 %tobool59.not.i, true
  %86 = select i1 %not.tobool59.not.i, i1 true, i1 %tobool69.not.i
  br i1 %86, label %do.end48.i.if.end101.i_crit_edge, label %if.then71.i

do.end48.i.if.end101.i_crit_edge:                 ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end101.i

if.then71.i:                                      ; preds = %do.end48.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #4
  %87 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @waitsecs to i32))
  %88 = load i32, ptr @waitsecs, align 4
  %mul73.i = mul i32 %88, 100
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #4
  %call74186.i = call i32 @prepare_to_wait_event(ptr noundef nonnull %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #4
  %89 = ptrtoint ptr %signalled.i695 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %signalled.i695, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool80.not187.i = icmp eq i32 %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul73.i)
  %tobool85.not188.i = icmp eq i32 %mul73.i, 0
  %spec.store.select142189.i = select i1 %tobool85.not188.i, i32 1, i32 %mul73.i
  %__ret72.1190.i = select i1 %tobool80.not187.i, i32 %mul73.i, i32 %spec.store.select142189.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret72.1190.i)
  %tobool92.not191.i = icmp eq i32 %__ret72.1190.i, 0
  %not.tobool80.not192.i = xor i1 %tobool80.not187.i, true
  %91 = select i1 %not.tobool80.not192.i, i1 true, i1 %tobool92.not191.i
  br i1 %91, label %if.then71.i.for.end.i697_crit_edge, label %if.then71.i.cleanup.i_crit_edge

if.then71.i.cleanup.i_crit_edge:                  ; preds = %if.then71.i
  br label %cleanup.i

if.then71.i.for.end.i697_crit_edge:               ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i697

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then71.i.cleanup.i_crit_edge
  %__ret72.1193.i = phi i32 [ %__ret72.1.i, %cleanup.i.cleanup.i_crit_edge ], [ %__ret72.1190.i, %if.then71.i.cleanup.i_crit_edge ]
  %call99.i = call i32 @schedule_timeout(i32 noundef %__ret72.1193.i) #4
  %call74.i = call i32 @prepare_to_wait_event(ptr noundef nonnull %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #4
  %92 = ptrtoint ptr %signalled.i695 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %signalled.i695, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool80.not.i = icmp eq i32 %93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i)
  %tobool85.not.i = icmp eq i32 %call99.i, 0
  %spec.store.select142.i = select i1 %tobool85.not.i, i32 1, i32 %call99.i
  %__ret72.1.i = select i1 %tobool80.not.i, i32 %call99.i, i32 %spec.store.select142.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret72.1.i)
  %tobool92.not.i = icmp eq i32 %__ret72.1.i, 0
  %not.tobool80.not.i = xor i1 %tobool80.not.i, true
  %94 = select i1 %not.tobool80.not.i, i1 true, i1 %tobool92.not.i
  br i1 %94, label %cleanup.i.for.end.i697_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

cleanup.i.for.end.i697_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i697

for.end.i697:                                     ; preds = %cleanup.i.for.end.i697_crit_edge, %if.then71.i.for.end.i697_crit_edge
  call void @finish_wait(ptr noundef nonnull %wait.i, ptr noundef nonnull %__wq_entry.i) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #4
  br label %if.end101.i

if.end101.i:                                      ; preds = %for.end.i697, %do.end48.i.if.end101.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @waitsecs to i32))
  %96 = load i32, ptr @waitsecs, align 4
  %mul103.neg.i = mul i32 %96, -100
  %add.neg.i = sub i32 %95, %81
  %sub.i698 = add i32 %mul103.neg.i, %add.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i698)
  %cmp104.i = icmp slt i32 %sub.i698, 0
  %sub.lobit.i = lshr i32 %sub.i698, 31
  br i1 %cmp104.i, label %if.end101.i.do.body109.i_crit_edge, label %if.else.i

if.end101.i.do.body109.i_crit_edge:               ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body109.i

if.else.i:                                        ; preds = %if.end101.i
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %97 = ptrtoint ptr %inuse.i691 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %inuse.i691, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %cmp.i.i = icmp eq i32 %98, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.else.i.saa7164_cmd_timeout_seqno.exit.i_crit_edge

if.else.i.saa7164_cmd_timeout_seqno.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_cmd_timeout_seqno.exit.i

land.lhs.true.i.i:                                ; preds = %if.else.i
  %99 = ptrtoint ptr %arrayidx.i693 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.i693, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %100, i8 %73)
  %cmp6.i.i = icmp eq i8 %100, %73
  br i1 %cmp6.i.i, label %if.then.i.i, label %land.lhs.true.i.i.saa7164_cmd_timeout_seqno.exit.i_crit_edge

land.lhs.true.i.i.saa7164_cmd_timeout_seqno.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_cmd_timeout_seqno.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %timeout.i.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %.pre.i, i32 2
  %101 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %timeout.i.i, align 8
  br label %saa7164_cmd_timeout_seqno.exit.i

saa7164_cmd_timeout_seqno.exit.i:                 ; preds = %if.then.i.i, %land.lhs.true.i.i.saa7164_cmd_timeout_seqno.exit.i_crit_edge, %if.else.i.saa7164_cmd_timeout_seqno.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #4
  br label %do.body109.i

do.body109.i:                                     ; preds = %saa7164_cmd_timeout_seqno.exit.i, %if.end101.i.do.body109.i_crit_edge
  %ret.0.i699 = phi i32 [ 50, %saa7164_cmd_timeout_seqno.exit.i ], [ 0, %if.end101.i.do.body109.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %102 = load i32, ptr @saa_debug, align 4
  %and110.i = and i32 %102, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.i)
  %tobool111.not.i = icmp eq i32 %and110.i, 0
  br i1 %tobool111.not.i, label %do.body109.i.saa7164_cmd_wait.exit_crit_edge, label %do.end115.i

do.body109.i.saa7164_cmd_wait.exit_crit_edge:     ; preds = %do.body109.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_cmd_wait.exit

do.end115.i:                                      ; preds = %do.body109.i
  call void @__sanitizer_cov_trace_pc() #6
  %103 = ptrtoint ptr %signalled.i695 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %signalled.i695, align 4
  %call124.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef %name90, ptr noundef nonnull @.str.136, i32 noundef %.pre.i, i32 noundef %sub.lobit.i, i32 noundef %104) #7
  br label %saa7164_cmd_wait.exit

do.end133.i:                                      ; preds = %if.end20.i.do.end133.i_crit_edge, %if.end20.thread.i
  %call136.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.136, i32 noundef %.pre.i) #7
  br label %saa7164_cmd_wait.exit

saa7164_cmd_wait.exit:                            ; preds = %do.end133.i, %do.end115.i, %do.body109.i.saa7164_cmd_wait.exit_crit_edge, %if.then23.i.saa7164_cmd_wait.exit_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i699, %do.end115.i ], [ %ret.0.i699, %do.body109.i.saa7164_cmd_wait.exit_crit_edge ], [ 50, %do.end133.i ], [ 0, %if.then23.i.saa7164_cmd_wait.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %105 = load i32, ptr @saa_debug, align 4
  %and99 = and i32 %105, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %saa7164_cmd_wait.exit.do.end111_crit_edge, label %do.end104

saa7164_cmd_wait.exit.do.end111_crit_edge:        ; preds = %saa7164_cmd_wait.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end111

do.end104:                                        ; preds = %saa7164_cmd_wait.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name90, ptr noundef nonnull @.str.23, i32 noundef %ret.1.i) #7
  br label %do.end111

do.end111:                                        ; preds = %do.end104, %saa7164_cmd_wait.exit.do.end111_crit_edge
  %106 = zext i32 %ret.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %ret.1.i, label %do.end127 [
    i32 50, label %do.end117
    i32 0, label %if.end130
  ]

do.end117:                                        ; preds = %do.end111
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #7
  %107 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %4, align 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %idxprom.i701 = zext i8 %108 to i32
  %inuse.i702 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom.i701, i32 1
  %109 = ptrtoint ptr %inuse.i702 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %inuse.i702, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %110)
  %cmp.i703 = icmp eq i32 %110, 1
  br i1 %cmp.i703, label %land.lhs.true.i706, label %do.end117.saa7164_cmd_timeout_seqno.exit709_crit_edge

do.end117.saa7164_cmd_timeout_seqno.exit709_crit_edge: ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_cmd_timeout_seqno.exit709

land.lhs.true.i706:                               ; preds = %do.end117
  %arrayidx.i704 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom.i701
  %111 = ptrtoint ptr %arrayidx.i704 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.i704, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %112, i8 %108)
  %cmp6.i705 = icmp eq i8 %112, %108
  br i1 %cmp6.i705, label %if.then.i708, label %land.lhs.true.i706.saa7164_cmd_timeout_seqno.exit709_crit_edge

land.lhs.true.i706.saa7164_cmd_timeout_seqno.exit709_crit_edge: ; preds = %land.lhs.true.i706
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_cmd_timeout_seqno.exit709

if.then.i708:                                     ; preds = %land.lhs.true.i706
  call void @__sanitizer_cov_trace_pc() #6
  %timeout.i707 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom.i701, i32 2
  %113 = ptrtoint ptr %timeout.i707 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %timeout.i707, align 8
  br label %saa7164_cmd_timeout_seqno.exit709

saa7164_cmd_timeout_seqno.exit709:                ; preds = %if.then.i708, %land.lhs.true.i706.saa7164_cmd_timeout_seqno.exit709_crit_edge, %do.end117.saa7164_cmd_timeout_seqno.exit709_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #4
  br label %cleanup

do.end127:                                        ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #6
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #7
  br label %cleanup

if.end130:                                        ; preds = %do.end111
  %call131 = call i32 @saa7164_bus_get(ptr noundef %dev, ptr noundef nonnull %response_t, ptr noundef null, i32 noundef 1) #4
  %114 = zext i32 %call131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %call131, label %do.end155 [
    i32 34, label %do.body135
    i32 0, label %do.body159
  ]

do.body135:                                       ; preds = %if.end130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %115 = load i32, ptr @saa_debug, align 4
  %and136 = and i32 %115, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %do.body135.while.cond.backedge_crit_edge, label %do.end141

do.body135.while.cond.backedge_crit_edge:         ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

do.end141:                                        ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #6
  %call145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name90, ptr noundef nonnull @.str.23) #7
  br label %while.cond.backedge

do.end155:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #6
  %call157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #7
  br label %cleanup

do.body159:                                       ; preds = %if.end130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %116 = load i32, ptr @saa_debug, align 4
  %and160 = and i32 %116, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %do.body159.do.body175_crit_edge, label %do.end165

do.body159.do.body175_crit_edge:                  ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body175

do.end165:                                        ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #6
  %117 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %9, align 1
  %conv170 = zext i8 %118 to i32
  %call171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name90, ptr noundef nonnull @.str.23, i32 noundef %conv170) #7
  br label %do.body175

do.body175:                                       ; preds = %do.end165, %do.body159.do.body175_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %119 = load i32, ptr @saa_debug, align 4
  %and176 = and i32 %119, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %do.body175.do.body190_crit_edge, label %do.end181

do.body175.do.body190_crit_edge:                  ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body190

do.end181:                                        ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #6
  %120 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %5, align 1
  %conv185 = zext i8 %121 to i32
  %call186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name90, ptr noundef nonnull @.str.23, i32 noundef %conv185) #7
  br label %do.body190

do.body190:                                       ; preds = %do.end181, %do.body175.do.body190_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %122 = load i32, ptr @saa_debug, align 4
  %and191 = and i32 %122, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %do.body190.do.end205_crit_edge, label %do.end196

do.body190.do.end205_crit_edge:                   ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end205

do.end196:                                        ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #6
  %123 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 2)
  %124 = load i16, ptr %6, align 1
  %conv201 = zext i16 %124 to i32
  %call202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name90, ptr noundef nonnull @.str.23, i32 noundef %conv201) #7
  br label %do.end205

do.end205:                                        ; preds = %do.end196, %do.body190.do.end205_crit_edge
  %125 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %9, align 1
  %127 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %126, i8 %128)
  %cmp210.not = icmp eq i8 %126, %128
  br i1 %cmp210.not, label %if.end250, label %do.body213

do.body213:                                       ; preds = %do.end205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %129 = load i32, ptr @saa_debug, align 4
  %and214 = and i32 %129, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %do.body213.do.end230_crit_edge, label %do.end219

do.body213.do.end230_crit_edge:                   ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end230

do.end219:                                        ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #6
  %conv209.le = zext i8 %128 to i32
  %conv207.le = zext i8 %126 to i32
  %call227 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name90, i32 noundef %conv207.le, i32 noundef %conv209.le) #7
  br label %do.end230

do.end230:                                        ; preds = %do.end219, %do.body213.do.end230_crit_edge
  %call231 = call fastcc i32 @saa7164_cmd_dequeue(ptr noundef %dev)
  %cmp232.not = icmp eq i32 %call231, 0
  br i1 %cmp232.not, label %do.end230.while.cond.outer_crit_edge, label %do.end237

do.end230.while.cond.outer_crit_edge:             ; preds = %do.end230
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.outer

do.end237:                                        ; preds = %do.end230
  %call239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %call231) #7
  %inc = add i32 %safety.0.ph.ph, 1
  %cmp240 = icmp sgt i32 %safety.0.ph.ph, 16
  br i1 %cmp240, label %do.end245, label %do.end237.while.cond.outer.outer_crit_edge

do.end237.while.cond.outer.outer_crit_edge:       ; preds = %do.end237
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.outer.outer

do.end245:                                        ; preds = %do.end237
  call void @__sanitizer_cov_trace_pc() #6
  %call247 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #7
  br label %cleanup

while.cond.outer:                                 ; preds = %do.end230.while.cond.outer_crit_edge, %while.cond.outer.outer
  %data_recd.0.ph = phi i16 [ %data_recd.0.ph725, %do.end230.while.cond.outer_crit_edge ], [ %data_recd.0.ph.ph, %while.cond.outer.outer ]
  br label %while.cond.outer724

while.cond.outer724:                              ; preds = %while.cond.outer724.backedge, %while.cond.outer
  %data_recd.0.ph725 = phi i16 [ %data_recd.0.ph, %while.cond.outer ], [ %add, %while.cond.outer724.backedge ]
  %conv428 = zext i16 %data_recd.0.ph725 to i32
  %sub = sub nsw i32 %conv6, %conv428
  br label %while.cond

if.end250:                                        ; preds = %do.end205
  %130 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %5, align 1
  %conv252 = zext i8 %131 to i32
  %and253 = and i32 %conv252, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and253)
  %cmp254.not = icmp eq i32 %and253, 0
  br i1 %cmp254.not, label %if.end407, label %if.then256

if.then256:                                       ; preds = %if.end250
  %132 = call ptr @memset(ptr %errdata, i32 0, i32 256)
  %call258 = call i32 @saa7164_bus_get(ptr noundef %dev, ptr noundef nonnull %response_t, ptr noundef nonnull %errdata, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %cmp259.not = icmp eq i32 %call258, 0
  br i1 %cmp259.not, label %if.end267, label %do.end264

do.end264:                                        ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #6
  %call266 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #7
  br label %cleanup

if.end267:                                        ; preds = %if.then256
  %133 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %4, align 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %idxprom.i711 = zext i8 %134 to i32
  %inuse.i712 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom.i711, i32 1
  %135 = ptrtoint ptr %inuse.i712 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %inuse.i712, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %136)
  %cmp.i713 = icmp eq i32 %136, 1
  br i1 %cmp.i713, label %land.lhs.true.i716, label %if.end267.saa7164_cmd_free_seqno.exit720_crit_edge

if.end267.saa7164_cmd_free_seqno.exit720_crit_edge: ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_cmd_free_seqno.exit720

land.lhs.true.i716:                               ; preds = %if.end267
  %arrayidx.i714 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom.i711
  %137 = ptrtoint ptr %arrayidx.i714 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx.i714, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %138, i8 %134)
  %cmp6.i715 = icmp eq i8 %138, %134
  br i1 %cmp6.i715, label %if.then.i719, label %land.lhs.true.i716.saa7164_cmd_free_seqno.exit720_crit_edge

land.lhs.true.i716.saa7164_cmd_free_seqno.exit720_crit_edge: ; preds = %land.lhs.true.i716
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_cmd_free_seqno.exit720

if.then.i719:                                     ; preds = %land.lhs.true.i716
  call void @__sanitizer_cov_trace_pc() #6
  %139 = ptrtoint ptr %inuse.i712 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %inuse.i712, align 4
  %signalled.i717 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom.i711, i32 3
  %140 = ptrtoint ptr %signalled.i717 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %signalled.i717, align 4
  %timeout.i718 = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom.i711, i32 2
  %141 = ptrtoint ptr %timeout.i718 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %timeout.i718, align 8
  br label %saa7164_cmd_free_seqno.exit720

saa7164_cmd_free_seqno.exit720:                   ; preds = %if.then.i719, %land.lhs.true.i716.saa7164_cmd_free_seqno.exit720_crit_edge, %if.end267.saa7164_cmd_free_seqno.exit720_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %142 = load i32, ptr @saa_debug, align 4
  %and270 = and i32 %142, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and270)
  %tobool271.not = icmp eq i32 %and270, 0
  br i1 %tobool271.not, label %saa7164_cmd_free_seqno.exit720.do.body291_crit_edge, label %do.end275

saa7164_cmd_free_seqno.exit720.do.body291_crit_edge: ; preds = %saa7164_cmd_free_seqno.exit720
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body291

do.end275:                                        ; preds = %saa7164_cmd_free_seqno.exit720
  call void @__sanitizer_cov_trace_pc() #6
  %143 = ptrtoint ptr %errdata to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %errdata, align 1
  %conv280 = zext i8 %144 to i32
  %arrayidx281 = getelementptr inbounds [256 x i8], ptr %errdata, i32 0, i32 1
  %145 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx281, align 1
  %conv282 = zext i8 %146 to i32
  %arrayidx283 = getelementptr inbounds [256 x i8], ptr %errdata, i32 0, i32 2
  %147 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx283, align 1
  %conv284 = zext i8 %148 to i32
  %arrayidx285 = getelementptr inbounds [256 x i8], ptr %errdata, i32 0, i32 3
  %149 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx285, align 1
  %conv286 = zext i8 %150 to i32
  %call287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name90, ptr noundef nonnull @.str.23, i32 noundef %conv280, i32 noundef %conv282, i32 noundef %conv284, i32 noundef %conv286) #7
  br label %do.body291

do.body291:                                       ; preds = %do.end275, %saa7164_cmd_free_seqno.exit720.do.body291_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %151 = load i32, ptr @saa_debug, align 4
  %and292 = and i32 %151, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and292)
  %tobool293.not = icmp eq i32 %and292, 0
  br i1 %tobool293.not, label %do.body291.do.end306_crit_edge, label %do.end297

do.body291.do.end306_crit_edge:                   ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end306

do.end297:                                        ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #6
  %152 = ptrtoint ptr %errdata to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %errdata, align 1
  %conv302 = zext i8 %153 to i32
  %call303 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name90, ptr noundef nonnull @.str.23, i32 noundef %conv302) #7
  br label %do.end306

do.end306:                                        ; preds = %do.end297, %do.body291.do.end306_crit_edge
  %154 = ptrtoint ptr %errdata to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %errdata, align 1
  %156 = zext i8 %155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.165)
  switch i8 %155, label %do.body383 [
    i8 1, label %do.body309
    i8 3, label %do.body324
    i8 4, label %do.body339
    i8 5, label %do.body354
    i8 0, label %do.end306.do.body369_crit_edge
    i8 2, label %do.end306.do.body369_crit_edge911
  ]

do.end306.do.body369_crit_edge911:                ; preds = %do.end306
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body369

do.end306.do.body369_crit_edge:                   ; preds = %do.end306
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body369

do.body309:                                       ; preds = %do.end306
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %157 = load i32, ptr @saa_debug, align 4
  %and310 = and i32 %157, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and310)
  %tobool311.not = icmp eq i32 %and310, 0
  br i1 %tobool311.not, label %do.body309.sw.epilog_crit_edge, label %do.body309.sw.epilog.sink.split_crit_edge

do.body309.sw.epilog.sink.split_crit_edge:        ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

do.body309.sw.epilog_crit_edge:                   ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body324:                                       ; preds = %do.end306
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %158 = load i32, ptr @saa_debug, align 4
  %and325 = and i32 %158, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and325)
  %tobool326.not = icmp eq i32 %and325, 0
  br i1 %tobool326.not, label %do.body324.sw.epilog_crit_edge, label %do.body324.sw.epilog.sink.split_crit_edge

do.body324.sw.epilog.sink.split_crit_edge:        ; preds = %do.body324
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

do.body324.sw.epilog_crit_edge:                   ; preds = %do.body324
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body339:                                       ; preds = %do.end306
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %159 = load i32, ptr @saa_debug, align 4
  %and340 = and i32 %159, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340)
  %tobool341.not = icmp eq i32 %and340, 0
  br i1 %tobool341.not, label %do.body339.sw.epilog_crit_edge, label %do.body339.sw.epilog.sink.split_crit_edge

do.body339.sw.epilog.sink.split_crit_edge:        ; preds = %do.body339
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

do.body339.sw.epilog_crit_edge:                   ; preds = %do.body339
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body354:                                       ; preds = %do.end306
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %160 = load i32, ptr @saa_debug, align 4
  %and355 = and i32 %160, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and355)
  %tobool356.not = icmp eq i32 %and355, 0
  br i1 %tobool356.not, label %do.body354.sw.epilog_crit_edge, label %do.body354.sw.epilog.sink.split_crit_edge

do.body354.sw.epilog.sink.split_crit_edge:        ; preds = %do.body354
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

do.body354.sw.epilog_crit_edge:                   ; preds = %do.body354
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body369:                                       ; preds = %do.end306.do.body369_crit_edge, %do.end306.do.body369_crit_edge911
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %161 = load i32, ptr @saa_debug, align 4
  %and370 = and i32 %161, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and370)
  %tobool371.not = icmp eq i32 %and370, 0
  br i1 %tobool371.not, label %do.body369.sw.epilog_crit_edge, label %do.body369.sw.epilog.sink.split_crit_edge

do.body369.sw.epilog.sink.split_crit_edge:        ; preds = %do.body369
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

do.body369.sw.epilog_crit_edge:                   ; preds = %do.body369
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body383:                                       ; preds = %do.end306
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %162 = load i32, ptr @saa_debug, align 4
  %and384 = and i32 %162, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and384)
  %tobool385.not = icmp eq i32 %and384, 0
  br i1 %tobool385.not, label %do.body383.sw.epilog_crit_edge, label %do.body383.sw.epilog.sink.split_crit_edge

do.body383.sw.epilog.sink.split_crit_edge:        ; preds = %do.body383
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

do.body383.sw.epilog_crit_edge:                   ; preds = %do.body383
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body383.sw.epilog.sink.split_crit_edge, %do.body369.sw.epilog.sink.split_crit_edge, %do.body354.sw.epilog.sink.split_crit_edge, %do.body339.sw.epilog.sink.split_crit_edge, %do.body324.sw.epilog.sink.split_crit_edge, %do.body309.sw.epilog.sink.split_crit_edge
  %.str.100.sink = phi ptr [ @.str.85, %do.body309.sw.epilog.sink.split_crit_edge ], [ @.str.88, %do.body324.sw.epilog.sink.split_crit_edge ], [ @.str.91, %do.body339.sw.epilog.sink.split_crit_edge ], [ @.str.94, %do.body354.sw.epilog.sink.split_crit_edge ], [ @.str.97, %do.body369.sw.epilog.sink.split_crit_edge ], [ @.str.100, %do.body383.sw.epilog.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ 62, %do.body309.sw.epilog.sink.split_crit_edge ], [ 9, %do.body324.sw.epilog.sink.split_crit_edge ], [ 31, %do.body339.sw.epilog.sink.split_crit_edge ], [ 89, %do.body354.sw.epilog.sink.split_crit_edge ], [ 19, %do.body369.sw.epilog.sink.split_crit_edge ], [ 19, %do.body383.sw.epilog.sink.split_crit_edge ]
  %call393 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.100.sink, ptr noundef %name90, ptr noundef nonnull @.str.23) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body383.sw.epilog_crit_edge, %do.body369.sw.epilog_crit_edge, %do.body354.sw.epilog_crit_edge, %do.body339.sw.epilog_crit_edge, %do.body324.sw.epilog_crit_edge, %do.body309.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 62, %do.body309.sw.epilog_crit_edge ], [ 9, %do.body324.sw.epilog_crit_edge ], [ 31, %do.body339.sw.epilog_crit_edge ], [ 89, %do.body354.sw.epilog_crit_edge ], [ 19, %do.body369.sw.epilog_crit_edge ], [ 19, %do.body383.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  %call397 = call fastcc i32 @saa7164_cmd_dequeue(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call397)
  %cmp398.not = icmp eq i32 %call397, 0
  br i1 %cmp398.not, label %sw.epilog.cleanup_crit_edge, label %do.end403

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end403:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %call405 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #7
  br label %cleanup

if.end407:                                        ; preds = %if.end250
  %163 = ptrtoint ptr %response_t to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %response_t, align 1
  %165 = ptrtoint ptr %command_t to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %command_t, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %164, i8 %166)
  %cmp412.not = icmp eq i8 %164, %166
  br i1 %cmp412.not, label %lor.lhs.false414, label %if.end407.do.body446_crit_edge

if.end407.do.body446_crit_edge:                   ; preds = %if.end407
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body446

lor.lhs.false414:                                 ; preds = %if.end407
  %167 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %167, i32 4)
  %168 = load i32, ptr %7, align 1
  %169 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %170 = load i32, ptr %2, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %168, i32 %170)
  %cmp417.not = icmp eq i32 %168, %170
  br i1 %cmp417.not, label %lor.lhs.false419, label %lor.lhs.false414.do.body446_crit_edge

lor.lhs.false414.do.body446_crit_edge:            ; preds = %lor.lhs.false414
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body446

lor.lhs.false419:                                 ; preds = %lor.lhs.false414
  %171 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %171, i32 2)
  %172 = load i16, ptr %8, align 1
  %173 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %173, i32 2)
  %174 = load i16, ptr %3, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %172, i16 %174)
  %cmp424.not = icmp eq i16 %172, %174
  br i1 %cmp424.not, label %lor.lhs.false426, label %lor.lhs.false419.do.body446_crit_edge

lor.lhs.false419.do.body446_crit_edge:            ; preds = %lor.lhs.false419
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body446

lor.lhs.false426:                                 ; preds = %lor.lhs.false419
  %175 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %175, i32 2)
  %176 = load i16, ptr %6, align 1
  %conv430 = zext i16 %176 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv430)
  %cmp431.not = icmp ne i32 %sub, %conv430
  %and435 = and i32 %conv252, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and435)
  %tobool436.not = icmp eq i32 %and435, 0
  %or.cond665 = select i1 %cmp431.not, i1 %tobool436.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv430)
  %cmp443 = icmp slt i32 %sub, %conv430
  %or.cond723 = or i1 %cmp443, %or.cond665
  br i1 %or.cond723, label %lor.lhs.false426.do.body446_crit_edge, label %if.end480

lor.lhs.false426.do.body446_crit_edge:            ; preds = %lor.lhs.false426
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body446

do.body446:                                       ; preds = %lor.lhs.false426.do.body446_crit_edge, %lor.lhs.false419.do.body446_crit_edge, %lor.lhs.false414.do.body446_crit_edge, %if.end407.do.body446_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %177 = load i32, ptr @saa_debug, align 4
  %and447 = and i32 %177, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and447)
  %tobool448.not = icmp eq i32 %and447, 0
  br i1 %tobool448.not, label %do.body446.do.end459_crit_edge, label %do.end452

do.body446.do.end459_crit_edge:                   ; preds = %do.body446
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end459

do.end452:                                        ; preds = %do.body446
  call void @__sanitizer_cov_trace_pc() #6
  %call456 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %name90, ptr noundef nonnull @.str.23) #7
  br label %do.end459

do.end459:                                        ; preds = %do.end452, %do.body446.do.end459_crit_edge
  %call460 = call i32 @saa7164_bus_get(ptr noundef %dev, ptr noundef nonnull %response_t, ptr noundef null, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call460)
  %cmp461.not = icmp eq i32 %call460, 0
  br i1 %cmp461.not, label %if.end469, label %do.end466

do.end466:                                        ; preds = %do.end459
  call void @__sanitizer_cov_trace_pc() #6
  %call468 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #7
  br label %cleanup

if.end469:                                        ; preds = %do.end459
  %call470 = call fastcc i32 @saa7164_cmd_dequeue(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call470)
  %cmp471.not = icmp eq i32 %call470, 0
  br i1 %cmp471.not, label %if.end469.while.cond.backedge_crit_edge, label %do.end476

if.end469.while.cond.backedge_crit_edge:          ; preds = %if.end469
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end476, %if.end469.while.cond.backedge_crit_edge, %do.end141, %do.body135.while.cond.backedge_crit_edge
  br label %while.cond

do.end476:                                        ; preds = %if.end469
  call void @__sanitizer_cov_trace_pc() #6
  %call478 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #7
  br label %while.cond.backedge

if.end480:                                        ; preds = %lor.lhs.false426
  %add.ptr = getelementptr i8, ptr %buf, i32 %conv428
  %call482 = call i32 @saa7164_bus_get(ptr noundef %dev, ptr noundef nonnull %response_t, ptr noundef %add.ptr, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call482)
  %cmp483.not = icmp eq i32 %call482, 0
  br i1 %cmp483.not, label %if.end491, label %do.end488

do.end488:                                        ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #6
  %call490 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #7
  br label %cleanup

if.end491:                                        ; preds = %if.end480
  %178 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %178, i32 2)
  %179 = load i16, ptr %6, align 1
  %add = add i16 %179, %data_recd.0.ph725
  call void @__sanitizer_cov_trace_cmp2(i16 %add, i16 %size)
  %cmp498 = icmp eq i16 %add, %size
  br i1 %cmp498, label %do.body501, label %if.end515

do.body501:                                       ; preds = %if.end491
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %180 = load i32, ptr @saa_debug, align 4
  %and502 = and i32 %180, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and502)
  %tobool503.not = icmp eq i32 %and502, 0
  br i1 %tobool503.not, label %do.body501.while.end_crit_edge, label %do.end507

do.body501.while.end_crit_edge:                   ; preds = %do.body501
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

do.end507:                                        ; preds = %do.body501
  call void @__sanitizer_cov_trace_pc() #6
  %call511 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %name90, ptr noundef nonnull @.str.23) #7
  br label %while.end

if.end515:                                        ; preds = %if.end491
  %call516 = call fastcc i32 @saa7164_cmd_dequeue(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call516)
  %cmp517.not = icmp eq i32 %call516, 0
  br i1 %cmp517.not, label %if.end515.while.cond.outer724.backedge_crit_edge, label %do.end522

if.end515.while.cond.outer724.backedge_crit_edge: ; preds = %if.end515
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.outer724.backedge

do.end522:                                        ; preds = %if.end515
  call void @__sanitizer_cov_trace_pc() #6
  %call524 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #7
  br label %while.cond.outer724.backedge

while.cond.outer724.backedge:                     ; preds = %do.end522, %if.end515.while.cond.outer724.backedge_crit_edge
  br label %while.cond.outer724

while.end:                                        ; preds = %do.end507, %do.body501.while.end_crit_edge
  %181 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %4, align 1
  call fastcc void @saa7164_cmd_free_seqno(ptr noundef %dev, i8 noundef zeroext %182)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %183 = load i32, ptr @saa_debug, align 4
  %and528 = and i32 %183, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and528)
  %tobool529.not = icmp eq i32 %and528, 0
  br i1 %tobool529.not, label %while.end.do.end540_crit_edge, label %do.end533

while.end.do.end540_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end540

do.end533:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %call537 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %name90, ptr noundef nonnull @.str.23) #7
  br label %do.end540

do.end540:                                        ; preds = %do.end533, %while.end.do.end540_crit_edge
  %call541 = call fastcc i32 @saa7164_cmd_dequeue(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call541)
  %cmp542.not = icmp eq i32 %call541, 0
  br i1 %cmp542.not, label %do.end540.cleanup_crit_edge, label %do.end547

do.end540.cleanup_crit_edge:                      ; preds = %do.end540
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end547:                                        ; preds = %do.end540
  call void @__sanitizer_cov_trace_pc() #6
  %call549 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end547, %do.end540.cleanup_crit_edge, %do.end488, %do.end466, %do.end403, %sw.epilog.cleanup_crit_edge, %do.end264, %do.end245, %do.end155, %do.end127, %saa7164_cmd_timeout_seqno.exit709, %saa7164_cmd_timeout_seqno.exit, %saa7164_cmd_free_seqno.exit, %saa7164_cmd_alloc_seqno.exit.thread, %do.end13
  %retval.0 = phi i32 [ 9, %do.end13 ], [ 50, %saa7164_cmd_timeout_seqno.exit709 ], [ %ret.1.i, %do.end127 ], [ %call131, %do.end155 ], [ 21, %do.end245 ], [ %call258, %do.end264 ], [ %call460, %do.end466 ], [ %call482, %do.end488 ], [ %ret.0, %do.end403 ], [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ 12, %saa7164_cmd_alloc_seqno.exit.thread ], [ %ret.0.i669, %saa7164_cmd_free_seqno.exit ], [ 21, %saa7164_cmd_timeout_seqno.exit ], [ 0, %do.end547 ], [ 0, %do.end540.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %errdata) #4
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %response_t) #4
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %command_t) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @saa7164_unitid_name(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7164_cmd_free_seqno(ptr noundef %dev, i8 noundef zeroext %seqno) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %idxprom = zext i8 %seqno to i32
  %inuse = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom, i32 1
  %0 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %seqno)
  %cmp6 = icmp eq i8 %3, %seqno
  br i1 %cmp6, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %inuse to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %inuse, align 4
  %signalled = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom, i32 3
  %5 = ptrtoint ptr %signalled to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %signalled, align 4
  %timeout = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom, i32 2
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %timeout, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @saa7164_cmd_dequeue(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca [512 x i8], align 1
  %tRsp = alloca %struct.tmComResInfo, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %tmp) #4
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 512)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %1 = load i32, ptr @saa_debug, align 4
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.146) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %seqno = getelementptr inbounds %struct.tmComResInfo, ptr %tRsp, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 27
  %name21 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %flags = getelementptr inbounds %struct.tmComResInfo, ptr %tRsp, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %do.end4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %tRsp) #4
  %2 = call ptr @memset(ptr %tRsp, i32 0, i32 11)
  %call5 = call i32 @saa7164_bus_get(ptr noundef %dev, ptr noundef nonnull %tRsp, ptr noundef null, i32 noundef 1) #4
  %3 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %call5, label %while.cond.cleanup82_crit_edge [
    i32 34, label %while.cond.cleanup82.loopexit_crit_edge
    i32 0, label %if.end10
  ]

while.cond.cleanup82.loopexit_crit_edge:          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup82.loopexit

while.cond.cleanup82_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup82

if.end10:                                         ; preds = %while.cond
  %4 = ptrtoint ptr %seqno to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %seqno, align 1
  %idxprom = zext i8 %5 to i32
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %inuse.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom, i32 1
  %6 = ptrtoint ptr %inuse.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inuse.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end10.saa7164_cmd_timeout_get.exit_crit_edge

if.end10.saa7164_cmd_timeout_get.exit_crit_edge:  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_cmd_timeout_get.exit

land.lhs.true.i:                                  ; preds = %if.end10
  %arrayidx.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %5)
  %cmp6.i = icmp eq i8 %9, %5
  br i1 %cmp6.i, label %if.then.i, label %land.lhs.true.i.saa7164_cmd_timeout_get.exit_crit_edge

land.lhs.true.i.saa7164_cmd_timeout_get.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %saa7164_cmd_timeout_get.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %timeout.i = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom, i32 2
  %10 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeout.i, align 8
  br label %saa7164_cmd_timeout_get.exit

saa7164_cmd_timeout_get.exit:                     ; preds = %if.then.i, %land.lhs.true.i.saa7164_cmd_timeout_get.exit_crit_edge, %if.end10.saa7164_cmd_timeout_get.exit_crit_edge
  %ret.0.i = phi i32 [ %11, %if.then.i ], [ 0, %land.lhs.true.i.saa7164_cmd_timeout_get.exit_crit_edge ], [ 0, %if.end10.saa7164_cmd_timeout_get.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %12 = load i32, ptr @saa_debug, align 4
  %and14 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %saa7164_cmd_timeout_get.exit.do.end26_crit_edge, label %do.end19

saa7164_cmd_timeout_get.exit.do.end26_crit_edge:  ; preds = %saa7164_cmd_timeout_get.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end26

do.end19:                                         ; preds = %saa7164_cmd_timeout_get.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name21, ptr noundef nonnull @.str.146, i32 noundef %ret.0.i) #7
  br label %do.end26

do.end26:                                         ; preds = %do.end19, %saa7164_cmd_timeout_get.exit.do.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool27.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool27.not, label %do.body62, label %do.end31

do.end31:                                         ; preds = %do.end26
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150) #7
  %call34 = call i32 @saa7164_bus_get(ptr noundef %dev, ptr noundef nonnull %tRsp, ptr noundef nonnull %tmp, i32 noundef 0) #4
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %call34) #7
  %13 = zext i32 %call34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %call34, label %do.end31.cleanup82_crit_edge [
    i32 34, label %do.end31.cleanup82.loopexit_crit_edge
    i32 0, label %if.end45
  ]

do.end31.cleanup82.loopexit_crit_edge:            ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup82.loopexit

do.end31.cleanup82_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup82

if.end45:                                         ; preds = %do.end31
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags, align 1
  %16 = and i8 %15, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool47.not = icmp eq i8 %16, 0
  br i1 %tobool47.not, label %if.else, label %do.end51

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156) #7
  br label %cleanup

if.else:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %seqno to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %seqno, align 1
  call fastcc void @saa7164_cmd_free_seqno(ptr noundef %dev, i8 noundef zeroext %18)
  br label %cleanup

do.body62:                                        ; preds = %do.end26
  %idxprom.le = zext i8 %5 to i32
  %wait.le = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom.le, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %19 = load i32, ptr @saa_debug, align 4
  %and63 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.body62.do.end77_crit_edge, label %do.end68

do.body62.do.end77_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end77

do.end68:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %seqno to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %seqno, align 1
  %conv73 = zext i8 %21 to i32
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name21, ptr noundef nonnull @.str.146, i32 noundef %conv73) #7
  br label %do.end77

do.end77:                                         ; preds = %do.end68, %do.body62.do.end77_crit_edge
  %22 = ptrtoint ptr %seqno to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %seqno, align 1
  %idxprom80 = zext i8 %23 to i32
  %signalled = getelementptr %struct.saa7164_dev, ptr %dev, i32 0, i32 26, i32 %idxprom80, i32 3
  %24 = ptrtoint ptr %signalled to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %signalled, align 4
  call void @__wake_up(ptr noundef %wait.le, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  br label %cleanup82

cleanup:                                          ; preds = %if.else, %do.end51
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159) #7
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %tRsp) #4
  br label %while.cond

cleanup82.loopexit:                               ; preds = %do.end31.cleanup82.loopexit_crit_edge, %while.cond.cleanup82.loopexit_crit_edge
  br label %cleanup82

cleanup82:                                        ; preds = %cleanup82.loopexit, %do.end77, %do.end31.cleanup82_crit_edge, %while.cond.cleanup82_crit_edge
  %retval.1.ph = phi i32 [ 0, %do.end77 ], [ 0, %cleanup82.loopexit ], [ %call5, %while.cond.cleanup82_crit_edge ], [ %call34, %do.end31.cleanup82_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %tRsp) #4
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %tmp) #4
  ret i32 %retval.1.ph
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_bus_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7164_bus_dump(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !164, !165, !166, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232}
!llvm.module.flags = !{!233, !234, !235, !236, !237, !238, !239, !240}
!llvm.ident = !{!241}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 75, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @saa7164_irq_dequeue._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @saa7164_irq_dequeue._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 88, i32 3}
!8 = !{ptr @saa7164_irq_dequeue._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @saa7164_irq_dequeue._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 90, i32 4}
!12 = !{ptr @saa7164_irq_dequeue._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @saa7164_irq_dequeue._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 96, i32 4}
!16 = !{ptr @saa7164_irq_dequeue._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @saa7164_irq_dequeue._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 102, i32 4}
!20 = !{ptr @saa7164_irq_dequeue._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @saa7164_irq_dequeue._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 302, i32 2}
!24 = !{ptr @saa7164_cmd_signal._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @saa7164_cmd_signal._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 307, i32 4}
!28 = !{ptr @saa7164_cmd_signal._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @saa7164_cmd_signal._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 318, i32 4}
!32 = !{ptr @saa7164_cmd_signal._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @saa7164_cmd_signal._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 339, i32 2}
!36 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @saa7164_cmd_send._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @saa7164_cmd_send._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 344, i32 3}
!41 = !{ptr @saa7164_cmd_send._entry.24, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @saa7164_cmd_send._entry_ptr.26, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 361, i32 3}
!45 = !{ptr @saa7164_cmd_send._entry.27, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @saa7164_cmd_send._entry_ptr.29, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 372, i32 2}
!49 = !{ptr @saa7164_cmd_send._entry.30, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @saa7164_cmd_send._entry_ptr.32, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.34, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 375, i32 2}
!53 = !{ptr @saa7164_cmd_send._entry.33, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @saa7164_cmd_send._entry_ptr.35, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.37, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 380, i32 3}
!57 = !{ptr @saa7164_cmd_send._entry.36, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @saa7164_cmd_send._entry_ptr.38, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.40, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 396, i32 3}
!61 = !{ptr @saa7164_cmd_send._entry.39, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @saa7164_cmd_send._entry_ptr.41, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.43, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 399, i32 3}
!65 = !{ptr @saa7164_cmd_send._entry.42, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @saa7164_cmd_send._entry_ptr.44, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.46, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 404, i32 4}
!69 = !{ptr @saa7164_cmd_send._entry.45, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @saa7164_cmd_send._entry_ptr.47, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.49, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 410, i32 4}
!73 = !{ptr @saa7164_cmd_send._entry.48, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @saa7164_cmd_send._entry_ptr.50, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.52, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 417, i32 4}
!77 = !{ptr @saa7164_cmd_send._entry.51, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @saa7164_cmd_send._entry_ptr.53, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.55, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 421, i32 4}
!81 = !{ptr @saa7164_cmd_send._entry.54, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @saa7164_cmd_send._entry_ptr.56, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.58, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 425, i32 3}
!85 = !{ptr @saa7164_cmd_send._entry.57, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @saa7164_cmd_send._entry_ptr.59, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.61, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 428, i32 3}
!89 = !{ptr @saa7164_cmd_send._entry.60, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @saa7164_cmd_send._entry_ptr.62, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.64, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 431, i32 3}
!93 = !{ptr @saa7164_cmd_send._entry.63, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @saa7164_cmd_send._entry_ptr.65, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.67, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 437, i32 4}
!97 = !{ptr @saa7164_cmd_send._entry.66, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @saa7164_cmd_send._entry_ptr.68, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.70, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 443, i32 5}
!101 = !{ptr @saa7164_cmd_send._entry.69, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @saa7164_cmd_send._entry_ptr.71, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.73, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 446, i32 6}
!105 = !{ptr @saa7164_cmd_send._entry.72, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @saa7164_cmd_send._entry_ptr.74, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.76, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 461, i32 5}
!109 = !{ptr @saa7164_cmd_send._entry.75, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @saa7164_cmd_send._entry_ptr.77, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.79, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 467, i32 4}
!113 = !{ptr @saa7164_cmd_send._entry.78, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @saa7164_cmd_send._entry_ptr.80, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.82, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 472, i32 4}
!117 = !{ptr @saa7164_cmd_send._entry.81, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @saa7164_cmd_send._entry_ptr.83, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.85, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 477, i32 5}
!121 = !{ptr @saa7164_cmd_send._entry.84, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @saa7164_cmd_send._entry_ptr.86, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.88, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 482, i32 5}
!125 = !{ptr @saa7164_cmd_send._entry.87, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @saa7164_cmd_send._entry_ptr.89, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.91, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 487, i32 5}
!129 = !{ptr @saa7164_cmd_send._entry.90, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @saa7164_cmd_send._entry_ptr.92, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.94, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 491, i32 5}
!133 = !{ptr @saa7164_cmd_send._entry.93, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @saa7164_cmd_send._entry_ptr.95, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.97, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 496, i32 5}
!137 = !{ptr @saa7164_cmd_send._entry.96, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @saa7164_cmd_send._entry_ptr.98, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.100, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 502, i32 5}
!141 = !{ptr @saa7164_cmd_send._entry.99, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @saa7164_cmd_send._entry_ptr.101, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.103, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 508, i32 5}
!145 = !{ptr @saa7164_cmd_send._entry.102, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @saa7164_cmd_send._entry_ptr.104, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.106, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 523, i32 4}
!149 = !{ptr @saa7164_cmd_send._entry.105, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @saa7164_cmd_send._entry_ptr.107, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.109, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 526, i32 5}
!153 = !{ptr @saa7164_cmd_send._entry.108, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @saa7164_cmd_send._entry_ptr.110, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.112, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 532, i32 5}
!157 = !{ptr @saa7164_cmd_send._entry.111, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @saa7164_cmd_send._entry_ptr.113, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @saa7164_cmd_send._entry.114, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 539, i32 4}
!161 = !{ptr @saa7164_cmd_send._entry_ptr.115, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.117, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 545, i32 4}
!164 = !{ptr @saa7164_cmd_send._entry.116, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @saa7164_cmd_send._entry_ptr.118, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @saa7164_cmd_send._entry.119, !167, !"_entry", i1 false, i1 false}
!167 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 551, i32 4}
!168 = !{ptr @saa7164_cmd_send._entry_ptr.120, !167, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.122, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 559, i32 2}
!171 = !{ptr @saa7164_cmd_send._entry.121, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @saa7164_cmd_send._entry_ptr.123, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.125, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 563, i32 3}
!175 = !{ptr @saa7164_cmd_send._entry.124, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @saa7164_cmd_send._entry_ptr.126, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.127, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 183, i32 3}
!179 = !{ptr @.str.128, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @saa7164_cmd_set._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @saa7164_cmd_set._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.130, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 206, i32 4}
!184 = !{ptr @saa7164_cmd_set._entry.129, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @saa7164_cmd_set._entry_ptr.131, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.133, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 226, i32 3}
!188 = !{ptr @saa7164_cmd_set._entry.132, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @saa7164_cmd_set._entry_ptr.134, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.135, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 255, i32 2}
!192 = !{ptr @.str.136, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @saa7164_cmd_wait._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @saa7164_cmd_wait._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.138, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 268, i32 4}
!197 = !{ptr @saa7164_cmd_wait._entry.137, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @saa7164_cmd_wait._entry_ptr.139, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.141, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 287, i32 4}
!201 = !{ptr @saa7164_cmd_wait._entry.140, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @saa7164_cmd_wait._entry_ptr.142, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.144, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 293, i32 3}
!205 = !{ptr @saa7164_cmd_wait._entry.143, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @saa7164_cmd_wait._entry_ptr.145, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.146, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 127, i32 2}
!209 = !{ptr @saa7164_cmd_dequeue._entry, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @saa7164_cmd_dequeue._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @saa7164_cmd_dequeue._entry.147, !212, !"_entry", i1 false, i1 false}
!212 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 141, i32 3}
!213 = !{ptr @saa7164_cmd_dequeue._entry_ptr.148, !212, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.150, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 143, i32 4}
!216 = !{ptr @saa7164_cmd_dequeue._entry.149, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @saa7164_cmd_dequeue._entry_ptr.151, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.153, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 147, i32 4}
!220 = !{ptr @saa7164_cmd_dequeue._entry.152, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @saa7164_cmd_dequeue._entry_ptr.154, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.156, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 156, i32 5}
!224 = !{ptr @saa7164_cmd_dequeue._entry.155, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @saa7164_cmd_dequeue._entry_ptr.157, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.159, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 160, i32 4}
!228 = !{ptr @saa7164_cmd_dequeue._entry.158, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @saa7164_cmd_dequeue._entry_ptr.160, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @saa7164_cmd_dequeue._entry.161, !231, !"_entry", i1 false, i1 false}
!231 = !{!"../drivers/media/pci/saa7164/saa7164-cmd.c", i32 164, i32 3}
!232 = !{ptr @saa7164_cmd_dequeue._entry_ptr.162, !231, !"_entry_ptr", i1 false, i1 false}
!233 = !{i32 1, !"wchar_size", i32 2}
!234 = !{i32 1, !"min_enum_size", i32 4}
!235 = !{i32 8, !"branch-target-enforcement", i32 0}
!236 = !{i32 8, !"sign-return-address", i32 0}
!237 = !{i32 8, !"sign-return-address-all", i32 0}
!238 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!239 = !{i32 7, !"uwtable", i32 1}
!240 = !{i32 7, !"frame-pointer", i32 2}
!241 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!242 = distinct !{!242, !243}
!243 = !{!"llvm.loop.peeled.count", i32 1}
