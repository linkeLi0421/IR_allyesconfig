; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7164/saa7164-i2c.c_pt.bc'
source_filename = "../drivers/media/pci/saa7164/saa7164-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.160, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.160 = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@saa_debug = external dso_local local_unnamed_addr global i32, align 4
@saa7164_i2c_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s(bus = %d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"saa7164_i2c_register\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/saa7164/saa7164-i2c.c\00", [56 x i8] zeroinitializer }, align 32
@saa7164_i2c_register._entry_ptr = internal global ptr @saa7164_i2c_register._entry, section ".printk_index", align 4
@saa7164_i2c_adap_template = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 0, ptr @saa7164_i2c_algo_template, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"saa7164\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@saa7164_i2c_client_template = internal constant { %struct.i2c_client, [232 x i8] } { %struct.i2c_client { i16 0, i16 0, [20 x i8] c"saa7164 internal\00\00\00\00", ptr null, %struct.device zeroinitializer, i32 0, i32 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [232 x i8] zeroinitializer }, align 32
@saa7164_i2c_register._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: i2c bus %d register FAILED\0A\00", [62 x i8] zeroinitializer }, align 32
@saa7164_i2c_register._entry_ptr.5 = internal global ptr @saa7164_i2c_register._entry.3, section ".printk_index", align 4
@saa7164_i2c_algo_template = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @i2c_xfer, ptr null, ptr null, ptr null, ptr @saa7164_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 22, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s(num = %d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_xfer\00", [23 x i8] zeroinitializer }, align 32
@i2c_xfer._entry_ptr = internal global ptr @i2c_xfer._entry, section ".printk_index", align 4
@i2c_xfer._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 26, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: %s(num = %d) addr = 0x%02x  len = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@i2c_xfer._entry_ptr.10 = internal global ptr @i2c_xfer._entry.8, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 85, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [26 x i8] c"saa7164_i2c_adap_template\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 71, i32 33 }
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"saa7164_i2c_client_template\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 77, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 102, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [26 x i8] c"saa7164_i2c_algo_template\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 64, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 22, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [43 x i8] c"../drivers/media/pci/saa7164/saa7164-i2c.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 25, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @i2c_xfer._entry, ptr @i2c_xfer._entry.8, ptr @i2c_xfer._entry_ptr, ptr @i2c_xfer._entry_ptr.10, ptr @saa7164_i2c_register._entry, ptr @saa7164_i2c_register._entry.3, ptr @saa7164_i2c_register._entry_ptr, ptr @saa7164_i2c_register._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @saa7164_i2c_adap_template, ptr @saa7164_i2c_client_template, ptr @.str.4, ptr @saa7164_i2c_algo_template, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_i2c_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_i2c_adap_template to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_i2c_client_template to i32), i32 984, i32 1216, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_i2c_register._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7164_i2c_algo_template to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_xfer._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_i2c_register(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %2 = load i32, ptr @saa_debug, align 4
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %nr = getelementptr inbounds %struct.saa7164_i2c, ptr %bus, i32 0, i32 1
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef %4) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %i2c_adap = getelementptr inbounds %struct.saa7164_i2c, ptr %bus, i32 0, i32 2
  %5 = call ptr @memcpy(ptr %i2c_adap, ptr @saa7164_i2c_adap_template, i32 1360)
  %i2c_client = getelementptr inbounds %struct.saa7164_i2c, ptr %bus, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %i2c_client, ptr @saa7164_i2c_client_template, i32 984)
  %pci = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %parent = getelementptr inbounds %struct.saa7164_i2c, ptr %bus, i32 0, i32 2, i32 9, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev5, ptr %parent, align 8
  %name9 = getelementptr inbounds %struct.saa7164_i2c, ptr %bus, i32 0, i32 2, i32 12
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 8
  %name12 = getelementptr inbounds %struct.saa7164_dev, ptr %11, i32 0, i32 16
  %call14 = tail call i32 @strscpy(ptr noundef %name9, ptr noundef %name12, i32 noundef 48) #4
  %algo_data = getelementptr inbounds %struct.saa7164_i2c, ptr %bus, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bus, ptr %algo_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.saa7164_i2c, ptr %bus, i32 0, i32 2, i32 9, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bus, ptr %driver_data.i.i, align 4
  %call18 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adap) #4
  %adapter = getelementptr inbounds %struct.saa7164_i2c, ptr %bus, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %i2c_adap, ptr %adapter, align 8
  %i2c_rc = getelementptr inbounds %struct.saa7164_i2c, ptr %bus, i32 0, i32 4
  %15 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i2c_rc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not = icmp eq i32 %16, 0
  br i1 %cmp.not, label %do.end4.if.end30_crit_edge, label %do.end24

do.end4.if.end30_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

do.end24:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #6
  %name26 = getelementptr inbounds %struct.saa7164_dev, ptr %1, i32 0, i32 16
  %nr28 = getelementptr inbounds %struct.saa7164_i2c, ptr %bus, i32 0, i32 1
  %17 = ptrtoint ptr %nr28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr28, align 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name26, i32 noundef %18) #7
  br label %if.end30

if.end30:                                         ; preds = %do.end24, %do.end4.if.end30_crit_edge
  %19 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i2c_rc, align 8
  ret i32 %20
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7164_i2c_unregister(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_adap = getelementptr inbounds %struct.saa7164_i2c, ptr %bus, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %4 = load i32, ptr @saa_debug, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.saa7164_dev, ptr %3, i32 0, i32 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name, ptr noundef nonnull @.str.7, i32 noundef %num) #7
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp144 = icmp sgt i32 %num, 0
  br i1 %cmp144, label %do.body6.lr.ph, label %do.end5.cleanup_crit_edge

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body6.lr.ph:                                   ; preds = %do.end5
  %name14 = getelementptr inbounds %struct.saa7164_dev, ptr %3, i32 0, i32 16
  br label %do.body6

do.body6:                                         ; preds = %for.inc.do.body6_crit_edge, %do.body6.lr.ph
  %i.0145 = phi i32 [ 0, %do.body6.lr.ph ], [ %inc90, %for.inc.do.body6_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa_debug to i32))
  %5 = load i32, ptr @saa_debug, align 4
  %and7 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body6.do.end21_crit_edge, label %do.end12

do.body6.do.end21_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end21

do.end12:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0145
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %7 to i32
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0145, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len, align 4
  %conv17 = zext i16 %9 to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name14, ptr noundef nonnull @.str.7, i32 noundef %num, i32 noundef %conv, i32 noundef %conv17) #7
  br label %do.end21

do.end21:                                         ; preds = %do.end12, %do.body6.do.end21_crit_edge
  %arrayidx22 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0145
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0145, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool25.not = icmp eq i16 %12, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx22, align 4
  %conv29 = trunc i16 %14 to i8
  %len31 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0145, i32 2
  %15 = ptrtoint ptr %len31 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %len31, align 4
  %conv32 = zext i16 %16 to i32
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0145, i32 3
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf, align 4
  %call34 = tail call i32 @saa7164_api_i2c_read(ptr noundef %1, i8 noundef zeroext %conv29, i32 noundef 0, ptr noundef null, i32 noundef %conv32, ptr noundef %18) #4
  br label %if.end85

if.else:                                          ; preds = %do.end21
  %add = add nsw i32 %i.0145, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp35 = icmp slt i32 %add, %num
  br i1 %cmp35, label %land.lhs.true, label %if.else.if.else74_crit_edge

if.else.if.else74_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else74

land.lhs.true:                                    ; preds = %if.else
  %flags39 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 1
  %19 = ptrtoint ptr %flags39 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags39, align 2
  %21 = and i16 %20, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool42.not = icmp eq i16 %21, 0
  br i1 %tobool42.not, label %land.lhs.true.if.else74_crit_edge, label %land.lhs.true43

land.lhs.true.if.else74_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else74

land.lhs.true43:                                  ; preds = %land.lhs.true
  %arrayidx38 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx22, align 4
  %24 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx38, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp51 = icmp eq i16 %23, %25
  br i1 %cmp51, label %if.then53, label %land.lhs.true43.if.else74_crit_edge

land.lhs.true43.if.else74_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else74

if.then53:                                        ; preds = %land.lhs.true43
  %conv56 = trunc i16 %23 to i8
  %len58 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0145, i32 2
  %26 = ptrtoint ptr %len58 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %len58, align 4
  %conv59 = zext i16 %27 to i32
  %buf61 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0145, i32 3
  %28 = ptrtoint ptr %buf61 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf61, align 4
  %len64 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %30 = ptrtoint ptr %len64 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %len64, align 4
  %conv65 = zext i16 %31 to i32
  %buf68 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 3
  %32 = ptrtoint ptr %buf68 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %buf68, align 4
  %call69 = tail call i32 @saa7164_api_i2c_read(ptr noundef %1, i8 noundef zeroext %conv56, i32 noundef %conv59, ptr noundef %29, i32 noundef %conv65, ptr noundef %33) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then53.cleanup_crit_edge, label %if.then53.for.inc_crit_edge

if.then53.for.inc_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else74:                                        ; preds = %land.lhs.true43.if.else74_crit_edge, %land.lhs.true.if.else74_crit_edge, %if.else.if.else74_crit_edge
  %34 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx22, align 4
  %conv77 = trunc i16 %35 to i8
  %len79 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0145, i32 2
  %36 = ptrtoint ptr %len79 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %len79, align 4
  %conv80 = zext i16 %37 to i32
  %buf82 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0145, i32 3
  %38 = ptrtoint ptr %buf82 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buf82, align 4
  %call83 = tail call i32 @saa7164_api_i2c_write(ptr noundef %1, i8 noundef zeroext %conv77, i32 noundef %conv80, ptr noundef %39) #4
  br label %if.end85

if.end85:                                         ; preds = %if.else74, %if.then26
  %retval2.0 = phi i32 [ %call34, %if.then26 ], [ %call83, %if.else74 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval2.0)
  %cmp86 = icmp slt i32 %retval2.0, 0
  br i1 %cmp86, label %if.end85.cleanup_crit_edge, label %if.end85.for.inc_crit_edge

if.end85.for.inc_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %if.end85.for.inc_crit_edge, %if.then53.for.inc_crit_edge
  %i.1143 = phi i32 [ %i.0145, %if.end85.for.inc_crit_edge ], [ %add, %if.then53.for.inc_crit_edge ]
  %inc90 = add nsw i32 %i.1143, 1
  %cmp = icmp slt i32 %inc90, %num
  br i1 %cmp, label %for.inc.do.body6_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.do.body6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body6

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %if.then53.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %num, %do.end5.cleanup_crit_edge ], [ %call69, %if.then53.cleanup_crit_edge ], [ %retval2.0, %if.end85.cleanup_crit_edge ], [ %num, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @saa7164_functionality(ptr nocapture noundef readnone %adap) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_i2c_read(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7164_api_i2c_write(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7164/saa7164-i2c.c", i32 85, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @saa7164_i2c_register._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @saa7164_i2c_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/saa7164/saa7164-i2c.c", i32 102, i32 3}
!8 = !{ptr @saa7164_i2c_register._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @saa7164_i2c_register._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @saa7164_i2c_adap_template, !11, !"saa7164_i2c_adap_template", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/saa7164/saa7164-i2c.c", i32 71, i32 33}
!12 = !{ptr @saa7164_i2c_algo_template, !13, !"saa7164_i2c_algo_template", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/saa7164/saa7164-i2c.c", i32 64, i32 35}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/saa7164/saa7164-i2c.c", i32 22, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @i2c_xfer._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @i2c_xfer._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/saa7164/saa7164-i2c.c", i32 25, i32 3}
!21 = !{ptr @i2c_xfer._entry.8, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @i2c_xfer._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @saa7164_i2c_client_template, !24, !"saa7164_i2c_client_template", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/saa7164/saa7164-i2c.c", i32 77, i32 32}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
