; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx25821/cx25821-i2c.c_pt.bc'
source_filename = "../drivers/media/pci/cx25821/cx25821-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cx25821_dev = type { %struct.v4l2_device, ptr, i8, i8, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32, [3 x %struct.cx25821_i2c], i32, %struct.mutex, [12 x %struct.cx25821_channel], i32, [32 x i8], i32, i64, i16, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, %struct.work_struct, ptr, %struct.spinlock, [2 x %struct.cx25821_video_out_data] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cx25821_i2c = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_client, i32, i32, i32, i32, i32, i32, i32 }
%struct.cx25821_channel = type { i32, ptr, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.cx25821_dmaqueue, %struct.vb2_queue, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.cx25821_dmaqueue = type { %struct.list_head, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cx25821_video_out_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.101, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.101 = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_i2c_debug = internal constant [18 x i8] c"cx25821.i2c_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@i2c_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_debug = internal constant %struct.kernel_param { ptr @__param_str_i2c_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @i2c_debug } }, section "__param", align 4
@__UNIQUE_ID_i2c_debugtype300 = internal constant [31 x i8] c"cx25821.parmtype=i2c_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_debug301 = internal constant [51 x i8] c"cx25821.parm=i2c_debug:enable debug messages [i2c]\00", section ".modinfo", align 1
@__param_str_i2c_scan = internal constant [17 x i8] c"cx25821.i2c_scan\00", align 1
@i2c_scan = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_scan = internal constant %struct.kernel_param { ptr @__param_str_i2c_scan, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @i2c_scan } }, section "__param", align 4
@__UNIQUE_ID_i2c_scantype302 = internal constant [30 x i8] c"cx25821.parmtype=i2c_scan:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_scan303 = internal constant [50 x i8] c"cx25821.parm=i2c_scan:scan i2c bus at insmod time\00", section ".modinfo", align 1
@cx25821_i2c_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s/0: %s(bus = %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx25821_i2c_register\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/cx25821/cx25821-i2c.c\00", [56 x i8] zeroinitializer }, align 32
@cx25821_i2c_register._entry_ptr = internal global ptr @cx25821_i2c_register._entry, section ".printk_index", align 4
@cx25821_i2c_adap_template = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 0, ptr @cx25821_i2c_algo_template, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"cx25821\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@cx25821_i2c_client_template = internal constant { %struct.i2c_client, [232 x i8] } { %struct.i2c_client { i16 0, i16 0, [20 x i8] c"cx25821 internal\00\00\00\00", ptr null, %struct.device zeroinitializer, i32 0, i32 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [232 x i8] zeroinitializer }, align 32
@cx25821_i2c_algo_template = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @i2c_xfer, ptr null, ptr null, ptr null, ptr @cx25821_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s/0: %s(num = %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_xfer\00", [23 x i8] zeroinitializer }, align 32
@i2c_xfer._entry_ptr = internal global ptr @i2c_xfer._entry, section ".printk_index", align 4
@i2c_xfer._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s/0: %s(num = %d) addr = 0x%02x  len = 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@i2c_xfer._entry_ptr.7 = internal global ptr @i2c_xfer._entry.5, section ".printk_index", align 4
@i2c_readbytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s/0: 6-%s(msg->len=%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_readbytes\00", [18 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr = internal global ptr @i2c_readbytes._entry, section ".printk_index", align 4
@i2c_readbytes._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s/0: %s(): returns 0\0A\00", [39 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr.12 = internal global ptr @i2c_readbytes._entry.10, section ".printk_index", align 4
@i2c_readbytes._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\017%s/0:  R\00", [21 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr.15 = internal global ptr @i2c_readbytes._entry.13, section ".printk_index", align 4
@i2c_readbytes._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s/0:  <R %02x\00", [47 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr.18 = internal global ptr @i2c_readbytes._entry.16, section ".printk_index", align 4
@i2c_readbytes._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s/0:  %02x\00", [18 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr.21 = internal global ptr @i2c_readbytes._entry.19, section ".printk_index", align 4
@i2c_readbytes._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s/0:  >\0A\00", [20 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr.24 = internal global ptr @i2c_readbytes._entry.22, section ".printk_index", align 4
@i2c_readbytes._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.9, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013cx25821:  ERR: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr.27 = internal global ptr @i2c_readbytes._entry.25, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@i2c_sendbytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s/0: %s(msg->wlen=%d, nextmsg->rlen=%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_sendbytes\00", [18 x i8] zeroinitializer }, align 32
@i2c_sendbytes._entry_ptr = internal global ptr @i2c_sendbytes._entry, section ".printk_index", align 4
@i2c_sendbytes._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s/0: %s(msg->len=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@i2c_sendbytes._entry_ptr.32 = internal global ptr @i2c_sendbytes._entry.30, section ".printk_index", align 4
@i2c_sendbytes._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.29, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i2c_sendbytes._entry_ptr.34 = internal global ptr @i2c_sendbytes._entry.33, section ".printk_index", align 4
@i2c_sendbytes._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.29, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" >\0A\00", [28 x i8] zeroinitializer }, align 32
@i2c_sendbytes._entry_ptr.37 = internal global ptr @i2c_sendbytes._entry.35, section ".printk_index", align 4
@i2c_sendbytes._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.29, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i2c_sendbytes._entry_ptr.39 = internal global ptr @i2c_sendbytes._entry.38, section ".printk_index", align 4
@i2c_sendbytes._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.29, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i2c_sendbytes._entry_ptr.41 = internal global ptr @i2c_sendbytes._entry.40, section ".printk_index", align 4
@i2c_sendbytes._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.29, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i2c_sendbytes._entry_ptr.43 = internal global ptr @i2c_sendbytes._entry.42, section ".printk_index", align 4
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"i2c_debug\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 16, i32 21 }
@___asan_gen_.47 = private unnamed_addr constant [9 x i8] c"i2c_scan\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 20, i32 21 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 293, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [26 x i8] c"cx25821_i2c_adap_template\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 278, i32 33 }
@___asan_gen_.65 = private unnamed_addr constant [28 x i8] c"cx25821_i2c_client_template\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 284, i32 32 }
@___asan_gen_.68 = private unnamed_addr constant [26 x i8] c"cx25821_i2c_algo_template\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 270, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 230, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 233, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 169, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 180, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 186, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 188, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 209, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 211, i32 5 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 220, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 75, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 78, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 91, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 119, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 144, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 146, i32 5 }
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.162 = private constant [43 x i8] c"../drivers/media/pci/cx25821/cx25821-i2c.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 156, i32 3 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_i2c_debug301, ptr @__UNIQUE_ID_i2c_debugtype300, ptr @__UNIQUE_ID_i2c_scan303, ptr @__UNIQUE_ID_i2c_scantype302, ptr @__param_i2c_debug, ptr @__param_i2c_scan, ptr @cx25821_i2c_register._entry, ptr @cx25821_i2c_register._entry_ptr, ptr @i2c_readbytes._entry, ptr @i2c_readbytes._entry.10, ptr @i2c_readbytes._entry.13, ptr @i2c_readbytes._entry.16, ptr @i2c_readbytes._entry.19, ptr @i2c_readbytes._entry.22, ptr @i2c_readbytes._entry.25, ptr @i2c_readbytes._entry_ptr, ptr @i2c_readbytes._entry_ptr.12, ptr @i2c_readbytes._entry_ptr.15, ptr @i2c_readbytes._entry_ptr.18, ptr @i2c_readbytes._entry_ptr.21, ptr @i2c_readbytes._entry_ptr.24, ptr @i2c_readbytes._entry_ptr.27, ptr @i2c_sendbytes._entry, ptr @i2c_sendbytes._entry.30, ptr @i2c_sendbytes._entry.33, ptr @i2c_sendbytes._entry.35, ptr @i2c_sendbytes._entry.38, ptr @i2c_sendbytes._entry.40, ptr @i2c_sendbytes._entry.42, ptr @i2c_sendbytes._entry_ptr, ptr @i2c_sendbytes._entry_ptr.32, ptr @i2c_sendbytes._entry_ptr.34, ptr @i2c_sendbytes._entry_ptr.37, ptr @i2c_sendbytes._entry_ptr.39, ptr @i2c_sendbytes._entry_ptr.41, ptr @i2c_sendbytes._entry_ptr.43, ptr @i2c_xfer._entry, ptr @i2c_xfer._entry.5, ptr @i2c_xfer._entry_ptr, ptr @i2c_xfer._entry_ptr.7, ptr @i2c_debug, ptr @i2c_scan, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cx25821_i2c_adap_template, ptr @cx25821_i2c_client_template, ptr @cx25821_i2c_algo_template, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.36], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_scan to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_i2c_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_i2c_adap_template to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_i2c_client_template to i32), i32 984, i32 1216, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_i2c_algo_template to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_xfer._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sendbytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sendbytes._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sendbytes._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sendbytes._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sendbytes._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sendbytes._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sendbytes._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx25821_i2c_register(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %2 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.cx25821_dev, ptr %1, i32 0, i32 18
  %nr = getelementptr inbounds %struct.cx25821_i2c, ptr %bus, i32 0, i32 1
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef %4) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %i2c_adap = getelementptr inbounds %struct.cx25821_i2c, ptr %bus, i32 0, i32 2
  %5 = call ptr @memcpy(ptr %i2c_adap, ptr @cx25821_i2c_adap_template, i32 1360)
  %i2c_client = getelementptr inbounds %struct.cx25821_i2c, ptr %bus, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %i2c_client, ptr @cx25821_i2c_client_template, i32 984)
  %pci = getelementptr inbounds %struct.cx25821_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %parent = getelementptr inbounds %struct.cx25821_i2c, ptr %bus, i32 0, i32 2, i32 9, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev5, ptr %parent, align 8
  %name9 = getelementptr inbounds %struct.cx25821_i2c, ptr %bus, i32 0, i32 2, i32 12
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 8
  %name12 = getelementptr inbounds %struct.cx25821_dev, ptr %11, i32 0, i32 18
  %call14 = tail call i32 @strscpy(ptr noundef %name9, ptr noundef %name12, i32 noundef 48) #6
  %algo_data = getelementptr inbounds %struct.cx25821_i2c, ptr %bus, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bus, ptr %algo_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.cx25821_i2c, ptr %bus, i32 0, i32 2, i32 9, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %driver_data.i.i, align 4
  %call18 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adap) #6
  %adapter = getelementptr inbounds %struct.cx25821_i2c, ptr %bus, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %i2c_adap, ptr %adapter, align 8
  %addr = getelementptr inbounds %struct.cx25821_i2c, ptr %bus, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 68, ptr %addr, align 2
  %i2c_rc = getelementptr inbounds %struct.cx25821_i2c, ptr %bus, i32 0, i32 4
  %16 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i2c_rc, align 8
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx25821_i2c_unregister(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_adap = getelementptr inbounds %struct.cx25821_i2c, ptr %bus, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx25821_i2c_read(ptr nocapture noundef readonly %bus, i16 noundef zeroext %reg_addr, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca [2 x i8], align 2
  %buf = alloca [4 x i8], align 4
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %addr) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #6
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #6
  %1 = getelementptr inbounds i8, ptr %msgs, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2, ptr %len, align 4
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %5 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %addr, ptr %buf3, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %6 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %flags6, align 2
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %7 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4, ptr %len7, align 4
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %8 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buf, ptr %buf8, align 4
  %9 = lshr i16 %reg_addr, 8
  %conv10 = trunc i16 %9 to i8
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv10, ptr %addr, align 2
  %conv12 = trunc i16 %reg_addr to i8
  %arrayidx13 = getelementptr inbounds [2 x i8], ptr %addr, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv12, ptr %arrayidx13, align 1
  %12 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 68, ptr %msgs, align 4
  %13 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 68, ptr %arrayinit.element, align 4
  %adapter = getelementptr inbounds %struct.cx25821_i2c, ptr %bus, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_xfer(ptr noundef %15, ptr noundef nonnull %msgs, i32 noundef 2)
  %arrayidx19 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %17 to i32
  %shl = shl nuw i32 %conv20, 24
  %arrayidx21 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx21, align 2
  %conv22 = zext i8 %19 to i32
  %shl23 = shl nuw nsw i32 %conv22, 16
  %or = or i32 %shl23, %shl
  %arrayidx24 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %21 to i32
  %shl26 = shl nuw nsw i32 %conv25, 8
  %or27 = or i32 %or, %shl26
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf, align 4
  %conv29 = zext i8 %23 to i32
  %or30 = or i32 %or27, %conv29
  %24 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or30, ptr %value, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %addr) #6
  ret i32 %or30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef nonnull @.str.4, i32 noundef %num) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp6106 = icmp sgt i32 %num, 0
  br i1 %cmp6106, label %do.body7.lr.ph, label %do.end5.cleanup_crit_edge

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body7.lr.ph:                                   ; preds = %do.end5
  %name14 = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 18
  br label %do.body7

for.cond:                                         ; preds = %if.end62
  %inc67 = add nsw i32 %i.1, 1
  %cmp6 = icmp slt i32 %inc67, %num
  br i1 %cmp6, label %for.cond.do.body7_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.do.body7_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

do.body7:                                         ; preds = %for.cond.do.body7_crit_edge, %do.body7.lr.ph
  %i.0107 = phi i32 [ 0, %do.body7.lr.ph ], [ %inc67, %for.cond.do.body7_crit_edge ]
  %5 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8.not = icmp eq i32 %5, 0
  br i1 %cmp8.not, label %do.body7.do.end21_crit_edge, label %do.end12

do.body7.do.end21_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

do.end12:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0107
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %7 to i32
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0107, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len, align 4
  %conv17 = zext i16 %9 to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name14, ptr noundef nonnull @.str.4, i32 noundef %num, i32 noundef %conv, i32 noundef %conv17) #9
  br label %do.end21

do.end21:                                         ; preds = %do.end12, %do.body7.do.end21_crit_edge
  %arrayidx22 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0107
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0107, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call fastcc i32 @i2c_readbytes(ptr noundef %i2c_adap, ptr noundef %arrayidx22, i32 noundef 0)
  br label %if.end62

if.else:                                          ; preds = %do.end21
  %add = add nsw i32 %i.0107, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp27 = icmp slt i32 %add, %num
  br i1 %cmp27, label %land.lhs.true, label %if.else.if.else58_crit_edge

if.else.if.else58_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else58

land.lhs.true:                                    ; preds = %if.else
  %arrayidx30 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add
  %flags31 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 1
  %13 = ptrtoint ptr %flags31 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags31, align 2
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool34.not = icmp eq i16 %15, 0
  br i1 %tobool34.not, label %land.lhs.true.if.else58_crit_edge, label %land.lhs.true35

land.lhs.true.if.else58_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else58

land.lhs.true35:                                  ; preds = %land.lhs.true
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx22, align 4
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx30, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp43 = icmp eq i16 %17, %19
  br i1 %cmp43, label %if.then45, label %land.lhs.true35.if.else58_crit_edge

land.lhs.true35.if.else58_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else58

if.then45:                                        ; preds = %land.lhs.true35
  %len49 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %20 = ptrtoint ptr %len49 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %len49, align 4
  %conv50 = zext i16 %21 to i32
  %call51 = tail call fastcc i32 @i2c_sendbytes(ptr noundef %i2c_adap, ptr noundef %arrayidx22, i32 noundef %conv50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then45.cleanup_crit_edge, label %if.end55

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end55:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %call57 = tail call fastcc i32 @i2c_readbytes(ptr noundef %i2c_adap, ptr noundef %arrayidx30, i32 noundef 1)
  br label %if.end62

if.else58:                                        ; preds = %land.lhs.true35.if.else58_crit_edge, %land.lhs.true.if.else58_crit_edge, %if.else.if.else58_crit_edge
  %call60 = tail call fastcc i32 @i2c_sendbytes(ptr noundef %i2c_adap, ptr noundef %arrayidx22, i32 noundef 0)
  br label %if.end62

if.end62:                                         ; preds = %if.else58, %if.end55, %if.then24
  %i.1 = phi i32 [ %i.0107, %if.then24 ], [ %add, %if.end55 ], [ %i.0107, %if.else58 ]
  %retval2.0 = phi i32 [ %call26, %if.then24 ], [ %call57, %if.end55 ], [ %call60, %if.else58 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval2.0)
  %cmp63 = icmp slt i32 %retval2.0, 0
  br i1 %cmp63, label %if.end62.cleanup_crit_edge, label %for.cond

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end62.cleanup_crit_edge, %if.then45.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %num, %do.end5.cleanup_crit_edge ], [ %call51, %if.then45.cleanup_crit_edge ], [ %retval2.0, %if.end62.cleanup_crit_edge ], [ %num, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx25821_i2c_write(ptr nocapture noundef %bus, i16 noundef zeroext %reg_addr, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [6 x i8], align 1
  %msgs = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_client = getelementptr inbounds %struct.cx25821_i2c, ptr %bus, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs) #6
  %0 = getelementptr inbounds i8, ptr %msgs, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 6, ptr %len, align 4
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %4 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %buf, ptr %buf3, align 4
  %5 = lshr i16 %reg_addr, 8
  %conv4 = trunc i16 %5 to i8
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv4, ptr %buf, align 1
  %conv6 = trunc i16 %reg_addr to i8
  %arrayidx7 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv6, ptr %arrayidx7, align 1
  %8 = lshr i32 %value, 24
  %conv10 = trunc i32 %8 to i8
  %arrayidx11 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 5
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv10, ptr %arrayidx11, align 1
  %10 = lshr i32 %value, 16
  %conv14 = trunc i32 %10 to i8
  %arrayidx15 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv14, ptr %arrayidx15, align 1
  %12 = lshr i32 %value, 8
  %conv18 = trunc i32 %12 to i8
  %arrayidx19 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv18, ptr %arrayidx19, align 1
  %conv21 = trunc i32 %value to i8
  %arrayidx22 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv21, ptr %arrayidx22, align 1
  %15 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %i2c_client, align 8
  %16 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 68, ptr %msgs, align 4
  %adapter = getelementptr inbounds %struct.cx25821_i2c, ptr %bus, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_xfer(ptr noundef %18, ptr noundef nonnull %msgs, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx25821_functionality(ptr nocapture noundef readnone %adap) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_readbytes(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msg, i32 noundef %joined) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp ne i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %joined)
  %tobool3.not = icmp eq i32 %joined, 0
  %or.cond = and i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %do.end, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 18
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len, align 4
  %conv = zext i16 %6 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name, ptr noundef nonnull @.str.9, i32 noundef %conv) #9
  br label %if.end8

if.end8:                                          ; preds = %do.end, %entry.if.end8_crit_edge
  %len9 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len9 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %len9, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp11 = icmp eq i16 %8, 0
  br i1 %cmp11, label %do.body14, label %if.end47

do.body14:                                        ; preds = %if.end8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %msg, align 4
  %conv17 = zext i16 %10 to i32
  %11 = shl nuw nsw i32 %conv17, 1
  %12 = and i32 %11, 254
  %lmmio = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio, align 4
  %reg_addr = getelementptr inbounds %struct.cx25821_i2c, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %reg_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_addr, align 8
  %shr = lshr i32 %16, 2
  %add.ptr = getelementptr i32, ptr %14, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %i2c_period = getelementptr inbounds %struct.cx25821_i2c, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %i2c_period to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i2c_period, align 4
  %or21 = or i32 %18, 5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %20 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio, align 4
  %reg_ctrl = getelementptr inbounds %struct.cx25821_i2c, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %reg_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_ctrl, align 8
  %shr23 = lshr i32 %23, 2
  %add.ptr24 = getelementptr i32, ptr %21, i32 %shr23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %19) #6, !srcloc !101
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.body14
  %count.06.i = phi i32 [ 0, %do.body14 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %algo_data, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %lmmio.i.i = getelementptr inbounds %struct.cx25821_dev, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio.i.i, align 4
  %reg_stat.i.i = getelementptr inbounds %struct.cx25821_i2c, ptr %25, i32 0, i32 7
  %30 = ptrtoint ptr %reg_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg_stat.i.i, align 4
  %shr.i.i = lshr i32 %31, 2
  %add.ptr.i.i = getelementptr i32, ptr %29, i32 %shr.i.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %33 = and i32 %32, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %i2c_wait_done.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 6871936) #6
  %inc.i = add nuw nsw i32 %count.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

i2c_wait_done.exit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count.06.i)
  %cmp1.i.not = icmp eq i32 %count.06.i, 64
  br i1 %cmp1.i.not, label %i2c_wait_done.exit.cleanup_crit_edge, label %if.end28

i2c_wait_done.exit.cleanup_crit_edge:             ; preds = %i2c_wait_done.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %i2c_wait_done.exit
  %35 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %algo_data, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %lmmio.i = getelementptr inbounds %struct.cx25821_dev, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lmmio.i, align 4
  %reg_stat.i = getelementptr inbounds %struct.cx25821_i2c, ptr %36, i32 0, i32 7
  %41 = ptrtoint ptr %reg_stat.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg_stat.i, align 4
  %shr.i = lshr i32 %42, 2
  %add.ptr.i = getelementptr i32, ptr %40, i32 %shr.i
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  %44 = and i32 %43, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool30.not = icmp eq i32 %44, 0
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %do.body33

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body33:                                        ; preds = %if.end28
  %45 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp34.not = icmp eq i32 %45, 0
  br i1 %cmp34.not, label %do.body33.cleanup_crit_edge, label %do.end39

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  %name41 = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 18
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name41, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end47:                                         ; preds = %if.end8
  %46 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool48.not = icmp eq i32 %46, 0
  br i1 %tobool48.not, label %if.end47.for.body.lr.ph_crit_edge, label %if.then49

if.end47.for.body.lr.ph_crit_edge:                ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph

if.then49:                                        ; preds = %if.end47
  %name74 = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 18
  br i1 %tobool3.not, label %do.end72, label %do.end58

do.end58:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name74) #9
  br label %if.end84

do.end72:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %msg, align 4
  %conv77 = zext i16 %48 to i32
  %shl78 = shl nuw nsw i32 %conv77, 1
  %add = or i32 %shl78, 1
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name74, i32 noundef %add) #9
  br label %if.end84

if.end84:                                         ; preds = %do.end72, %do.end58
  %49 = ptrtoint ptr %len9 to i32
  call void @__asan_load2_noabort(i32 %49)
  %.pr = load i16, ptr %len9, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %cmp87256.not = icmp eq i16 %.pr, 0
  br i1 %cmp87256.not, label %if.end84.cleanup_crit_edge, label %if.end84.for.body.lr.ph_crit_edge

if.end84.for.body.lr.ph_crit_edge:                ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end84.for.body.lr.ph_crit_edge, %if.end47.for.body.lr.ph_crit_edge
  %50 = phi i16 [ %.pr, %if.end84.for.body.lr.ph_crit_edge ], [ %8, %if.end47.for.body.lr.ph_crit_edge ]
  %conv86255 = zext i16 %50 to i32
  %i2c_period89 = getelementptr inbounds %struct.cx25821_i2c, ptr %1, i32 0, i32 5
  %lmmio106 = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 7
  %reg_addr107 = getelementptr inbounds %struct.cx25821_i2c, ptr %1, i32 0, i32 8
  %reg_ctrl114 = getelementptr inbounds %struct.cx25821_i2c, ptr %1, i32 0, i32 6
  %reg_rdata = getelementptr inbounds %struct.cx25821_i2c, ptr %1, i32 0, i32 9
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %name143 = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv86259 = phi i32 [ %conv86255, %for.body.lr.ph ], [ %conv86, %for.inc.for.body_crit_edge ]
  %cnt.0257 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %51 = ptrtoint ptr %i2c_period89 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i2c_period89, align 4
  %sub = add nsw i32 %conv86259, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0257, i32 %sub)
  %cmp95 = icmp ult i32 %cnt.0257, %sub
  %spec.select.v = select i1 %cmp95, i32 4125, i32 4101
  %spec.select = or i32 %52, %spec.select.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %msg, align 4
  %conv104 = zext i16 %54 to i32
  %55 = shl nuw nsw i32 %conv104, 1
  %56 = and i32 %55, 254
  %57 = ptrtoint ptr %lmmio106 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lmmio106, align 4
  %59 = ptrtoint ptr %reg_addr107 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %reg_addr107, align 8
  %shr108 = lshr i32 %60, 2
  %add.ptr109 = getelementptr i32, ptr %58, i32 %shr108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %56) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %61 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %62 = ptrtoint ptr %lmmio106 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lmmio106, align 4
  %64 = ptrtoint ptr %reg_ctrl114 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %reg_ctrl114, align 8
  %shr115 = lshr i32 %65, 2
  %add.ptr116 = getelementptr i32, ptr %63, i32 %shr115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116, i32 %61) #6, !srcloc !101
  br label %for.body.i233

for.body.i233:                                    ; preds = %if.end.i236.for.body.i233_crit_edge, %for.body
  %count.06.i227 = phi i32 [ 0, %for.body ], [ %inc.i234, %if.end.i236.for.body.i233_crit_edge ]
  %66 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %algo_data, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 8
  %lmmio.i.i228 = getelementptr inbounds %struct.cx25821_dev, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %lmmio.i.i228 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lmmio.i.i228, align 4
  %reg_stat.i.i229 = getelementptr inbounds %struct.cx25821_i2c, ptr %67, i32 0, i32 7
  %72 = ptrtoint ptr %reg_stat.i.i229 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reg_stat.i.i229, align 4
  %shr.i.i230 = lshr i32 %73, 2
  %add.ptr.i.i231 = getelementptr i32, ptr %71, i32 %shr.i.i230
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i231) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %75 = and i32 %74, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i232 = icmp eq i32 %75, 0
  br i1 %tobool.not.i232, label %i2c_wait_done.exit240, label %if.end.i236

if.end.i236:                                      ; preds = %for.body.i233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 6871936) #6
  %inc.i234 = add nuw nsw i32 %count.06.i227, 1
  %exitcond.not.i235 = icmp eq i32 %inc.i234, 64
  br i1 %exitcond.not.i235, label %if.end.i236.err_crit_edge, label %if.end.i236.for.body.i233_crit_edge

if.end.i236.for.body.i233_crit_edge:              ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i233

if.end.i236.err_crit_edge:                        ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

i2c_wait_done.exit240:                            ; preds = %for.body.i233
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count.06.i227)
  %cmp1.i238.not = icmp eq i32 %count.06.i227, 64
  br i1 %cmp1.i238.not, label %i2c_wait_done.exit240.err_crit_edge, label %if.end125

i2c_wait_done.exit240.err_crit_edge:              ; preds = %i2c_wait_done.exit240
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end125:                                        ; preds = %i2c_wait_done.exit240
  %77 = ptrtoint ptr %lmmio106 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %lmmio106, align 4
  %79 = ptrtoint ptr %reg_rdata to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %reg_rdata, align 4
  %shr127 = lshr i32 %80, 2
  %add.ptr128 = getelementptr i32, ptr %78, i32 %shr127
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr128) #6, !srcloc !103
  %82 = lshr i32 %81, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  %conv132 = trunc i32 %82 to i8
  %83 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %84, i32 %cnt.0257
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv132, ptr %arrayidx, align 1
  %86 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool133.not = icmp eq i32 %86, 0
  br i1 %tobool133.not, label %if.end125.for.inc_crit_edge, label %do.end141

if.end125.for.inc_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end141:                                        ; preds = %if.end125
  %87 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %buf, align 4
  %arrayidx146 = getelementptr i8, ptr %88, i32 %cnt.0257
  %89 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx146, align 1
  %conv147 = zext i8 %90 to i32
  %call148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name143, i32 noundef %conv147) #9
  %and152 = and i32 %spec.select, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %do.body155, label %do.end141.for.inc_crit_edge

do.end141.for.inc_crit_edge:                      ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body155:                                       ; preds = %do.end141
  %91 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp156.not = icmp eq i32 %91, 0
  br i1 %cmp156.not, label %do.body155.for.inc_crit_edge, label %do.end161

do.body155.for.inc_crit_edge:                     ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end161:                                        ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #8
  %call165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name143) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end161, %do.body155.for.inc_crit_edge, %do.end141.for.inc_crit_edge, %if.end125.for.inc_crit_edge
  %inc = add nuw nsw i32 %cnt.0257, 1
  %92 = ptrtoint ptr %len9 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %len9, align 4
  %conv86 = zext i16 %93 to i32
  %cmp87 = icmp ult i32 %inc, %conv86
  br i1 %cmp87, label %for.inc.for.body_crit_edge, label %cleanup.loopexit249.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

err:                                              ; preds = %i2c_wait_done.exit240.err_crit_edge, %if.end.i236.err_crit_edge
  %94 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool173.not = icmp eq i32 %94, 0
  br i1 %tobool173.not, label %err.cleanup_crit_edge, label %do.end177

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end177:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  %call179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef -5) #9
  br label %cleanup

cleanup.loopexit249.loopexit:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast = zext i16 %93 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit249.loopexit, %do.end177, %err.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %do.end39, %do.body33.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %i2c_wait_done.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %i2c_wait_done.exit.cleanup_crit_edge ], [ -5, %if.end28.cleanup_crit_edge ], [ 0, %do.end39 ], [ 0, %do.body33.cleanup_crit_edge ], [ -5, %do.end177 ], [ -5, %err.cleanup_crit_edge ], [ %phi.cast, %cleanup.loopexit249.loopexit ], [ 0, %if.end84.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_sendbytes(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msg, i32 noundef %joined_rlen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %joined_rlen)
  %tobool.not = icmp eq i32 %joined_rlen, 0
  %4 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp8.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body7, label %do.body

do.body:                                          ; preds = %entry
  br i1 %cmp8.not, label %do.body.if.end23_crit_edge, label %do.end

do.body.if.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 18
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len, align 4
  %conv = zext i16 %6 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name, ptr noundef nonnull @.str.29, i32 noundef %conv, i32 noundef %joined_rlen) #9
  br label %if.end23

do.body7:                                         ; preds = %entry
  br i1 %cmp8.not, label %do.body7.if.end23_crit_edge, label %do.end13

do.body7.if.end23_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %name15 = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 18
  %len17 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len17 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %len17, align 4
  %conv18 = zext i16 %8 to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name15, ptr noundef nonnull @.str.29, i32 noundef %conv18) #9
  br label %if.end23

if.end23:                                         ; preds = %do.end13, %do.body7.if.end23_crit_edge, %do.end, %do.body.if.end23_crit_edge
  %len24 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len24 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %len24, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp26 = icmp eq i16 %10, 0
  br i1 %cmp26, label %do.body29, label %if.end62

do.body29:                                        ; preds = %if.end23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %msg, align 4
  %conv33 = zext i16 %12 to i32
  %13 = shl nuw nsw i32 %conv33, 1
  %14 = and i32 %13, 254
  %lmmio = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio, align 4
  %reg_addr = getelementptr inbounds %struct.cx25821_i2c, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %reg_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_addr, align 8
  %shr = lshr i32 %18, 2
  %add.ptr = getelementptr i32, ptr %16, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %i2c_period = getelementptr inbounds %struct.cx25821_i2c, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %i2c_period to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i2c_period, align 4
  %or = or i32 %20, 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %or)
  %22 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio, align 4
  %reg_ctrl = getelementptr inbounds %struct.cx25821_i2c, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %reg_ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg_ctrl, align 8
  %shr38 = lshr i32 %25, 2
  %add.ptr39 = getelementptr i32, ptr %23, i32 %shr38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %21) #6, !srcloc !101
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.body29
  %count.06.i = phi i32 [ 0, %do.body29 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %algo_data, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %lmmio.i.i = getelementptr inbounds %struct.cx25821_dev, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio.i.i, align 4
  %reg_stat.i.i = getelementptr inbounds %struct.cx25821_i2c, ptr %27, i32 0, i32 7
  %32 = ptrtoint ptr %reg_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_stat.i.i, align 4
  %shr.i.i = lshr i32 %33, 2
  %add.ptr.i.i = getelementptr i32, ptr %31, i32 %shr.i.i
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %35 = and i32 %34, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %i2c_wait_done.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 6871936) #6
  %inc.i = add nuw nsw i32 %count.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

i2c_wait_done.exit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count.06.i)
  %cmp1.i.not = icmp eq i32 %count.06.i, 64
  br i1 %cmp1.i.not, label %i2c_wait_done.exit.cleanup_crit_edge, label %if.end43

i2c_wait_done.exit.cleanup_crit_edge:             ; preds = %i2c_wait_done.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %i2c_wait_done.exit
  %37 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %algo_data, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %lmmio.i = getelementptr inbounds %struct.cx25821_dev, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lmmio.i, align 4
  %reg_stat.i = getelementptr inbounds %struct.cx25821_i2c, ptr %38, i32 0, i32 7
  %43 = ptrtoint ptr %reg_stat.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg_stat.i, align 4
  %shr.i = lshr i32 %44, 2
  %add.ptr.i = getelementptr i32, ptr %42, i32 %shr.i
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  %46 = and i32 %45, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool45.not = icmp eq i32 %46, 0
  br i1 %tobool45.not, label %if.end43.cleanup_crit_edge, label %do.body48

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body48:                                        ; preds = %if.end43
  %47 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp49.not = icmp eq i32 %47, 0
  br i1 %cmp49.not, label %do.body48.cleanup_crit_edge, label %do.end54

do.body48.cleanup_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end54:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  %name56 = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 18
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name56, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end62:                                         ; preds = %if.end23
  %48 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %msg, align 4
  %conv64 = zext i16 %49 to i32
  %shl65 = shl i32 %conv64, 25
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %50 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buf, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 1
  %conv66 = zext i8 %53 to i32
  %or67 = or i32 %shl65, %conv66
  %i2c_period71 = getelementptr inbounds %struct.cx25821_i2c, ptr %1, i32 0, i32 5
  %54 = ptrtoint ptr %i2c_period71 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i2c_period71, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp76.not = icmp eq i16 %10, 1
  %spec.select.v = select i1 %tobool.not, i32 4100, i32 4116
  %ctrl.0.v = select i1 %cmp76.not, i32 %spec.select.v, i32 4124
  %ctrl.0 = or i32 %55, %ctrl.0.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %56 = tail call i32 @llvm.bswap.i32(i32 %or67)
  %lmmio89 = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 7
  %57 = ptrtoint ptr %lmmio89 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lmmio89, align 4
  %reg_addr90 = getelementptr inbounds %struct.cx25821_i2c, ptr %1, i32 0, i32 8
  %59 = ptrtoint ptr %reg_addr90 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %reg_addr90, align 8
  %shr91 = lshr i32 %60, 2
  %add.ptr92 = getelementptr i32, ptr %58, i32 %shr91
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 %56) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %61 = shl nuw i32 %conv66, 24
  %62 = ptrtoint ptr %lmmio89 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lmmio89, align 4
  %reg_wdata = getelementptr inbounds %struct.cx25821_i2c, ptr %1, i32 0, i32 10
  %64 = ptrtoint ptr %reg_wdata to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %reg_wdata, align 8
  %shr97 = lshr i32 %65, 2
  %add.ptr98 = getelementptr i32, ptr %63, i32 %shr97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %61) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %66 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0)
  %67 = ptrtoint ptr %lmmio89 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %lmmio89, align 4
  %reg_ctrl103 = getelementptr inbounds %struct.cx25821_i2c, ptr %1, i32 0, i32 6
  %69 = ptrtoint ptr %reg_ctrl103 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %reg_ctrl103, align 8
  %shr104 = lshr i32 %70, 2
  %add.ptr105 = getelementptr i32, ptr %68, i32 %shr104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 %66) #6, !srcloc !101
  br label %for.body.i300

for.body.i300:                                    ; preds = %if.end.i303.for.body.i300_crit_edge, %if.end62
  %count.06.i294 = phi i32 [ 0, %if.end62 ], [ %inc.i301, %if.end.i303.for.body.i300_crit_edge ]
  %71 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %algo_data, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  %lmmio.i.i295 = getelementptr inbounds %struct.cx25821_dev, ptr %74, i32 0, i32 7
  %75 = ptrtoint ptr %lmmio.i.i295 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lmmio.i.i295, align 4
  %reg_stat.i.i296 = getelementptr inbounds %struct.cx25821_i2c, ptr %72, i32 0, i32 7
  %77 = ptrtoint ptr %reg_stat.i.i296 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %reg_stat.i.i296, align 4
  %shr.i.i297 = lshr i32 %78, 2
  %add.ptr.i.i298 = getelementptr i32, ptr %76, i32 %shr.i.i297
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i298) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %80 = and i32 %79, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i299 = icmp eq i32 %80, 0
  br i1 %tobool.not.i299, label %i2c_wait_done.exit307, label %if.end.i303

if.end.i303:                                      ; preds = %for.body.i300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 6871936) #6
  %inc.i301 = add nuw nsw i32 %count.06.i294, 1
  %exitcond.not.i302 = icmp eq i32 %inc.i301, 64
  br i1 %exitcond.not.i302, label %if.end.i303.err_crit_edge, label %if.end.i303.for.body.i300_crit_edge

if.end.i303.for.body.i300_crit_edge:              ; preds = %if.end.i303
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i300

if.end.i303.err_crit_edge:                        ; preds = %if.end.i303
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

i2c_wait_done.exit307:                            ; preds = %for.body.i300
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count.06.i294)
  %cmp1.i305.not = icmp eq i32 %count.06.i294, 64
  br i1 %cmp1.i305.not, label %i2c_wait_done.exit307.err_crit_edge, label %if.end114

i2c_wait_done.exit307.err_crit_edge:              ; preds = %i2c_wait_done.exit307
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end114:                                        ; preds = %i2c_wait_done.exit307
  %82 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool115.not = icmp ne i32 %82, 0
  %and = and i32 %ctrl.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool117.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool115.not, i1 %tobool117.not, i1 false
  br i1 %or.cond, label %do.end121, label %if.end114.if.end125_crit_edge

if.end114.if.end125_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125

do.end121:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #9
  br label %if.end125

if.end125:                                        ; preds = %do.end121, %if.end114.if.end125_crit_edge
  %83 = ptrtoint ptr %len24 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %len24, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %84)
  %cmp128344 = icmp ugt i16 %84, 1
  %conv127343 = zext i16 %84 to i32
  br i1 %cmp128344, label %for.body.lr.ph, label %if.end125.cleanup_crit_edge

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end125
  %name188 = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv127347 = phi i32 [ %conv127343, %for.body.lr.ph ], [ %conv127, %for.inc.for.body_crit_edge ]
  %cnt.0345 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %85 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %buf, align 4
  %arrayidx131 = getelementptr i8, ptr %86, i32 %cnt.0345
  %87 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %88 to i32
  %89 = ptrtoint ptr %i2c_period71 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %i2c_period71, align 4
  %sub = add nsw i32 %conv127347, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0345, i32 %sub)
  %cmp138 = icmp slt i32 %cnt.0345, %sub
  %ctrl.1.v = select i1 %cmp138, i32 4124, i32 %spec.select.v
  %ctrl.1 = or i32 %90, %ctrl.1.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %91 = ptrtoint ptr %lmmio89 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lmmio89, align 4
  %93 = ptrtoint ptr %reg_addr90 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %reg_addr90, align 8
  %shr153 = lshr i32 %94, 2
  %add.ptr154 = getelementptr i32, ptr %92, i32 %shr153
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 %56) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %95 = shl nuw i32 %conv132, 24
  %96 = ptrtoint ptr %lmmio89 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %lmmio89, align 4
  %98 = ptrtoint ptr %reg_wdata to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %reg_wdata, align 8
  %shr160 = lshr i32 %99, 2
  %add.ptr161 = getelementptr i32, ptr %97, i32 %shr160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161, i32 %95) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %100 = tail call i32 @llvm.bswap.i32(i32 %ctrl.1)
  %101 = ptrtoint ptr %lmmio89 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %lmmio89, align 4
  %103 = ptrtoint ptr %reg_ctrl103 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %reg_ctrl103, align 8
  %shr167 = lshr i32 %104, 2
  %add.ptr168 = getelementptr i32, ptr %102, i32 %shr167
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr168, i32 %100) #6, !srcloc !101
  br label %for.body.i315

for.body.i315:                                    ; preds = %if.end.i318.for.body.i315_crit_edge, %for.body
  %count.06.i309 = phi i32 [ 0, %for.body ], [ %inc.i316, %if.end.i318.for.body.i315_crit_edge ]
  %105 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %algo_data, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 8
  %lmmio.i.i310 = getelementptr inbounds %struct.cx25821_dev, ptr %108, i32 0, i32 7
  %109 = ptrtoint ptr %lmmio.i.i310 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %lmmio.i.i310, align 4
  %reg_stat.i.i311 = getelementptr inbounds %struct.cx25821_i2c, ptr %106, i32 0, i32 7
  %111 = ptrtoint ptr %reg_stat.i.i311 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %reg_stat.i.i311, align 4
  %shr.i.i312 = lshr i32 %112, 2
  %add.ptr.i.i313 = getelementptr i32, ptr %110, i32 %shr.i.i312
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i313) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %114 = and i32 %113, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i314 = icmp eq i32 %114, 0
  br i1 %tobool.not.i314, label %i2c_wait_done.exit322, label %if.end.i318

if.end.i318:                                      ; preds = %for.body.i315
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %115(i32 noundef 6871936) #6
  %inc.i316 = add nuw nsw i32 %count.06.i309, 1
  %exitcond.not.i317 = icmp eq i32 %inc.i316, 64
  br i1 %exitcond.not.i317, label %if.end.i318.err_crit_edge, label %if.end.i318.for.body.i315_crit_edge

if.end.i318.for.body.i315_crit_edge:              ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i315

if.end.i318.err_crit_edge:                        ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

i2c_wait_done.exit322:                            ; preds = %for.body.i315
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count.06.i309)
  %cmp1.i320.not = icmp eq i32 %count.06.i309, 64
  br i1 %cmp1.i320.not, label %i2c_wait_done.exit322.err_crit_edge, label %if.end177

i2c_wait_done.exit322.err_crit_edge:              ; preds = %i2c_wait_done.exit322
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end177:                                        ; preds = %i2c_wait_done.exit322
  %116 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool178.not = icmp eq i32 %116, 0
  br i1 %tobool178.not, label %if.end177.for.inc_crit_edge, label %do.end186

if.end177.for.inc_crit_edge:                      ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end186:                                        ; preds = %if.end177
  %117 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %buf, align 4
  %arrayidx191 = getelementptr i8, ptr %118, i32 %cnt.0345
  %119 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx191, align 1
  %conv192 = zext i8 %120 to i32
  %call193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name188, i32 noundef %conv192) #9
  %and197 = and i32 %ctrl.1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  br i1 %tobool198.not, label %do.body200, label %do.end186.for.inc_crit_edge

do.end186.for.inc_crit_edge:                      ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body200:                                       ; preds = %do.end186
  %121 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp201.not = icmp eq i32 %121, 0
  br i1 %cmp201.not, label %do.body200.for.inc_crit_edge, label %do.end206

do.body200.for.inc_crit_edge:                     ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end206:                                        ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #8
  %call210 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name188) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end206, %do.body200.for.inc_crit_edge, %do.end186.for.inc_crit_edge, %if.end177.for.inc_crit_edge
  %inc = add nuw nsw i32 %cnt.0345, 1
  %122 = ptrtoint ptr %len24 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %len24, align 4
  %conv127 = zext i16 %123 to i32
  %cmp128 = icmp ult i32 %inc, %conv127
  br i1 %cmp128, label %for.inc.for.body_crit_edge, label %cleanup.loopexit355

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

err:                                              ; preds = %i2c_wait_done.exit322.err_crit_edge, %if.end.i318.err_crit_edge, %i2c_wait_done.exit307.err_crit_edge, %if.end.i303.err_crit_edge
  %124 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool218.not = icmp eq i32 %124, 0
  br i1 %tobool218.not, label %err.cleanup_crit_edge, label %do.end222

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end222:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  %call224 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef -5) #9
  br label %cleanup

cleanup.loopexit355:                              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %conv127.le = zext i16 %123 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit355, %do.end222, %err.cleanup_crit_edge, %if.end125.cleanup_crit_edge, %do.end54, %do.body48.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %i2c_wait_done.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %i2c_wait_done.exit.cleanup_crit_edge ], [ -5, %if.end43.cleanup_crit_edge ], [ 0, %do.end54 ], [ 0, %do.body48.cleanup_crit_edge ], [ -5, %do.end222 ], [ -5, %err.cleanup_crit_edge ], [ %conv127.le, %cleanup.loopexit355 ], [ %conv127343, %if.end125.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !82, !84, !85, !87, !88, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__param_i2c_debug, !1, !"__param_i2c_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_i2c_debugtype300, !1, !"__UNIQUE_ID_i2c_debugtype300", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_i2c_debug301, !4, !"__UNIQUE_ID_i2c_debug301", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 18, i32 1}
!5 = !{ptr @__param_i2c_scan, !6, !"__param_i2c_scan", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 21, i32 1}
!7 = !{ptr @__UNIQUE_ID_i2c_scantype302, !6, !"__UNIQUE_ID_i2c_scantype302", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_i2c_scan303, !9, !"__UNIQUE_ID_i2c_scan303", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 22, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 293, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cx25821_i2c_register._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @cx25821_i2c_register._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @i2c_debug, !17, !"i2c_debug", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 16, i32 21}
!18 = !{ptr @i2c_scan, !19, !"i2c_scan", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 20, i32 21}
!20 = !{ptr @__param_str_i2c_debug, !1, !"__param_str_i2c_debug", i1 false, i1 false}
!21 = !{ptr @__param_str_i2c_scan, !6, !"__param_str_i2c_scan", i1 false, i1 false}
!22 = !{ptr @cx25821_i2c_adap_template, !23, !"cx25821_i2c_adap_template", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 278, i32 33}
!24 = !{ptr @cx25821_i2c_algo_template, !25, !"cx25821_i2c_algo_template", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 270, i32 35}
!26 = !{ptr @cx25821_i2c_client_template, !27, !"cx25821_i2c_client_template", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 284, i32 32}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 230, i32 2}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @i2c_xfer._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @i2c_xfer._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 233, i32 3}
!35 = !{ptr @i2c_xfer._entry.5, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @i2c_xfer._entry_ptr.7, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 169, i32 3}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @i2c_readbytes._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @i2c_readbytes._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 180, i32 3}
!44 = !{ptr @i2c_readbytes._entry.10, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @i2c_readbytes._entry_ptr.12, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 186, i32 4}
!48 = !{ptr @i2c_readbytes._entry.13, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @i2c_readbytes._entry_ptr.15, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 188, i32 4}
!52 = !{ptr @i2c_readbytes._entry.16, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @i2c_readbytes._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 209, i32 4}
!56 = !{ptr @i2c_readbytes._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @i2c_readbytes._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 211, i32 5}
!60 = !{ptr @i2c_readbytes._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @i2c_readbytes._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 220, i32 3}
!64 = !{ptr @i2c_readbytes._entry.25, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @i2c_readbytes._entry_ptr.27, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 75, i32 3}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @i2c_sendbytes._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @i2c_sendbytes._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 78, i32 3}
!73 = !{ptr @i2c_sendbytes._entry.30, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @i2c_sendbytes._entry_ptr.32, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @i2c_sendbytes._entry.33, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 91, i32 3}
!77 = !{ptr @i2c_sendbytes._entry_ptr.34, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 119, i32 4}
!80 = !{ptr @i2c_sendbytes._entry.35, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @i2c_sendbytes._entry_ptr.37, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @i2c_sendbytes._entry.38, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 144, i32 4}
!84 = !{ptr @i2c_sendbytes._entry_ptr.39, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @i2c_sendbytes._entry.40, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 146, i32 5}
!87 = !{ptr @i2c_sendbytes._entry_ptr.41, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @i2c_sendbytes._entry.42, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/cx25821/cx25821-i2c.c", i32 156, i32 3}
!90 = !{ptr @i2c_sendbytes._entry_ptr.43, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 2156804211}
!101 = !{i64 6830120}
!102 = !{i64 2156804801}
!103 = !{i64 6830538}
!104 = !{i64 2156786438}
!105 = !{i64 2156785666}
!106 = !{i64 2156810136}
!107 = !{i64 2156810674}
!108 = !{i64 2156811490}
!109 = !{i64 2156790793}
!110 = !{i64 2156791375}
!111 = !{i64 2156793599}
!112 = !{i64 2156794108}
!113 = !{i64 2156794617}
!114 = !{i64 2156796376}
!115 = !{i64 2156796885}
!116 = !{i64 2156797394}
