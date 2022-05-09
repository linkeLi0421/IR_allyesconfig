; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7164/saa7164-fw.c_pt.bc'
source_filename = "../drivers/media/pci/saa7164/saa7164-fw.c"
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.139, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.139 = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.fw_header = type { i32, i32, i32, i32 }

@saa_debug = external dso_local local_unnamed_addr global i32, align 4
@saa7164_downloadfirmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s: %s()\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"saa7164_downloadfirmware\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/pci/saa7164/saa7164-fw.c\00", [57 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr = internal global ptr @saa7164_downloadfirmware._entry, section ".printk_index", align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NXP7164-2010-03-10.1.fw\00", [40 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: %s() err_flags = %x\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.6 = internal global ptr @saa7164_downloadfirmware._entry.4, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.8 = internal global ptr @saa7164_downloadfirmware._entry.7, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s() firmware corrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.11 = internal global ptr @saa7164_downloadfirmware._entry.9, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s() device memory corrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.14 = internal global ptr @saa7164_downloadfirmware._entry.12, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s() no first image\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.17 = internal global ptr @saa7164_downloadfirmware._entry.15, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.19 = internal global ptr @saa7164_downloadfirmware._entry.18, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s() FW load time exceeded\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.22 = internal global ptr @saa7164_downloadfirmware._entry.20, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s() Unknown bootloader flags 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.25 = internal global ptr @saa7164_downloadfirmware._entry.23, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s() Loader 1 has loaded.\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.28 = internal global ptr @saa7164_downloadfirmware._entry.26, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: %s() err_flags2 = %x\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.31 = internal global ptr @saa7164_downloadfirmware._entry.29, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.33 = internal global ptr @saa7164_downloadfirmware._entry.32, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.35 = internal global ptr @saa7164_downloadfirmware._entry.34, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.37 = internal global ptr @saa7164_downloadfirmware._entry.36, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.1, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s() no second image\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.40 = internal global ptr @saa7164_downloadfirmware._entry.38, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.1, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.42 = internal global ptr @saa7164_downloadfirmware._entry.41, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.44 = internal global ptr @saa7164_downloadfirmware._entry.43, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.46 = internal global ptr @saa7164_downloadfirmware._entry.45, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.1, ptr @.str.2, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: %s() Loader flags 1:0x%x 2:0x%x.\0A\00", [56 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.49 = internal global ptr @saa7164_downloadfirmware._entry.47, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.1, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s() Loader 2 has loaded.\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.52 = internal global ptr @saa7164_downloadfirmware._entry.50, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.1, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: %s() All f/w loaded successfully\0A\00", [56 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.55 = internal global ptr @saa7164_downloadfirmware._entry.53, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.1, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s() FW did not boot\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.58 = internal global ptr @saa7164_downloadfirmware._entry.56, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.1, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s() The firmware hung, probably bad firmware\0A\00", [47 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.61 = internal global ptr @saa7164_downloadfirmware._entry.59, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.1, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: Device has Firmware Version %d.%d.%d.%d\0A\00", [49 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.64 = internal global ptr @saa7164_downloadfirmware._entry.62, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.1, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s() Waiting for firmware upload (%s)\0A\00", [55 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.67 = internal global ptr @saa7164_downloadfirmware._entry.65, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.1, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s() Upload failed. (file not found?)\0A\00", [55 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.70 = internal global ptr @saa7164_downloadfirmware._entry.68, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.1, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s() firmware read %zu bytes.\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.73 = internal global ptr @saa7164_downloadfirmware._entry.71, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.1, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013saa7164: firmware incorrect size %zu != %u\0A\00", [50 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.76 = internal global ptr @saa7164_downloadfirmware._entry.74, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.1, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s() firmware loaded.\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.79 = internal global ptr @saa7164_downloadfirmware._entry.77, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.1, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016Firmware file header part 1:\0A\00", [32 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.82 = internal global ptr @saa7164_downloadfirmware._entry.80, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.1, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016 .FirmwareSize = 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.85 = internal global ptr @saa7164_downloadfirmware._entry.83, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.1, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016 .BSLSize = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.88 = internal global ptr @saa7164_downloadfirmware._entry.86, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.1, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016 .Reserved = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.91 = internal global ptr @saa7164_downloadfirmware._entry.89, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.1, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016 .Version = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.94 = internal global ptr @saa7164_downloadfirmware._entry.92, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.1, ptr @.str.2, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s() SecBootLoader.FileSize = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.97 = internal global ptr @saa7164_downloadfirmware._entry.95, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.1, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Onboard BootLoader:\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.100 = internal global ptr @saa7164_downloadfirmware._entry.98, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.1, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: ->Flag 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.103 = internal global ptr @saa7164_downloadfirmware._entry.101, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.1, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s: ->Ack 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.106 = internal global ptr @saa7164_downloadfirmware._entry.104, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.1, ptr @.str.2, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: ->FW Version 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.109 = internal global ptr @saa7164_downloadfirmware._entry.107, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.1, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: ->Loader Version 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.112 = internal global ptr @saa7164_downloadfirmware._entry.110, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.1, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: BootLoader version in  rom %d.%d.%d.%d\0A\00", [50 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.115 = internal global ptr @saa7164_downloadfirmware._entry.113, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.1, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: BootLoader version in file %d.%d.%d.%d\0A\00", [50 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.118 = internal global ptr @saa7164_downloadfirmware._entry.116, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.1, ptr @.str.2, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: Firmware version in file %d.%d.%d.%d\0A\00", [52 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.121 = internal global ptr @saa7164_downloadfirmware._entry.119, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.1, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: bootloader d/l starts.\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.124 = internal global ptr @saa7164_downloadfirmware._entry.122, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.1, ptr @.str.2, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s() FirmwareSize = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.127 = internal global ptr @saa7164_downloadfirmware._entry.125, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.1, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s() BSLSize = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.130 = internal global ptr @saa7164_downloadfirmware._entry.128, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.1, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s() Reserved = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.133 = internal global ptr @saa7164_downloadfirmware._entry.131, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.1, ptr @.str.2, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s() Version = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.136 = internal global ptr @saa7164_downloadfirmware._entry.134, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.1, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013bootloader d/l has failed\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.139 = internal global ptr @saa7164_downloadfirmware._entry.137, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.1, ptr @.str.2, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: bootloader download complete.\0A\00", [59 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.142 = internal global ptr @saa7164_downloadfirmware._entry.140, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.1, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013starting firmware download(2)\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.145 = internal global ptr @saa7164_downloadfirmware._entry.143, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.1, ptr @.str.2, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013firmware download failed\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.148 = internal global ptr @saa7164_downloadfirmware._entry.146, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.1, ptr @.str.2, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013firmware download complete.\0A\00", [33 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.151 = internal global ptr @saa7164_downloadfirmware._entry.149, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.1, ptr @.str.2, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013starting firmware download(3)\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.154 = internal global ptr @saa7164_downloadfirmware._entry.152, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.1, ptr @.str.2, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.156 = internal global ptr @saa7164_downloadfirmware._entry.155, section ".printk_index", align 4
@saa7164_downloadfirmware._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.1, ptr @.str.2, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_downloadfirmware._entry_ptr.158 = internal global ptr @saa7164_downloadfirmware._entry.157, section ".printk_index", align 4
@saa7164_downloadimage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017%s: %s(image=%p, size=%d, flags=0x%x, dst=%p, dstsize=0x%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"saa7164_downloadimage\00", [42 x i8] zeroinitializer }, align 32
@saa7164_downloadimage._entry_ptr = internal global ptr @saa7164_downloadimage._entry, section ".printk_index", align 4
@saa7164_downloadimage._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s() dlflag = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_downloadimage._entry_ptr.163 = internal global ptr @saa7164_downloadimage._entry.161, section ".printk_index", align 4
@saa7164_downloadimage._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.160, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s() dlflag_ack = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_downloadimage._entry_ptr.166 = internal global ptr @saa7164_downloadimage._entry.164, section ".printk_index", align 4
@saa7164_downloadimage._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.160, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s() drflag = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@saa7164_downloadimage._entry_ptr.169 = internal global ptr @saa7164_downloadimage._entry.167, section ".printk_index", align 4
@saa7164_downloadimage._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.160, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s() drflag_ack = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_downloadimage._entry_ptr.172 = internal global ptr @saa7164_downloadimage._entry.170, section ".printk_index", align 4
@saa7164_downloadimage._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.160, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: %s() bleflag = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_downloadimage._entry_ptr.175 = internal global ptr @saa7164_downloadimage._entry.173, section ".printk_index", align 4
@saa7164_downloadimage._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.160, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: %s() dlflag (0x%x)= 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@saa7164_downloadimage._entry_ptr.178 = internal global ptr @saa7164_downloadimage._entry.176, section ".printk_index", align 4
@saa7164_downloadimage._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.160, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s: %s() Download flag already set, please reboot\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7164_downloadimage._entry_ptr.181 = internal global ptr @saa7164_downloadimage._entry.179, section ".printk_index", align 4
@saa7164_downloadimage._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.160, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: %s() memcpy %d\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7164_downloadimage._entry_ptr.184 = internal global ptr @saa7164_downloadimage._entry.182, section ".printk_index", align 4
@saa7164_downloadimage._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.160, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s() memcpy(l) %d\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7164_downloadimage._entry_ptr.187 = internal global ptr @saa7164_downloadimage._entry.185, section ".printk_index", align 4
@saa7164_downloadimage._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.160, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s() image corrupt\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7164_downloadimage._entry_ptr.190 = internal global ptr @saa7164_downloadimage._entry.188, section ".printk_index", align 4
@saa7164_downloadimage._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.160, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_downloadimage._entry_ptr.192 = internal global ptr @saa7164_downloadimage._entry.191, section ".printk_index", align 4
@saa7164_downloadimage._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.160, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s() Image downloaded, booting...\0A\00", [59 x i8] zeroinitializer }, align 32
@saa7164_downloadimage._entry_ptr.195 = internal global ptr @saa7164_downloadimage._entry.193, section ".printk_index", align 4
@saa7164_downloadimage._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.160, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s() Image booted successfully.\0A\00", [61 x i8] zeroinitializer }, align 32
@saa7164_downloadimage._entry_ptr.198 = internal global ptr @saa7164_downloadimage._entry.196, section ".printk_index", align 4
@saa7164_dl_wait_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.200, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s() timeout (no d/l ack)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saa7164_dl_wait_ack\00", [44 x i8] zeroinitializer }, align 32
@saa7164_dl_wait_ack._entry_ptr = internal global ptr @saa7164_dl_wait_ack._entry, section ".printk_index", align 4
@saa7164_dl_wait_clr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s() timeout (no d/l clr)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saa7164_dl_wait_clr\00", [44 x i8] zeroinitializer }, align 32
@saa7164_dl_wait_clr._entry_ptr = internal global ptr @saa7164_dl_wait_clr._entry, section ".printk_index", align 4
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 201, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 204, i32 12 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 218, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 222, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 227, i32 5 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 232, i32 5 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 237, i32 5 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 244, i32 6 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 252, i32 6 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 260, i32 6 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 271, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 278, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 281, i32 5 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 286, i32 6 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 292, i32 6 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 298, i32 6 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 305, i32 7 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 314, i32 7 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 322, i32 7 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 333, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 349, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 359, i32 6 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 366, i32 7 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 383, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 396, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 405, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 410, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 415, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 419, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 425, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 428, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 429, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 430, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 431, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 432, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 442, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 455, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 456, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 458, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 460, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 461, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 468, i32 5 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 474, i32 5 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 496, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 519, i32 5 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 520, i32 5 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 522, i32 5 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 524, i32 5 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 526, i32 5 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 536, i32 6 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 540, i32 5 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 545, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 567, i32 5 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 570, i32 4 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 575, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 585, i32 5 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 588, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 73, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 95, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 96, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 97, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 98, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 99, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 102, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 104, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 124, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 141, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 155, i32 4 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 161, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 172, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 178, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 32, i32 4 }
@___asan_gen_.611 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.617 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.618 = private constant [42 x i8] c"../drivers/media/pci/saa7164/saa7164-fw.c\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.618, i32 48, i32 4 }
@llvm.compiler.used = appending global [211 x ptr] [ptr @saa7164_dl_wait_ack._entry, ptr @saa7164_dl_wait_ack._entry_ptr, ptr @saa7164_dl_wait_clr._entry, ptr @saa7164_dl_wait_clr._entry_ptr, ptr @saa7164_downloadfirmware._entry, ptr @saa7164_downloadfirmware._entry.101, ptr @saa7164_downloadfirmware._entry.104, ptr @saa7164_downloadfirmware._entry.107, ptr @saa7164_downloadfirmware._entry.110, ptr @saa7164_downloadfirmware._entry.113, ptr @saa7164_downloadfirmware._entry.116, ptr @saa7164_downloadfirmware._entry.119, ptr @saa7164_downloadfirmware._entry.12, ptr @saa7164_downloadfirmware._entry.122, ptr @saa7164_downloadfirmware._entry.125, ptr @saa7164_downloadfirmware._entry.128, ptr @saa7164_downloadfirmware._entry.131, ptr @saa7164_downloadfirmware._entry.134, ptr @saa7164_downloadfirmware._entry.137, ptr @saa7164_downloadfirmware._entry.140, ptr @saa7164_downloadfirmware._entry.143, ptr @saa7164_downloadfirmware._entry.146, ptr @saa7164_downloadfirmware._entry.149, ptr @saa7164_downloadfirmware._entry.15, ptr @saa7164_downloadfirmware._entry.152, ptr @saa7164_downloadfirmware._entry.155, ptr @saa7164_downloadfirmware._entry.157, ptr @saa7164_downloadfirmware._entry.18, ptr @saa7164_downloadfirmware._entry.20, ptr @saa7164_downloadfirmware._entry.23, ptr @saa7164_downloadfirmware._entry.26, ptr @saa7164_downloadfirmware._entry.29, ptr @saa7164_downloadfirmware._entry.32, ptr @saa7164_downloadfirmware._entry.34, ptr @saa7164_downloadfirmware._entry.36, ptr @saa7164_downloadfirmware._entry.38, ptr @saa7164_downloadfirmware._entry.4, ptr @saa7164_downloadfirmware._entry.41, ptr @saa7164_downloadfirmware._entry.43, ptr @saa7164_downloadfirmware._entry.45, ptr @saa7164_downloadfirmware._entry.47, ptr @saa7164_downloadfirmware._entry.50, ptr @saa7164_downloadfirmware._entry.53, ptr @saa7164_downloadfirmware._entry.56, ptr @saa7164_downloadfirmware._entry.59, ptr @saa7164_downloadfirmware._entry.62, ptr @saa7164_downloadfirmware._entry.65, ptr @saa7164_downloadfirmware._entry.68, ptr @saa7164_downloadfirmware._entry.7, ptr @saa7164_downloadfirmware._entry.71, ptr @saa7164_downloadfirmware._entry.74, ptr @saa7164_downloadfirmware._entry.77, ptr @saa7164_downloadfirmware._entry.80, ptr @saa7164_downloadfirmware._entry.83, ptr @saa7164_downloadfirmware._entry.86, ptr @saa7164_downloadfirmware._entry.89, ptr @saa7164_downloadfirmware._entry.9, ptr @saa7164_downloadfirmware._entry.92, ptr @saa7164_downloadfirmware._entry.95, ptr @saa7164_downloadfirmware._entry.98, ptr @saa7164_downloadfirmware._entry_ptr, ptr @saa7164_downloadfirmware._entry_ptr.100, ptr @saa7164_downloadfirmware._entry_ptr.103, ptr @saa7164_downloadfirmware._entry_ptr.106, ptr @saa7164_downloadfirmware._entry_ptr.109, ptr @saa7164_downloadfirmware._entry_ptr.11, ptr @saa7164_downloadfirmware._entry_ptr.112, ptr @saa7164_downloadfirmware._entry_ptr.115, ptr @saa7164_downloadfirmware._entry_ptr.118, ptr @saa7164_downloadfirmware._entry_ptr.121, ptr @saa7164_downloadfirmware._entry_ptr.124, ptr @saa7164_downloadfirmware._entry_ptr.127, ptr @saa7164_downloadfirmware._entry_ptr.130, ptr @saa7164_downloadfirmware._entry_ptr.133, ptr @saa7164_downloadfirmware._entry_ptr.136, ptr @saa7164_downloadfirmware._entry_ptr.139, ptr @saa7164_downloadfirmware._entry_ptr.14, ptr @saa7164_downloadfirmware._entry_ptr.142, ptr @saa7164_downloadfirmware._entry_ptr.145, ptr @saa7164_downloadfirmware._entry_ptr.148, ptr @saa7164_downloadfirmware._entry_ptr.151, ptr @saa7164_downloadfirmware._entry_ptr.154, ptr @saa7164_downloadfirmware._entry_ptr.156, ptr @saa7164_downloadfirmware._entry_ptr.158, ptr @saa7164_downloadfirmware._entry_ptr.17, ptr @saa7164_downloadfirmware._entry_ptr.19, ptr @saa7164_downloadfirmware._entry_ptr.22, ptr @saa7164_downloadfirmware._entry_ptr.25, ptr @saa7164_downloadfirmware._entry_ptr.28, ptr @saa7164_downloadfirmware._entry_ptr.31, ptr @saa7164_downloadfirmware._entry_ptr.33, ptr @saa7164_downloadfirmware._entry_ptr.35, ptr @saa7164_downloadfirmware._entry_ptr.37, ptr @saa7164_downloadfirmware._entry_ptr.40, ptr @saa7164_downloadfirmware._entry_ptr.42, ptr @saa7164_downloadfirmware._entry_ptr.44, ptr @saa7164_downloadfirmware._entry_ptr.46, ptr @saa7164_downloadfirmware._entry_ptr.49, ptr @saa7164_downloadfirmware._entry_ptr.52, ptr @saa7164_downloadfirmware._entry_ptr.55, ptr @saa7164_downloadfirmware._entry_ptr.58, ptr @saa7164_downloadfirmware._entry_ptr.6, ptr @saa7164_downloadfirmware._entry_ptr.61, ptr @saa7164_downloadfirmware._entry_ptr.64, ptr @saa7164_downloadfirmware._entry_ptr.67, ptr @saa7164_downloadfirmware._entry_ptr.70, ptr @saa7164_downloadfirmware._entry_ptr.73, ptr @saa7164_downloadfirmware._entry_ptr.76, ptr @saa7164_downloadfirmware._entry_ptr.79, ptr @saa7164_downloadfirmware._entry_ptr.8, ptr @saa7164_downloadfirmware._entry_ptr.82, ptr @saa7164_downloadfirmware._entry_ptr.85, ptr @saa7164_downloadfirmware._entry_ptr.88, ptr @saa7164_downloadfirmware._entry_ptr.91, ptr @saa7164_downloadfirmware._entry_ptr.94, ptr @saa7164_downloadfirmware._entry_ptr.97, ptr @saa7164_downloadimage._entry, ptr @saa7164_downloadimage._entry.161, ptr @saa7164_downloadimage._entry.164, ptr @saa7164_downloadimage._entry.167, ptr @saa7164_downloadimage._entry.170, ptr @saa7164_downloadimage._entry.173, ptr @saa7164_downloadimage._entry.176, ptr @saa7164_downloadimage._entry.179, ptr @saa7164_downloadimage._entry.182, ptr @saa7164_downloadimage._entry.185, ptr @saa7164_downloadimage._entry.188, ptr @saa7164_downloadimage._entry.191, ptr @saa7164_downloadimage._entry.193, ptr @saa7164_downloadimage._entry.196, ptr @saa7164_downloadimage._entry_ptr, ptr @saa7164_downloadimage._entry_ptr.163, ptr @saa7164_downloadimage._entry_ptr.166, ptr @saa7164_downloadimage._entry_ptr.169, ptr @saa7164_downloadimage._entry_ptr.172, ptr @saa7164_downloadimage._entry_ptr.175, ptr @saa7164_downloadimage._entry_ptr.178, ptr @saa7164_downloadimage._entry_ptr.181, ptr @saa7164_downloadimage._entry_ptr.184, ptr @saa7164_downloadimage._entry_ptr.187, ptr @saa7164_downloadimage._entry_ptr.190, ptr @saa7164_downloadimage._entry_ptr.192, ptr @saa7164_downloadimage._entry_ptr.195, ptr @saa7164_downloadimage._entry_ptr.198, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.39, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.138, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.180, ptr @.str.183, ptr @.str.186, ptr @.str.189, ptr @.str.194, ptr @.str.197, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202], section "llvm.metadata"
@0 = internal global [139 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadfirmware._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadimage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadimage._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadimage._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadimage._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadimage._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadimage._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadimage._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadimage._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadimage._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadimage._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadimage._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadimage._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadimage._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_downloadimage._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dl_wait_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_dl_wait_clr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_downloadfirmware(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #6
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fw, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %1 = load i32, ptr @saa_debug, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %do.end

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1) #9
  br label %if.end6

if.end6:                                          ; preds = %do.end, %entry.if.end6_crit_edge
  %call7 = tail call i32 @saa7164_getcurrentfirmwareversion(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end6.if.end332_crit_edge

if.end6.if.end332_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end332

if.then9:                                         ; preds = %if.end6
  %lmmio = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 17
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !293
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !294
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %6 = load i32, ptr @saa_debug, align 4
  %and14 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then9.do.end26_crit_edge, label %do.end19

if.then9.do.end26_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

do.end19:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %name21 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name21, ptr noundef nonnull @.str.1, i32 noundef %5) #9
  br label %do.end26

do.end26:                                         ; preds = %do.end19, %if.then9.do.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %4)
  %cond976 = icmp eq i32 %4, 50331648
  br i1 %cond976, label %do.end26.do.body114_crit_edge, label %do.body28.lr.ph

do.end26.do.body114_crit_edge:                    ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body114

do.body28.lr.ph:                                  ; preds = %do.end26
  %name36 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  br label %do.body28

do.body28:                                        ; preds = %if.end104.do.body28_crit_edge, %do.body28.lr.ph
  %err_flags.0979 = phi i32 [ %5, %do.body28.lr.ph ], [ %11, %if.end104.do.body28_crit_edge ]
  %first_timeout.0978 = phi i32 [ 100, %do.body28.lr.ph ], [ %first_timeout.1, %if.end104.do.body28_crit_edge ]
  %second_timeout.0977 = phi i32 [ 100, %do.body28.lr.ph ], [ %second_timeout.1, %if.end104.do.body28_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %7 = load i32, ptr @saa_debug, align 4
  %and29 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.do.end41_crit_edge, label %do.end34

do.body28.do.end41_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name36, ptr noundef nonnull @.str.1, i32 noundef %err_flags.0979) #9
  br label %do.end41

do.end41:                                         ; preds = %do.end34, %do.body28.do.end41_crit_edge
  tail call void @msleep(i32 noundef 10) #6
  %and42 = and i32 %err_flags.0979, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end50, label %do.end47

do.end47:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1) #9
  br label %if.end266

if.end50:                                         ; preds = %do.end41
  %and51 = and i32 %err_flags.0979, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end59, label %do.end56

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1) #9
  br label %if.end266

if.end59:                                         ; preds = %if.end50
  %and60 = and i32 %err_flags.0979, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end68, label %do.end65

do.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1) #9
  br label %if.end266

if.end68:                                         ; preds = %if.end59
  %and69 = and i32 %err_flags.0979, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else80, label %if.then71

if.then71:                                        ; preds = %if.end68
  %sub = add i32 %first_timeout.0978, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp72 = icmp eq i32 %sub, 0
  br i1 %cmp72, label %do.end76, label %if.then71.if.end104_crit_edge

if.then71.if.end104_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

do.end76:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1) #9
  br label %if.end266

if.else80:                                        ; preds = %if.end68
  %and81 = and i32 %err_flags.0979, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  %sub94 = add i32 %second_timeout.0977, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub94)
  %cmp95 = icmp eq i32 %sub94, 0
  br i1 %tobool82.not, label %if.else93, label %if.then83

if.then83:                                        ; preds = %if.else80
  br i1 %cmp95, label %do.end89, label %if.then83.if.end104_crit_edge

if.then83.if.end104_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

do.end89:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1) #9
  br label %if.end266

if.else93:                                        ; preds = %if.else80
  br i1 %cmp95, label %do.end99, label %if.else93.if.end104_crit_edge

if.else93.if.end104_crit_edge:                    ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

do.end99:                                         ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #8
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef %err_flags.0979) #9
  br label %if.end266

if.end104:                                        ; preds = %if.else93.if.end104_crit_edge, %if.then83.if.end104_crit_edge, %if.then71.if.end104_crit_edge
  %second_timeout.1 = phi i32 [ %second_timeout.0977, %if.then71.if.end104_crit_edge ], [ %sub94, %if.then83.if.end104_crit_edge ], [ %sub94, %if.else93.if.end104_crit_edge ]
  %first_timeout.1 = phi i32 [ %sub, %if.then71.if.end104_crit_edge ], [ %first_timeout.0978, %if.then83.if.end104_crit_edge ], [ %first_timeout.0978, %if.else93.if.end104_crit_edge ]
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr108 = getelementptr i32, ptr %9, i32 17
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr108) #6, !srcloc !293
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !295
  %cond = icmp eq i32 %10, 50331648
  br i1 %cond, label %if.end104.do.body114_crit_edge, label %if.end104.do.body28_crit_edge

if.end104.do.body28_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body28

if.end104.do.body114_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body114

do.body114:                                       ; preds = %if.end104.do.body114_crit_edge, %do.end26.do.body114_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %12 = load i32, ptr @saa_debug, align 4
  %and115 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %do.body114.do.end127_crit_edge, label %do.end120

do.body114.do.end127_crit_edge:                   ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end127

do.end120:                                        ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #8
  %name122 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name122, ptr noundef nonnull @.str.1) #9
  br label %do.end127

do.end127:                                        ; preds = %do.end120, %do.body114.do.end127_crit_edge
  %13 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio, align 4
  %add.ptr131 = getelementptr i32, ptr %14, i32 25
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131) #6, !srcloc !293
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !296
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %17 = load i32, ptr @saa_debug, align 4
  %and136 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %do.end127.do.end148_crit_edge, label %do.end141

do.end127.do.end148_crit_edge:                    ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end148

do.end141:                                        ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #8
  %name143 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name143, ptr noundef nonnull @.str.1, i32 noundef %16) #9
  br label %do.end148

do.end148:                                        ; preds = %do.end141, %do.end127.do.end148_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %15)
  %cmp150.not980 = icmp eq i32 %15, 50331648
  br i1 %cmp150.not980, label %do.end148.do.body238_crit_edge, label %do.body152.lr.ph

do.end148.do.body238_crit_edge:                   ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body238

do.body152.lr.ph:                                 ; preds = %do.end148
  %name160 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  br label %do.body152

do.body152:                                       ; preds = %if.end229.do.body152_crit_edge, %do.body152.lr.ph
  %err_flags.1983 = phi i32 [ %16, %do.body152.lr.ph ], [ %22, %if.end229.do.body152_crit_edge ]
  %first_timeout.2982 = phi i32 [ 5000, %do.body152.lr.ph ], [ %first_timeout.3, %if.end229.do.body152_crit_edge ]
  %second_timeout.2981 = phi i32 [ 100, %do.body152.lr.ph ], [ %second_timeout.3, %if.end229.do.body152_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %18 = load i32, ptr @saa_debug, align 4
  %and153 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %do.body152.do.end165_crit_edge, label %do.end158

do.body152.do.end165_crit_edge:                   ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end165

do.end158:                                        ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #8
  %call162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name160, ptr noundef nonnull @.str.1, i32 noundef %err_flags.1983) #9
  br label %do.end165

do.end165:                                        ; preds = %do.end158, %do.body152.do.end165_crit_edge
  tail call void @msleep(i32 noundef 10) #6
  %and166 = and i32 %err_flags.1983, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %if.end174, label %do.end171

do.end171:                                        ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #8
  %call173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1) #9
  br label %do.body238

if.end174:                                        ; preds = %do.end165
  %and175 = and i32 %err_flags.1983, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.end183, label %do.end180

do.end180:                                        ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  %call182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1) #9
  br label %do.body238

if.end183:                                        ; preds = %if.end174
  %and184 = and i32 %err_flags.1983, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %if.end192, label %do.end189

do.end189:                                        ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #8
  %call191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1) #9
  br label %do.body238

if.end192:                                        ; preds = %if.end183
  %and193 = and i32 %err_flags.1983, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %if.else205, label %if.then195

if.then195:                                       ; preds = %if.end192
  %sub196 = add i32 %first_timeout.2982, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub196)
  %cmp197 = icmp eq i32 %sub196, 0
  br i1 %cmp197, label %do.end201, label %if.then195.if.end229_crit_edge

if.then195.if.end229_crit_edge:                   ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end229

do.end201:                                        ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #8
  %call203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1) #9
  br label %do.body238

if.else205:                                       ; preds = %if.end192
  %and206 = and i32 %err_flags.1983, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206)
  %tobool207.not = icmp eq i32 %and206, 0
  %sub219 = add i32 %second_timeout.2981, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub219)
  %cmp220 = icmp eq i32 %sub219, 0
  br i1 %tobool207.not, label %if.else218, label %if.then208

if.then208:                                       ; preds = %if.else205
  br i1 %cmp220, label %do.end214, label %if.then208.if.end229_crit_edge

if.then208.if.end229_crit_edge:                   ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end229

do.end214:                                        ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #8
  %call216 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1) #9
  br label %do.body238

if.else218:                                       ; preds = %if.else205
  br i1 %cmp220, label %do.end224, label %if.else218.if.end229_crit_edge

if.else218.if.end229_crit_edge:                   ; preds = %if.else218
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end229

do.end224:                                        ; preds = %if.else218
  call void @__sanitizer_cov_trace_pc() #8
  %call226 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef %err_flags.1983) #9
  br label %do.body238

if.end229:                                        ; preds = %if.else218.if.end229_crit_edge, %if.then208.if.end229_crit_edge, %if.then195.if.end229_crit_edge
  %second_timeout.3 = phi i32 [ %second_timeout.2981, %if.then195.if.end229_crit_edge ], [ %sub219, %if.then208.if.end229_crit_edge ], [ %sub219, %if.else218.if.end229_crit_edge ]
  %first_timeout.3 = phi i32 [ %sub196, %if.then195.if.end229_crit_edge ], [ %first_timeout.2982, %if.then208.if.end229_crit_edge ], [ %first_timeout.2982, %if.else218.if.end229_crit_edge ]
  %19 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lmmio, align 4
  %add.ptr233 = getelementptr i32, ptr %20, i32 25
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr233) #6, !srcloc !293
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !297
  %cmp150.not = icmp eq i32 %21, 50331648
  br i1 %cmp150.not, label %if.end229.do.body238_crit_edge, label %if.end229.do.body152_crit_edge

if.end229.do.body152_crit_edge:                   ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body152

if.end229.do.body238_crit_edge:                   ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body238

do.body238:                                       ; preds = %if.end229.do.body238_crit_edge, %do.end224, %do.end214, %do.end201, %do.end189, %do.end180, %do.end171, %do.end148.do.body238_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %23 = load i32, ptr @saa_debug, align 4
  %and239 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239)
  %tobool240.not = icmp eq i32 %and239, 0
  br i1 %tobool240.not, label %do.body238.if.end266_crit_edge, label %do.end244

do.body238.if.end266_crit_edge:                   ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end266

do.end244:                                        ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #8
  %name246 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %add.ptr251 = getelementptr i32, ptr %25, i32 17
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr251) #6, !srcloc !293
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !298
  %28 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio, align 4
  %add.ptr258 = getelementptr i32, ptr %29, i32 25
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr258) #6, !srcloc !293
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !299
  %call262 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name246, ptr noundef nonnull @.str.1, i32 noundef %27, i32 noundef %31) #9
  br label %if.end266

if.end266:                                        ; preds = %do.end244, %do.body238.if.end266_crit_edge, %do.end99, %do.end89, %do.end76, %do.end65, %do.end56, %do.end47
  %32 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lmmio, align 4
  %add.ptr270 = getelementptr i32, ptr %33, i32 17
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr270) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !300
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %34)
  %cmp274 = icmp eq i32 %34, 50331648
  br i1 %cmp274, label %land.lhs.true, label %if.end266.if.end330_crit_edge

if.end266.if.end330_crit_edge:                    ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

land.lhs.true:                                    ; preds = %if.end266
  %35 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lmmio, align 4
  %add.ptr278 = getelementptr i32, ptr %36, i32 25
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr278) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !301
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %37)
  %cmp282 = icmp eq i32 %37, 50331648
  br i1 %cmp282, label %do.body284, label %land.lhs.true.if.end330_crit_edge

land.lhs.true.if.end330_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

do.body284:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %38 = load i32, ptr @saa_debug, align 4
  %and285 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285)
  %tobool286.not = icmp eq i32 %and285, 0
  br i1 %tobool286.not, label %do.body284.while.cond298.preheader_crit_edge, label %do.end290

do.body284.while.cond298.preheader_crit_edge:     ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond298.preheader

do.end290:                                        ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #8
  %name292 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call294 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name292, ptr noundef nonnull @.str.1) #9
  br label %while.cond298.preheader

while.cond298.preheader:                          ; preds = %do.end290, %do.body284.while.cond298.preheader_crit_edge
  br label %while.cond298

while.cond298:                                    ; preds = %if.else318.while.cond298_crit_edge, %while.cond298.preheader
  %first_timeout.4 = phi i32 [ %sub319, %if.else318.while.cond298_crit_edge ], [ 5000, %while.cond298.preheader ]
  tail call void @msleep(i32 noundef 10) #6
  %call301 = tail call i32 @saa7164_getcurrentfirmwareversion(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call301)
  %tobool302.not = icmp eq i32 %call301, 0
  br i1 %tobool302.not, label %if.else318, label %do.body304

do.body304:                                       ; preds = %while.cond298
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %39 = load i32, ptr @saa_debug, align 4
  %and305 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and305)
  %tobool306.not = icmp eq i32 %and305, 0
  br i1 %tobool306.not, label %do.body304.if.end330_crit_edge, label %do.end310

do.body304.if.end330_crit_edge:                   ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end330

do.end310:                                        ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #8
  %name312 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call314 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name312, ptr noundef nonnull @.str.1) #9
  br label %if.end330

if.else318:                                       ; preds = %while.cond298
  %sub319 = add nsw i32 %first_timeout.4, -10
  %cmp320 = icmp eq i32 %sub319, 0
  br i1 %cmp320, label %do.end324, label %if.else318.while.cond298_crit_edge

if.else318.while.cond298_crit_edge:               ; preds = %if.else318
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond298

do.end324:                                        ; preds = %if.else318
  call void @__sanitizer_cov_trace_pc() #8
  %call326 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.1) #9
  br label %if.end330

if.end330:                                        ; preds = %do.end324, %do.end310, %do.body304.if.end330_crit_edge, %land.lhs.true.if.end330_crit_edge, %if.end266.if.end330_crit_edge
  %call331 = tail call i32 @saa7164_getcurrentfirmwareversion(ptr noundef %dev) #6
  br label %if.end332

if.end332:                                        ; preds = %if.end330, %if.end6.if.end332_crit_edge
  %version.0 = phi i32 [ %call331, %if.end330 ], [ %call7, %if.end6.if.end332_crit_edge ]
  %lmmio335 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 8
  %40 = ptrtoint ptr %lmmio335 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lmmio335, align 4
  %add.ptr336 = getelementptr i32, ptr %41, i32 17
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr336) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !302
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %42)
  %cmp340 = icmp eq i32 %42, 50331648
  br i1 %cmp340, label %land.lhs.true341, label %if.end332.do.body364_crit_edge

if.end332.do.body364_crit_edge:                   ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body364

land.lhs.true341:                                 ; preds = %if.end332
  %43 = ptrtoint ptr %lmmio335 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lmmio335, align 4
  %add.ptr345 = getelementptr i32, ptr %44, i32 25
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr345) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !303
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %45)
  %cmp349 = icmp eq i32 %45, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %version.0)
  %cmp351 = icmp eq i32 %version.0, 0
  %or.cond = select i1 %cmp349, i1 %cmp351, i1 false
  br i1 %or.cond, label %do.end355, label %land.lhs.true341.do.body364_crit_edge

land.lhs.true341.do.body364_crit_edge:            ; preds = %land.lhs.true341
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body364

do.end355:                                        ; preds = %land.lhs.true341
  call void @__sanitizer_cov_trace_pc() #8
  %call357 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !304
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %lmmio335 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lmmio335, align 4
  %add.ptr362 = getelementptr i32, ptr %47, i32 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr362, i32 -1377915426) #6, !srcloc !305
  tail call void @saa7164_getfirmwarestatus(ptr noundef %dev) #6
  br label %cleanup

do.body364:                                       ; preds = %land.lhs.true341.do.body364_crit_edge, %if.end332.do.body364_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %48 = load i32, ptr @saa_debug, align 4
  %and365 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and365)
  %tobool366.not = icmp eq i32 %and365, 0
  br i1 %tobool366.not, label %do.body364.do.end383_crit_edge, label %do.end370

do.body364.do.end383_crit_edge:                   ; preds = %do.body364
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end383

do.end370:                                        ; preds = %do.body364
  call void @__sanitizer_cov_trace_pc() #8
  %name372 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %and374 = lshr i32 %version.0, 10
  %shr = and i32 %and374, 63
  %and375 = lshr i32 %version.0, 5
  %shr376 = and i32 %and375, 31
  %and377 = and i32 %version.0, 31
  %shr379 = lshr i32 %version.0, 16
  %call380 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name372, i32 noundef %shr, i32 noundef %shr376, i32 noundef %and377, i32 noundef %shr379) #9
  br label %do.end383

do.end383:                                        ; preds = %do.end370, %do.body364.do.end383_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %version.0)
  %cmp384 = icmp eq i32 %version.0, 0
  br i1 %cmp384, label %do.end388, label %do.end383.if.end810_crit_edge

do.end383.if.end810_crit_edge:                    ; preds = %do.end383
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end810

do.end388:                                        ; preds = %do.end383
  %call390 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  %pci = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 3
  %49 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pci, align 4
  %dev391 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %call392 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.3, ptr noundef %dev391) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call392)
  %tobool393.not = icmp eq i32 %call392, 0
  br i1 %tobool393.not, label %do.end403, label %do.end397

do.end397:                                        ; preds = %do.end388
  call void @__sanitizer_cov_trace_pc() #8
  %call399 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1) #9
  br label %cleanup

do.end403:                                        ; preds = %do.end388
  %51 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fw, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %call405 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef %54) #9
  %55 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %fw, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4019072, i32 %58)
  %cmp407.not = icmp eq i32 %58, 4019072
  br i1 %cmp407.not, label %do.end418, label %do.end411

do.end411:                                        ; preds = %do.end403
  call void @__sanitizer_cov_trace_pc() #8
  %call414 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %58, i32 noundef 4019072) #9
  br label %out

do.end418:                                        ; preds = %do.end403
  %call420 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1) #9
  %59 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data, align 4
  %call425 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #9
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %call430 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %64) #9
  %bslsize = getelementptr inbounds %struct.fw_header, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %bslsize to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bslsize, align 4
  %call435 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %66) #9
  %reserved = getelementptr inbounds %struct.fw_header, ptr %62, i32 0, i32 2
  %67 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %reserved, align 4
  %call440 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %68) #9
  %version445 = getelementptr inbounds %struct.fw_header, ptr %62, i32 0, i32 3
  %69 = ptrtoint ptr %version445 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %version445, align 4
  %call446 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %70) #9
  %71 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp448 = icmp eq i32 %72, 0
  br i1 %cmp448, label %land.lhs.true449, label %do.end418.if.else454_crit_edge

do.end418.if.else454_crit_edge:                   ; preds = %do.end418
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else454

land.lhs.true449:                                 ; preds = %do.end418
  %73 = ptrtoint ptr %bslsize to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bslsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp451 = icmp eq i32 %74, 0
  br i1 %cmp451, label %if.then452, label %land.lhs.true449.if.else454_crit_edge

land.lhs.true449.if.else454_crit_edge:            ; preds = %land.lhs.true449
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else454

if.then452:                                       ; preds = %land.lhs.true449
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %reserved, align 4
  %mul = shl i32 %76, 4
  br label %do.end462

if.else454:                                       ; preds = %land.lhs.true449.if.else454_crit_edge, %do.end418.if.else454_crit_edge
  %77 = ptrtoint ptr %bslsize to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bslsize, align 4
  %add = add i32 %78, %72
  %mul457 = shl i32 %add, 4
  %add458 = add i32 %mul457, 16
  br label %do.end462

do.end462:                                        ; preds = %if.else454, %if.then452
  %filesize.0 = phi i32 [ %mul, %if.then452 ], [ %add458, %if.else454 ]
  %call464 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.1, i32 noundef %filesize.0) #9
  %79 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp466 = icmp eq i32 %80, 0
  br i1 %cmp466, label %land.lhs.true467, label %do.end462.do.body644_crit_edge

do.end462.do.body644_crit_edge:                   ; preds = %do.end462
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body644

land.lhs.true467:                                 ; preds = %do.end462
  %81 = ptrtoint ptr %bslsize to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bslsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp469 = icmp eq i32 %82, 0
  br i1 %cmp469, label %if.then470, label %land.lhs.true467.do.body644_crit_edge

land.lhs.true467.do.body644_crit_edge:            ; preds = %land.lhs.true467
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body644

if.then470:                                       ; preds = %land.lhs.true467
  %83 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fw, align 4
  %data471 = getelementptr inbounds %struct.firmware, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %data471 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data471, align 4
  %add.ptr472 = getelementptr i8, ptr %86, i32 16
  %87 = ptrtoint ptr %lmmio335 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %lmmio335, align 4
  %add.ptr476 = getelementptr i32, ptr %88, i32 20
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr476) #6, !srcloc !293
  %90 = call i32 @llvm.bswap.i32(i32 %89)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !306
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %91 = load i32, ptr @saa_debug, align 4
  %and481 = and i32 %91, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and481)
  %tobool482.not = icmp eq i32 %and481, 0
  br i1 %tobool482.not, label %if.then470.do.body494_crit_edge, label %do.end486

if.then470.do.body494_crit_edge:                  ; preds = %if.then470
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body494

do.end486:                                        ; preds = %if.then470
  call void @__sanitizer_cov_trace_pc() #8
  %name488 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call490 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %name488) #9
  br label %do.body494

do.body494:                                       ; preds = %do.end486, %if.then470.do.body494_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %92 = load i32, ptr @saa_debug, align 4
  %and495 = and i32 %92, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and495)
  %tobool496.not = icmp eq i32 %and495, 0
  br i1 %tobool496.not, label %do.body494.do.body515_crit_edge, label %do.end500

do.body494.do.body515_crit_edge:                  ; preds = %do.body494
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body515

do.end500:                                        ; preds = %do.body494
  call void @__sanitizer_cov_trace_pc() #8
  %name502 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %93 = ptrtoint ptr %lmmio335 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lmmio335, align 4
  %add.ptr507 = getelementptr i32, ptr %94, i32 17
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr507) #6, !srcloc !293
  %96 = call i32 @llvm.bswap.i32(i32 %95)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !307
  %call511 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name502, i32 noundef %96) #9
  br label %do.body515

do.body515:                                       ; preds = %do.end500, %do.body494.do.body515_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %97 = load i32, ptr @saa_debug, align 4
  %and516 = and i32 %97, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and516)
  %tobool517.not = icmp eq i32 %and516, 0
  br i1 %tobool517.not, label %do.body515.do.body536_crit_edge, label %do.end521

do.body515.do.body536_crit_edge:                  ; preds = %do.body515
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body536

do.end521:                                        ; preds = %do.body515
  call void @__sanitizer_cov_trace_pc() #8
  %name523 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %98 = ptrtoint ptr %lmmio335 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %lmmio335, align 4
  %add.ptr528 = getelementptr i32, ptr %99, i32 16
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr528) #6, !srcloc !293
  %101 = call i32 @llvm.bswap.i32(i32 %100)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !308
  %call532 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %name523, i32 noundef %101) #9
  br label %do.body536

do.body536:                                       ; preds = %do.end521, %do.body515.do.body536_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %102 = load i32, ptr @saa_debug, align 4
  %and537 = and i32 %102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and537)
  %tobool538.not = icmp eq i32 %and537, 0
  br i1 %tobool538.not, label %do.body536.do.body550_crit_edge, label %do.end542

do.body536.do.body550_crit_edge:                  ; preds = %do.body536
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body550

do.end542:                                        ; preds = %do.body536
  call void @__sanitizer_cov_trace_pc() #8
  %name544 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call546 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name544, i32 noundef 0) #9
  br label %do.body550

do.body550:                                       ; preds = %do.end542, %do.body536.do.body550_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %103 = load i32, ptr @saa_debug, align 4
  %and551 = and i32 %103, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and551)
  %tobool552.not = icmp eq i32 %and551, 0
  br i1 %tobool552.not, label %do.body550.do.end563_crit_edge, label %do.end556

do.body550.do.end563_crit_edge:                   ; preds = %do.body550
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end563

do.end556:                                        ; preds = %do.body550
  call void @__sanitizer_cov_trace_pc() #8
  %name558 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call560 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name558, i32 noundef %90) #9
  br label %do.end563

do.end563:                                        ; preds = %do.end556, %do.body550.do.end563_crit_edge
  %104 = ptrtoint ptr %lmmio335 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %lmmio335, align 4
  %add.ptr567 = getelementptr i32, ptr %105, i32 17
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr567) #6, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !309
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %106)
  %cmp571 = icmp eq i32 %106, 50331648
  br i1 %cmp571, label %land.lhs.true572, label %do.end563.if.end634_crit_edge

do.end563.if.end634_crit_edge:                    ; preds = %do.end563
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end634

land.lhs.true572:                                 ; preds = %do.end563
  %107 = ptrtoint ptr %lmmio335 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %lmmio335, align 4
  %add.ptr576 = getelementptr i32, ptr %108, i32 16
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr576) #6, !srcloc !293
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !310
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp580 = icmp eq i32 %109, 0
  br i1 %cmp580, label %do.body584, label %land.lhs.true572.if.end634_crit_edge

land.lhs.true572.if.end634_crit_edge:             ; preds = %land.lhs.true572
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end634

do.body584:                                       ; preds = %land.lhs.true572
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %110 = load i32, ptr @saa_debug, align 4
  %and585 = and i32 %110, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and585)
  %tobool586.not = icmp eq i32 %and585, 0
  br i1 %tobool586.not, label %do.body584.do.body605_crit_edge, label %do.end590

do.body584.do.body605_crit_edge:                  ; preds = %do.body584
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body605

do.end590:                                        ; preds = %do.body584
  call void @__sanitizer_cov_trace_pc() #8
  %name592 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %and594 = lshr i32 %90, 10
  %shr595 = and i32 %and594, 63
  %and596 = lshr i32 %90, 5
  %shr597 = and i32 %and596, 31
  %and598 = and i32 %90, 31
  %shr600 = lshr i32 %90, 16
  %call601 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %name592, i32 noundef %shr595, i32 noundef %shr597, i32 noundef %and598, i32 noundef %shr600) #9
  br label %do.body605

do.body605:                                       ; preds = %do.end590, %do.body584.do.body605_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %111 = load i32, ptr @saa_debug, align 4
  %and606 = and i32 %111, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and606)
  %tobool607.not = icmp eq i32 %and606, 0
  br i1 %tobool607.not, label %do.body605.do.end629_crit_edge, label %do.end611

do.body605.do.end629_crit_edge:                   ; preds = %do.body605
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end629

do.end611:                                        ; preds = %do.body605
  call void @__sanitizer_cov_trace_pc() #8
  %name613 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %version615 = getelementptr i8, ptr %86, i32 28
  %112 = ptrtoint ptr %version615 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %version615, align 4
  %and616 = lshr i32 %113, 10
  %shr617 = and i32 %and616, 63
  %and619 = lshr i32 %113, 5
  %shr620 = and i32 %and619, 31
  %and622 = and i32 %113, 31
  %shr625 = lshr i32 %113, 16
  %call626 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %name613, i32 noundef %shr617, i32 noundef %shr620, i32 noundef %and622, i32 noundef %shr625) #9
  br label %do.end629

do.end629:                                        ; preds = %do.end611, %do.body605.do.end629_crit_edge
  %version630 = getelementptr i8, ptr %86, i32 28
  %114 = ptrtoint ptr %version630 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %version630, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %115)
  %cmp631 = icmp ne i32 %90, %115
  %spec.select = zext i1 %cmp631 to i32
  br label %if.end634

if.end634:                                        ; preds = %do.end629, %land.lhs.true572.if.end634_crit_edge, %do.end563.if.end634_crit_edge
  %updatebootloader.0 = phi i32 [ 1, %land.lhs.true572.if.end634_crit_edge ], [ 1, %do.end563.if.end634_crit_edge ], [ %spec.select, %do.end629 ]
  %116 = ptrtoint ptr %add.ptr472 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr472, align 4
  %bslsize636 = getelementptr i8, ptr %86, i32 20
  %118 = ptrtoint ptr %bslsize636 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %bslsize636, align 4
  %add637 = add i32 %119, %117
  %mul638 = shl i32 %add637, 4
  %add639 = add i32 %mul638, 32
  %120 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %fw, align 4
  %data640 = getelementptr inbounds %struct.firmware, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %data640 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %data640, align 4
  %add.ptr641 = getelementptr i8, ptr %123, i32 %add639
  br label %do.body644

do.body644:                                       ; preds = %if.end634, %land.lhs.true467.do.body644_crit_edge, %do.end462.do.body644_crit_edge
  %fwhdr.0 = phi ptr [ %add.ptr641, %if.end634 ], [ %62, %land.lhs.true467.do.body644_crit_edge ], [ %62, %do.end462.do.body644_crit_edge ]
  %boothdr.0 = phi ptr [ %add.ptr472, %if.end634 ], [ null, %land.lhs.true467.do.body644_crit_edge ], [ null, %do.end462.do.body644_crit_edge ]
  %updatebootloader.1 = phi i32 [ %updatebootloader.0, %if.end634 ], [ 1, %land.lhs.true467.do.body644_crit_edge ], [ 1, %do.end462.do.body644_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %124 = load i32, ptr @saa_debug, align 4
  %and645 = and i32 %124, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and645)
  %tobool646.not = icmp eq i32 %and645, 0
  br i1 %tobool646.not, label %do.body644.do.end668_crit_edge, label %do.end650

do.body644.do.end668_crit_edge:                   ; preds = %do.body644
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end668

do.end650:                                        ; preds = %do.body644
  call void @__sanitizer_cov_trace_pc() #8
  %name652 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %version654 = getelementptr inbounds %struct.fw_header, ptr %fwhdr.0, i32 0, i32 3
  %125 = ptrtoint ptr %version654 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %version654, align 4
  %and655 = lshr i32 %126, 10
  %shr656 = and i32 %and655, 63
  %and658 = lshr i32 %126, 5
  %shr659 = and i32 %and658, 31
  %and661 = and i32 %126, 31
  %shr664 = lshr i32 %126, 16
  %call665 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %name652, i32 noundef %shr656, i32 noundef %shr659, i32 noundef %and661, i32 noundef %shr664) #9
  br label %do.end668

do.end668:                                        ; preds = %do.end650, %do.body644.do.end668_crit_edge
  %version669 = getelementptr inbounds %struct.fw_header, ptr %fwhdr.0, i32 0, i32 3
  %127 = ptrtoint ptr %version669 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %version669, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp670 = icmp eq i32 %128, 0
  br i1 %cmp670, label %do.end668.out_crit_edge, label %if.end672

do.end668.out_crit_edge:                          ; preds = %do.end668
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end672:                                        ; preds = %do.end668
  %129 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp674 = icmp eq i32 %130, 0
  br i1 %cmp674, label %land.lhs.true675, label %if.end672.do.end788_crit_edge

if.end672.do.end788_crit_edge:                    ; preds = %if.end672
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end788

land.lhs.true675:                                 ; preds = %if.end672
  %131 = ptrtoint ptr %bslsize to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %bslsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp677 = icmp eq i32 %132, 0
  br i1 %cmp677, label %if.then678, label %land.lhs.true675.do.end788_crit_edge

land.lhs.true675.do.end788_crit_edge:             ; preds = %land.lhs.true675
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end788

if.then678:                                       ; preds = %land.lhs.true675
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %updatebootloader.1)
  %tobool679.not = icmp eq i32 %updatebootloader.1, 0
  br i1 %tobool679.not, label %if.then678.do.end753_crit_edge, label %if.then680

if.then678.do.end753_crit_edge:                   ; preds = %if.then678
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end753

if.then680:                                       ; preds = %if.then678
  %133 = ptrtoint ptr %boothdr.0 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %boothdr.0, align 4
  %bslsize682 = getelementptr inbounds %struct.fw_header, ptr %boothdr.0, i32 0, i32 1
  %135 = ptrtoint ptr %bslsize682 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %bslsize682, align 4
  %add683 = add i32 %136, %134
  %mul684 = shl i32 %add683, 4
  %add685 = add i32 %mul684, 16
  %137 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %fw, align 4
  %data686 = getelementptr inbounds %struct.firmware, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %data686 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data686, align 4
  %add.ptr687 = getelementptr i8, ptr %140, i32 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %141 = load i32, ptr @saa_debug, align 4
  %and689 = and i32 %141, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and689)
  %tobool690.not = icmp eq i32 %and689, 0
  br i1 %tobool690.not, label %if.then680.do.end704_crit_edge, label %do.end694

if.then680.do.end704_crit_edge:                   ; preds = %if.then680
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end704

do.end694:                                        ; preds = %if.then680
  call void @__sanitizer_cov_trace_pc() #8
  %name696 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call698 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %name696) #9
  br label %do.end704

do.end704:                                        ; preds = %do.end694, %if.then680.do.end704_crit_edge
  %142 = ptrtoint ptr %boothdr.0 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %boothdr.0, align 4
  %call707 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.1, i32 noundef %143) #9
  %144 = ptrtoint ptr %bslsize682 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %bslsize682, align 4
  %call713 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.1, i32 noundef %145) #9
  %reserved718 = getelementptr inbounds %struct.fw_header, ptr %boothdr.0, i32 0, i32 2
  %146 = ptrtoint ptr %reserved718 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %reserved718, align 4
  %call719 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.1, i32 noundef %147) #9
  %version724 = getelementptr inbounds %struct.fw_header, ptr %boothdr.0, i32 0, i32 3
  %148 = ptrtoint ptr %version724 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %version724, align 4
  %call725 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.1, i32 noundef %149) #9
  %bmmio = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 9
  %150 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %bmmio, align 8
  %add.ptr726 = getelementptr i8, ptr %151, i32 4096
  %call727 = call fastcc i32 @saa7164_downloadimage(ptr noundef %dev, ptr noundef %add.ptr687, i32 noundef %add685, i32 noundef 52, ptr noundef %add.ptr726, i32 noundef 4096)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call727)
  %cmp728 = icmp slt i32 %call727, 0
  br i1 %cmp728, label %do.end732, label %do.body736

do.end732:                                        ; preds = %do.end704
  call void @__sanitizer_cov_trace_pc() #8
  %call734 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #9
  br label %out

do.body736:                                       ; preds = %do.end704
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %152 = load i32, ptr @saa_debug, align 4
  %and737 = and i32 %152, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and737)
  %tobool738.not = icmp eq i32 %and737, 0
  br i1 %tobool738.not, label %do.body736.do.end753_crit_edge, label %do.end742

do.body736.do.end753_crit_edge:                   ; preds = %do.body736
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end753

do.end742:                                        ; preds = %do.body736
  call void @__sanitizer_cov_trace_pc() #8
  %name744 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call746 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef %name744) #9
  br label %do.end753

do.end753:                                        ; preds = %do.end742, %do.body736.do.end753_crit_edge, %if.then678.do.end753_crit_edge
  %call755 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #9
  %153 = ptrtoint ptr %boothdr.0 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %boothdr.0, align 4
  %bslsize757 = getelementptr inbounds %struct.fw_header, ptr %boothdr.0, i32 0, i32 1
  %155 = ptrtoint ptr %bslsize757 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %bslsize757, align 4
  %add758 = add i32 %156, %154
  %mul759 = shl i32 %add758, 4
  %add760 = add i32 %mul759, 16
  %157 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %fw, align 4
  %data761 = getelementptr inbounds %struct.firmware, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %data761 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %data761, align 4
  %add.ptr762 = getelementptr i8, ptr %160, i32 16
  %add.ptr763 = getelementptr i8, ptr %add.ptr762, i32 %add760
  %161 = ptrtoint ptr %fwhdr.0 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %fwhdr.0, align 4
  %bslsize765 = getelementptr inbounds %struct.fw_header, ptr %fwhdr.0, i32 0, i32 1
  %163 = ptrtoint ptr %bslsize765 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %bslsize765, align 4
  %add766 = add i32 %164, %162
  %mul767 = shl i32 %add766, 4
  %add768 = add i32 %mul767, 16
  %bmmio769 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 9
  %165 = ptrtoint ptr %bmmio769 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %bmmio769, align 8
  %add.ptr770 = getelementptr i8, ptr %166, i32 2097152
  %call771 = call fastcc i32 @saa7164_downloadimage(ptr noundef %dev, ptr noundef %add.ptr763, i32 noundef %add768, i32 noundef 84, ptr noundef %add.ptr770, i32 noundef 1048576)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call771)
  %cmp772 = icmp slt i32 %call771, 0
  br i1 %cmp772, label %do.end776, label %do.end753.if.end810.sink.split_crit_edge

do.end753.if.end810.sink.split_crit_edge:         ; preds = %do.end753
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end810.sink.split

do.end776:                                        ; preds = %do.end753
  call void @__sanitizer_cov_trace_pc() #8
  %call778 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147) #9
  br label %out

do.end788:                                        ; preds = %land.lhs.true675.do.end788_crit_edge, %if.end672.do.end788_crit_edge
  %call790 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153) #9
  %167 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %fw, align 4
  %data791 = getelementptr inbounds %struct.firmware, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %data791 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %data791, align 4
  %171 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %168, align 4
  %bmmio793 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 9
  %173 = ptrtoint ptr %bmmio793 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %bmmio793, align 8
  %add.ptr794 = getelementptr i8, ptr %174, i32 4096
  %call795 = call fastcc i32 @saa7164_downloadimage(ptr noundef %dev, ptr noundef %170, i32 noundef %172, i32 noundef 52, ptr noundef %add.ptr794, i32 noundef 4096)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call795)
  %cmp796 = icmp slt i32 %call795, 0
  br i1 %cmp796, label %do.end800, label %do.end788.if.end810.sink.split_crit_edge

do.end788.if.end810.sink.split_crit_edge:         ; preds = %do.end788
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end810.sink.split

do.end800:                                        ; preds = %do.end788
  call void @__sanitizer_cov_trace_pc() #8
  %call802 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147) #9
  br label %out

if.end810.sink.split:                             ; preds = %do.end788.if.end810.sink.split_crit_edge, %do.end753.if.end810.sink.split_crit_edge
  %call784 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150) #9
  br label %if.end810

if.end810:                                        ; preds = %if.end810.sink.split, %do.end383.if.end810_crit_edge
  %firmwareloaded = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 18
  %175 = ptrtoint ptr %firmwareloaded to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 1, ptr %firmwareloaded, align 8
  br label %out

out:                                              ; preds = %if.end810, %do.end800, %do.end776, %do.end732, %do.end668.out_crit_edge, %do.end411
  %ret.0 = phi i32 [ -12, %do.end411 ], [ %call727, %do.end732 ], [ %call771, %do.end776 ], [ 0, %if.end810 ], [ %call795, %do.end800 ], [ 0, %do.end668.out_crit_edge ]
  %176 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %177) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end397, %do.end355
  %retval.0 = phi i32 [ -12, %do.end355 ], [ -12, %do.end397 ], [ %ret.0, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_getcurrentfirmwareversion(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7164_getfirmwarestatus(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @saa7164_downloadimage(ptr noundef %dev, ptr noundef %src, i32 noundef %srcsize, i32 noundef %dlflags, ptr noundef %dst, i32 noundef %dstsize) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %dlflags, 4
  %add1 = add i32 %dlflags, 8
  %add2 = add i32 %dlflags, 12
  %add3 = add i32 %dlflags, 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %0 = load i32, ptr @saa_debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef %name, ptr noundef nonnull @.str.160, ptr noundef %src, i32 noundef %srcsize, i32 noundef %dlflags, ptr noundef %dst, i32 noundef %dstsize) #9
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %cmp = icmp eq ptr %src, null
  %cmp7 = icmp eq ptr %dst, null
  %or.cond = or i1 %cmp, %cmp7
  br i1 %or.cond, label %do.end6.out_crit_edge, label %if.end9

do.end6.out_crit_edge:                            ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end9:                                          ; preds = %do.end6
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 4194304, i32 noundef 3520, i32 noundef 10) #10
  %cmp11 = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp11, label %if.end9.out_crit_edge, label %if.end13

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %srcsize)
  %cmp14 = icmp ugt i32 %srcsize, 4194304
  br i1 %cmp14, label %if.end13.out_crit_edge, label %if.end16

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end16:                                         ; preds = %if.end13
  %1 = call ptr @memcpy(ptr %call1.i.i.i, ptr %src, i32 %srcsize)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %2 = load i32, ptr @saa_debug, align 4
  %and18 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.do.body31_crit_edge, label %do.end23

if.end16.do.body31_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %name25 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef %name25, ptr noundef nonnull @.str.160, i32 noundef %dlflags) #9
  br label %do.body31

do.body31:                                        ; preds = %do.end23, %if.end16.do.body31_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %3 = load i32, ptr @saa_debug, align 4
  %and32 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.do.body45_crit_edge, label %do.end37

do.body31.do.body45_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body45

do.end37:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  %name39 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef %name39, ptr noundef nonnull @.str.160, i32 noundef %add) #9
  br label %do.body45

do.body45:                                        ; preds = %do.end37, %do.body31.do.body45_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %4 = load i32, ptr @saa_debug, align 4
  %and46 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.body45.do.body59_crit_edge, label %do.end51

do.body45.do.body59_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body59

do.end51:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #8
  %name53 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef %name53, ptr noundef nonnull @.str.160, i32 noundef %add1) #9
  br label %do.body59

do.body59:                                        ; preds = %do.end51, %do.body45.do.body59_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %5 = load i32, ptr @saa_debug, align 4
  %and60 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body59.do.body73_crit_edge, label %do.end65

do.body59.do.body73_crit_edge:                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

do.end65:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #8
  %name67 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef %name67, ptr noundef nonnull @.str.160, i32 noundef %add2) #9
  br label %do.body73

do.body73:                                        ; preds = %do.end65, %do.body59.do.body73_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %6 = load i32, ptr @saa_debug, align 4
  %and74 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %do.body73.do.end86_crit_edge, label %do.end79

do.body73.do.end86_crit_edge:                     ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end86

do.end79:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #8
  %name81 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, ptr noundef %name81, ptr noundef nonnull @.str.160, i32 noundef %add3) #9
  br label %do.end86

do.end86:                                         ; preds = %do.end79, %do.body73.do.end86_crit_edge
  %lmmio = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %shr = lshr i32 %dlflags, 2
  %add.ptr = getelementptr i32, ptr %8, i32 %shr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !311
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %10 = load i32, ptr @saa_debug, align 4
  %and91 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %do.end86.do.end103_crit_edge, label %do.end96

do.end86.do.end103_crit_edge:                     ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end103

do.end96:                                         ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #8
  %11 = tail call i32 @llvm.bswap.i32(i32 %9)
  %name98 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef %name98, ptr noundef nonnull @.str.160, i32 noundef %dlflags, i32 noundef %11) #9
  br label %do.end103

do.end103:                                        ; preds = %do.end96, %do.end86.do.end103_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %9)
  %cmp104 = icmp eq i32 %9, 16777216
  br i1 %cmp104, label %do.body106, label %do.end103.do.body121_crit_edge

do.end103.do.body121_crit_edge:                   ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body121

do.body106:                                       ; preds = %do.end103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %12 = load i32, ptr @saa_debug, align 4
  %and107 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %do.body106.do.body121_crit_edge, label %do.end112

do.body106.do.body121_crit_edge:                  ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body121

do.end112:                                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #8
  %name114 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef %name114, ptr noundef nonnull @.str.160) #9
  br label %do.body121

do.body121:                                       ; preds = %do.end112, %do.body106.do.body121_crit_edge, %do.end103.do.body121_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !312
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio, align 4
  %add.ptr126 = getelementptr i32, ptr %14, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 16777216) #6, !srcloc !305
  %shr.i = lshr i32 %add, 2
  %15 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio, align 4
  %add.ptr6.i = getelementptr i32, ptr %16, i32 %shr.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !313
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp7.i = icmp eq i32 %18, 0
  br i1 %cmp7.i, label %do.body121.while.body.i_crit_edge, label %do.body121.do.body131_crit_edge

do.body121.do.body131_crit_edge:                  ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body131

do.body121.while.body.i_crit_edge:                ; preds = %do.body121
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %do.body121.while.body.i_crit_edge
  %timeout.08.i = phi i32 [ %sub.i, %if.end.i.while.body.i_crit_edge ], [ 5000, %do.body121.while.body.i_crit_edge ]
  %sub.i = add nsw i32 %timeout.08.i, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp2.i = icmp eq i32 %sub.i, 0
  br i1 %cmp2.i, label %saa7164_dl_wait_ack.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  tail call void @msleep(i32 noundef 100) #6
  %19 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lmmio, align 4
  %add.ptr.i = getelementptr i32, ptr %20, i32 %shr.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !313
  %22 = and i32 %21, 16777216
  %cmp.i = icmp eq i32 %22, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.do.body131_crit_edge

if.end.i.do.body131_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body131

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

saa7164_dl_wait_ack.exit:                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.200) #9
  br label %out

do.body131:                                       ; preds = %if.end.i.do.body131_crit_edge, %do.body121.do.body131_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !314
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lmmio, align 4
  %add.ptr136 = getelementptr i32, ptr %24, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 0) #6, !srcloc !305
  %25 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio, align 4
  %add.ptr5.i = getelementptr i32, ptr %26, i32 %shr.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !315
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not6.i = icmp eq i32 %28, 0
  br i1 %tobool.not6.i, label %do.body131.saa7164_dl_wait_clr.exit_crit_edge, label %do.body131.while.body.i349_crit_edge

do.body131.while.body.i349_crit_edge:             ; preds = %do.body131
  br label %while.body.i349

do.body131.saa7164_dl_wait_clr.exit_crit_edge:    ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7164_dl_wait_clr.exit

while.body.i349:                                  ; preds = %if.end.i352.while.body.i349_crit_edge, %do.body131.while.body.i349_crit_edge
  %timeout.07.i = phi i32 [ %sub.i347, %if.end.i352.while.body.i349_crit_edge ], [ 5000, %do.body131.while.body.i349_crit_edge ]
  %sub.i347 = add nsw i32 %timeout.07.i, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i347)
  %cmp.i348 = icmp eq i32 %sub.i347, 0
  br i1 %cmp.i348, label %saa7164_dl_wait_clr.exit.thread, label %if.end.i352

saa7164_dl_wait_clr.exit.thread:                  ; preds = %while.body.i349
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.202) #9
  br label %out

if.end.i352:                                      ; preds = %while.body.i349
  tail call void @msleep(i32 noundef 100) #6
  %29 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lmmio, align 4
  %add.ptr.i351 = getelementptr i32, ptr %30, i32 %shr.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i351) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !315
  %32 = and i32 %31, 16777216
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %if.end.i352.saa7164_dl_wait_clr.exit_crit_edge, label %if.end.i352.while.body.i349_crit_edge

if.end.i352.while.body.i349_crit_edge:            ; preds = %if.end.i352
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i349

if.end.i352.saa7164_dl_wait_clr.exit_crit_edge:   ; preds = %if.end.i352
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7164_dl_wait_clr.exit

saa7164_dl_wait_clr.exit:                         ; preds = %if.end.i352.saa7164_dl_wait_clr.exit_crit_edge, %do.body131.saa7164_dl_wait_clr.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %srcsize, i32 %dstsize)
  %cmp141413 = icmp ugt i32 %srcsize, %dstsize
  br i1 %cmp141413, label %do.body142.lr.ph, label %saa7164_dl_wait_clr.exit.do.body178_crit_edge

saa7164_dl_wait_clr.exit.do.body178_crit_edge:    ; preds = %saa7164_dl_wait_clr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body178

do.body142.lr.ph:                                 ; preds = %saa7164_dl_wait_clr.exit
  %name150 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %shr161 = lshr i32 %add1, 2
  %shr.i355 = lshr i32 %add2, 2
  br label %do.body142

do.body142:                                       ; preds = %for.inc.do.body142_crit_edge, %do.body142.lr.ph
  %srcsize.addr.0415 = phi i32 [ %srcsize, %do.body142.lr.ph ], [ %sub, %for.inc.do.body142_crit_edge ]
  %offset.0414 = phi i32 [ 0, %do.body142.lr.ph ], [ %add177, %for.inc.do.body142_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %33 = load i32, ptr @saa_debug, align 4
  %and143 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %do.body142.do.end155_crit_edge, label %do.end148

do.body142.do.end155_crit_edge:                   ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end155

do.end148:                                        ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #8
  %call152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef %name150, ptr noundef nonnull @.str.160, i32 noundef %dstsize) #9
  br label %do.end155

do.end155:                                        ; preds = %do.end148, %do.body142.do.end155_crit_edge
  %add.ptr156 = getelementptr i8, ptr %call1.i.i.i, i32 %offset.0414
  tail call void @mmiocpy(ptr noundef %dst, ptr noundef %add.ptr156, i32 noundef %dstsize) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !316
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lmmio, align 4
  %add.ptr162 = getelementptr i32, ptr %35, i32 %shr161
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162, i32 16777216) #6, !srcloc !305
  %36 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lmmio, align 4
  %add.ptr6.i356 = getelementptr i32, ptr %37, i32 %shr.i355
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i356) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !313
  %39 = and i32 %38, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp7.i357 = icmp eq i32 %39, 0
  br i1 %cmp7.i357, label %do.end155.while.body.i361_crit_edge, label %do.end155.do.body167_crit_edge

do.end155.do.body167_crit_edge:                   ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body167

do.end155.while.body.i361_crit_edge:              ; preds = %do.end155
  br label %while.body.i361

while.body.i361:                                  ; preds = %if.end.i366.while.body.i361_crit_edge, %do.end155.while.body.i361_crit_edge
  %timeout.08.i358 = phi i32 [ %sub.i359, %if.end.i366.while.body.i361_crit_edge ], [ 5000, %do.end155.while.body.i361_crit_edge ]
  %sub.i359 = add nsw i32 %timeout.08.i358, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i359)
  %cmp2.i360 = icmp eq i32 %sub.i359, 0
  br i1 %cmp2.i360, label %saa7164_dl_wait_ack.exit368, label %if.end.i366

if.end.i366:                                      ; preds = %while.body.i361
  tail call void @msleep(i32 noundef 100) #6
  %40 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lmmio, align 4
  %add.ptr.i364 = getelementptr i32, ptr %41, i32 %shr.i355
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i364) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !313
  %43 = and i32 %42, 16777216
  %cmp.i365 = icmp eq i32 %43, 0
  br i1 %cmp.i365, label %if.end.i366.while.body.i361_crit_edge, label %if.end.i366.do.body167_crit_edge

if.end.i366.do.body167_crit_edge:                 ; preds = %if.end.i366
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body167

if.end.i366.while.body.i361_crit_edge:            ; preds = %if.end.i366
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i361

saa7164_dl_wait_ack.exit368:                      ; preds = %while.body.i361
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i362 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.200) #9
  br label %out

do.body167:                                       ; preds = %if.end.i366.do.body167_crit_edge, %do.end155.do.body167_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !317
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lmmio, align 4
  %add.ptr172 = getelementptr i32, ptr %45, i32 %shr161
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr172, i32 0) #6, !srcloc !305
  %46 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lmmio, align 4
  %add.ptr5.i371 = getelementptr i32, ptr %47, i32 %shr.i355
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i371) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !315
  %49 = and i32 %48, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not6.i372 = icmp eq i32 %49, 0
  br i1 %tobool.not6.i372, label %do.body167.for.inc_crit_edge, label %do.body167.while.body.i376_crit_edge

do.body167.while.body.i376_crit_edge:             ; preds = %do.body167
  br label %while.body.i376

do.body167.for.inc_crit_edge:                     ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

while.body.i376:                                  ; preds = %if.end.i381.while.body.i376_crit_edge, %do.body167.while.body.i376_crit_edge
  %timeout.07.i373 = phi i32 [ %sub.i374, %if.end.i381.while.body.i376_crit_edge ], [ 5000, %do.body167.while.body.i376_crit_edge ]
  %sub.i374 = add nsw i32 %timeout.07.i373, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i374)
  %cmp.i375 = icmp eq i32 %sub.i374, 0
  br i1 %cmp.i375, label %saa7164_dl_wait_clr.exit383, label %if.end.i381

if.end.i381:                                      ; preds = %while.body.i376
  tail call void @msleep(i32 noundef 100) #6
  %50 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lmmio, align 4
  %add.ptr.i379 = getelementptr i32, ptr %51, i32 %shr.i355
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i379) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !315
  %53 = and i32 %52, 16777216
  %tobool.not.i380 = icmp eq i32 %53, 0
  br i1 %tobool.not.i380, label %if.end.i381.for.inc_crit_edge, label %if.end.i381.while.body.i376_crit_edge

if.end.i381.while.body.i376_crit_edge:            ; preds = %if.end.i381
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i376

if.end.i381.for.inc_crit_edge:                    ; preds = %if.end.i381
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

saa7164_dl_wait_clr.exit383:                      ; preds = %while.body.i376
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i377 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.202) #9
  br label %out

for.inc:                                          ; preds = %if.end.i381.for.inc_crit_edge, %do.body167.for.inc_crit_edge
  %sub = sub i32 %srcsize.addr.0415, %dstsize
  %add177 = add i32 %offset.0414, %dstsize
  %cmp141 = icmp ugt i32 %sub, %dstsize
  br i1 %cmp141, label %for.inc.do.body142_crit_edge, label %for.inc.do.body178_crit_edge

for.inc.do.body178_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body178

for.inc.do.body142_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body142

do.body178:                                       ; preds = %for.inc.do.body178_crit_edge, %saa7164_dl_wait_clr.exit.do.body178_crit_edge
  %offset.0.lcssa = phi i32 [ 0, %saa7164_dl_wait_clr.exit.do.body178_crit_edge ], [ %add177, %for.inc.do.body178_crit_edge ]
  %srcsize.addr.0.lcssa = phi i32 [ %srcsize, %saa7164_dl_wait_clr.exit.do.body178_crit_edge ], [ %sub, %for.inc.do.body178_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %54 = load i32, ptr @saa_debug, align 4
  %and179 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %do.body178.do.end191_crit_edge, label %do.end184

do.body178.do.end191_crit_edge:                   ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end191

do.end184:                                        ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #8
  %name186 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef %name186, ptr noundef nonnull @.str.160, i32 noundef %dstsize) #9
  br label %do.end191

do.end191:                                        ; preds = %do.end184, %do.body178.do.end191_crit_edge
  %add.ptr192 = getelementptr i8, ptr %call1.i.i.i, i32 %offset.0.lcssa
  tail call void @mmiocpy(ptr noundef %dst, ptr noundef %add.ptr192, i32 noundef %srcsize.addr.0.lcssa) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !318
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lmmio, align 4
  %shr197 = lshr i32 %add1, 2
  %add.ptr198 = getelementptr i32, ptr %56, i32 %shr197
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr198, i32 16777216) #6, !srcloc !305
  %shr.i385 = lshr i32 %add2, 2
  %57 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lmmio, align 4
  %add.ptr6.i386 = getelementptr i32, ptr %58, i32 %shr.i385
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i386) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !313
  %60 = and i32 %59, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp7.i387 = icmp eq i32 %60, 0
  br i1 %cmp7.i387, label %do.end191.while.body.i391_crit_edge, label %do.end191.do.body203_crit_edge

do.end191.do.body203_crit_edge:                   ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body203

do.end191.while.body.i391_crit_edge:              ; preds = %do.end191
  br label %while.body.i391

while.body.i391:                                  ; preds = %if.end.i396.while.body.i391_crit_edge, %do.end191.while.body.i391_crit_edge
  %timeout.08.i388 = phi i32 [ %sub.i389, %if.end.i396.while.body.i391_crit_edge ], [ 5000, %do.end191.while.body.i391_crit_edge ]
  %sub.i389 = add nsw i32 %timeout.08.i388, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i389)
  %cmp2.i390 = icmp eq i32 %sub.i389, 0
  br i1 %cmp2.i390, label %saa7164_dl_wait_ack.exit398, label %if.end.i396

if.end.i396:                                      ; preds = %while.body.i391
  tail call void @msleep(i32 noundef 100) #6
  %61 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lmmio, align 4
  %add.ptr.i394 = getelementptr i32, ptr %62, i32 %shr.i385
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i394) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !313
  %64 = and i32 %63, 16777216
  %cmp.i395 = icmp eq i32 %64, 0
  br i1 %cmp.i395, label %if.end.i396.while.body.i391_crit_edge, label %if.end.i396.do.body203_crit_edge

if.end.i396.do.body203_crit_edge:                 ; preds = %if.end.i396
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body203

if.end.i396.while.body.i391_crit_edge:            ; preds = %if.end.i396
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i391

saa7164_dl_wait_ack.exit398:                      ; preds = %while.body.i391
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i392 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.200) #9
  br label %out

do.body203:                                       ; preds = %if.end.i396.do.body203_crit_edge, %do.end191.do.body203_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !319
  tail call void @arm_heavy_mb() #6
  %65 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lmmio, align 4
  %add.ptr208 = getelementptr i32, ptr %66, i32 %shr197
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr208, i32 0) #6, !srcloc !305
  %shr212 = lshr i32 %add3, 2
  br label %while.cond

while.cond:                                       ; preds = %if.end251.while.cond_crit_edge, %do.body203
  %timeout.0 = phi i32 [ 0, %do.body203 ], [ %inc, %if.end251.while.cond_crit_edge ]
  %67 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %lmmio, align 4
  %add.ptr213 = getelementptr i32, ptr %68, i32 %shr212
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr213) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !320
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %69)
  %cmp217.not = icmp eq i32 %69, 50331648
  br i1 %cmp217.not, label %while.cond.do.end257_crit_edge, label %while.body

while.cond.do.end257_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end257

while.body:                                       ; preds = %while.cond
  %70 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lmmio, align 4
  %add.ptr222 = getelementptr i32, ptr %71, i32 %shr212
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr222) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  %73 = and i32 %72, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool227.not = icmp eq i32 %73, 0
  br i1 %tobool227.not, label %if.end234, label %do.end231

do.end231:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %call233 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.160) #9
  br label %out

if.end234:                                        ; preds = %while.body
  %74 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lmmio, align 4
  %add.ptr239 = getelementptr i32, ptr %75, i32 %shr212
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr239) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  %77 = and i32 %76, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool244.not = icmp eq i32 %77, 0
  br i1 %tobool244.not, label %if.end251, label %do.end248

do.end248:                                        ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #8
  %call250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.160) #9
  br label %out

if.end251:                                        ; preds = %if.end234
  tail call void @msleep(i32 noundef 10) #6
  %inc = add nuw nsw i32 %timeout.0, 1
  %exitcond = icmp eq i32 %inc, 62
  br i1 %exitcond, label %if.end251.do.end257_crit_edge, label %if.end251.while.cond_crit_edge

if.end251.while.cond_crit_edge:                   ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end251.do.end257_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end257

do.end257:                                        ; preds = %if.end251.do.end257_crit_edge, %while.cond.do.end257_crit_edge
  %call259 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.160) #9
  %call260 = tail call fastcc i32 @saa7164_dl_wait_clr(ptr noundef %dev, i32 noundef %add2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call260)
  %cmp261 = icmp slt i32 %call260, 0
  br i1 %cmp261, label %do.end257.out_crit_edge, label %do.end266

do.end257.out_crit_edge:                          ; preds = %do.end257
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end266:                                        ; preds = %do.end257
  call void @__sanitizer_cov_trace_pc() #8
  %call268 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.160) #9
  br label %out

out:                                              ; preds = %do.end266, %do.end257.out_crit_edge, %do.end248, %do.end231, %saa7164_dl_wait_ack.exit398, %saa7164_dl_wait_clr.exit383, %saa7164_dl_wait_ack.exit368, %saa7164_dl_wait_clr.exit.thread, %saa7164_dl_wait_ack.exit, %if.end13.out_crit_edge, %if.end9.out_crit_edge, %do.end6.out_crit_edge
  %ret.0 = phi i32 [ -16, %saa7164_dl_wait_ack.exit ], [ -16, %saa7164_dl_wait_ack.exit368 ], [ -16, %saa7164_dl_wait_clr.exit383 ], [ -16, %saa7164_dl_wait_ack.exit398 ], [ -16, %do.end231 ], [ -16, %do.end248 ], [ %call260, %do.end257.out_crit_edge ], [ 0, %do.end266 ], [ -5, %do.end6.out_crit_edge ], [ -12, %if.end9.out_crit_edge ], [ -12, %if.end13.out_crit_edge ], [ -16, %saa7164_dl_wait_clr.exit.thread ]
  %srcbuf.0 = phi ptr [ %call1.i.i.i, %saa7164_dl_wait_ack.exit ], [ %call1.i.i.i, %saa7164_dl_wait_ack.exit368 ], [ %call1.i.i.i, %saa7164_dl_wait_clr.exit383 ], [ %call1.i.i.i, %saa7164_dl_wait_ack.exit398 ], [ %call1.i.i.i, %do.end231 ], [ %call1.i.i.i, %do.end248 ], [ %call1.i.i.i, %do.end257.out_crit_edge ], [ %call1.i.i.i, %do.end266 ], [ null, %do.end6.out_crit_edge ], [ null, %if.end9.out_crit_edge ], [ %call1.i.i.i, %if.end13.out_crit_edge ], [ %call1.i.i.i, %saa7164_dl_wait_clr.exit.thread ]
  tail call void @kfree(ptr noundef %srcbuf.0) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @saa7164_dl_wait_clr(ptr nocapture noundef readonly %dev, i32 noundef %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lmmio = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 8
  %shr = lshr i32 %reg, 2
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr5 = getelementptr i32, ptr %1, i32 %shr
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !315
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not6 = icmp eq i32 %3, 0
  br i1 %tobool.not6, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %timeout.07 = phi i32 [ %sub, %if.end.while.body_crit_edge ], [ 5000, %entry.while.body_crit_edge ]
  %sub = add nsw i32 %timeout.07, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.202) #9
  br label %cleanup

if.end:                                           ; preds = %while.body
  tail call void @msleep(i32 noundef 100) #6
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %5, i32 %shr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !293
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !315
  %7 = and i32 %6, 16777216
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 139)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 139)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !217, !218, !220, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !279, !281, !282, !283}
!llvm.module.flags = !{!284, !285, !286, !287, !288, !289, !290, !291}
!llvm.ident = !{!292}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 201, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @saa7164_downloadfirmware._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @saa7164_downloadfirmware._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 204, i32 12}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 218, i32 3}
!10 = !{ptr @saa7164_downloadfirmware._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @saa7164_downloadfirmware._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @saa7164_downloadfirmware._entry.7, !13, !"_entry", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 222, i32 4}
!14 = !{ptr @saa7164_downloadfirmware._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 227, i32 5}
!17 = !{ptr @saa7164_downloadfirmware._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @saa7164_downloadfirmware._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 232, i32 5}
!21 = !{ptr @saa7164_downloadfirmware._entry.12, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @saa7164_downloadfirmware._entry_ptr.14, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 237, i32 5}
!25 = !{ptr @saa7164_downloadfirmware._entry.15, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @saa7164_downloadfirmware._entry_ptr.17, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @saa7164_downloadfirmware._entry.18, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 244, i32 6}
!29 = !{ptr @saa7164_downloadfirmware._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 252, i32 6}
!32 = !{ptr @saa7164_downloadfirmware._entry.20, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @saa7164_downloadfirmware._entry_ptr.22, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 260, i32 6}
!36 = !{ptr @saa7164_downloadfirmware._entry.23, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @saa7164_downloadfirmware._entry_ptr.25, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.27, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 271, i32 4}
!40 = !{ptr @saa7164_downloadfirmware._entry.26, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @saa7164_downloadfirmware._entry_ptr.28, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.30, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 278, i32 4}
!44 = !{ptr @saa7164_downloadfirmware._entry.29, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @saa7164_downloadfirmware._entry_ptr.31, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @saa7164_downloadfirmware._entry.32, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 281, i32 5}
!48 = !{ptr @saa7164_downloadfirmware._entry_ptr.33, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @saa7164_downloadfirmware._entry.34, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 286, i32 6}
!51 = !{ptr @saa7164_downloadfirmware._entry_ptr.35, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @saa7164_downloadfirmware._entry.36, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 292, i32 6}
!54 = !{ptr @saa7164_downloadfirmware._entry_ptr.37, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.39, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 298, i32 6}
!57 = !{ptr @saa7164_downloadfirmware._entry.38, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @saa7164_downloadfirmware._entry_ptr.40, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @saa7164_downloadfirmware._entry.41, !60, !"_entry", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 305, i32 7}
!61 = !{ptr @saa7164_downloadfirmware._entry_ptr.42, !60, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @saa7164_downloadfirmware._entry.43, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 314, i32 7}
!64 = !{ptr @saa7164_downloadfirmware._entry_ptr.44, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @saa7164_downloadfirmware._entry.45, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 322, i32 7}
!67 = !{ptr @saa7164_downloadfirmware._entry_ptr.46, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.48, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 333, i32 4}
!70 = !{ptr @saa7164_downloadfirmware._entry.47, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @saa7164_downloadfirmware._entry_ptr.49, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.51, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 349, i32 4}
!74 = !{ptr @saa7164_downloadfirmware._entry.50, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @saa7164_downloadfirmware._entry_ptr.52, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.54, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 359, i32 6}
!78 = !{ptr @saa7164_downloadfirmware._entry.53, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @saa7164_downloadfirmware._entry_ptr.55, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.57, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 366, i32 7}
!82 = !{ptr @saa7164_downloadfirmware._entry.56, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @saa7164_downloadfirmware._entry_ptr.58, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.60, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 383, i32 3}
!86 = !{ptr @saa7164_downloadfirmware._entry.59, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @saa7164_downloadfirmware._entry_ptr.61, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.63, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 396, i32 2}
!90 = !{ptr @saa7164_downloadfirmware._entry.62, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @saa7164_downloadfirmware._entry_ptr.64, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.66, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 405, i32 3}
!94 = !{ptr @saa7164_downloadfirmware._entry.65, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @saa7164_downloadfirmware._entry_ptr.67, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.69, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 410, i32 4}
!98 = !{ptr @saa7164_downloadfirmware._entry.68, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @saa7164_downloadfirmware._entry_ptr.70, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.72, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 415, i32 3}
!102 = !{ptr @saa7164_downloadfirmware._entry.71, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @saa7164_downloadfirmware._entry_ptr.73, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.75, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 419, i32 4}
!106 = !{ptr @saa7164_downloadfirmware._entry.74, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @saa7164_downloadfirmware._entry_ptr.76, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.78, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 425, i32 3}
!110 = !{ptr @saa7164_downloadfirmware._entry.77, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @saa7164_downloadfirmware._entry_ptr.79, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.81, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 428, i32 3}
!114 = !{ptr @saa7164_downloadfirmware._entry.80, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @saa7164_downloadfirmware._entry_ptr.82, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.84, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 429, i32 3}
!118 = !{ptr @saa7164_downloadfirmware._entry.83, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @saa7164_downloadfirmware._entry_ptr.85, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.87, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 430, i32 3}
!122 = !{ptr @saa7164_downloadfirmware._entry.86, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @saa7164_downloadfirmware._entry_ptr.88, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.90, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 431, i32 3}
!126 = !{ptr @saa7164_downloadfirmware._entry.89, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @saa7164_downloadfirmware._entry_ptr.91, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.93, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 432, i32 3}
!130 = !{ptr @saa7164_downloadfirmware._entry.92, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @saa7164_downloadfirmware._entry_ptr.94, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.96, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 442, i32 3}
!134 = !{ptr @saa7164_downloadfirmware._entry.95, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @saa7164_downloadfirmware._entry_ptr.97, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.99, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 455, i32 4}
!138 = !{ptr @saa7164_downloadfirmware._entry.98, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @saa7164_downloadfirmware._entry_ptr.100, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.102, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 456, i32 4}
!142 = !{ptr @saa7164_downloadfirmware._entry.101, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @saa7164_downloadfirmware._entry_ptr.103, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.105, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 458, i32 4}
!146 = !{ptr @saa7164_downloadfirmware._entry.104, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @saa7164_downloadfirmware._entry_ptr.106, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.108, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 460, i32 4}
!150 = !{ptr @saa7164_downloadfirmware._entry.107, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @saa7164_downloadfirmware._entry_ptr.109, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.111, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 461, i32 4}
!154 = !{ptr @saa7164_downloadfirmware._entry.110, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @saa7164_downloadfirmware._entry_ptr.112, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.114, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 468, i32 5}
!158 = !{ptr @saa7164_downloadfirmware._entry.113, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @saa7164_downloadfirmware._entry_ptr.115, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.117, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 474, i32 5}
!162 = !{ptr @saa7164_downloadfirmware._entry.116, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @saa7164_downloadfirmware._entry_ptr.118, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.120, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 496, i32 3}
!166 = !{ptr @saa7164_downloadfirmware._entry.119, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @saa7164_downloadfirmware._entry_ptr.121, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.123, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 519, i32 5}
!170 = !{ptr @saa7164_downloadfirmware._entry.122, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @saa7164_downloadfirmware._entry_ptr.124, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.126, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 520, i32 5}
!174 = !{ptr @saa7164_downloadfirmware._entry.125, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @saa7164_downloadfirmware._entry_ptr.127, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.129, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 522, i32 5}
!178 = !{ptr @saa7164_downloadfirmware._entry.128, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @saa7164_downloadfirmware._entry_ptr.130, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.132, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 524, i32 5}
!182 = !{ptr @saa7164_downloadfirmware._entry.131, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @saa7164_downloadfirmware._entry_ptr.133, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.135, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 526, i32 5}
!186 = !{ptr @saa7164_downloadfirmware._entry.134, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @saa7164_downloadfirmware._entry_ptr.136, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.138, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 536, i32 6}
!190 = !{ptr @saa7164_downloadfirmware._entry.137, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @saa7164_downloadfirmware._entry_ptr.139, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.141, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 540, i32 5}
!194 = !{ptr @saa7164_downloadfirmware._entry.140, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @saa7164_downloadfirmware._entry_ptr.142, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.144, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 545, i32 4}
!198 = !{ptr @saa7164_downloadfirmware._entry.143, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @saa7164_downloadfirmware._entry_ptr.145, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.147, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 567, i32 5}
!202 = !{ptr @saa7164_downloadfirmware._entry.146, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @saa7164_downloadfirmware._entry_ptr.148, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.150, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 570, i32 4}
!206 = !{ptr @saa7164_downloadfirmware._entry.149, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @saa7164_downloadfirmware._entry_ptr.151, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.153, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 575, i32 4}
!210 = !{ptr @saa7164_downloadfirmware._entry.152, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @saa7164_downloadfirmware._entry_ptr.154, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @saa7164_downloadfirmware._entry.155, !213, !"_entry", i1 false, i1 false}
!213 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 585, i32 5}
!214 = !{ptr @saa7164_downloadfirmware._entry_ptr.156, !213, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @saa7164_downloadfirmware._entry.157, !216, !"_entry", i1 false, i1 false}
!216 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 588, i32 4}
!217 = !{ptr @saa7164_downloadfirmware._entry_ptr.158, !216, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.159, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 73, i32 2}
!220 = !{ptr @.str.160, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @saa7164_downloadimage._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @saa7164_downloadimage._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.162, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 95, i32 2}
!225 = !{ptr @saa7164_downloadimage._entry.161, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @saa7164_downloadimage._entry_ptr.163, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.165, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 96, i32 2}
!229 = !{ptr @saa7164_downloadimage._entry.164, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @saa7164_downloadimage._entry_ptr.166, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.168, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 97, i32 2}
!233 = !{ptr @saa7164_downloadimage._entry.167, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @saa7164_downloadimage._entry_ptr.169, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.171, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 98, i32 2}
!237 = !{ptr @saa7164_downloadimage._entry.170, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @saa7164_downloadimage._entry_ptr.172, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.174, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 99, i32 2}
!241 = !{ptr @saa7164_downloadimage._entry.173, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @saa7164_downloadimage._entry_ptr.175, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.177, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 102, i32 2}
!245 = !{ptr @saa7164_downloadimage._entry.176, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @saa7164_downloadimage._entry_ptr.178, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.180, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 104, i32 3}
!249 = !{ptr @saa7164_downloadimage._entry.179, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @saa7164_downloadimage._entry_ptr.181, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.183, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 124, i32 3}
!253 = !{ptr @saa7164_downloadimage._entry.182, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @saa7164_downloadimage._entry_ptr.184, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.186, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 141, i32 2}
!257 = !{ptr @saa7164_downloadimage._entry.185, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @saa7164_downloadimage._entry_ptr.187, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.189, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 155, i32 4}
!261 = !{ptr @saa7164_downloadimage._entry.188, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @saa7164_downloadimage._entry_ptr.190, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @saa7164_downloadimage._entry.191, !264, !"_entry", i1 false, i1 false}
!264 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 161, i32 4}
!265 = !{ptr @saa7164_downloadimage._entry_ptr.192, !264, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.194, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 172, i32 2}
!268 = !{ptr @saa7164_downloadimage._entry.193, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @saa7164_downloadimage._entry_ptr.195, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.197, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 178, i32 2}
!272 = !{ptr @saa7164_downloadimage._entry.196, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @saa7164_downloadimage._entry_ptr.198, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.199, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 32, i32 4}
!276 = !{ptr @.str.200, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @saa7164_dl_wait_ack._entry, !275, !"_entry", i1 false, i1 false}
!278 = !{ptr @saa7164_dl_wait_ack._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.201, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/pci/saa7164/saa7164-fw.c", i32 48, i32 4}
!281 = !{ptr @.str.202, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @saa7164_dl_wait_clr._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @saa7164_dl_wait_clr._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{i32 1, !"wchar_size", i32 2}
!285 = !{i32 1, !"min_enum_size", i32 4}
!286 = !{i32 8, !"branch-target-enforcement", i32 0}
!287 = !{i32 8, !"sign-return-address", i32 0}
!288 = !{i32 8, !"sign-return-address-all", i32 0}
!289 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!290 = !{i32 7, !"uwtable", i32 1}
!291 = !{i32 7, !"frame-pointer", i32 2}
!292 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!293 = !{i64 5407457}
!294 = !{i64 2158497989}
!295 = !{i64 2158510642}
!296 = !{i64 2158512891}
!297 = !{i64 2158525570}
!298 = !{i64 2158528132}
!299 = !{i64 2158528705}
!300 = !{i64 2158529278}
!301 = !{i64 2158529856}
!302 = !{i64 2158535239}
!303 = !{i64 2158535817}
!304 = !{i64 2158537712}
!305 = !{i64 5407039}
!306 = !{i64 2158556876}
!307 = !{i64 2158560698}
!308 = !{i64 2158562914}
!309 = !{i64 2158566749}
!310 = !{i64 2158567322}
!311 = !{i64 2158478449}
!312 = !{i64 2158482224}
!313 = !{i64 2158463898}
!314 = !{i64 2158482699}
!315 = !{i64 2158465927}
!316 = !{i64 2158484840}
!317 = !{i64 2158485315}
!318 = !{i64 2158487475}
!319 = !{i64 2158487950}
!320 = !{i64 2158488727}
!321 = !{i64 2158489315}
!322 = !{i64 2158491323}
