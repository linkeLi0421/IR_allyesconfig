; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7164/saa7164-buffer.c_pt.bc'
source_filename = "../drivers/media/pci/saa7164/saa7164-buffer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.saa7164_buffer = type { %struct.list_head, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.saa7164_dev = type { %struct.list_head, %struct.atomic_t, %struct.v4l2_device, ptr, i8, i8, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [16 x i8], %struct.saa7164_fw_status, i32, %struct.tmComResHWDescr, %struct.tmComResInterfaceDescr, %struct.tmComResBusDescr, %struct.tmComResBusInfo, i32, i32, i8, [256 x %struct.cmd], %struct.mutex, [3 x %struct.saa7164_i2c], [6 x %struct.saa7164_port], %struct.work_struct, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.tmComResVBIFormatDescrHeader = type { i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%struct.saa7164_vbi_params = type { %struct.saa7164_tvnorm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.167, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.167 = type { ptr }
%struct.saa7164_user_buffer = type { %struct.list_head, ptr, i32, i32, i32 }

@saa_debug = external dso_local local_unnamed_addr global i32, align 4
@saa7164_buffer_display._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: %s()   buffer @ 0x%p nr=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"saa7164_buffer_display\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/pci/saa7164/saa7164-buffer.c\00", [53 x i8] zeroinitializer }, align 32
@saa7164_buffer_display._entry_ptr = internal global ptr @saa7164_buffer_display._entry, section ".printk_index", align 4
@saa7164_buffer_display._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s:   pci_cpu @ 0x%p    dma @ 0x%08llx len = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7164_buffer_display._entry_ptr.5 = internal global ptr @saa7164_buffer_display._entry.3, section ".printk_index", align 4
@saa7164_buffer_display._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s:    pt_cpu @ 0x%p pt_dma @ 0x%08llx len = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@saa7164_buffer_display._entry_ptr.8 = internal global ptr @saa7164_buffer_display._entry.6, section ".printk_index", align 4
@saa7164_buffer_display._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s:     pt[%02d] = 0x%p -> 0x%llx\0A\00", [59 x i8] zeroinitializer }, align 32
@saa7164_buffer_display._entry_ptr.11 = internal global ptr @saa7164_buffer_display._entry.9, section ".printk_index", align 4
@saa7164_buffer_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: %s() SAA_ERR_BAD_PARAMETER\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"saa7164_buffer_alloc\00", [43 x i8] zeroinitializer }, align 32
@saa7164_buffer_alloc._entry_ptr = internal global ptr @saa7164_buffer_alloc._entry, section ".printk_index", align 4
@saa7164_buffer_alloc._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: %s()   allocated buffer @ 0x%p (%d pageptrs)\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7164_buffer_alloc._entry_ptr.16 = internal global ptr @saa7164_buffer_alloc._entry.14, section ".printk_index", align 4
@saa7164_buffer_alloc._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s:   pci_cpu @ 0x%p    dma @ 0x%08lx len = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7164_buffer_alloc._entry_ptr.19 = internal global ptr @saa7164_buffer_alloc._entry.17, section ".printk_index", align 4
@saa7164_buffer_alloc._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s:    pt_cpu @ 0x%p pt_dma @ 0x%08lx len = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7164_buffer_alloc._entry_ptr.22 = internal global ptr @saa7164_buffer_alloc._entry.20, section ".printk_index", align 4
@saa7164_buffer_alloc._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.13, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7164_buffer_alloc._entry_ptr.24 = internal global ptr @saa7164_buffer_alloc._entry.23, section ".printk_index", align 4
@saa7164_buffer_dealloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: %s() deallocating buffer @ 0x%p\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"saa7164_buffer_dealloc\00", [41 x i8] zeroinitializer }, align 32
@saa7164_buffer_dealloc._entry_ptr = internal global ptr @saa7164_buffer_dealloc._entry, section ".printk_index", align 4
@saa7164_buffer_dealloc._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s:  freeing a non-free buffer\0A\00", [62 x i8] zeroinitializer }, align 32
@saa7164_buffer_dealloc._entry_ptr.29 = internal global ptr @saa7164_buffer_dealloc._entry.27, section ".printk_index", align 4
@saa7164_buffer_zero_offsets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s(idx = %d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"saa7164_buffer_zero_offsets\00", [36 x i8] zeroinitializer }, align 32
@saa7164_buffer_zero_offsets._entry_ptr = internal global ptr @saa7164_buffer_zero_offsets._entry, section ".printk_index", align 4
@saa7164_buffer_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.32, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"saa7164_buffer_activate\00", [40 x i8] zeroinitializer }, align 32
@saa7164_buffer_activate._entry_ptr = internal global ptr @saa7164_buffer_activate._entry, section ".printk_index", align 4
@saa7164_buffer_activate._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017%s: \09buf[%d] offset 0x%llx (0x%x) buf 0x%llx/%llx (0x%x/%x) nr=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@saa7164_buffer_activate._entry_ptr.35 = internal global ptr @saa7164_buffer_activate._entry.33, section ".printk_index", align 4
@saa7164_buffer_cfg_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: %s(port=%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"saa7164_buffer_cfg_port\00", [40 x i8] zeroinitializer }, align 32
@saa7164_buffer_cfg_port._entry_ptr = internal global ptr @saa7164_buffer_cfg_port._entry, section ".printk_index", align 4
@saa7164_buffer_cfg_port._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s:  configured:\0A\00", [44 x i8] zeroinitializer }, align 32
@saa7164_buffer_cfg_port._entry_ptr.40 = internal global ptr @saa7164_buffer_cfg_port._entry.38, section ".printk_index", align 4
@saa7164_buffer_cfg_port._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:    lmmio       0x%p\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_buffer_cfg_port._entry_ptr.43 = internal global ptr @saa7164_buffer_cfg_port._entry.41, section ".printk_index", align 4
@saa7164_buffer_cfg_port._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s:    bufcounter  0x%x = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@saa7164_buffer_cfg_port._entry_ptr.46 = internal global ptr @saa7164_buffer_cfg_port._entry.44, section ".printk_index", align 4
@saa7164_buffer_cfg_port._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.37, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s:    pitch       0x%x = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@saa7164_buffer_cfg_port._entry_ptr.49 = internal global ptr @saa7164_buffer_cfg_port._entry.47, section ".printk_index", align 4
@saa7164_buffer_cfg_port._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.37, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s:    bufsize     0x%x = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@saa7164_buffer_cfg_port._entry_ptr.52 = internal global ptr @saa7164_buffer_cfg_port._entry.50, section ".printk_index", align 4
@saa7164_buffer_cfg_port._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.37, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:    buffercount = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_buffer_cfg_port._entry_ptr.55 = internal global ptr @saa7164_buffer_cfg_port._entry.53, section ".printk_index", align 4
@saa7164_buffer_cfg_port._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.37, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:    bufoffset = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_buffer_cfg_port._entry_ptr.58 = internal global ptr @saa7164_buffer_cfg_port._entry.56, section ".printk_index", align 4
@saa7164_buffer_cfg_port._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.37, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:    bufptr32h = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_buffer_cfg_port._entry_ptr.61 = internal global ptr @saa7164_buffer_cfg_port._entry.59, section ".printk_index", align 4
@saa7164_buffer_cfg_port._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.37, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:    bufptr32l = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7164_buffer_cfg_port._entry_ptr.64 = internal global ptr @saa7164_buffer_cfg_port._entry.62, section ".printk_index", align 4
@saa7164_buffer_alloc_user._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: %s()   allocated user buffer @ 0x%p\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"saa7164_buffer_alloc_user\00", [38 x i8] zeroinitializer }, align 32
@saa7164_buffer_alloc_user._entry_ptr = internal global ptr @saa7164_buffer_alloc_user._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 60, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 62, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 64, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 70, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 87, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 121, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 123, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 125, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 132, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 158, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 162, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 180, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 196, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 207, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 228, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 234, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 235, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 236, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 239, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 242, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 245, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 246, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 247, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 248, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.233 = private constant [46 x i8] c"../drivers/media/pci/saa7164/saa7164-buffer.c\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 290, i32 2 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @saa7164_buffer_activate._entry, ptr @saa7164_buffer_activate._entry.33, ptr @saa7164_buffer_activate._entry_ptr, ptr @saa7164_buffer_activate._entry_ptr.35, ptr @saa7164_buffer_alloc._entry, ptr @saa7164_buffer_alloc._entry.14, ptr @saa7164_buffer_alloc._entry.17, ptr @saa7164_buffer_alloc._entry.20, ptr @saa7164_buffer_alloc._entry.23, ptr @saa7164_buffer_alloc._entry_ptr, ptr @saa7164_buffer_alloc._entry_ptr.16, ptr @saa7164_buffer_alloc._entry_ptr.19, ptr @saa7164_buffer_alloc._entry_ptr.22, ptr @saa7164_buffer_alloc._entry_ptr.24, ptr @saa7164_buffer_alloc_user._entry, ptr @saa7164_buffer_alloc_user._entry_ptr, ptr @saa7164_buffer_cfg_port._entry, ptr @saa7164_buffer_cfg_port._entry.38, ptr @saa7164_buffer_cfg_port._entry.41, ptr @saa7164_buffer_cfg_port._entry.44, ptr @saa7164_buffer_cfg_port._entry.47, ptr @saa7164_buffer_cfg_port._entry.50, ptr @saa7164_buffer_cfg_port._entry.53, ptr @saa7164_buffer_cfg_port._entry.56, ptr @saa7164_buffer_cfg_port._entry.59, ptr @saa7164_buffer_cfg_port._entry.62, ptr @saa7164_buffer_cfg_port._entry_ptr, ptr @saa7164_buffer_cfg_port._entry_ptr.40, ptr @saa7164_buffer_cfg_port._entry_ptr.43, ptr @saa7164_buffer_cfg_port._entry_ptr.46, ptr @saa7164_buffer_cfg_port._entry_ptr.49, ptr @saa7164_buffer_cfg_port._entry_ptr.52, ptr @saa7164_buffer_cfg_port._entry_ptr.55, ptr @saa7164_buffer_cfg_port._entry_ptr.58, ptr @saa7164_buffer_cfg_port._entry_ptr.61, ptr @saa7164_buffer_cfg_port._entry_ptr.64, ptr @saa7164_buffer_dealloc._entry, ptr @saa7164_buffer_dealloc._entry.27, ptr @saa7164_buffer_dealloc._entry_ptr, ptr @saa7164_buffer_dealloc._entry_ptr.29, ptr @saa7164_buffer_display._entry, ptr @saa7164_buffer_display._entry.3, ptr @saa7164_buffer_display._entry.6, ptr @saa7164_buffer_display._entry.9, ptr @saa7164_buffer_display._entry_ptr, ptr @saa7164_buffer_display._entry_ptr.11, ptr @saa7164_buffer_display._entry_ptr.5, ptr @saa7164_buffer_display._entry_ptr.8, ptr @saa7164_buffer_zero_offsets._entry, ptr @saa7164_buffer_zero_offsets._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_display._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_display._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_display._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_display._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_alloc._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_alloc._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_alloc._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_alloc._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_dealloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_dealloc._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_zero_offsets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_activate._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_cfg_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_cfg_port._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_cfg_port._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_cfg_port._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_cfg_port._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_cfg_port._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_cfg_port._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_cfg_port._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_cfg_port._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_cfg_port._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_buffer_alloc_user._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7164_buffer_display(ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 2
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %4 = load i32, ptr @saa_debug, align 4
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %do.end

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %3, i32 0, i32 16
  %idx = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 1
  %5 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idx, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1, ptr noundef %buf, i32 noundef %6) #10
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %7 = load i32, ptr @saa_debug, align 4
  %and6 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body5.do.body19_crit_edge, label %do.end11

do.body5.do.body19_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %name13 = getelementptr inbounds %struct.saa7164_dev, ptr %3, i32 0, i32 16
  %cpu = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 5
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu, align 4
  %dma = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 6
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma, align 4
  %conv = zext i32 %11 to i64
  %pci_size = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 4
  %12 = ptrtoint ptr %pci_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pci_size, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name13, ptr noundef %9, i64 noundef %conv, i32 noundef %13) #10
  br label %do.body19

do.body19:                                        ; preds = %do.end11, %do.body5.do.body19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %14 = load i32, ptr @saa_debug, align 4
  %and20 = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body19.do.end33_crit_edge, label %do.end25

do.body19.do.end33_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

do.end25:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %name27 = getelementptr inbounds %struct.saa7164_dev, ptr %3, i32 0, i32 16
  %pt_cpu = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 9
  %15 = ptrtoint ptr %pt_cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pt_cpu, align 4
  %pt_dma = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 10
  %17 = ptrtoint ptr %pt_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pt_dma, align 4
  %conv29 = zext i32 %18 to i64
  %pt_size = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 8
  %19 = ptrtoint ptr %pt_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pt_size, align 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name27, ptr noundef %16, i64 noundef %conv29, i32 noundef %20) #10
  br label %do.end33

do.end33:                                         ; preds = %do.end25, %do.body19.do.end33_crit_edge
  %name43 = getelementptr inbounds %struct.saa7164_dev, ptr %3, i32 0, i32 16
  %pt_cpu45 = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 9
  br label %do.body35

do.body35:                                        ; preds = %for.inc.do.body35_crit_edge, %do.end33
  %i.066 = phi i32 [ 0, %do.end33 ], [ %inc, %for.inc.do.body35_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %21 = load i32, ptr @saa_debug, align 4
  %and36 = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body35.for.inc_crit_edge, label %do.end41

do.body35.for.inc_crit_edge:                      ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end41:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %pt_cpu45 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pt_cpu45, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %23, align 8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name43, i32 noundef %i.066, ptr noundef %23, i64 noundef %25) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end41, %do.body35.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.do.body35_crit_edge

for.inc.do.body35_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body35

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @saa7164_buffer_alloc(ptr noundef %port, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  %2 = add i32 %len, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %2)
  %3 = icmp ult i32 %2, 65535
  %rem = and i32 %len, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %or.cond168 = and i1 %3, %tobool.not
  br i1 %or.cond168, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef nonnull @.str.13) #10
  br label %ret

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 56) #11
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end.ret_crit_edge, label %if.end10

if.end.ret_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret

if.end10:                                         ; preds = %if.end
  %idx = getelementptr inbounds %struct.saa7164_buffer, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %idx, align 8
  %port11 = getelementptr inbounds %struct.saa7164_buffer, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %port11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %port, ptr %port11, align 4
  %flags = getelementptr inbounds %struct.saa7164_buffer, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %flags, align 8
  %pos = getelementptr inbounds %struct.saa7164_buffer, ptr %call7.i.i, i32 0, i32 11
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pos, align 8
  %pitch = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pitch, align 4
  %numberoflines = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %numberoflines to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %numberoflines, align 4
  %mul = mul i32 %12, %10
  %actual_size = getelementptr inbounds %struct.saa7164_buffer, ptr %call7.i.i, i32 0, i32 12
  %13 = ptrtoint ptr %actual_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %actual_size, align 4
  %crc = getelementptr inbounds %struct.saa7164_buffer, ptr %call7.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %crc, align 8
  %pci_size = getelementptr inbounds %struct.saa7164_buffer, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %pci_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 65536, ptr %pci_size, align 4
  %pt_size = getelementptr inbounds %struct.saa7164_buffer, ptr %call7.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %pt_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4224, ptr %pt_size, align 4
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port, align 8
  %pci = getelementptr inbounds %struct.saa7164_dev, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %dma = getelementptr inbounds %struct.saa7164_buffer, ptr %call7.i.i, i32 0, i32 6
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev13, i32 noundef 65536, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #7
  %cpu = getelementptr inbounds %struct.saa7164_buffer, ptr %call7.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %cpu to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %cpu, align 8
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %if.end10.fail1_crit_edge, label %if.end19

if.end10.fail1_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail1

if.end19:                                         ; preds = %if.end10
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port, align 8
  %pci21 = getelementptr inbounds %struct.saa7164_dev, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %pci21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci21, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %pt_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pt_size, align 4
  %pt_dma = getelementptr inbounds %struct.saa7164_buffer, ptr %call7.i.i, i32 0, i32 10
  %call.i169 = tail call ptr @dma_alloc_attrs(ptr noundef %dev22, i32 noundef %27, ptr noundef %pt_dma, i32 noundef 3264, i32 noundef 0) #7
  %pt_cpu = getelementptr inbounds %struct.saa7164_buffer, ptr %call7.i.i, i32 0, i32 9
  %28 = ptrtoint ptr %pt_cpu to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i169, ptr %pt_cpu, align 8
  %tobool26.not = icmp eq ptr %call.i169, null
  br i1 %tobool26.not, label %fail2, label %if.end28

if.end28:                                         ; preds = %if.end19
  %29 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cpu, align 8
  %31 = ptrtoint ptr %pci_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pci_size, align 4
  %33 = call ptr @memset(ptr %30, i32 255, i32 %32)
  %34 = load ptr, ptr %cpu, align 8
  %35 = ptrtoint ptr %actual_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %actual_size, align 4
  %call33 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %34, i32 noundef %36) #12
  %37 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call33, ptr %crc, align 8
  %38 = ptrtoint ptr %pt_cpu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pt_cpu, align 8
  %40 = ptrtoint ptr %pt_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pt_size, align 4
  %42 = call ptr @memset(ptr %39, i32 255, i32 %41)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %43 = load i32, ptr @saa_debug, align 4
  %and = and i32 %43, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.end28.do.body50_crit_edge, label %do.end42

if.end28.do.body50_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50

do.end42:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %name44 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %numpagetables = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 7
  %44 = ptrtoint ptr %numpagetables to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %numpagetables, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name44, ptr noundef nonnull @.str.13, ptr noundef nonnull %call7.i.i, i32 noundef %45) #10
  br label %do.body50

do.body50:                                        ; preds = %do.end42, %if.end28.do.body50_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %46 = load i32, ptr @saa_debug, align 4
  %and51 = and i32 %46, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body50.do.body67_crit_edge, label %do.end56

do.body50.do.body67_crit_edge:                    ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body67

do.end56:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %name58 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %47 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cpu, align 8
  %49 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma, align 4
  %51 = ptrtoint ptr %pci_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pci_size, align 4
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name58, ptr noundef %48, i32 noundef %50, i32 noundef %52) #10
  br label %do.body67

do.body67:                                        ; preds = %do.end56, %do.body50.do.body67_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %53 = load i32, ptr @saa_debug, align 4
  %and68 = and i32 %53, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body67.do.end83_crit_edge, label %do.end73

do.body67.do.end83_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end83

do.end73:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  %name75 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %54 = ptrtoint ptr %pt_cpu to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pt_cpu, align 8
  %56 = ptrtoint ptr %pt_dma to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pt_dma, align 4
  %58 = ptrtoint ptr %pt_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pt_size, align 4
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name75, ptr noundef %55, i32 noundef %57, i32 noundef %59) #10
  br label %do.end83

do.end83:                                         ; preds = %do.end73, %do.body67.do.end83_crit_edge
  %numpagetables84 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 7
  %60 = ptrtoint ptr %numpagetables84 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %numpagetables84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp85170.not = icmp eq i32 %61, 0
  br i1 %cmp85170.not, label %do.end83.ret_crit_edge, label %for.body.lr.ph

do.end83.ret_crit_edge:                           ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret

for.body.lr.ph:                                   ; preds = %do.end83
  %name97 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0171 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %62 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma, align 4
  %mul87 = shl i32 %i.0171, 12
  %add = add i32 %63, %mul87
  %conv = zext i32 %add to i64
  %64 = ptrtoint ptr %pt_cpu to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pt_cpu, align 8
  %add.ptr = getelementptr i64, ptr %65, i32 %i.0171
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv, ptr %add.ptr, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %67 = load i32, ptr @saa_debug, align 4
  %and90 = and i32 %67, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %for.body.for.inc_crit_edge, label %do.end95

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end95:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %pt_cpu to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pt_cpu, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %69, align 8
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name97, i32 noundef %i.0171, ptr noundef %69, i64 noundef %71) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end95, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0171, 1
  %72 = ptrtoint ptr %numpagetables84 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %numpagetables84, align 4
  %cmp85 = icmp ult i32 %inc, %73
  br i1 %cmp85, label %for.inc.for.body_crit_edge, label %for.inc.ret_crit_edge

for.inc.ret_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

fail2:                                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %port, align 8
  %pci106 = getelementptr inbounds %struct.saa7164_dev, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %pci106 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pci106, align 4
  %dev107 = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %78 = ptrtoint ptr %pci_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pci_size, align 4
  %80 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cpu, align 8
  %82 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev107, i32 noundef %79, ptr noundef %81, i32 noundef %83, i32 noundef 0) #7
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end10.fail1_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %ret

ret:                                              ; preds = %fail1, %for.inc.ret_crit_edge, %do.end83.ret_crit_edge, %if.end.ret_crit_edge, %do.end
  %buf.0 = phi ptr [ null, %do.end ], [ null, %fail1 ], [ null, %if.end.ret_crit_edge ], [ %call7.i.i, %do.end83.ret_crit_edge ], [ %call7.i.i, %for.inc.ret_crit_edge ]
  ret ptr %buf.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_buffer_dealloc(ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %port = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 2
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %4 = load i32, ptr @saa_debug, align 4
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.do.end9_crit_edge, label %do.end

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %3, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name, ptr noundef nonnull @.str.26, ptr noundef nonnull %buf) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end, %if.end.do.end9_crit_edge
  %flags = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %do.end9.if.end21_crit_edge, label %do.end14

do.end9.if.end21_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end14:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %name16 = getelementptr inbounds %struct.saa7164_dev, ptr %3, i32 0, i32 16
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name16) #10
  br label %if.end21

if.end21:                                         ; preds = %do.end14, %do.end9.if.end21_crit_edge
  %pci = getelementptr inbounds %struct.saa7164_dev, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %pci_size = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 4
  %9 = ptrtoint ptr %pci_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pci_size, align 4
  %cpu = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 5
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpu, align 4
  %dma = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 6
  %13 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev22, i32 noundef %10, ptr noundef %12, i32 noundef %14, i32 noundef 0) #7
  %15 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci, align 4
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %pt_size = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 8
  %17 = ptrtoint ptr %pt_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pt_size, align 4
  %pt_cpu = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 9
  %19 = ptrtoint ptr %pt_cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pt_cpu, align 4
  %pt_dma = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 10
  %21 = ptrtoint ptr %pt_dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pt_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev24, i32 noundef %18, ptr noundef %20, i32 noundef %22, i32 noundef 0) #7
  tail call void @kfree(ptr noundef nonnull %buf) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ 9, %lor.lhs.false.cleanup_crit_edge ], [ 9, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_buffer_zero_offsets(ptr nocapture noundef readonly %port, i32 noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %cmp = icmp slt i32 %i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %buffercount = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 4, i32 11
  %2 = ptrtoint ptr %buffercount to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buffercount, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %i)
  %cmp2.not = icmp ugt i32 %conv, %i
  br i1 %cmp2.not, label %do.body, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %4 = load i32, ptr @saa_debug, align 4
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.body9_crit_edge, label %do.end

do.body.do.body9_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name, ptr noundef nonnull @.str.31, i32 noundef %i) #10
  br label %do.body9

do.body9:                                         ; preds = %do.end, %do.body.do.body9_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %lmmio = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %bufoffset = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 8
  %7 = ptrtoint ptr %bufoffset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bufoffset, align 8
  %9 = lshr i32 %8, 2
  %10 = add nuw i32 %9, %i
  %shr = and i32 %10, 1073741823
  %add.ptr = getelementptr i32, ptr %6, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !116
  br label %cleanup

cleanup:                                          ; preds = %do.body9, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body9 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_buffer_activate(ptr nocapture noundef %buf, i32 noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 2
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %cmp = icmp slt i32 %i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %buffercount = getelementptr inbounds %struct.saa7164_port, ptr %1, i32 0, i32 4, i32 11
  %4 = ptrtoint ptr %buffercount to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buffercount, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %i)
  %cmp3.not = icmp ugt i32 %conv, %i
  br i1 %cmp3.not, label %do.body, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %6 = load i32, ptr @saa_debug, align 4
  %and = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end9_crit_edge, label %do.end

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %3, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name, ptr noundef nonnull @.str.32, i32 noundef %i) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %idx = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %i, ptr %idx, align 4
  %flags = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %flags, align 4
  %pos = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 11
  %9 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %pos, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %lmmio = getelementptr inbounds %struct.saa7164_dev, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio, align 4
  %bufoffset = getelementptr inbounds %struct.saa7164_port, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %bufoffset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bufoffset, align 8
  %mul = shl i32 %i, 2
  %add = add i32 %13, %mul
  %shr = lshr i32 %add, 2
  %add.ptr = getelementptr i32, ptr %11, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %pt_dma = getelementptr inbounds %struct.saa7164_buffer, ptr %buf, i32 0, i32 10
  %14 = ptrtoint ptr %pt_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pt_dma, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %bufptr32h = getelementptr inbounds %struct.saa7164_port, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %bufptr32h to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bufptr32h, align 8
  %mul17 = shl i32 %i, 3
  %add18 = add i32 %20, %mul17
  %shr19 = lshr i32 %add18, 2
  %add.ptr20 = getelementptr i32, ptr %18, i32 %shr19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %16) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lmmio, align 4
  %bufptr32l = getelementptr inbounds %struct.saa7164_port, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %bufptr32l to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bufptr32l, align 4
  %add26 = add i32 %24, %mul17
  %shr27 = lshr i32 %add26, 2
  %add.ptr28 = getelementptr i32, ptr %22, i32 %shr27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 0) #7, !srcloc !116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %25 = load i32, ptr @saa_debug, align 4
  %and30 = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.end9.cleanup_crit_edge, label %do.end35

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end35:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %name37 = getelementptr inbounds %struct.saa7164_dev, ptr %3, i32 0, i32 16
  %26 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idx, align 4
  %28 = ptrtoint ptr %bufoffset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bufoffset, align 8
  %conv41 = zext i32 %29 to i64
  %conv43 = zext i32 %mul to i64
  %add44 = add nuw nsw i64 %conv41, %conv43
  %30 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio, align 4
  %add48 = add i32 %29, %mul
  %shr49 = lshr i32 %add48, 2
  %add.ptr50 = getelementptr i32, ptr %31, i32 %shr49
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #7, !srcloc !120
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %34 = ptrtoint ptr %bufptr32h to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bufptr32h, align 8
  %conv55 = zext i32 %35 to i64
  %conv57 = zext i32 %mul17 to i64
  %add58 = add nuw nsw i64 %conv55, %conv57
  %36 = ptrtoint ptr %bufptr32l to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bufptr32l, align 4
  %conv60 = zext i32 %37 to i64
  %add63 = add nuw nsw i64 %conv60, %conv57
  %38 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lmmio, align 4
  %add70 = add i32 %35, %mul17
  %shr71 = lshr i32 %add70, 2
  %add.ptr72 = getelementptr i32, ptr %39, i32 %shr71
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #7, !srcloc !120
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %42 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lmmio, align 4
  %44 = ptrtoint ptr %bufptr32l to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bufptr32l, align 4
  %add82 = add i32 %45, %mul17
  %shr83 = lshr i32 %add82, 2
  %add.ptr84 = getelementptr i32, ptr %43, i32 %shr83
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #7, !srcloc !120
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  %48 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %idx, align 4
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name37, i32 noundef %27, i64 noundef %add44, i32 noundef %33, i64 noundef %add58, i64 noundef %add63, i32 noundef %41, i32 noundef %47, i32 noundef %49) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %do.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end35 ], [ 0, %do.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_buffer_cfg_port(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %2 = load i32, ptr @saa_debug, align 4
  %and = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %do.end

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %nr = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 2
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name, ptr noundef nonnull @.str.37, i32 noundef %4) #10
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %lmmio = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %bufcounter = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 5
  %7 = ptrtoint ptr %bufcounter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bufcounter, align 4
  %shr = lshr i32 %8, 2
  %add.ptr = getelementptr i32, ptr %6, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @arm_heavy_mb() #7
  %pitch = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pitch, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio, align 4
  %pitch12 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 6
  %14 = ptrtoint ptr %pitch12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pitch12, align 8
  %shr13 = lshr i32 %15, 2
  %add.ptr14 = getelementptr i32, ptr %13, i32 %shr13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %11) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pitch, align 4
  %numberoflines = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %numberoflines to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %numberoflines, align 4
  %mul = mul i32 %19, %17
  %20 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %21 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lmmio, align 4
  %bufsize = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 7
  %23 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bufsize, align 4
  %shr20 = lshr i32 %24, 2
  %add.ptr21 = getelementptr i32, ptr %22, i32 %shr20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %20) #7, !srcloc !116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %25 = load i32, ptr @saa_debug, align 4
  %and23 = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body5.do.body36_crit_edge, label %do.end28

do.body5.do.body36_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body36

do.end28:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %name30 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name30) #10
  br label %do.body36

do.body36:                                        ; preds = %do.end28, %do.body5.do.body36_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %26 = load i32, ptr @saa_debug, align 4
  %and37 = and i32 %26, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body36.do.body51_crit_edge, label %do.end42

do.body36.do.body51_crit_edge:                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

do.end42:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  %name44 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %27 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lmmio, align 4
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name44, ptr noundef %28) #10
  br label %do.body51

do.body51:                                        ; preds = %do.end42, %do.body36.do.body51_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %29 = load i32, ptr @saa_debug, align 4
  %and52 = and i32 %29, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.body51.do.body73_crit_edge, label %do.end57

do.body51.do.body73_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body73

do.end57:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  %name59 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %30 = ptrtoint ptr %bufcounter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bufcounter, align 4
  %32 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lmmio, align 4
  %shr64 = lshr i32 %31, 2
  %add.ptr65 = getelementptr i32, ptr %33, i32 %shr64
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #7, !srcloc !120
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name59, i32 noundef %31, i32 noundef %35) #10
  br label %do.body73

do.body73:                                        ; preds = %do.end57, %do.body51.do.body73_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %36 = load i32, ptr @saa_debug, align 4
  %and74 = and i32 %36, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %do.body73.do.body97_crit_edge, label %do.end79

do.body73.do.body97_crit_edge:                    ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body97

do.end79:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  %name81 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %37 = ptrtoint ptr %pitch12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pitch12, align 8
  %39 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lmmio, align 4
  %shr88 = lshr i32 %38, 2
  %add.ptr89 = getelementptr i32, ptr %40, i32 %shr88
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #7, !srcloc !120
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name81, i32 noundef %38, i32 noundef %42) #10
  br label %do.body97

do.body97:                                        ; preds = %do.end79, %do.body73.do.body97_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %43 = load i32, ptr @saa_debug, align 4
  %and98 = and i32 %43, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %do.body97.do.body121_crit_edge, label %do.end103

do.body97.do.body121_crit_edge:                   ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body121

do.end103:                                        ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #9
  %name105 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %44 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bufsize, align 4
  %46 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lmmio, align 4
  %shr112 = lshr i32 %45, 2
  %add.ptr113 = getelementptr i32, ptr %47, i32 %shr112
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr113) #7, !srcloc !120
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name105, i32 noundef %45, i32 noundef %49) #10
  br label %do.body121

do.body121:                                       ; preds = %do.end103, %do.body97.do.body121_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %50 = load i32, ptr @saa_debug, align 4
  %and122 = and i32 %50, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %do.body121.do.body135_crit_edge, label %do.end127

do.body121.do.body135_crit_edge:                  ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body135

do.end127:                                        ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #9
  %name129 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %buffercount = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 4, i32 11
  %51 = ptrtoint ptr %buffercount to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %buffercount, align 1
  %conv = zext i8 %52 to i32
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name129, i32 noundef %conv) #10
  br label %do.body135

do.body135:                                       ; preds = %do.end127, %do.body121.do.body135_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %53 = load i32, ptr @saa_debug, align 4
  %and136 = and i32 %53, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %do.body135.do.body149_crit_edge, label %do.end141

do.body135.do.body149_crit_edge:                  ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body149

do.end141:                                        ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #9
  %name143 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %bufoffset = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 8
  %54 = ptrtoint ptr %bufoffset to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bufoffset, align 8
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name143, i32 noundef %55) #10
  br label %do.body149

do.body149:                                       ; preds = %do.end141, %do.body135.do.body149_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %56 = load i32, ptr @saa_debug, align 4
  %and150 = and i32 %56, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %do.body149.do.body163_crit_edge, label %do.end155

do.body149.do.body163_crit_edge:                  ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body163

do.end155:                                        ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #9
  %name157 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %bufptr32h = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 10
  %57 = ptrtoint ptr %bufptr32h to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bufptr32h, align 8
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %name157, i32 noundef %58) #10
  br label %do.body163

do.body163:                                       ; preds = %do.end155, %do.body149.do.body163_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %59 = load i32, ptr @saa_debug, align 4
  %and164 = and i32 %59, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %do.body163.do.end176_crit_edge, label %do.end169

do.body163.do.end176_crit_edge:                   ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end176

do.end169:                                        ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #9
  %name171 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %bufptr32l = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 9
  %60 = ptrtoint ptr %bufptr32l to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bufptr32l, align 4
  %call173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name171, i32 noundef %61) #10
  br label %do.end176

do.end176:                                        ; preds = %do.end169, %do.body163.do.end176_crit_edge
  %dmaqueue_lock = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %dmaqueue_lock, i32 noundef 0) #7
  %dmaqueue = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 14
  %62 = ptrtoint ptr %dmaqueue to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dmaqueue, align 8
  %cmp.i.not269 = icmp eq ptr %63, %dmaqueue
  br i1 %cmp.i.not269, label %do.end176.for.end_crit_edge, label %for.body.lr.ph

do.end176.for.end_crit_edge:                      ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end176
  %buffercount202 = getelementptr inbounds %struct.saa7164_port, ptr %port, i32 0, i32 4, i32 11
  br label %for.body

for.cond:                                         ; preds = %do.end198
  %inc = add nuw nsw i32 %i.0270, 1
  %cmp.i.not = icmp eq ptr %n.0272, %dmaqueue
  br i1 %cmp.i.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %c.0271 = phi ptr [ %63, %for.body.lr.ph ], [ %n.0272, %for.cond.for.body_crit_edge ]
  %i.0270 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.saa7164_buffer, ptr %c.0271, i32 0, i32 3
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp.not = icmp eq i32 %65, 1
  br i1 %cmp.not, label %do.end198, label %do.body190, !prof !130

do.body190:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7164/saa7164-buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 255, 0\0A.popsection", ""() #7, !srcloc !131
  unreachable

do.end198:                                        ; preds = %for.body
  %66 = ptrtoint ptr %c.0271 to i32
  call void @__asan_load4_noabort(i32 %66)
  %n.0272 = load ptr, ptr %c.0271, align 4
  %call199 = tail call i32 @saa7164_buffer_activate(ptr noundef %c.0271, i32 noundef %i.0270)
  %67 = ptrtoint ptr %buffercount202 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %buffercount202, align 1
  %conv203 = zext i8 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0270, i32 %conv203)
  %cmp204 = icmp ugt i32 %i.0270, %conv203
  br i1 %cmp204, label %do.body213, label %for.cond, !prof !132

do.body213:                                       ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7164/saa7164-buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #7, !srcloc !133
  unreachable

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %do.end176.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %dmaqueue_lock) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @saa7164_buffer_alloc_user(ptr noundef %dev, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len, i32 noundef 3520) #13
  %data = getelementptr inbounds %struct.saa7164_user_buffer, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9.i.i, ptr %data, align 8
  %tobool3.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end8.i.i
  %actual_size = getelementptr inbounds %struct.saa7164_user_buffer, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %actual_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %len, ptr %actual_size, align 8
  %pos = getelementptr inbounds %struct.saa7164_user_buffer, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pos, align 4
  %crc = getelementptr inbounds %struct.saa7164_user_buffer, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %crc, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %5 = load i32, ptr @saa_debug, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %do.end

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name, ptr noundef nonnull @.str.66, ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %do.end ], [ %call7.i.i, %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7164_buffer_dealloc_user(ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.saa7164_user_buffer, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %data, align 4
  tail call void @kfree(ptr noundef nonnull %buf) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 60, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @saa7164_buffer_display._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @saa7164_buffer_display._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 62, i32 2}
!8 = !{ptr @saa7164_buffer_display._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @saa7164_buffer_display._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 64, i32 2}
!12 = !{ptr @saa7164_buffer_display._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @saa7164_buffer_display._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 70, i32 3}
!16 = !{ptr @saa7164_buffer_display._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @saa7164_buffer_display._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 87, i32 3}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @saa7164_buffer_alloc._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @saa7164_buffer_alloc._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 121, i32 2}
!25 = !{ptr @saa7164_buffer_alloc._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @saa7164_buffer_alloc._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 123, i32 2}
!29 = !{ptr @saa7164_buffer_alloc._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @saa7164_buffer_alloc._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 125, i32 2}
!33 = !{ptr @saa7164_buffer_alloc._entry.20, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @saa7164_buffer_alloc._entry_ptr.22, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @saa7164_buffer_alloc._entry.23, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 132, i32 3}
!37 = !{ptr @saa7164_buffer_alloc._entry_ptr.24, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 158, i32 2}
!40 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @saa7164_buffer_dealloc._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @saa7164_buffer_dealloc._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 162, i32 3}
!45 = !{ptr @saa7164_buffer_dealloc._entry.27, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @saa7164_buffer_dealloc._entry_ptr.29, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 180, i32 2}
!49 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @saa7164_buffer_zero_offsets._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @saa7164_buffer_zero_offsets._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 196, i32 2}
!54 = !{ptr @saa7164_buffer_activate._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @saa7164_buffer_activate._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 207, i32 2}
!58 = !{ptr @saa7164_buffer_activate._entry.33, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @saa7164_buffer_activate._entry_ptr.35, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 228, i32 2}
!62 = !{ptr @.str.37, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @saa7164_buffer_cfg_port._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @saa7164_buffer_cfg_port._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.39, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 234, i32 2}
!67 = !{ptr @saa7164_buffer_cfg_port._entry.38, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @saa7164_buffer_cfg_port._entry_ptr.40, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 235, i32 2}
!71 = !{ptr @saa7164_buffer_cfg_port._entry.41, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @saa7164_buffer_cfg_port._entry_ptr.43, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.45, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 236, i32 2}
!75 = !{ptr @saa7164_buffer_cfg_port._entry.44, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @saa7164_buffer_cfg_port._entry_ptr.46, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.48, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 239, i32 2}
!79 = !{ptr @saa7164_buffer_cfg_port._entry.47, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @saa7164_buffer_cfg_port._entry_ptr.49, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.51, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 242, i32 2}
!83 = !{ptr @saa7164_buffer_cfg_port._entry.50, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @saa7164_buffer_cfg_port._entry_ptr.52, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.54, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 245, i32 2}
!87 = !{ptr @saa7164_buffer_cfg_port._entry.53, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @saa7164_buffer_cfg_port._entry_ptr.55, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.57, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 246, i32 2}
!91 = !{ptr @saa7164_buffer_cfg_port._entry.56, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @saa7164_buffer_cfg_port._entry_ptr.58, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.60, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 247, i32 2}
!95 = !{ptr @saa7164_buffer_cfg_port._entry.59, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @saa7164_buffer_cfg_port._entry_ptr.61, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.63, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 248, i32 2}
!99 = !{ptr @saa7164_buffer_cfg_port._entry.62, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @saa7164_buffer_cfg_port._entry_ptr.64, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.65, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/saa7164/saa7164-buffer.c", i32 290, i32 2}
!103 = !{ptr @.str.66, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @saa7164_buffer_alloc_user._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @saa7164_buffer_alloc_user._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i64 2158475974}
!116 = !{i64 5397284}
!117 = !{i64 2158478126}
!118 = !{i64 2158478720}
!119 = !{i64 2158479330}
!120 = !{i64 5397702}
!121 = !{i64 2158483193}
!122 = !{i64 2158483946}
!123 = !{i64 2158484699}
!124 = !{i64 2158486601}
!125 = !{i64 2158487120}
!126 = !{i64 2158487722}
!127 = !{i64 2158493646}
!128 = !{i64 2158496010}
!129 = !{i64 2158498396}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{i64 2158506871, i64 2158507378, i64 2158506908, i64 2158506964, i64 2158506998, i64 2158507022, i64 2158507063, i64 2158507084, i64 2158507112, i64 2158507146}
!132 = !{!"branch_weights", i32 1, i32 2000}
!133 = !{i64 2158508550, i64 2158509057, i64 2158508587, i64 2158508643, i64 2158508677, i64 2158508701, i64 2158508742, i64 2158508763, i64 2158508791, i64 2158508825}
