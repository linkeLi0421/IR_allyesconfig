; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7164/saa7164-cards.c_pt.bc'
source_filename = "../drivers/media/pci/saa7164/saa7164-cards.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.saa7164_board = type { ptr, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.saa7164_unit] }
%struct.saa7164_unit = type { i32, i8, ptr, i32, i8, i8 }
%struct.saa7164_subid = type { i16, i16, i32 }
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
%struct.tveeprom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [6 x i8] }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Generic Rev2\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Generic Rev3\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV-HVR2250\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"4K EEPROM\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TDA18271-1\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CX24228/S5H1411-1 (TOP)\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CX24228/S5H1411-1 (QAM)\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TDA18271-2\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CX24228/S5H1411-2 (TOP)\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CX24228/S5H1411-2 (QAM)\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV-HVR2200\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TDA10048-1\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TDA10048-2\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TDA8290-1\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TDA8290-2\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Hauppauge WinTV-HVR2255(proto)\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SI2157-1\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LGDT3306\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SI2157-2\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LGDT3306-2\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV-HVR2255\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LGDT3306-1\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV-HVR2205\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SI2168-1\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SI2168-2\00", [23 x i8] zeroinitializer }, align 32
@saa7164_boards = dso_local global { [14 x %struct.saa7164_board], [672 x i8] } { [14 x %struct.saa7164_board] [%struct.saa7164_board { ptr @.str, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [8 x %struct.saa7164_unit] zeroinitializer }, %struct.saa7164_board { ptr @.str.1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, [8 x %struct.saa7164_unit] zeroinitializer }, %struct.saa7164_board { ptr @.str.2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, [8 x %struct.saa7164_unit] zeroinitializer }, %struct.saa7164_board { ptr @.str.3, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 2, [8 x %struct.saa7164_unit] [%struct.saa7164_unit { i32 4, i8 34, ptr @.str.4, i32 0, i8 80, i8 1 }, %struct.saa7164_unit { i32 3, i8 4, ptr @.str.5, i32 1, i8 96, i8 1 }, %struct.saa7164_unit { i32 1, i8 7, ptr @.str.6, i32 1, i8 25, i8 1 }, %struct.saa7164_unit { i32 1, i8 8, ptr @.str.7, i32 1, i8 26, i8 1 }, %struct.saa7164_unit { i32 3, i8 30, ptr @.str.8, i32 2, i8 96, i8 1 }, %struct.saa7164_unit { i32 1, i8 32, ptr @.str.9, i32 2, i8 25, i8 1 }, %struct.saa7164_unit { i32 1, i8 35, ptr @.str.10, i32 2, i8 26, i8 1 }, %struct.saa7164_unit zeroinitializer] }, %struct.saa7164_board { ptr @.str.11, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 2, [8 x %struct.saa7164_unit] [%struct.saa7164_unit { i32 4, i8 29, ptr @.str.4, i32 0, i8 80, i8 1 }, %struct.saa7164_unit { i32 3, i8 4, ptr @.str.5, i32 1, i8 96, i8 1 }, %struct.saa7164_unit { i32 3, i8 27, ptr @.str.8, i32 2, i8 96, i8 1 }, %struct.saa7164_unit { i32 1, i8 30, ptr @.str.12, i32 1, i8 8, i8 1 }, %struct.saa7164_unit { i32 1, i8 31, ptr @.str.13, i32 2, i8 9, i8 1 }, %struct.saa7164_unit zeroinitializer, %struct.saa7164_unit zeroinitializer, %struct.saa7164_unit zeroinitializer] }, %struct.saa7164_board { ptr @.str.11, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 1, [8 x %struct.saa7164_unit] [%struct.saa7164_unit { i32 4, i8 6, ptr @.str.4, i32 0, i8 80, i8 1 }, %struct.saa7164_unit { i32 3, i8 4, ptr @.str.5, i32 1, i8 96, i8 1 }, %struct.saa7164_unit { i32 1, i8 5, ptr @.str.12, i32 1, i8 8, i8 1 }, %struct.saa7164_unit { i32 3, i8 30, ptr @.str.8, i32 2, i8 96, i8 1 }, %struct.saa7164_unit { i32 1, i8 31, ptr @.str.13, i32 2, i8 9, i8 1 }, %struct.saa7164_unit zeroinitializer, %struct.saa7164_unit zeroinitializer, %struct.saa7164_unit zeroinitializer] }, %struct.saa7164_board { ptr @.str.11, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 1, [8 x %struct.saa7164_unit] [%struct.saa7164_unit { i32 4, i8 29, ptr @.str.4, i32 0, i8 80, i8 1 }, %struct.saa7164_unit { i32 3, i8 4, ptr @.str.5, i32 1, i8 96, i8 1 }, %struct.saa7164_unit { i32 2, i8 5, ptr @.str.14, i32 1, i8 66, i8 1 }, %struct.saa7164_unit { i32 3, i8 27, ptr @.str.8, i32 2, i8 96, i8 1 }, %struct.saa7164_unit { i32 2, i8 28, ptr @.str.15, i32 2, i8 66, i8 1 }, %struct.saa7164_unit { i32 1, i8 30, ptr @.str.12, i32 1, i8 8, i8 1 }, %struct.saa7164_unit { i32 1, i8 31, ptr @.str.13, i32 2, i8 9, i8 1 }, %struct.saa7164_unit zeroinitializer] }, %struct.saa7164_board { ptr @.str.3, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 2, [8 x %struct.saa7164_unit] [%struct.saa7164_unit { i32 4, i8 40, ptr @.str.4, i32 0, i8 80, i8 1 }, %struct.saa7164_unit { i32 3, i8 4, ptr @.str.5, i32 1, i8 96, i8 1 }, %struct.saa7164_unit { i32 1, i8 7, ptr @.str.6, i32 1, i8 25, i8 1 }, %struct.saa7164_unit { i32 1, i8 8, ptr @.str.7, i32 1, i8 26, i8 1 }, %struct.saa7164_unit { i32 3, i8 36, ptr @.str.8, i32 2, i8 96, i8 1 }, %struct.saa7164_unit { i32 1, i8 38, ptr @.str.9, i32 2, i8 25, i8 1 }, %struct.saa7164_unit { i32 1, i8 41, ptr @.str.10, i32 2, i8 26, i8 1 }, %struct.saa7164_unit zeroinitializer] }, %struct.saa7164_board { ptr @.str.3, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 2, [8 x %struct.saa7164_unit] [%struct.saa7164_unit { i32 4, i8 38, ptr @.str.4, i32 0, i8 80, i8 1 }, %struct.saa7164_unit { i32 3, i8 4, ptr @.str.5, i32 1, i8 96, i8 1 }, %struct.saa7164_unit { i32 1, i8 7, ptr @.str.6, i32 1, i8 25, i8 1 }, %struct.saa7164_unit { i32 1, i8 8, ptr @.str.7, i32 1, i8 26, i8 1 }, %struct.saa7164_unit { i32 3, i8 34, ptr @.str.8, i32 2, i8 96, i8 1 }, %struct.saa7164_unit { i32 1, i8 36, ptr @.str.9, i32 2, i8 25, i8 1 }, %struct.saa7164_unit { i32 1, i8 39, ptr @.str.10, i32 2, i8 26, i8 1 }, %struct.saa7164_unit zeroinitializer] }, %struct.saa7164_board { ptr @.str.11, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 2, [8 x %struct.saa7164_unit] [%struct.saa7164_unit { i32 4, i8 29, ptr @.str.4, i32 0, i8 80, i8 1 }, %struct.saa7164_unit { i32 3, i8 4, ptr @.str.5, i32 1, i8 96, i8 1 }, %struct.saa7164_unit { i32 2, i8 5, ptr @.str.14, i32 1, i8 66, i8 1 }, %struct.saa7164_unit { i32 3, i8 27, ptr @.str.8, i32 2, i8 96, i8 1 }, %struct.saa7164_unit { i32 2, i8 28, ptr @.str.15, i32 2, i8 66, i8 1 }, %struct.saa7164_unit { i32 1, i8 30, ptr @.str.12, i32 1, i8 8, i8 1 }, %struct.saa7164_unit { i32 1, i8 31, ptr @.str.13, i32 2, i8 9, i8 1 }, %struct.saa7164_unit zeroinitializer] }, %struct.saa7164_board { ptr @.str.11, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2, [8 x %struct.saa7164_unit] [%struct.saa7164_unit { i32 4, i8 35, ptr @.str.4, i32 0, i8 80, i8 1 }, %struct.saa7164_unit { i32 3, i8 4, ptr @.str.5, i32 1, i8 96, i8 1 }, %struct.saa7164_unit { i32 2, i8 5, ptr @.str.14, i32 1, i8 66, i8 1 }, %struct.saa7164_unit { i32 3, i8 33, ptr @.str.8, i32 2, i8 96, i8 1 }, %struct.saa7164_unit { i32 2, i8 34, ptr @.str.15, i32 2, i8 66, i8 1 }, %struct.saa7164_unit { i32 1, i8 36, ptr @.str.12, i32 1, i8 8, i8 1 }, %struct.saa7164_unit { i32 1, i8 37, ptr @.str.13, i32 2, i8 9, i8 1 }, %struct.saa7164_unit zeroinitializer] }, %struct.saa7164_board { ptr @.str.16, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 2, [8 x %struct.saa7164_unit] [%struct.saa7164_unit { i32 4, i8 39, ptr @.str.4, i32 0, i8 80, i8 1 }, %struct.saa7164_unit { i32 3, i8 4, ptr @.str.17, i32 0, i8 96, i8 0 }, %struct.saa7164_unit { i32 1, i8 6, ptr @.str.18, i32 2, i8 89, i8 1 }, %struct.saa7164_unit { i32 3, i8 36, ptr @.str.19, i32 1, i8 96, i8 0 }, %struct.saa7164_unit { i32 1, i8 38, ptr @.str.20, i32 2, i8 14, i8 1 }, %struct.saa7164_unit zeroinitializer, %struct.saa7164_unit zeroinitializer, %struct.saa7164_unit zeroinitializer] }, %struct.saa7164_board { ptr @.str.21, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 2, [8 x %struct.saa7164_unit] [%struct.saa7164_unit { i32 4, i8 40, ptr @.str.4, i32 0, i8 80, i8 1 }, %struct.saa7164_unit { i32 3, i8 4, ptr @.str.17, i32 0, i8 96, i8 0 }, %struct.saa7164_unit { i32 1, i8 6, ptr @.str.22, i32 2, i8 89, i8 1 }, %struct.saa7164_unit { i32 3, i8 37, ptr @.str.19, i32 1, i8 96, i8 0 }, %struct.saa7164_unit { i32 1, i8 39, ptr @.str.20, i32 2, i8 14, i8 1 }, %struct.saa7164_unit zeroinitializer, %struct.saa7164_unit zeroinitializer, %struct.saa7164_unit zeroinitializer] }, %struct.saa7164_board { ptr @.str.23, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 2, [8 x %struct.saa7164_unit] [%struct.saa7164_unit { i32 4, i8 40, ptr @.str.4, i32 0, i8 80, i8 1 }, %struct.saa7164_unit { i32 3, i8 4, ptr @.str.17, i32 0, i8 96, i8 0 }, %struct.saa7164_unit { i32 1, i8 6, ptr @.str.24, i32 2, i8 100, i8 0 }, %struct.saa7164_unit { i32 3, i8 37, ptr @.str.19, i32 1, i8 96, i8 0 }, %struct.saa7164_unit { i32 1, i8 39, ptr @.str.25, i32 2, i8 102, i8 0 }, %struct.saa7164_unit zeroinitializer, %struct.saa7164_unit zeroinitializer, %struct.saa7164_unit zeroinitializer] }], [672 x i8] zeroinitializer }, align 32
@saa7164_bcount = dso_local constant { i32, [28 x i8] } { i32 14, [28 x i8] zeroinitializer }, align 32
@saa7164_subids = dso_local global { [13 x %struct.saa7164_subid], [56 x i8] } { [13 x %struct.saa7164_subid] [%struct.saa7164_subid { i16 112, i16 -30592, i32 3 }, %struct.saa7164_subid { i16 112, i16 -30704, i32 3 }, %struct.saa7164_subid { i16 112, i16 -30336, i32 4 }, %struct.saa7164_subid { i16 112, i16 -30464, i32 5 }, %struct.saa7164_subid { i16 112, i16 -30463, i32 6 }, %struct.saa7164_subid { i16 112, i16 -30559, i32 8 }, %struct.saa7164_subid { i16 112, i16 -30575, i32 7 }, %struct.saa7164_subid { i16 112, i16 -30639, i32 7 }, %struct.saa7164_subid { i16 112, i16 -30400, i32 9 }, %struct.saa7164_subid { i16 112, i16 -30381, i32 10 }, %struct.saa7164_subid { i16 112, i16 -3823, i32 12 }, %struct.saa7164_subid { i16 112, i16 -3805, i32 13 }, %struct.saa7164_subid { i16 112, i16 -3808, i32 13 }], [56 x i8] zeroinitializer }, align 32
@saa7164_idcount = dso_local constant { i32, [28 x i8] } { i32 13, [28 x i8] zeroinitializer }, align 32
@saa7164_card_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.28, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [210 x i8], [46 x i8] } { [210 x i8] c"\013%s: Board has no valid PCIe Subsystem ID and can't\0A%s: be autodetected. Pass card=<n> insmod option to\0A%s: workaround that. Send complaints to the vendor\0A%s: of the TV card. Best regards,\0A%s:         -- tux\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"saa7164_card_list\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/pci/saa7164/saa7164-cards.c\00", [54 x i8] zeroinitializer }, align 32
@saa7164_card_list._entry_ptr = internal global ptr @saa7164_card_list._entry, section ".printk_index", align 4
@saa7164_card_list._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.28, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [188 x i8], [36 x i8] } { [188 x i8] c"\013%s: Your board isn't known (yet) to the driver.\0A%s: Try to pick one of the existing card configs via\0A%s: card=<n> insmod option.  Updating to the latest\0A%s: version might help as well.\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7164_card_list._entry_ptr.31 = internal global ptr @saa7164_card_list._entry.29, section ".printk_index", align 4
@saa7164_card_list._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.27, ptr @.str.28, i32 716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s: Here are valid choices for the card=<n> insmod option:\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7164_card_list._entry_ptr.34 = internal global ptr @saa7164_card_list._entry.32, section ".printk_index", align 4
@saa7164_card_list._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.27, ptr @.str.28, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s:    card=%d -> %s\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7164_card_list._entry_ptr.37 = internal global ptr @saa7164_card_list._entry.35, section ".printk_index", align 4
@saa7164_card_setup.eeprom = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UNDEFINED\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BRIDGE\00", [25 x i8] zeroinitializer }, align 32
@hauppauge_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.28, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Warning: Unknown Hauppauge model #%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hauppauge_eeprom\00", [47 x i8] zeroinitializer }, align 32
@hauppauge_eeprom._entry_ptr = internal global ptr @hauppauge_eeprom._entry, section ".printk_index", align 4
@hauppauge_eeprom._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.28, i32 824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: Hauppauge eeprom: model=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@hauppauge_eeprom._entry_ptr.44 = internal global ptr @hauppauge_eeprom._entry.42, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 88001, i64 88021, i64 88041, i64 88061, i64 89519, i64 89609, i64 89619, i64 151009, i64 151061, i64 151609]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 27, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 32, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 38, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 254, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 265, i32 13 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 272, i32 13 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 279, i32 13 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 286, i32 13 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 293, i32 13 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 300, i32 13 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 307, i32 13 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 42, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 74, i32 13 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 81, i32 13 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 159, i32 13 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 173, i32 13 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 490, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 508, i32 13 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 515, i32 13 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 522, i32 13 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 529, i32 13 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 536, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 561, i32 13 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 582, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 607, i32 13 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 621, i32 13 }
@___asan_gen_.123 = private unnamed_addr constant [15 x i8] c"saa7164_boards\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 23, i32 22 }
@___asan_gen_.126 = private unnamed_addr constant [15 x i8] c"saa7164_bcount\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 628, i32 20 }
@___asan_gen_.129 = private unnamed_addr constant [15 x i8] c"saa7164_subids\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 633, i32 22 }
@___asan_gen_.132 = private unnamed_addr constant [16 x i8] c"saa7164_idcount\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 691, i32 20 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 699, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 707, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 715, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 719, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"eeprom\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 829, i32 12 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 923, i32 18 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 924, i32 17 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 818, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private constant [45 x i8] c"../drivers/media/pci/saa7164/saa7164-cards.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 823, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @hauppauge_eeprom._entry, ptr @hauppauge_eeprom._entry.42, ptr @hauppauge_eeprom._entry_ptr, ptr @hauppauge_eeprom._entry_ptr.44, ptr @saa7164_card_list._entry, ptr @saa7164_card_list._entry.29, ptr @saa7164_card_list._entry.32, ptr @saa7164_card_list._entry.35, ptr @saa7164_card_list._entry_ptr, ptr @saa7164_card_list._entry_ptr.31, ptr @saa7164_card_list._entry_ptr.34, ptr @saa7164_card_list._entry_ptr.37, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @saa7164_boards, ptr @saa7164_bcount, ptr @saa7164_subids, ptr @saa7164_idcount, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @saa7164_card_setup.eeprom, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_boards to i32), i32 2688, i32 3360, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_bcount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_subids to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_idcount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_card_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 210, i32 256, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_card_list._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_card_list._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_card_list._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_card_setup.eeprom to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_eeprom._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7164_card_list(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pci = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.do.end16_crit_edge

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16

land.lhs.true:                                    ; preds = %entry
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp4 = icmp eq i16 %5, 0
  br i1 %cmp4, label %do.end, label %land.lhs.true.do.end16_crit_edge

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name, ptr noundef %name, ptr noundef %name, ptr noundef %name, ptr noundef %name) #8
  br label %do.end29

do.end16:                                         ; preds = %land.lhs.true.do.end16_crit_edge, %entry.do.end16_crit_edge
  %name18 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name18, ptr noundef %name18, ptr noundef %name18, ptr noundef %name18) #8
  br label %do.end29

do.end29:                                         ; preds = %do.end16, %do.end
  %name31 = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name31) #8
  %6 = load ptr, ptr @saa7164_boards, align 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name31, i32 noundef 0, ptr noundef %6) #8
  %7 = load ptr, ptr getelementptr inbounds ([14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 1), align 4
  %call43.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name31, i32 noundef 1, ptr noundef %7) #8
  %8 = load ptr, ptr getelementptr inbounds ([14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 2), align 4
  %call43.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name31, i32 noundef 2, ptr noundef %8) #8
  %9 = load ptr, ptr getelementptr inbounds ([14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 3), align 4
  %call43.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name31, i32 noundef 3, ptr noundef %9) #8
  %10 = load ptr, ptr getelementptr inbounds ([14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 4), align 4
  %call43.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name31, i32 noundef 4, ptr noundef %10) #8
  %11 = load ptr, ptr getelementptr inbounds ([14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 5), align 4
  %call43.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name31, i32 noundef 5, ptr noundef %11) #8
  %12 = load ptr, ptr getelementptr inbounds ([14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 6), align 4
  %call43.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name31, i32 noundef 6, ptr noundef %12) #8
  %13 = load ptr, ptr getelementptr inbounds ([14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 7), align 4
  %call43.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name31, i32 noundef 7, ptr noundef %13) #8
  %14 = load ptr, ptr getelementptr inbounds ([14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 8), align 4
  %call43.8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name31, i32 noundef 8, ptr noundef %14) #8
  %15 = load ptr, ptr getelementptr inbounds ([14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 9), align 4
  %call43.9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name31, i32 noundef 9, ptr noundef %15) #8
  %16 = load ptr, ptr getelementptr inbounds ([14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 10), align 4
  %call43.10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name31, i32 noundef 10, ptr noundef %16) #8
  %17 = load ptr, ptr getelementptr inbounds ([14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 11), align 4
  %call43.11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name31, i32 noundef 11, ptr noundef %17) #8
  %18 = load ptr, ptr getelementptr inbounds ([14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 12), align 4
  %call43.12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name31, i32 noundef 12, ptr noundef %18) #8
  %19 = load ptr, ptr getelementptr inbounds ([14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 13), align 4
  %call43.13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name31, i32 noundef 13, ptr noundef %19) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7164_gpio_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %board = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %board, align 8
  %.off = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %.off)
  %switch = icmp ult i32 %.off, 11
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @saa7164_api_clear_gpiobit(ptr noundef %dev, i8 noundef zeroext 2, i8 noundef zeroext 2) #5
  %call1 = tail call i32 @saa7164_api_clear_gpiobit(ptr noundef %dev, i8 noundef zeroext 2, i8 noundef zeroext 3) #5
  tail call void @msleep(i32 noundef 20) #5
  %call2 = tail call i32 @saa7164_api_set_gpiobit(ptr noundef %dev, i8 noundef zeroext 2, i8 noundef zeroext 2) #5
  %call3 = tail call i32 @saa7164_api_set_gpiobit(ptr noundef %dev, i8 noundef zeroext 2, i8 noundef zeroext 3) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_clear_gpiobit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_set_gpiobit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7164_card_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %tv.i = alloca %struct.tveeprom, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_rc = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 28, i32 0, i32 4
  %0 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c_rc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @saa7164_api_read_eeprom(ptr noundef %dev, ptr noundef nonnull @saa7164_card_setup.eeprom, i32 noundef 256) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.sw.epilog_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %board = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board, align 8
  %.off = add i32 %3, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %.off)
  %switch = icmp ult i32 %.off, 11
  br i1 %switch, label %sw.bb, label %if.end3.sw.epilog_crit_edge

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tv.i) #5
  %4 = call ptr @memset(ptr %tv.i, i32 255, i32 68)
  call void @tveeprom_hauppauge_analog(ptr noundef nonnull %tv.i, ptr noundef nonnull @saa7164_card_setup.eeprom) #5
  %model.i = getelementptr inbounds %struct.tveeprom, ptr %tv.i, i32 0, i32 11
  %5 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %model.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.end.i [
    i32 88001, label %sw.bb.hauppauge_eeprom.exit_crit_edge
    i32 88021, label %sw.bb.hauppauge_eeprom.exit_crit_edge7
    i32 88041, label %sw.bb.hauppauge_eeprom.exit_crit_edge8
    i32 88061, label %sw.bb.hauppauge_eeprom.exit_crit_edge9
    i32 89519, label %sw.bb.hauppauge_eeprom.exit_crit_edge10
    i32 89609, label %sw.bb.hauppauge_eeprom.exit_crit_edge11
    i32 89619, label %sw.bb.hauppauge_eeprom.exit_crit_edge12
    i32 151009, label %sw.bb.hauppauge_eeprom.exit_crit_edge13
    i32 151609, label %sw.bb.hauppauge_eeprom.exit_crit_edge14
    i32 151061, label %sw.bb.hauppauge_eeprom.exit_crit_edge15
  ]

sw.bb.hauppauge_eeprom.exit_crit_edge15:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %hauppauge_eeprom.exit

sw.bb.hauppauge_eeprom.exit_crit_edge14:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %hauppauge_eeprom.exit

sw.bb.hauppauge_eeprom.exit_crit_edge13:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %hauppauge_eeprom.exit

sw.bb.hauppauge_eeprom.exit_crit_edge12:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %hauppauge_eeprom.exit

sw.bb.hauppauge_eeprom.exit_crit_edge11:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %hauppauge_eeprom.exit

sw.bb.hauppauge_eeprom.exit_crit_edge10:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %hauppauge_eeprom.exit

sw.bb.hauppauge_eeprom.exit_crit_edge9:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %hauppauge_eeprom.exit

sw.bb.hauppauge_eeprom.exit_crit_edge8:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %hauppauge_eeprom.exit

sw.bb.hauppauge_eeprom.exit_crit_edge7:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %hauppauge_eeprom.exit

sw.bb.hauppauge_eeprom.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %hauppauge_eeprom.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name.i, i32 noundef %6) #8
  br label %hauppauge_eeprom.exit

hauppauge_eeprom.exit:                            ; preds = %do.end.i, %sw.bb.hauppauge_eeprom.exit_crit_edge, %sw.bb.hauppauge_eeprom.exit_crit_edge7, %sw.bb.hauppauge_eeprom.exit_crit_edge8, %sw.bb.hauppauge_eeprom.exit_crit_edge9, %sw.bb.hauppauge_eeprom.exit_crit_edge10, %sw.bb.hauppauge_eeprom.exit_crit_edge11, %sw.bb.hauppauge_eeprom.exit_crit_edge12, %sw.bb.hauppauge_eeprom.exit_crit_edge13, %sw.bb.hauppauge_eeprom.exit_crit_edge14, %sw.bb.hauppauge_eeprom.exit_crit_edge15
  %name7.i = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 16
  %8 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %model.i, align 4
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name7.i, i32 noundef %9) #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tv.i) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %hauppauge_eeprom.exit, %if.end3.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_read_eeprom(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_i2caddr_to_unitid(ptr nocapture noundef readonly %bus, i32 noundef %addr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %board = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board, align 8
  %nr = getelementptr inbounds %struct.saa7164_i2c, ptr %bus, i32 0, i32 1
  %arrayidx3 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 0
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %i2c_bus_nr = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 0, i32 3
  %8 = ptrtoint ptr %i2c_bus_nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2c_bus_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5 = icmp eq i32 %7, %9
  br i1 %cmp5, label %land.lhs.true, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %i2c_bus_addr = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 0, i32 4
  %10 = ptrtoint ptr %i2c_bus_addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i2c_bus_addr, align 4
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %addr)
  %cmp6 = icmp eq i32 %conv, %addr
  br i1 %cmp6, label %land.lhs.true.if.then8_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true.if.then8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.then8:                                         ; preds = %land.lhs.true.7.if.then8_crit_edge, %land.lhs.true.6.if.then8_crit_edge, %land.lhs.true.5.if.then8_crit_edge, %land.lhs.true.4.if.then8_crit_edge, %land.lhs.true.3.if.then8_crit_edge, %land.lhs.true.2.if.then8_crit_edge, %land.lhs.true.1.if.then8_crit_edge, %land.lhs.true.if.then8_crit_edge
  %i.020.lcssa = phi i32 [ 0, %land.lhs.true.if.then8_crit_edge ], [ 1, %land.lhs.true.1.if.then8_crit_edge ], [ 2, %land.lhs.true.2.if.then8_crit_edge ], [ 3, %land.lhs.true.3.if.then8_crit_edge ], [ 4, %land.lhs.true.4.if.then8_crit_edge ], [ 5, %land.lhs.true.5.if.then8_crit_edge ], [ 6, %land.lhs.true.6.if.then8_crit_edge ], [ 7, %land.lhs.true.7.if.then8_crit_edge ]
  %id = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 %i.020.lcssa, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id, align 4
  %conv9 = zext i8 %13 to i32
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx3.1 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 1
  %14 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp4.1 = icmp eq i32 %15, 0
  br i1 %cmp4.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %16 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr, align 4
  %i2c_bus_nr.1 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 1, i32 3
  %18 = ptrtoint ptr %i2c_bus_nr.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i2c_bus_nr.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp5.1 = icmp eq i32 %17, %19
  br i1 %cmp5.1, label %land.lhs.true.1, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %if.end.1
  %i2c_bus_addr.1 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 1, i32 4
  %20 = ptrtoint ptr %i2c_bus_addr.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %i2c_bus_addr.1, align 4
  %conv.1 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.1, i32 %addr)
  %cmp6.1 = icmp eq i32 %conv.1, %addr
  br i1 %cmp6.1, label %land.lhs.true.1.if.then8_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.1.if.then8_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx3.2 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 2
  %22 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx3.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp4.2 = icmp eq i32 %23, 0
  br i1 %cmp4.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %24 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr, align 4
  %i2c_bus_nr.2 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 2, i32 3
  %26 = ptrtoint ptr %i2c_bus_nr.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i2c_bus_nr.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp5.2 = icmp eq i32 %25, %27
  br i1 %cmp5.2, label %land.lhs.true.2, label %if.end.2.for.inc.2_crit_edge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %if.end.2
  %i2c_bus_addr.2 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 2, i32 4
  %28 = ptrtoint ptr %i2c_bus_addr.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %i2c_bus_addr.2, align 4
  %conv.2 = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.2, i32 %addr)
  %cmp6.2 = icmp eq i32 %conv.2, %addr
  br i1 %cmp6.2, label %land.lhs.true.2.if.then8_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true.2.if.then8_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx3.3 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 3
  %30 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx3.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp4.3 = icmp eq i32 %31, 0
  br i1 %cmp4.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %32 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr, align 4
  %i2c_bus_nr.3 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 3, i32 3
  %34 = ptrtoint ptr %i2c_bus_nr.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i2c_bus_nr.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp5.3 = icmp eq i32 %33, %35
  br i1 %cmp5.3, label %land.lhs.true.3, label %if.end.3.for.inc.3_crit_edge

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %if.end.3
  %i2c_bus_addr.3 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 3, i32 4
  %36 = ptrtoint ptr %i2c_bus_addr.3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %i2c_bus_addr.3, align 4
  %conv.3 = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.3, i32 %addr)
  %cmp6.3 = icmp eq i32 %conv.3, %addr
  br i1 %cmp6.3, label %land.lhs.true.3.if.then8_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true.3.if.then8_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx3.4 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 4
  %38 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx3.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp4.4 = icmp eq i32 %39, 0
  br i1 %cmp4.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  %40 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr, align 4
  %i2c_bus_nr.4 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 4, i32 3
  %42 = ptrtoint ptr %i2c_bus_nr.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i2c_bus_nr.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp5.4 = icmp eq i32 %41, %43
  br i1 %cmp5.4, label %land.lhs.true.4, label %if.end.4.for.inc.4_crit_edge

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %if.end.4
  %i2c_bus_addr.4 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 4, i32 4
  %44 = ptrtoint ptr %i2c_bus_addr.4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %i2c_bus_addr.4, align 4
  %conv.4 = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.4, i32 %addr)
  %cmp6.4 = icmp eq i32 %conv.4, %addr
  br i1 %cmp6.4, label %land.lhs.true.4.if.then8_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true.4.if.then8_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %if.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx3.5 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 5
  %46 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx3.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp4.5 = icmp eq i32 %47, 0
  br i1 %cmp4.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  %48 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr, align 4
  %i2c_bus_nr.5 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 5, i32 3
  %50 = ptrtoint ptr %i2c_bus_nr.5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %i2c_bus_nr.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp5.5 = icmp eq i32 %49, %51
  br i1 %cmp5.5, label %land.lhs.true.5, label %if.end.5.for.inc.5_crit_edge

if.end.5.for.inc.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %if.end.5
  %i2c_bus_addr.5 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 5, i32 4
  %52 = ptrtoint ptr %i2c_bus_addr.5 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %i2c_bus_addr.5, align 4
  %conv.5 = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.5, i32 %addr)
  %cmp6.5 = icmp eq i32 %conv.5, %addr
  br i1 %cmp6.5, label %land.lhs.true.5.if.then8_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

land.lhs.true.5.if.then8_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %if.end.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %arrayidx3.6 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 6
  %54 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx3.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp4.6 = icmp eq i32 %55, 0
  br i1 %cmp4.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  %56 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nr, align 4
  %i2c_bus_nr.6 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 6, i32 3
  %58 = ptrtoint ptr %i2c_bus_nr.6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i2c_bus_nr.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp5.6 = icmp eq i32 %57, %59
  br i1 %cmp5.6, label %land.lhs.true.6, label %if.end.6.for.inc.6_crit_edge

if.end.6.for.inc.6_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %if.end.6
  %i2c_bus_addr.6 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 6, i32 4
  %60 = ptrtoint ptr %i2c_bus_addr.6 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %i2c_bus_addr.6, align 4
  %conv.6 = zext i8 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.6, i32 %addr)
  %cmp6.6 = icmp eq i32 %conv.6, %addr
  br i1 %cmp6.6, label %land.lhs.true.6.if.then8_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

land.lhs.true.6.if.then8_crit_edge:               ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %if.end.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %arrayidx3.7 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 7
  %62 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx3.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp4.7 = icmp eq i32 %63, 0
  br i1 %cmp4.7, label %for.inc.6.cleanup_crit_edge, label %if.end.7

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7:                                         ; preds = %for.inc.6
  %64 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nr, align 4
  %i2c_bus_nr.7 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 7, i32 3
  %66 = ptrtoint ptr %i2c_bus_nr.7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %i2c_bus_nr.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp5.7 = icmp eq i32 %65, %67
  br i1 %cmp5.7, label %land.lhs.true.7, label %if.end.7.cleanup_crit_edge

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.7:                                  ; preds = %if.end.7
  %i2c_bus_addr.7 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 7, i32 4
  %68 = ptrtoint ptr %i2c_bus_addr.7 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %i2c_bus_addr.7, align 4
  %conv.7 = zext i8 %69 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.7, i32 %addr)
  %cmp6.7 = icmp eq i32 %conv.7, %addr
  br i1 %cmp6.7, label %land.lhs.true.7.if.then8_crit_edge, label %land.lhs.true.7.cleanup_crit_edge

land.lhs.true.7.cleanup_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.7.if.then8_crit_edge:               ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

cleanup:                                          ; preds = %land.lhs.true.7.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge, %if.then8
  %retval.0 = phi i32 [ %conv9, %if.then8 ], [ -1, %land.lhs.true.7.cleanup_crit_edge ], [ -1, %if.end.7.cleanup_crit_edge ], [ -1, %for.inc.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_i2caddr_to_reglen(ptr nocapture noundef readonly %bus, i32 noundef %addr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %board = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board, align 8
  %nr = getelementptr inbounds %struct.saa7164_i2c, ptr %bus, i32 0, i32 1
  %arrayidx3 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 0
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %i2c_bus_nr = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 0, i32 3
  %8 = ptrtoint ptr %i2c_bus_nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2c_bus_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5 = icmp eq i32 %7, %9
  br i1 %cmp5, label %land.lhs.true, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %i2c_bus_addr = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 0, i32 4
  %10 = ptrtoint ptr %i2c_bus_addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i2c_bus_addr, align 4
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %addr)
  %cmp6 = icmp eq i32 %conv, %addr
  br i1 %cmp6, label %land.lhs.true.if.then8_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true.if.then8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.then8:                                         ; preds = %land.lhs.true.7.if.then8_crit_edge, %land.lhs.true.6.if.then8_crit_edge, %land.lhs.true.5.if.then8_crit_edge, %land.lhs.true.4.if.then8_crit_edge, %land.lhs.true.3.if.then8_crit_edge, %land.lhs.true.2.if.then8_crit_edge, %land.lhs.true.1.if.then8_crit_edge, %land.lhs.true.if.then8_crit_edge
  %i.020.lcssa = phi i32 [ 0, %land.lhs.true.if.then8_crit_edge ], [ 1, %land.lhs.true.1.if.then8_crit_edge ], [ 2, %land.lhs.true.2.if.then8_crit_edge ], [ 3, %land.lhs.true.3.if.then8_crit_edge ], [ 4, %land.lhs.true.4.if.then8_crit_edge ], [ 5, %land.lhs.true.5.if.then8_crit_edge ], [ 6, %land.lhs.true.6.if.then8_crit_edge ], [ 7, %land.lhs.true.7.if.then8_crit_edge ]
  %i2c_reg_len = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 %i.020.lcssa, i32 5
  %12 = ptrtoint ptr %i2c_reg_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %i2c_reg_len, align 1
  %conv9 = zext i8 %13 to i32
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx3.1 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 1
  %14 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp4.1 = icmp eq i32 %15, 0
  br i1 %cmp4.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %16 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr, align 4
  %i2c_bus_nr.1 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 1, i32 3
  %18 = ptrtoint ptr %i2c_bus_nr.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i2c_bus_nr.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp5.1 = icmp eq i32 %17, %19
  br i1 %cmp5.1, label %land.lhs.true.1, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %if.end.1
  %i2c_bus_addr.1 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 1, i32 4
  %20 = ptrtoint ptr %i2c_bus_addr.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %i2c_bus_addr.1, align 4
  %conv.1 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.1, i32 %addr)
  %cmp6.1 = icmp eq i32 %conv.1, %addr
  br i1 %cmp6.1, label %land.lhs.true.1.if.then8_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.1.if.then8_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx3.2 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 2
  %22 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx3.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp4.2 = icmp eq i32 %23, 0
  br i1 %cmp4.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %24 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr, align 4
  %i2c_bus_nr.2 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 2, i32 3
  %26 = ptrtoint ptr %i2c_bus_nr.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i2c_bus_nr.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp5.2 = icmp eq i32 %25, %27
  br i1 %cmp5.2, label %land.lhs.true.2, label %if.end.2.for.inc.2_crit_edge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %if.end.2
  %i2c_bus_addr.2 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 2, i32 4
  %28 = ptrtoint ptr %i2c_bus_addr.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %i2c_bus_addr.2, align 4
  %conv.2 = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.2, i32 %addr)
  %cmp6.2 = icmp eq i32 %conv.2, %addr
  br i1 %cmp6.2, label %land.lhs.true.2.if.then8_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true.2.if.then8_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx3.3 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 3
  %30 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx3.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp4.3 = icmp eq i32 %31, 0
  br i1 %cmp4.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %32 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr, align 4
  %i2c_bus_nr.3 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 3, i32 3
  %34 = ptrtoint ptr %i2c_bus_nr.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i2c_bus_nr.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp5.3 = icmp eq i32 %33, %35
  br i1 %cmp5.3, label %land.lhs.true.3, label %if.end.3.for.inc.3_crit_edge

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %if.end.3
  %i2c_bus_addr.3 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 3, i32 4
  %36 = ptrtoint ptr %i2c_bus_addr.3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %i2c_bus_addr.3, align 4
  %conv.3 = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.3, i32 %addr)
  %cmp6.3 = icmp eq i32 %conv.3, %addr
  br i1 %cmp6.3, label %land.lhs.true.3.if.then8_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true.3.if.then8_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx3.4 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 4
  %38 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx3.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp4.4 = icmp eq i32 %39, 0
  br i1 %cmp4.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  %40 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr, align 4
  %i2c_bus_nr.4 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 4, i32 3
  %42 = ptrtoint ptr %i2c_bus_nr.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i2c_bus_nr.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp5.4 = icmp eq i32 %41, %43
  br i1 %cmp5.4, label %land.lhs.true.4, label %if.end.4.for.inc.4_crit_edge

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %if.end.4
  %i2c_bus_addr.4 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 4, i32 4
  %44 = ptrtoint ptr %i2c_bus_addr.4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %i2c_bus_addr.4, align 4
  %conv.4 = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.4, i32 %addr)
  %cmp6.4 = icmp eq i32 %conv.4, %addr
  br i1 %cmp6.4, label %land.lhs.true.4.if.then8_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true.4.if.then8_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %if.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx3.5 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 5
  %46 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx3.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp4.5 = icmp eq i32 %47, 0
  br i1 %cmp4.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  %48 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr, align 4
  %i2c_bus_nr.5 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 5, i32 3
  %50 = ptrtoint ptr %i2c_bus_nr.5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %i2c_bus_nr.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp5.5 = icmp eq i32 %49, %51
  br i1 %cmp5.5, label %land.lhs.true.5, label %if.end.5.for.inc.5_crit_edge

if.end.5.for.inc.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %if.end.5
  %i2c_bus_addr.5 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 5, i32 4
  %52 = ptrtoint ptr %i2c_bus_addr.5 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %i2c_bus_addr.5, align 4
  %conv.5 = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.5, i32 %addr)
  %cmp6.5 = icmp eq i32 %conv.5, %addr
  br i1 %cmp6.5, label %land.lhs.true.5.if.then8_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

land.lhs.true.5.if.then8_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %if.end.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %arrayidx3.6 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 6
  %54 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx3.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp4.6 = icmp eq i32 %55, 0
  br i1 %cmp4.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  %56 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nr, align 4
  %i2c_bus_nr.6 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 6, i32 3
  %58 = ptrtoint ptr %i2c_bus_nr.6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i2c_bus_nr.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp5.6 = icmp eq i32 %57, %59
  br i1 %cmp5.6, label %land.lhs.true.6, label %if.end.6.for.inc.6_crit_edge

if.end.6.for.inc.6_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %if.end.6
  %i2c_bus_addr.6 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 6, i32 4
  %60 = ptrtoint ptr %i2c_bus_addr.6 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %i2c_bus_addr.6, align 4
  %conv.6 = zext i8 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.6, i32 %addr)
  %cmp6.6 = icmp eq i32 %conv.6, %addr
  br i1 %cmp6.6, label %land.lhs.true.6.if.then8_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

land.lhs.true.6.if.then8_crit_edge:               ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %if.end.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %arrayidx3.7 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 7
  %62 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx3.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp4.7 = icmp eq i32 %63, 0
  br i1 %cmp4.7, label %for.inc.6.cleanup_crit_edge, label %if.end.7

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7:                                         ; preds = %for.inc.6
  %64 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nr, align 4
  %i2c_bus_nr.7 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 7, i32 3
  %66 = ptrtoint ptr %i2c_bus_nr.7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %i2c_bus_nr.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp5.7 = icmp eq i32 %65, %67
  br i1 %cmp5.7, label %land.lhs.true.7, label %if.end.7.cleanup_crit_edge

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.7:                                  ; preds = %if.end.7
  %i2c_bus_addr.7 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %3, i32 8, i32 7, i32 4
  %68 = ptrtoint ptr %i2c_bus_addr.7 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %i2c_bus_addr.7, align 4
  %conv.7 = zext i8 %69 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.7, i32 %addr)
  %cmp6.7 = icmp eq i32 %conv.7, %addr
  br i1 %cmp6.7, label %land.lhs.true.7.if.then8_crit_edge, label %land.lhs.true.7.cleanup_crit_edge

land.lhs.true.7.cleanup_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.7.if.then8_crit_edge:               ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

cleanup:                                          ; preds = %land.lhs.true.7.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge, %if.then8
  %retval.0 = phi i32 [ %conv9, %if.then8 ], [ -1, %land.lhs.true.7.cleanup_crit_edge ], [ -1, %if.end.7.cleanup_crit_edge ], [ -1, %for.inc.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @saa7164_unitid_name(ptr nocapture noundef readonly %dev, i8 noundef zeroext %unitid) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %unitid)
  %cmp = icmp eq i8 %unitid, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %board = getelementptr inbounds %struct.saa7164_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %board, align 8
  %arrayidx5 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %1, i32 8, i32 0
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6 = icmp eq i32 %3, 0
  br i1 %cmp6, label %for.cond.preheader.for.inc_crit_edge, label %if.end9

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end9:                                          ; preds = %for.cond.preheader
  %id = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %1, i32 8, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %unitid)
  %cmp12 = icmp eq i8 %5, %unitid
  br i1 %cmp12, label %if.end9.if.then14_crit_edge, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end9.if.then14_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

if.then14:                                        ; preds = %if.end9.7.if.then14_crit_edge, %if.end9.6.if.then14_crit_edge, %if.end9.5.if.then14_crit_edge, %if.end9.4.if.then14_crit_edge, %if.end9.3.if.then14_crit_edge, %if.end9.2.if.then14_crit_edge, %if.end9.1.if.then14_crit_edge, %if.end9.if.then14_crit_edge
  %i.025.lcssa = phi i32 [ 0, %if.end9.if.then14_crit_edge ], [ 1, %if.end9.1.if.then14_crit_edge ], [ 2, %if.end9.2.if.then14_crit_edge ], [ 3, %if.end9.3.if.then14_crit_edge ], [ 4, %if.end9.4.if.then14_crit_edge ], [ 5, %if.end9.5.if.then14_crit_edge ], [ 6, %if.end9.6.if.then14_crit_edge ], [ 7, %if.end9.7.if.then14_crit_edge ]
  %name = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %1, i32 8, i32 %i.025.lcssa, i32 2
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end9.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %arrayidx5.1 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %1, i32 8, i32 1
  %8 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6.1 = icmp eq i32 %9, 0
  br i1 %cmp6.1, label %for.inc.for.inc.1_crit_edge, label %if.end9.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end9.1:                                        ; preds = %for.inc
  %id.1 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %1, i32 8, i32 1, i32 1
  %10 = ptrtoint ptr %id.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %id.1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %unitid)
  %cmp12.1 = icmp eq i8 %11, %unitid
  br i1 %cmp12.1, label %if.end9.1.if.then14_crit_edge, label %if.end9.1.for.inc.1_crit_edge

if.end9.1.for.inc.1_crit_edge:                    ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end9.1.if.then14_crit_edge:                    ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

for.inc.1:                                        ; preds = %if.end9.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx5.2 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %1, i32 8, i32 2
  %12 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp6.2 = icmp eq i32 %13, 0
  br i1 %cmp6.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end9.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end9.2:                                        ; preds = %for.inc.1
  %id.2 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %1, i32 8, i32 2, i32 1
  %14 = ptrtoint ptr %id.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %id.2, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %unitid)
  %cmp12.2 = icmp eq i8 %15, %unitid
  br i1 %cmp12.2, label %if.end9.2.if.then14_crit_edge, label %if.end9.2.for.inc.2_crit_edge

if.end9.2.for.inc.2_crit_edge:                    ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end9.2.if.then14_crit_edge:                    ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

for.inc.2:                                        ; preds = %if.end9.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx5.3 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %1, i32 8, i32 3
  %16 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx5.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp6.3 = icmp eq i32 %17, 0
  br i1 %cmp6.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end9.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.end9.3:                                        ; preds = %for.inc.2
  %id.3 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %1, i32 8, i32 3, i32 1
  %18 = ptrtoint ptr %id.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %id.3, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %unitid)
  %cmp12.3 = icmp eq i8 %19, %unitid
  br i1 %cmp12.3, label %if.end9.3.if.then14_crit_edge, label %if.end9.3.for.inc.3_crit_edge

if.end9.3.for.inc.3_crit_edge:                    ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.end9.3.if.then14_crit_edge:                    ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

for.inc.3:                                        ; preds = %if.end9.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx5.4 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %1, i32 8, i32 4
  %20 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx5.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp6.4 = icmp eq i32 %21, 0
  br i1 %cmp6.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end9.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.end9.4:                                        ; preds = %for.inc.3
  %id.4 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %1, i32 8, i32 4, i32 1
  %22 = ptrtoint ptr %id.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %id.4, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %unitid)
  %cmp12.4 = icmp eq i8 %23, %unitid
  br i1 %cmp12.4, label %if.end9.4.if.then14_crit_edge, label %if.end9.4.for.inc.4_crit_edge

if.end9.4.for.inc.4_crit_edge:                    ; preds = %if.end9.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.end9.4.if.then14_crit_edge:                    ; preds = %if.end9.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

for.inc.4:                                        ; preds = %if.end9.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx5.5 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %1, i32 8, i32 5
  %24 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx5.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp6.5 = icmp eq i32 %25, 0
  br i1 %cmp6.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end9.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

if.end9.5:                                        ; preds = %for.inc.4
  %id.5 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %1, i32 8, i32 5, i32 1
  %26 = ptrtoint ptr %id.5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %id.5, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %unitid)
  %cmp12.5 = icmp eq i8 %27, %unitid
  br i1 %cmp12.5, label %if.end9.5.if.then14_crit_edge, label %if.end9.5.for.inc.5_crit_edge

if.end9.5.for.inc.5_crit_edge:                    ; preds = %if.end9.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

if.end9.5.if.then14_crit_edge:                    ; preds = %if.end9.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

for.inc.5:                                        ; preds = %if.end9.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %arrayidx5.6 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %1, i32 8, i32 6
  %28 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx5.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp6.6 = icmp eq i32 %29, 0
  br i1 %cmp6.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end9.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

if.end9.6:                                        ; preds = %for.inc.5
  %id.6 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %1, i32 8, i32 6, i32 1
  %30 = ptrtoint ptr %id.6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %id.6, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %unitid)
  %cmp12.6 = icmp eq i8 %31, %unitid
  br i1 %cmp12.6, label %if.end9.6.if.then14_crit_edge, label %if.end9.6.for.inc.6_crit_edge

if.end9.6.for.inc.6_crit_edge:                    ; preds = %if.end9.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

if.end9.6.if.then14_crit_edge:                    ; preds = %if.end9.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

for.inc.6:                                        ; preds = %if.end9.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %arrayidx5.7 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %1, i32 8, i32 7
  %32 = ptrtoint ptr %arrayidx5.7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx5.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp6.7 = icmp eq i32 %33, 0
  br i1 %cmp6.7, label %for.inc.6.cleanup_crit_edge, label %if.end9.7

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.7:                                        ; preds = %for.inc.6
  %id.7 = getelementptr [14 x %struct.saa7164_board], ptr @saa7164_boards, i32 0, i32 %1, i32 8, i32 7, i32 1
  %34 = ptrtoint ptr %id.7 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %id.7, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %unitid)
  %cmp12.7 = icmp eq i8 %35, %unitid
  br i1 %cmp12.7, label %if.end9.7.if.then14_crit_edge, label %if.end9.7.cleanup_crit_edge

if.end9.7.cleanup_crit_edge:                      ; preds = %if.end9.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.7.if.then14_crit_edge:                    ; preds = %if.end9.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14

cleanup:                                          ; preds = %if.end9.7.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.then14 ], [ @.str.39, %entry.cleanup_crit_edge ], [ @.str.38, %if.end9.7.cleanup_crit_edge ], [ @.str.38, %for.inc.6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tveeprom_hauppauge_analog(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !84, !86, !87, !88, !89, !91, !92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 27, i32 12}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 32, i32 12}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 38, i32 12}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 254, i32 12}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 265, i32 13}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 272, i32 13}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 279, i32 13}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 286, i32 13}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 293, i32 13}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 300, i32 13}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 307, i32 13}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 42, i32 12}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 74, i32 13}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 81, i32 13}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 159, i32 13}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 173, i32 13}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 490, i32 12}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 508, i32 13}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 515, i32 13}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 522, i32 13}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 529, i32 13}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 536, i32 12}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 561, i32 13}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 582, i32 12}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 607, i32 13}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 621, i32 13}
!52 = !{ptr @saa7164_boards, !53, !"saa7164_boards", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 23, i32 22}
!54 = !{ptr @saa7164_bcount, !55, !"saa7164_bcount", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 628, i32 20}
!56 = !{ptr @saa7164_subids, !57, !"saa7164_subids", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 633, i32 22}
!58 = !{ptr @saa7164_idcount, !59, !"saa7164_idcount", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 691, i32 20}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 699, i32 3}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @saa7164_card_list._entry, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @saa7164_card_list._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 707, i32 3}
!68 = !{ptr @saa7164_card_list._entry.29, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @saa7164_card_list._entry_ptr.31, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 715, i32 2}
!72 = !{ptr @saa7164_card_list._entry.32, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @saa7164_card_list._entry_ptr.34, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 719, i32 3}
!76 = !{ptr @saa7164_card_list._entry.35, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @saa7164_card_list._entry_ptr.37, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @saa7164_card_setup.eeprom, !79, !"eeprom", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 829, i32 12}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 923, i32 18}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 924, i32 17}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 818, i32 3}
!86 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @hauppauge_eeprom._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @hauppauge_eeprom._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/saa7164/saa7164-cards.c", i32 823, i32 2}
!91 = !{ptr @hauppauge_eeprom._entry.42, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @hauppauge_eeprom._entry_ptr.44, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
