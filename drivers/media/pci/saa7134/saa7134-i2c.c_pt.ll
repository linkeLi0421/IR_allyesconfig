; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7134/saa7134-i2c.c_pt.bc'
source_filename = "../drivers/media/pci/saa7134/saa7134-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.saa7134_dev = type { %struct.list_head, %struct.mutex, %struct.spinlock, %struct.v4l2_device, %struct.work_struct, i32, i32, ptr, ptr, ptr, %struct.saa7134_dmasound, i32, ptr, [32 x i8], i32, ptr, i8, i8, ptr, ptr, i32, i32, i32, i8, i8, i32, i32, %struct.i2c_adapter, %struct.i2c_client, [256 x i8], i32, %struct.v4l2_framebuffer, ptr, i32, i32, %struct.v4l2_window, [8 x %struct.v4l2_clip], i32, ptr, %struct.saa7134_dmaqueue, %struct.vb2_queue, %struct.saa7134_dmaqueue, %struct.vb2_queue, i32, ptr, i32, i32, i32, i32, %struct.pm_qos_request, %struct.saa7134_ts, %struct.saa7134_dmaqueue, i32, i32, ptr, ptr, ptr, %struct.vb2_queue, %struct.work_struct, i32, %struct.v4l2_ctrl_handler, ptr, ptr, %struct.v4l2_ctrl_handler, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, %struct.saa7134_thread, ptr, ptr, i32, i32, i32, i32, %struct.v4l2_ctrl_handler, %struct.IR_i2c_init_data, ptr, [9 x %struct.media_entity], [9 x %struct.media_pad], %struct.media_entity, [2 x %struct.media_pad], %struct.media_pad, %struct.media_pad, ptr, %struct.vb2_dvb_frontends, ptr, ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.saa7134_dmasound = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.saa7134_pgtable, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr }
%struct.saa7134_pgtable = type { i32, ptr, i32 }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.143 }
%struct.anon.143 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.saa7134_ts = type { i32, i32 }
%struct.saa7134_dmaqueue = type { ptr, ptr, %struct.list_head, %struct.timer_list, i32, i32, %struct.saa7134_pgtable }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.saa7134_thread = type { ptr, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.128 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.162, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.162 = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_i2c_debug = internal constant [18 x i8] c"saa7134.i2c_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@i2c_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_debug = internal constant %struct.kernel_param { ptr @__param_str_i2c_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @i2c_debug } }, section "__param", align 4
@__UNIQUE_ID_i2c_debugtype387 = internal constant [31 x i8] c"saa7134.parmtype=i2c_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_debug388 = internal constant [51 x i8] c"saa7134.parm=i2c_debug:enable debug messages [i2c]\00", section ".modinfo", align 1
@__param_str_i2c_scan = internal constant [17 x i8] c"saa7134.i2c_scan\00", align 1
@i2c_scan = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_scan = internal constant %struct.kernel_param { ptr @__param_str_i2c_scan, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @i2c_scan } }, section "__param", align 4
@__UNIQUE_ID_i2c_scantype389 = internal constant [30 x i8] c"saa7134.parmtype=i2c_scan:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_scan390 = internal constant [50 x i8] c"saa7134.parm=i2c_scan:scan i2c bus at insmod time\00", section ".modinfo", align 1
@saa7134_adap_template = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 0, ptr @saa7134_algo, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"saa7134\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@saa7134_client_template = internal constant { %struct.i2c_client, [232 x i8] } { %struct.i2c_client { i16 0, i16 0, [20 x i8] c"saa7134 internal\00\00\00\00", ptr null, %struct.device zeroinitializer, i32 0, i32 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [232 x i8] zeroinitializer }, align 32
@saa7134_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @saa7134_i2c_xfer, ptr null, ptr null, ptr null, ptr @functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@saa7134_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017saa7134: i2c: start xfer\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"saa7134_i2c_xfer\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/saa7134/saa7134-i2c.c\00", [56 x i8] zeroinitializer }, align 32
@saa7134_i2c_xfer._entry_ptr = internal global ptr @saa7134_i2c_xfer._entry, section ".printk_index", align 4
@saa7134_i2c_xfer._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017saa7134: i2c: i2c xfer:\00", [38 x i8] zeroinitializer }, align 32
@saa7134_i2c_xfer._entry_ptr.5 = internal global ptr @saa7134_i2c_xfer._entry.3, section ".printk_index", align 4
@saa7134_i2c_xfer._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017saa7134: i2c: send address\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7134_i2c_xfer._entry_ptr.8 = internal global ptr @saa7134_i2c_xfer._entry.6, section ".printk_index", align 4
@saa7134_i2c_xfer._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01c [%02x quirk]\00", [16 x i8] zeroinitializer }, align 32
@saa7134_i2c_xfer._entry_ptr.11 = internal global ptr @saa7134_i2c_xfer._entry.9, section ".printk_index", align 4
@saa7134_i2c_xfer._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c < %02x\00", [22 x i8] zeroinitializer }, align 32
@saa7134_i2c_xfer._entry_ptr.14 = internal global ptr @saa7134_i2c_xfer._entry.12, section ".printk_index", align 4
@saa7134_i2c_xfer._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017saa7134: i2c: read bytes\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7134_i2c_xfer._entry_ptr.17 = internal global ptr @saa7134_i2c_xfer._entry.15, section ".printk_index", align 4
@saa7134_i2c_xfer._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c =\00", [27 x i8] zeroinitializer }, align 32
@saa7134_i2c_xfer._entry_ptr.20 = internal global ptr @saa7134_i2c_xfer._entry.18, section ".printk_index", align 4
@saa7134_i2c_xfer._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c%02x\00", [25 x i8] zeroinitializer }, align 32
@saa7134_i2c_xfer._entry_ptr.23 = internal global ptr @saa7134_i2c_xfer._entry.21, section ".printk_index", align 4
@saa7134_i2c_xfer._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c ?\00", [27 x i8] zeroinitializer }, align 32
@saa7134_i2c_xfer._entry_ptr.26 = internal global ptr @saa7134_i2c_xfer._entry.24, section ".printk_index", align 4
@saa7134_i2c_xfer._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa7134_i2c_xfer._entry_ptr.28 = internal global ptr @saa7134_i2c_xfer._entry.27, section ".printk_index", align 4
@saa7134_i2c_xfer._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017saa7134: i2c: write bytes\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7134_i2c_xfer._entry_ptr.31 = internal global ptr @saa7134_i2c_xfer._entry.29, section ".printk_index", align 4
@saa7134_i2c_xfer._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c %02x\00", [24 x i8] zeroinitializer }, align 32
@saa7134_i2c_xfer._entry_ptr.34 = internal global ptr @saa7134_i2c_xfer._entry.32, section ".printk_index", align 4
@saa7134_i2c_xfer._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017saa7134: i2c: xfer done\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7134_i2c_xfer._entry_ptr.37 = internal global ptr @saa7134_i2c_xfer._entry.35, section ".printk_index", align 4
@saa7134_i2c_xfer._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.1, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c >\00", [27 x i8] zeroinitializer }, align 32
@saa7134_i2c_xfer._entry_ptr.40 = internal global ptr @saa7134_i2c_xfer._entry.38, section ".printk_index", align 4
@saa7134_i2c_xfer._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.1, ptr @.str.2, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@saa7134_i2c_xfer._entry_ptr.43 = internal global ptr @saa7134_i2c_xfer._entry.41, section ".printk_index", align 4
@saa7134_i2c_xfer._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.1, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\01c ERROR: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@saa7134_i2c_xfer._entry_ptr.46 = internal global ptr @saa7134_i2c_xfer._entry.44, section ".printk_index", align 4
@str_i2c_status = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], [32 x i8] zeroinitializer }, align 32
@i2c_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017saa7134: i2c: i2c stat <= %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2c_get_status\00", [17 x i8] zeroinitializer }, align 32
@i2c_get_status._entry_ptr = internal global ptr @i2c_get_status._entry, section ".printk_index", align 4
@i2c_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017saa7134: i2c: i2c reset\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c_reset\00", [22 x i8] zeroinitializer }, align 32
@i2c_reset._entry_ptr = internal global ptr @i2c_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@i2c_set_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017saa7134: i2c: i2c stat => %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2c_set_status\00", [17 x i8] zeroinitializer }, align 32
@i2c_set_status._entry_ptr = internal global ptr @i2c_set_status._entry, section ".printk_index", align 4
@i2c_send_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017saa7134: i2c: i2c data => 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_send_byte\00", [18 x i8] zeroinitializer }, align 32
@i2c_send_byte._entry_ptr = internal global ptr @i2c_send_byte._entry, section ".printk_index", align 4
@i2c_recv_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017saa7134: i2c: i2c data <= 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_recv_byte\00", [18 x i8] zeroinitializer }, align 32
@i2c_recv_byte._entry_ptr = internal global ptr @i2c_recv_byte._entry, section ".printk_index", align 4
@i2c_set_attr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017saa7134: i2c: i2c attr => %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c_set_attr\00", [19 x i8] zeroinitializer }, align 32
@i2c_set_attr._entry_ptr = internal global ptr @i2c_set_attr._entry, section ".printk_index", align 4
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NOP\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"STOP\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CONTINUE\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IDLE\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DONE_STOP\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BUSY\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TO_SCL\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TO_ARB\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DONE_WRITE\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DONE_READ\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DONE_WRITE_TO\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DONE_READ_TO\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NO_DEVICE\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NO_ACKN\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BUS_ERR\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ARB_LOST\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SEQ_ERR\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ST_ERR\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SW_ERR\00", [25 x i8] zeroinitializer }, align 32
@saa7134_i2c_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016saa7134: %s: Huh, no eeprom present (err=%d)?\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"saa7134_i2c_eeprom\00", [45 x i8] zeroinitializer }, align 32
@saa7134_i2c_eeprom._entry_ptr = internal global ptr @saa7134_i2c_eeprom._entry, section ".printk_index", align 4
@saa7134_i2c_eeprom._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014saa7134: %s: i2c eeprom read error (err=%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@saa7134_i2c_eeprom._entry_ptr.83 = internal global ptr @saa7134_i2c_eeprom._entry.81, section ".printk_index", align 4
@saa7134_i2c_eeprom._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016saa7134: i2c eeprom %02x: %*ph\0A\00", [62 x i8] zeroinitializer }, align 32
@saa7134_i2c_eeprom._entry_ptr.86 = internal global ptr @saa7134_i2c_eeprom._entry.84, section ".printk_index", align 4
@saa7134_i2c_eeprom_md7134_gate.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.87, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 0, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7134\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"saa7134_i2c_eeprom_md7134_gate\00", [33 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: DVB-T demod i2c gate was left open\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"saa7134: %s: DVB-T demod i2c gate was left open\0A\00", [47 x i8] zeroinitializer }, align 32
@saa7134_i2c_eeprom_md7134_gate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.88, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013saa7134: %s: EEPROM i2c gate close failure\0A\00", [50 x i8] zeroinitializer }, align 32
@saa7134_i2c_eeprom_md7134_gate._entry_ptr = internal global ptr @saa7134_i2c_eeprom_md7134_gate._entry, section ".printk_index", align 4
@do_i2c_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016saa7134: i2c scan: found device @ 0x%x  [%s]\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_i2c_scan\00", [20 x i8] zeroinitializer }, align 32
@do_i2c_scan._entry_ptr = internal global ptr @do_i2c_scan._entry, section ".printk_index", align 4
@.str.94 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mpeg encoder (saa6752hs)\00", [39 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"remote control\00", [17 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda9887\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tuner (analog)\00", [17 x i8] zeroinitializer }, align 32
@i2c_devs = internal constant { <{ [97 x ptr], [31 x ptr] }>, [128 x i8] } { <{ [97 x ptr], [31 x ptr] }> <{ [97 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.95, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.96, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.97, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.98, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.99], [31 x ptr] zeroinitializer }>, [128 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 25, i64 64, i64 65]
@___asan_gen_.101 = private unnamed_addr constant [10 x i8] c"i2c_debug\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 23, i32 21 }
@___asan_gen_.104 = private unnamed_addr constant [9 x i8] c"i2c_scan\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 27, i32 21 }
@___asan_gen_.107 = private unnamed_addr constant [22 x i8] c"saa7134_adap_template\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 333, i32 33 }
@___asan_gen_.110 = private unnamed_addr constant [24 x i8] c"saa7134_client_template\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 339, i32 32 }
@___asan_gen_.113 = private unnamed_addr constant [13 x i8] c"saa7134_algo\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 328, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 240, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 241, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 245, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 257, i32 5 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 261, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 268, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 270, i32 5 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 274, i32 5 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 281, i32 5 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 285, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 289, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 292, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 299, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 300, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 311, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 316, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [15 x i8] c"str_i2c_status\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 46, i32 14 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 87, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 163, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 94, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 201, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 223, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 100, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 72, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 72, i32 9 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 72, i32 17 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 47, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 47, i32 10 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 47, i32 23 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 47, i32 31 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 47, i32 41 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 47, i32 51 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 48, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 48, i32 15 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 48, i32 32 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 48, i32 48 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 49, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 49, i32 13 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 49, i32 24 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 49, i32 36 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 49, i32 47 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 49, i32 57 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 389, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 394, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 402, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 366, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 372, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 426, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 409, i32 18 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 413, i32 18 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 412, i32 18 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 410, i32 18 }
@___asan_gen_.392 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 411, i32 18 }
@___asan_gen_.395 = private unnamed_addr constant [9 x i8] c"i2c_devs\00", align 1
@___asan_gen_.396 = private constant [43 x i8] c"../drivers/media/pci/saa7134/saa7134-i2c.c\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 408, i32 14 }
@llvm.compiler.used = appending global [132 x ptr] [ptr @__UNIQUE_ID_i2c_debug388, ptr @__UNIQUE_ID_i2c_debugtype387, ptr @__UNIQUE_ID_i2c_scan390, ptr @__UNIQUE_ID_i2c_scantype389, ptr @__param_i2c_debug, ptr @__param_i2c_scan, ptr @do_i2c_scan._entry, ptr @do_i2c_scan._entry_ptr, ptr @i2c_get_status._entry, ptr @i2c_get_status._entry_ptr, ptr @i2c_recv_byte._entry, ptr @i2c_recv_byte._entry_ptr, ptr @i2c_reset._entry, ptr @i2c_reset._entry_ptr, ptr @i2c_send_byte._entry, ptr @i2c_send_byte._entry_ptr, ptr @i2c_set_attr._entry, ptr @i2c_set_attr._entry_ptr, ptr @i2c_set_status._entry, ptr @i2c_set_status._entry_ptr, ptr @saa7134_i2c_eeprom._entry, ptr @saa7134_i2c_eeprom._entry.81, ptr @saa7134_i2c_eeprom._entry.84, ptr @saa7134_i2c_eeprom._entry_ptr, ptr @saa7134_i2c_eeprom._entry_ptr.83, ptr @saa7134_i2c_eeprom._entry_ptr.86, ptr @saa7134_i2c_eeprom_md7134_gate._entry, ptr @saa7134_i2c_eeprom_md7134_gate._entry_ptr, ptr @saa7134_i2c_xfer._entry, ptr @saa7134_i2c_xfer._entry.12, ptr @saa7134_i2c_xfer._entry.15, ptr @saa7134_i2c_xfer._entry.18, ptr @saa7134_i2c_xfer._entry.21, ptr @saa7134_i2c_xfer._entry.24, ptr @saa7134_i2c_xfer._entry.27, ptr @saa7134_i2c_xfer._entry.29, ptr @saa7134_i2c_xfer._entry.3, ptr @saa7134_i2c_xfer._entry.32, ptr @saa7134_i2c_xfer._entry.35, ptr @saa7134_i2c_xfer._entry.38, ptr @saa7134_i2c_xfer._entry.41, ptr @saa7134_i2c_xfer._entry.44, ptr @saa7134_i2c_xfer._entry.6, ptr @saa7134_i2c_xfer._entry.9, ptr @saa7134_i2c_xfer._entry_ptr, ptr @saa7134_i2c_xfer._entry_ptr.11, ptr @saa7134_i2c_xfer._entry_ptr.14, ptr @saa7134_i2c_xfer._entry_ptr.17, ptr @saa7134_i2c_xfer._entry_ptr.20, ptr @saa7134_i2c_xfer._entry_ptr.23, ptr @saa7134_i2c_xfer._entry_ptr.26, ptr @saa7134_i2c_xfer._entry_ptr.28, ptr @saa7134_i2c_xfer._entry_ptr.31, ptr @saa7134_i2c_xfer._entry_ptr.34, ptr @saa7134_i2c_xfer._entry_ptr.37, ptr @saa7134_i2c_xfer._entry_ptr.40, ptr @saa7134_i2c_xfer._entry_ptr.43, ptr @saa7134_i2c_xfer._entry_ptr.46, ptr @saa7134_i2c_xfer._entry_ptr.5, ptr @saa7134_i2c_xfer._entry_ptr.8, ptr @i2c_debug, ptr @i2c_scan, ptr @saa7134_adap_template, ptr @saa7134_client_template, ptr @saa7134_algo, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @str_i2c_status, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @i2c_devs], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_scan to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_adap_template to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_client_template to i32), i32 984, i32 1216, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_xfer._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_xfer._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_xfer._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_xfer._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_xfer._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_xfer._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_xfer._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_xfer._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_xfer._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_xfer._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_xfer._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_xfer._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_xfer._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_xfer._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_xfer._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str_i2c_status to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_set_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_send_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_recv_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_set_attr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_eeprom._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_eeprom._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_i2c_eeprom_md7134_gate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_i2c_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_devs to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_i2c_register(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %buf.i32 = alloca i8, align 1
  %buf.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_adap = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %0 = call ptr @memcpy(ptr %i2c_adap, ptr @saa7134_adap_template, i32 1360)
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %1 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %parent = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27, i32 9, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %parent, align 8
  %name = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27, i32 12
  %name5 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name5, i32 noundef 48) #7
  %algo_data = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27, i32 3
  %4 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %algo_data, align 4
  %v4l2_dev = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27, i32 9, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %v4l2_dev, ptr %driver_data.i.i, align 4
  %call10 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adap) #7
  %i2c_client = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 28
  %6 = call ptr @memcpy(ptr %i2c_client, ptr @saa7134_client_template, i32 984)
  %adapter = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 28, i32 3
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %i2c_adap, ptr %adapter, align 8
  %eedata = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #7
  %board.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 20
  %8 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %board.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %9)
  %cmp.i = icmp eq i32 %9, 12
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @saa7134_i2c_eeprom_md7134_gate(ptr noundef %dev) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %addr.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 28, i32 1
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 80, ptr %addr.i, align 2
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buf.i, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client, ptr noundef nonnull %buf.i, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp2.not.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp2.not.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name5, i32 noundef %call.i.i) #10
  br label %saa7134_i2c_eeprom.exit

if.end5.i:                                        ; preds = %if.end.i
  %call.i1.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client, ptr noundef %eedata, i32 noundef 256, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call.i1.i)
  %cmp8.not.i = icmp eq i32 %call.i1.i, 256
  br i1 %cmp8.not.i, label %for.body.preheader.i, label %do.end12.i

for.body.preheader.i:                             ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 0, i32 noundef 16, ptr noundef %eedata) #10
  %arrayidx.1.i = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 16
  %call25.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 16, i32 noundef 16, ptr noundef %arrayidx.1.i) #10
  %arrayidx.2.i = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 32
  %call25.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 32, i32 noundef 16, ptr noundef %arrayidx.2.i) #10
  %arrayidx.3.i = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 48
  %call25.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 48, i32 noundef 16, ptr noundef %arrayidx.3.i) #10
  %arrayidx.4.i = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 64
  %call25.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 64, i32 noundef 16, ptr noundef %arrayidx.4.i) #10
  %arrayidx.5.i = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 80
  %call25.5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 80, i32 noundef 16, ptr noundef %arrayidx.5.i) #10
  %arrayidx.6.i = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 96
  %call25.6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 96, i32 noundef 16, ptr noundef %arrayidx.6.i) #10
  %arrayidx.7.i = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 112
  %call25.7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 112, i32 noundef 16, ptr noundef %arrayidx.7.i) #10
  %arrayidx.8.i = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 128
  %call25.8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 128, i32 noundef 16, ptr noundef %arrayidx.8.i) #10
  %arrayidx.9.i = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 144
  %call25.9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 144, i32 noundef 16, ptr noundef %arrayidx.9.i) #10
  %arrayidx.10.i = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 160
  %call25.10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 160, i32 noundef 16, ptr noundef %arrayidx.10.i) #10
  %arrayidx.11.i = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 176
  %call25.11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 176, i32 noundef 16, ptr noundef %arrayidx.11.i) #10
  %arrayidx.12.i = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 192
  %call25.12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 192, i32 noundef 16, ptr noundef %arrayidx.12.i) #10
  %arrayidx.13.i = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 208
  %call25.13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 208, i32 noundef 16, ptr noundef %arrayidx.13.i) #10
  %arrayidx.14.i = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 224
  %call25.14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 224, i32 noundef 16, ptr noundef %arrayidx.14.i) #10
  %arrayidx.15.i = getelementptr %struct.saa7134_dev, ptr %dev, i32 0, i32 29, i32 240
  %call25.15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, i32 noundef 240, i32 noundef 16, ptr noundef %arrayidx.15.i) #10
  br label %saa7134_i2c_eeprom.exit

do.end12.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name5, i32 noundef %call.i1.i) #10
  br label %saa7134_i2c_eeprom.exit

saa7134_i2c_eeprom.exit:                          ; preds = %do.end12.i, %for.body.preheader.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #7
  %12 = load i32, ptr @i2c_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %saa7134_i2c_eeprom.exit.if.end_crit_edge, label %if.then

saa7134_i2c_eeprom.exit.if.end_crit_edge:         ; preds = %saa7134_i2c_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %saa7134_i2c_eeprom.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i32) #7
  %13 = ptrtoint ptr %buf.i32 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %buf.i32, align 1, !annotation !211
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %i.011.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.011.i to i16
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %addr.i, align 2
  %call.i.i34 = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client, ptr noundef nonnull %buf.i32, i32 noundef 0, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %cmp1.i = icmp slt i32 %call.i.i34, 0
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %do.end.i36

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end.i36:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw nsw i32 %i.011.i, 1
  %arrayidx.i = getelementptr [128 x ptr], ptr @i2c_devs, i32 0, i32 %i.011.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.94, ptr %16
  %call4.i35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %shl.i, ptr noundef nonnull %spec.select.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i36, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %do_i2c_scan.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do_i2c_scan.exit:                                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i32) #7
  br label %if.end

if.end:                                           ; preds = %do_i2c_scan.exit, %saa7134_i2c_eeprom.exit.if.end_crit_edge
  call void @saa7134_probe_i2c_ir(ptr noundef %dev) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_probe_i2c_ir(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_i2c_unregister(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_adap = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7134_i2c_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %bmmio.i = getelementptr inbounds %struct.saa7134_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 384
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  %5 = and i8 %4, 15
  %6 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %do.end.i, label %entry.i2c_get_status.exit_crit_edge

entry.i2c_get_status.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_get_status.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = zext i8 %5 to i32
  %arrayidx.i = getelementptr [16 x ptr], ptr @str_i2c_status, i32 0, i32 %and.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %8) #10
  br label %i2c_get_status.exit

i2c_get_status.exit:                              ; preds = %do.end.i, %entry.i2c_get_status.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %switch.i = icmp ugt i8 %5, 1
  br i1 %switch.i, label %if.then, label %i2c_get_status.exit.do.body_crit_edge

i2c_get_status.exit.do.body_crit_edge:            ; preds = %i2c_get_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %i2c_get_status.exit
  %9 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i377 = icmp eq i32 %9, 2
  br i1 %cmp.i377, label %do.end.i378, label %if.then.do.end3.i_crit_edge

if.then.do.end3.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i378:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i378, %if.then.do.end3.i_crit_edge
  %10 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmmio.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 384
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  %13 = and i8 %12, 15
  %and.i.i = zext i8 %13 to i32
  %14 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.i.i = icmp eq i32 %14, 2
  br i1 %cmp.i.i, label %do.end.i.i, label %do.end3.i.i2c_get_status.exit.i_crit_edge

do.end3.i.i2c_get_status.exit.i_crit_edge:        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_get_status.exit.i

do.end.i.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr [16 x ptr], ptr @str_i2c_status, i32 0, i32 %and.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %16) #10
  br label %i2c_get_status.exit.i

i2c_get_status.exit.i:                            ; preds = %do.end.i.i, %do.end3.i.i2c_get_status.exit.i_crit_edge
  %17 = add nsw i32 %and.i.i, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %17)
  %switch.i.i = icmp ult i32 %17, -6
  br i1 %switch.i.i, label %i2c_get_status.exit.i.do.body_crit_edge, label %if.end7.i

i2c_get_status.exit.i.do.body_crit_edge:          ; preds = %i2c_get_status.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end7.i:                                        ; preds = %i2c_get_status.exit.i
  %18 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i30.i = icmp eq i32 %18, 2
  br i1 %cmp.i30.i, label %do.end.i32.i, label %if.end7.i.i2c_set_status.exit.i_crit_edge

if.end7.i.i2c_set_status.exit.i_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_set_status.exit.i

do.end.i32.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i31.i = getelementptr [16 x ptr], ptr @str_i2c_status, i32 0, i32 %and.i.i
  %19 = ptrtoint ptr %arrayidx.i31.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i31.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %20) #10
  br label %i2c_set_status.exit.i

i2c_set_status.exit.i:                            ; preds = %do.end.i32.i, %if.end7.i.i2c_set_status.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bmmio.i, align 8
  %add.ptr.i34.i = getelementptr i8, ptr %22, i32 384
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i34.i) #7, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !215
  %24 = and i8 %23, -16
  %conv9.i.i = or i8 %24, %13
  %25 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bmmio.i, align 8
  %add.ptr11.i.i = getelementptr i8, ptr %26, i32 384
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i.i, i8 %conv9.i.i) #7, !srcloc !216
  br label %for.body.i

for.body.i:                                       ; preds = %if.end13.i.for.body.i_crit_edge, %i2c_set_status.exit.i
  %count.059.i = phi i32 [ 0, %i2c_set_status.exit.i ], [ %inc.i, %if.end13.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bmmio.i, align 8
  %add.ptr.i36.i = getelementptr i8, ptr %28, i32 384
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i36.i) #7, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  %30 = and i8 %29, 15
  %and.i37.i = zext i8 %30 to i32
  %31 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp.i38.i = icmp eq i32 %31, 2
  br i1 %cmp.i38.i, label %do.end.i41.i, label %for.body.i.i2c_get_status.exit42.i_crit_edge

for.body.i.i2c_get_status.exit42.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_get_status.exit42.i

do.end.i41.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i39.i = getelementptr [16 x ptr], ptr @str_i2c_status, i32 0, i32 %and.i37.i
  %32 = ptrtoint ptr %arrayidx.i39.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i39.i, align 4
  %call5.i40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %33) #10
  br label %i2c_get_status.exit42.i

i2c_get_status.exit42.i:                          ; preds = %do.end.i41.i, %for.body.i.i2c_get_status.exit42.i_crit_edge
  %34 = add nsw i32 %and.i37.i, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %34)
  %switch.i44.i = icmp ult i32 %34, -6
  br i1 %switch.i44.i, label %if.end16.i, label %if.end13.i

if.end13.i:                                       ; preds = %i2c_get_status.exit42.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 6871936) #7
  %inc.i = add nuw nsw i32 %count.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end13.i.cleanup_crit_edge, label %if.end13.i.for.body.i_crit_edge

if.end13.i.for.body.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16.i:                                       ; preds = %i2c_get_status.exit42.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %switch.i46.i = icmp ugt i8 %30, 1
  br i1 %switch.i46.i, label %if.end16.i.cleanup_crit_edge, label %if.end20.i

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20.i:                                       ; preds = %if.end16.i
  %36 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp.i48.i = icmp eq i32 %36, 2
  br i1 %cmp.i48.i, label %do.end.i50.i, label %if.end20.i.i2c_set_attr.exit.i_crit_edge

if.end20.i.i2c_set_attr.exit.i_crit_edge:         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_set_attr.exit.i

do.end.i50.i:                                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.59) #10
  br label %i2c_set_attr.exit.i

i2c_set_attr.exit.i:                              ; preds = %do.end.i50.i, %if.end20.i.i2c_set_attr.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bmmio.i, align 8
  %add.ptr.i52.i = getelementptr i8, ptr %38, i32 384
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i52.i) #7, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %40 = and i8 %39, 63
  %41 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bmmio.i, align 8
  %add.ptr11.i53.i = getelementptr i8, ptr %42, i32 384
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i53.i, i8 %40) #7, !srcloc !216
  br label %do.body

do.body:                                          ; preds = %i2c_set_attr.exit.i, %i2c_get_status.exit.i.do.body_crit_edge, %i2c_get_status.exit.do.body_crit_edge
  %43 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp = icmp eq i32 %43, 2
  br i1 %cmp, label %do.end, label %do.body.do.body12_crit_edge

do.body.do.body12_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  %.pr = load i32, ptr @i2c_debug, align 4
  br label %do.body12

do.body12:                                        ; preds = %do.end, %do.body.do.body12_crit_edge
  %44 = phi i32 [ %43, %do.body.do.body12_crit_edge ], [ %.pr, %do.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp13 = icmp eq i32 %44, 1
  br i1 %cmp13, label %do.end17, label %do.body12.do.end22_crit_edge

do.body12.do.end22_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

do.end17:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %do.end22

do.end22:                                         ; preds = %do.end17, %do.body12.do.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp23434 = icmp sgt i32 %num, 0
  br i1 %cmp23434, label %do.end22.for.body_crit_edge, label %do.end22.do.body250_crit_edge

do.end22.do.body250_crit_edge:                    ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body250

do.end22.for.body_crit_edge:                      ; preds = %do.end22
  br label %for.body

for.body:                                         ; preds = %for.inc247.for.body_crit_edge, %do.end22.for.body_crit_edge
  %i.0435 = phi i32 [ %inc248, %for.inc247.for.body_crit_edge ], [ 0, %do.end22.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0435
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0435, i32 1
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %flags, align 2
  %47 = and i16 %46, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool24.not = icmp eq i16 %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0435)
  %cmp25 = icmp eq i32 %i.0435, 0
  %or.cond = select i1 %tobool24.not, i1 true, i1 %cmp25
  br i1 %or.cond, label %do.body28, label %for.body.if.end110_crit_edge

for.body.if.end110_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

do.body28:                                        ; preds = %for.body
  %48 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp29 = icmp eq i32 %48, 2
  br i1 %cmp29, label %do.end34, label %do.body28.do.end39_crit_edge

do.body28.do.end39_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %do.end39

do.end39:                                         ; preds = %do.end34, %do.body28.do.end39_crit_edge
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx, align 4
  %conv42 = zext i16 %50 to i32
  %shl = shl nuw nsw i32 %conv42, 1
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %flags, align 2
  %53 = and i16 %52, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool47.not = icmp eq i16 %53, 0
  %54 = zext i16 %53 to i32
  %55 = or i32 %shl, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0435)
  %cmp50 = icmp eq i32 %i.0435, 0
  %brmerge = select i1 %cmp50, i1 true, i1 %tobool47.not
  br i1 %brmerge, label %do.end39.do.body92_crit_edge, label %land.lhs.true57

do.end39.do.body92_crit_edge:                     ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body92

land.lhs.true57:                                  ; preds = %do.end39
  %56 = zext i16 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i16 %50, label %if.then75 [
    i16 64, label %land.lhs.true57.do.body92_crit_edge
    i16 65, label %land.lhs.true57.do.body92_crit_edge472
    i16 25, label %land.lhs.true57.do.body92_crit_edge473
  ]

land.lhs.true57.do.body92_crit_edge473:           ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body92

land.lhs.true57.do.body92_crit_edge472:           ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body92

land.lhs.true57.do.body92_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body92

if.then75:                                        ; preds = %land.lhs.true57
  %57 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp77 = icmp eq i32 %57, 1
  br i1 %cmp77, label %do.end82, label %if.then75.do.end87_crit_edge

if.then75.do.end87_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end87

do.end82:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 254) #10
  br label %do.end87

do.end87:                                         ; preds = %do.end82, %if.then75.do.end87_crit_edge
  %call89 = tail call fastcc i32 @i2c_send_byte(ptr noundef %1, i32 noundef 3, i8 noundef zeroext -2)
  %call90 = tail call fastcc i32 @i2c_recv_byte(ptr noundef %1)
  br label %do.body92

do.body92:                                        ; preds = %do.end87, %land.lhs.true57.do.body92_crit_edge, %land.lhs.true57.do.body92_crit_edge472, %land.lhs.true57.do.body92_crit_edge473, %do.end39.do.body92_crit_edge
  %58 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp93 = icmp eq i32 %58, 1
  br i1 %cmp93, label %do.end98, label %do.body92.do.end103_crit_edge

do.body92.do.end103_crit_edge:                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end103

do.end98:                                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #9
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %55) #10
  br label %do.end103

do.end103:                                        ; preds = %do.end98, %do.body92.do.end103_crit_edge
  %conv104 = trunc i32 %55 to i8
  %call105 = tail call fastcc i32 @i2c_send_byte(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %conv104)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %do.end103.err_crit_edge, label %do.end103.if.end110_crit_edge

do.end103.if.end110_crit_edge:                    ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

do.end103.err_crit_edge:                          ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end110:                                        ; preds = %do.end103.if.end110_crit_edge, %for.body.if.end110_crit_edge
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %flags, align 2
  %61 = and i16 %60, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool115.not = icmp eq i16 %61, 0
  %62 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp204 = icmp eq i32 %62, 2
  br i1 %tobool115.not, label %do.body203, label %do.body117

do.body117:                                       ; preds = %if.end110
  br i1 %cmp204, label %do.end123, label %do.body117.do.end128_crit_edge

do.body117.do.end128_crit_edge:                   ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end128

do.end123:                                        ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #9
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %do.end128

do.end128:                                        ; preds = %do.end123, %do.body117.do.end128_crit_edge
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0435, i32 2
  %63 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %cmp132429.not = icmp eq i16 %64, 0
  br i1 %cmp132429.not, label %do.end128.for.end_crit_edge, label %do.body135.lr.ph

do.end128.for.end_crit_edge:                      ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body135.lr.ph:                                 ; preds = %do.end128
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0435, i32 3
  br label %do.body135

do.body135:                                       ; preds = %do.end163.do.body135_crit_edge, %do.body135.lr.ph
  %byte.0430 = phi i32 [ 0, %do.body135.lr.ph ], [ %inc, %do.end163.do.body135_crit_edge ]
  %65 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp136 = icmp eq i32 %65, 1
  br i1 %cmp136, label %do.end141, label %do.body135.do.end146_crit_edge

do.body135.do.end146_crit_edge:                   ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end146

do.end141:                                        ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #9
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %do.end146

do.end146:                                        ; preds = %do.end141, %do.body135.do.end146_crit_edge
  %call147 = tail call fastcc i32 @i2c_recv_byte(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %cmp148 = icmp slt i32 %call147, 0
  br i1 %cmp148, label %do.end146.err_crit_edge, label %do.body152

do.end146.err_crit_edge:                          ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

do.body152:                                       ; preds = %do.end146
  %66 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp153 = icmp eq i32 %66, 1
  br i1 %cmp153, label %do.end158, label %do.body152.do.end163_crit_edge

do.body152.do.end163_crit_edge:                   ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end163

do.end158:                                        ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #9
  %call160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call147) #10
  br label %do.end163

do.end163:                                        ; preds = %do.end158, %do.body152.do.end163_crit_edge
  %conv164 = trunc i32 %call147 to i8
  %67 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buf, align 4
  %arrayidx166 = getelementptr i8, ptr %68, i32 %byte.0430
  %69 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv164, ptr %arrayidx166, align 1
  %inc = add nuw nsw i32 %byte.0430, 1
  %70 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %len, align 4
  %conv131 = zext i16 %71 to i32
  %cmp132 = icmp ult i32 %inc, %conv131
  br i1 %cmp132, label %do.end163.do.body135_crit_edge, label %do.end163.for.end_crit_edge

do.end163.for.end_crit_edge:                      ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end163.do.body135_crit_edge:                   ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body135

for.end:                                          ; preds = %do.end163.for.end_crit_edge, %do.end128.for.end_crit_edge
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 25, i16 %73)
  %cmp170 = icmp eq i16 %73, 25
  br i1 %cmp170, label %do.body173, label %for.end.for.inc247_crit_edge

for.end.for.inc247_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc247

do.body173:                                       ; preds = %for.end
  %74 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp174 = icmp eq i32 %74, 1
  br i1 %cmp174, label %do.end179, label %do.body173.do.end184_crit_edge

do.body173.do.end184_crit_edge:                   ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end184

do.end179:                                        ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #9
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  br label %do.end184

do.end184:                                        ; preds = %do.end179, %do.body173.do.end184_crit_edge
  %call185 = tail call fastcc i32 @i2c_recv_byte(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %cmp186 = icmp slt i32 %call185, 0
  br i1 %cmp186, label %do.end184.err_crit_edge, label %do.body190

do.end184.err_crit_edge:                          ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

do.body190:                                       ; preds = %do.end184
  %75 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp191 = icmp eq i32 %75, 1
  br i1 %cmp191, label %do.end196, label %do.body190.for.inc247_crit_edge

do.body190.for.inc247_crit_edge:                  ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc247

do.end196:                                        ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #9
  %call198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call185) #10
  br label %for.inc247

do.body203:                                       ; preds = %if.end110
  br i1 %cmp204, label %do.end209, label %do.body203.do.end214_crit_edge

do.body203.do.end214_crit_edge:                   ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end214

do.end209:                                        ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #9
  %call211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #10
  br label %do.end214

do.end214:                                        ; preds = %do.end209, %do.body203.do.end214_crit_edge
  %len217 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0435, i32 2
  %76 = ptrtoint ptr %len217 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %len217, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %cmp219432.not = icmp eq i16 %77, 0
  br i1 %cmp219432.not, label %do.end214.for.inc247_crit_edge, label %for.body221.lr.ph

do.end214.for.inc247_crit_edge:                   ; preds = %do.end214
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc247

for.body221.lr.ph:                                ; preds = %do.end214
  %buf223 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0435, i32 3
  br label %for.body221

for.cond215:                                      ; preds = %do.end237
  %inc244 = add nuw nsw i32 %byte.1433, 1
  %78 = ptrtoint ptr %len217 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %len217, align 4
  %conv218 = zext i16 %79 to i32
  %cmp219 = icmp ult i32 %inc244, %conv218
  br i1 %cmp219, label %for.cond215.for.body221_crit_edge, label %for.cond215.for.inc247_crit_edge

for.cond215.for.inc247_crit_edge:                 ; preds = %for.cond215
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc247

for.cond215.for.body221_crit_edge:                ; preds = %for.cond215
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body221

for.body221:                                      ; preds = %for.cond215.for.body221_crit_edge, %for.body221.lr.ph
  %byte.1433 = phi i32 [ 0, %for.body221.lr.ph ], [ %inc244, %for.cond215.for.body221_crit_edge ]
  %80 = ptrtoint ptr %buf223 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %buf223, align 4
  %arrayidx224 = getelementptr i8, ptr %81, i32 %byte.1433
  %82 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx224, align 1
  %84 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp226 = icmp eq i32 %84, 1
  br i1 %cmp226, label %do.end231, label %for.body221.do.end237_crit_edge

for.body221.do.end237_crit_edge:                  ; preds = %for.body221
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end237

do.end231:                                        ; preds = %for.body221
  call void @__sanitizer_cov_trace_pc() #9
  %conv233 = zext i8 %83 to i32
  %call234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv233) #10
  br label %do.end237

do.end237:                                        ; preds = %do.end231, %for.body221.do.end237_crit_edge
  %call238 = tail call fastcc i32 @i2c_send_byte(ptr noundef %1, i32 noundef 2, i8 noundef zeroext %83)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %cmp239 = icmp slt i32 %call238, 0
  br i1 %cmp239, label %do.end237.err_crit_edge, label %for.cond215

do.end237.err_crit_edge:                          ; preds = %do.end237
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

for.inc247:                                       ; preds = %for.cond215.for.inc247_crit_edge, %do.end214.for.inc247_crit_edge, %do.end196, %do.body190.for.inc247_crit_edge, %for.end.for.inc247_crit_edge
  %inc248 = add nuw nsw i32 %i.0435, 1
  %exitcond.not = icmp eq i32 %inc248, %num
  br i1 %exitcond.not, label %for.inc247.do.body250_crit_edge, label %for.inc247.for.body_crit_edge

for.inc247.for.body_crit_edge:                    ; preds = %for.inc247
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc247.do.body250_crit_edge:                  ; preds = %for.inc247
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body250

do.body250:                                       ; preds = %for.inc247.do.body250_crit_edge, %do.end22.do.body250_crit_edge
  %85 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp251 = icmp eq i32 %85, 2
  br i1 %cmp251, label %do.end256, label %do.body250.do.body262_crit_edge

do.body250.do.body262_crit_edge:                  ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body262

do.end256:                                        ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #9
  %call258 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #10
  %.pr417 = load i32, ptr @i2c_debug, align 4
  br label %do.body262

do.body262:                                       ; preds = %do.end256, %do.body250.do.body262_crit_edge
  %86 = phi i32 [ %85, %do.body250.do.body262_crit_edge ], [ %.pr417, %do.end256 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp263 = icmp eq i32 %86, 1
  br i1 %cmp263, label %do.end268, label %do.body262.do.end273_crit_edge

do.body262.do.end273_crit_edge:                   ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end273

do.end268:                                        ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #9
  %call270 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #10
  br label %do.end273

do.end273:                                        ; preds = %do.end268, %do.body262.do.end273_crit_edge
  %87 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %87)
  %cmp.i379 = icmp eq i32 %87, 2
  br i1 %cmp.i379, label %do.end.i381, label %do.end273.i2c_set_attr.exit_crit_edge

do.end273.i2c_set_attr.exit_crit_edge:            ; preds = %do.end273
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_set_attr.exit

do.end.i381:                                      ; preds = %do.end273
  call void @__sanitizer_cov_trace_pc() #9
  %call.i380 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.60) #10
  br label %i2c_set_attr.exit

i2c_set_attr.exit:                                ; preds = %do.end.i381, %do.end273.i2c_set_attr.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  tail call void @arm_heavy_mb() #7
  %88 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bmmio.i, align 8
  %add.ptr.i383 = getelementptr i8, ptr %89, i32 384
  %90 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i383) #7, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %91 = and i8 %90, 63
  %conv9.i = or i8 %91, 64
  %92 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bmmio.i, align 8
  %add.ptr11.i = getelementptr i8, ptr %93, i32 384
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i, i8 %conv9.i) #7, !srcloc !216
  br label %for.body.i388

for.body.i388:                                    ; preds = %if.end.i.for.body.i388_crit_edge, %i2c_set_attr.exit
  %count.08.i = phi i32 [ 0, %i2c_set_attr.exit ], [ %inc.i394, %if.end.i.for.body.i388_crit_edge ]
  %94 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bmmio.i, align 8
  %add.ptr.i.i385 = getelementptr i8, ptr %95, i32 384
  %96 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i385) #7, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  %97 = and i8 %96, 15
  %and.i.i386 = zext i8 %97 to i32
  %98 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %98)
  %cmp.i.i387 = icmp eq i32 %98, 2
  br i1 %cmp.i.i387, label %do.end.i.i391, label %for.body.i388.i2c_get_status.exit.i393_crit_edge

for.body.i388.i2c_get_status.exit.i393_crit_edge: ; preds = %for.body.i388
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_get_status.exit.i393

do.end.i.i391:                                    ; preds = %for.body.i388
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i389 = getelementptr [16 x ptr], ptr @str_i2c_status, i32 0, i32 %and.i.i386
  %99 = ptrtoint ptr %arrayidx.i.i389 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i.i389, align 4
  %call5.i.i390 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %100) #10
  br label %i2c_get_status.exit.i393

i2c_get_status.exit.i393:                         ; preds = %do.end.i.i391, %for.body.i388.i2c_get_status.exit.i393_crit_edge
  %101 = add nsw i32 %and.i.i386, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %101)
  %switch.i.i392 = icmp ult i32 %101, -3
  br i1 %switch.i.i392, label %i2c_is_busy_wait.exit, label %if.end.i

if.end.i:                                         ; preds = %i2c_get_status.exit.i393
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 6871936) #7
  %inc.i394 = add nuw nsw i32 %count.08.i, 1
  %exitcond.not.i395 = icmp eq i32 %inc.i394, 16
  br i1 %exitcond.not.i395, label %if.end.i.err_crit_edge, label %if.end.i.for.body.i388_crit_edge

if.end.i.for.body.i388_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i388

if.end.i.err_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

i2c_is_busy_wait.exit:                            ; preds = %i2c_get_status.exit.i393
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %count.08.i)
  %cmp2.i.not = icmp eq i32 %count.08.i, 16
  br i1 %cmp2.i.not, label %i2c_is_busy_wait.exit.err_crit_edge, label %if.end277

i2c_is_busy_wait.exit.err_crit_edge:              ; preds = %i2c_is_busy_wait.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end277:                                        ; preds = %i2c_is_busy_wait.exit
  %103 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bmmio.i, align 8
  %add.ptr.i398 = getelementptr i8, ptr %104, i32 384
  %105 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i398) #7, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  %106 = and i8 %105, 15
  %and.i399 = zext i8 %106 to i32
  %107 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %107)
  %cmp.i400 = icmp eq i32 %107, 2
  br i1 %cmp.i400, label %do.end.i403, label %if.end277.i2c_get_status.exit404_crit_edge

if.end277.i2c_get_status.exit404_crit_edge:       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_get_status.exit404

do.end.i403:                                      ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i401 = getelementptr [16 x ptr], ptr @str_i2c_status, i32 0, i32 %and.i399
  %108 = ptrtoint ptr %arrayidx.i401 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i401, align 4
  %call5.i402 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %109) #10
  br label %i2c_get_status.exit404

i2c_get_status.exit404:                           ; preds = %do.end.i403, %if.end277.i2c_get_status.exit404_crit_edge
  %110 = add nsw i32 %and.i399, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %110)
  %switch.i405 = icmp ult i32 %110, -6
  br i1 %switch.i405, label %if.end282, label %i2c_get_status.exit404.err_crit_edge

i2c_get_status.exit404.err_crit_edge:             ; preds = %i2c_get_status.exit404
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end282:                                        ; preds = %i2c_get_status.exit404
  tail call void @msleep(i32 noundef 1) #7
  %111 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %111)
  %cmp284 = icmp eq i32 %111, 1
  br i1 %cmp284, label %do.end289, label %if.end282.cleanup_crit_edge

if.end282.cleanup_crit_edge:                      ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end289:                                        ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #9
  %call291 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #10
  br label %cleanup

err:                                              ; preds = %i2c_get_status.exit404.err_crit_edge, %i2c_is_busy_wait.exit.err_crit_edge, %if.end.i.err_crit_edge, %do.end237.err_crit_edge, %do.end184.err_crit_edge, %do.end146.err_crit_edge, %do.end103.err_crit_edge
  %rc.0 = phi i32 [ -5, %i2c_get_status.exit404.err_crit_edge ], [ -5, %i2c_is_busy_wait.exit.err_crit_edge ], [ -5, %if.end.i.err_crit_edge ], [ %call238, %do.end237.err_crit_edge ], [ %call147, %do.end146.err_crit_edge ], [ %call185, %do.end184.err_crit_edge ], [ %call105, %do.end103.err_crit_edge ]
  %112 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp295 = icmp eq i32 %112, 1
  br i1 %cmp295, label %if.then297, label %err.cleanup_crit_edge

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then297:                                       ; preds = %err
  %113 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bmmio.i, align 8
  %add.ptr.i408 = getelementptr i8, ptr %114, i32 384
  %115 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i408) #7, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  %116 = and i8 %115, 15
  %and.i409 = zext i8 %116 to i32
  %117 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %117)
  %cmp.i410 = icmp eq i32 %117, 2
  br i1 %cmp.i410, label %do.end.i413, label %if.then297.i2c_get_status.exit414_crit_edge

if.then297.i2c_get_status.exit414_crit_edge:      ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_get_status.exit414

do.end.i413:                                      ; preds = %if.then297
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i411 = getelementptr [16 x ptr], ptr @str_i2c_status, i32 0, i32 %and.i409
  %118 = ptrtoint ptr %arrayidx.i411 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i411, align 4
  %call5.i412 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %119) #10
  %.pr422 = load i32, ptr @i2c_debug, align 4
  br label %i2c_get_status.exit414

i2c_get_status.exit414:                           ; preds = %do.end.i413, %if.then297.i2c_get_status.exit414_crit_edge
  %120 = phi i32 [ %117, %if.then297.i2c_get_status.exit414_crit_edge ], [ %.pr422, %do.end.i413 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %120)
  %cmp300 = icmp eq i32 %120, 1
  br i1 %cmp300, label %do.end305, label %i2c_get_status.exit414.cleanup_crit_edge

i2c_get_status.exit414.cleanup_crit_edge:         ; preds = %i2c_get_status.exit414
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end305:                                        ; preds = %i2c_get_status.exit414
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx307 = getelementptr [16 x ptr], ptr @str_i2c_status, i32 0, i32 %and.i409
  %121 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx307, align 4
  %call308 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %122) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end305, %i2c_get_status.exit414.cleanup_crit_edge, %err.cleanup_crit_edge, %do.end289, %if.end282.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %num, %do.end289 ], [ %num, %if.end282.cleanup_crit_edge ], [ %rc.0, %i2c_get_status.exit414.cleanup_crit_edge ], [ %rc.0, %do.end305 ], [ %rc.0, %err.cleanup_crit_edge ], [ -5, %if.end16.i.cleanup_crit_edge ], [ -5, %if.end13.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @functionality(ptr nocapture noundef readnone %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592712
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_send_byte(ptr nocapture noundef readonly %dev, i32 noundef %attr, i8 noundef zeroext %data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !219
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !220
  %and = and i32 %3, 15
  %shl = shl i32 %attr, 6
  %or = or i32 %and, %shl
  %conv = zext i8 %data to i32
  %shl2 = shl nuw nsw i32 %conv, 8
  %or3 = or i32 %shl2, %or
  %or5 = or i32 %or3, -268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !221
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or5)
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %add.ptr7 = getelementptr i32, ptr %6, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %4) #7, !srcloc !222
  %7 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %do.end12, label %entry.do.end17_crit_edge

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %conv) #10
  br label %do.end17

do.end17:                                         ; preds = %do.end12, %entry.do.end17_crit_edge
  %bmmio.i.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.end17
  %count.08.i = phi i32 [ 0, %do.end17 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %bmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 384
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  %11 = and i8 %10, 15
  %and.i.i = zext i8 %11 to i32
  %12 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i.i = icmp eq i32 %12, 2
  br i1 %cmp.i.i, label %do.end.i.i, label %for.body.i.i2c_get_status.exit.i_crit_edge

for.body.i.i2c_get_status.exit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_get_status.exit.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr [16 x ptr], ptr @str_i2c_status, i32 0, i32 %and.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %14) #10
  br label %i2c_get_status.exit.i

i2c_get_status.exit.i:                            ; preds = %do.end.i.i, %for.body.i.i2c_get_status.exit.i_crit_edge
  %15 = add nsw i32 %and.i.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %15)
  %switch.i.i = icmp ult i32 %15, -3
  br i1 %switch.i.i, label %i2c_is_busy_wait.exit, label %if.end.i

if.end.i:                                         ; preds = %i2c_get_status.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 6871936) #7
  %inc.i = add nuw nsw i32 %count.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

i2c_is_busy_wait.exit:                            ; preds = %i2c_get_status.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %count.08.i)
  %cmp2.i.not = icmp eq i32 %count.08.i, 16
  br i1 %cmp2.i.not, label %i2c_is_busy_wait.exit.cleanup_crit_edge, label %if.end20

i2c_is_busy_wait.exit.cleanup_crit_edge:          ; preds = %i2c_is_busy_wait.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %i2c_is_busy_wait.exit
  %17 = ptrtoint ptr %bmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bmmio.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %18, i32 384
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  %20 = and i8 %19, 15
  %and.i = zext i8 %20 to i32
  %21 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i = icmp eq i32 %21, 2
  br i1 %cmp.i, label %do.end.i, label %if.end20.i2c_get_status.exit_crit_edge

if.end20.i2c_get_status.exit_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_get_status.exit

do.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [16 x ptr], ptr @str_i2c_status, i32 0, i32 %and.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %23) #10
  br label %i2c_get_status.exit

i2c_get_status.exit:                              ; preds = %do.end.i, %if.end20.i2c_get_status.exit_crit_edge
  %24 = add nsw i32 %and.i, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %24)
  %switch.i = icmp ult i32 %24, -6
  %. = select i1 %switch.i, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %i2c_get_status.exit, %i2c_is_busy_wait.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %i2c_is_busy_wait.exit.cleanup_crit_edge ], [ %., %i2c_get_status.exit ], [ -5, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_recv_byte(ptr nocapture noundef readonly %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp.i = icmp eq i32 %0, 2
  br i1 %cmp.i, label %do.end.i, label %entry.i2c_set_attr.exit_crit_edge

entry.i2c_set_attr.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_set_attr.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.61) #10
  br label %i2c_set_attr.exit

i2c_set_attr.exit:                                ; preds = %do.end.i, %entry.i2c_set_attr.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  tail call void @arm_heavy_mb() #7
  %bmmio.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bmmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 384
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  %4 = and i8 %3, 63
  %conv9.i = or i8 %4, -128
  %5 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bmmio.i, align 8
  %add.ptr11.i = getelementptr i8, ptr %6, i32 384
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i, i8 %conv9.i) #7, !srcloc !216
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %i2c_set_attr.exit
  %count.08.i = phi i32 [ 0, %i2c_set_attr.exit ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bmmio.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 384
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  %10 = and i8 %9, 15
  %and.i.i = zext i8 %10 to i32
  %11 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 2
  br i1 %cmp.i.i, label %do.end.i.i, label %for.body.i.i2c_get_status.exit.i_crit_edge

for.body.i.i2c_get_status.exit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_get_status.exit.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr [16 x ptr], ptr @str_i2c_status, i32 0, i32 %and.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %13) #10
  br label %i2c_get_status.exit.i

i2c_get_status.exit.i:                            ; preds = %do.end.i.i, %for.body.i.i2c_get_status.exit.i_crit_edge
  %14 = add nsw i32 %and.i.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %14)
  %switch.i.i = icmp ult i32 %14, -3
  br i1 %switch.i.i, label %i2c_is_busy_wait.exit, label %if.end.i

if.end.i:                                         ; preds = %i2c_get_status.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 6871936) #7
  %inc.i = add nuw nsw i32 %count.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

i2c_is_busy_wait.exit:                            ; preds = %i2c_get_status.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %count.08.i)
  %cmp2.i.not = icmp eq i32 %count.08.i, 16
  br i1 %cmp2.i.not, label %i2c_is_busy_wait.exit.cleanup_crit_edge, label %if.end

i2c_is_busy_wait.exit.cleanup_crit_edge:          ; preds = %i2c_is_busy_wait.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %i2c_is_busy_wait.exit
  %16 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bmmio.i, align 8
  %add.ptr.i22 = getelementptr i8, ptr %17, i32 384
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i22) #7, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  %19 = and i8 %18, 15
  %and.i = zext i8 %19 to i32
  %20 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.i23 = icmp eq i32 %20, 2
  br i1 %cmp.i23, label %do.end.i24, label %if.end.i2c_get_status.exit_crit_edge

if.end.i2c_get_status.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_get_status.exit

do.end.i24:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [16 x ptr], ptr @str_i2c_status, i32 0, i32 %and.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %22) #10
  br label %i2c_get_status.exit

i2c_get_status.exit:                              ; preds = %do.end.i24, %if.end.i2c_get_status.exit_crit_edge
  %23 = add nsw i32 %and.i, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %23)
  %switch.i = icmp ult i32 %23, -6
  br i1 %switch.i, label %if.end5, label %i2c_get_status.exit.cleanup_crit_edge

i2c_get_status.exit.cleanup_crit_edge:            ; preds = %i2c_get_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %i2c_get_status.exit
  %24 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bmmio.i, align 8
  %add.ptr = getelementptr i8, ptr %25, i32 385
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !223
  %27 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp = icmp eq i32 %27, 2
  %conv = zext i8 %26 to i32
  br i1 %cmp, label %do.end, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %i2c_get_status.exit.cleanup_crit_edge, %i2c_is_busy_wait.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %i2c_is_busy_wait.exit.cleanup_crit_edge ], [ -5, %i2c_get_status.exit.cleanup_crit_edge ], [ %conv, %do.end ], [ %conv, %if.end5.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7134_i2c_eeprom_md7134_gate(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %subaddr = alloca i8, align 1
  %dmdregval = alloca i8, align 1
  %data = alloca [2 x i8], align 1
  %i2cgatemsg_r = alloca [2 x %struct.i2c_msg], align 4
  %i2cgatemsg_w = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %subaddr) #7
  %0 = ptrtoint ptr %subaddr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 7, ptr %subaddr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dmdregval) #7
  %1 = ptrtoint ptr %dmdregval to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %dmdregval, align 1, !annotation !211
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data, align 1, !annotation !211
  %3 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !211
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %i2cgatemsg_r) #7
  %5 = getelementptr inbounds i8, ptr %i2cgatemsg_r, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %i2cgatemsg_r to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 8, ptr %i2cgatemsg_r, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %i2cgatemsg_r, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %i2cgatemsg_r, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %i2cgatemsg_r, i32 0, i32 3
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %subaddr, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %i2cgatemsg_r, i32 1
  %11 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 8, ptr %arrayinit.element, align 4
  %flags2 = getelementptr inbounds %struct.i2c_msg, ptr %i2cgatemsg_r, i32 1, i32 1
  %12 = ptrtoint ptr %flags2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %flags2, align 2
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %i2cgatemsg_r, i32 1, i32 2
  %13 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %len3, align 4
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %i2cgatemsg_r, i32 1, i32 3
  %14 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dmdregval, ptr %buf4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2cgatemsg_w) #7
  %15 = getelementptr inbounds i8, ptr %i2cgatemsg_w, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4
  %17 = ptrtoint ptr %i2cgatemsg_w to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 8, ptr %i2cgatemsg_w, align 4
  %flags7 = getelementptr inbounds %struct.i2c_msg, ptr %i2cgatemsg_w, i32 0, i32 1
  %18 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags7, align 2
  %len8 = getelementptr inbounds %struct.i2c_msg, ptr %i2cgatemsg_w, i32 0, i32 2
  %19 = ptrtoint ptr %len8 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2, ptr %len8, align 4
  %buf9 = getelementptr inbounds %struct.i2c_msg, ptr %i2cgatemsg_w, i32 0, i32 3
  %20 = ptrtoint ptr %buf9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %data, ptr %buf9, align 4
  %i2c_adap = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 27
  %call = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %i2cgatemsg_r, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %21 = ptrtoint ptr %dmdregval to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dmdregval, align 1
  %23 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %land.lhs.true.if.end35_crit_edge, label %do.body

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7134_i2c_eeprom_md7134_gate.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7134_i2c_eeprom_md7134_gate, %if.then15)) #7
          to label %do.end [label %if.then15], !srcloc !224

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7134_i2c_eeprom_md7134_gate.__UNIQUE_ID_ddebug391, ptr noundef nonnull @.str.90, ptr noundef %name) #7
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %24 = ptrtoint ptr %subaddr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %subaddr, align 1
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %data, align 1
  %27 = ptrtoint ptr %dmdregval to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dmdregval, align 1
  %29 = and i8 %28, -3
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %3, align 1
  %call23 = call i32 @i2c_transfer(ptr noundef %i2c_adap, ptr noundef nonnull %i2cgatemsg_w, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 1
  br i1 %cmp24.not, label %do.end.if.end35_crit_edge, label %do.end29

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.end29:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %name31 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %name31) #10
  br label %if.end35

if.end35:                                         ; preds = %do.end29, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2cgatemsg_w) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i2cgatemsg_r) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dmdregval) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %subaddr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !190, !192, !194, !196, !198, !200}
!llvm.module.flags = !{!202, !203, !204, !205, !206, !207, !208, !209}
!llvm.ident = !{!210}

!0 = !{ptr @__param_i2c_debug, !1, !"__param_i2c_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_i2c_debugtype387, !1, !"__UNIQUE_ID_i2c_debugtype387", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_i2c_debug388, !4, !"__UNIQUE_ID_i2c_debug388", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 25, i32 1}
!5 = !{ptr @__param_i2c_scan, !6, !"__param_i2c_scan", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 28, i32 1}
!7 = !{ptr @__UNIQUE_ID_i2c_scantype389, !6, !"__UNIQUE_ID_i2c_scantype389", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_i2c_scan390, !9, !"__UNIQUE_ID_i2c_scan390", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 29, i32 1}
!10 = !{ptr @i2c_debug, !11, !"i2c_debug", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 23, i32 21}
!12 = !{ptr @i2c_scan, !13, !"i2c_scan", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 27, i32 21}
!14 = !{ptr @__param_str_i2c_debug, !1, !"__param_str_i2c_debug", i1 false, i1 false}
!15 = !{ptr @__param_str_i2c_scan, !6, !"__param_str_i2c_scan", i1 false, i1 false}
!16 = !{ptr @saa7134_adap_template, !17, !"saa7134_adap_template", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 333, i32 33}
!18 = !{ptr @saa7134_algo, !19, !"saa7134_algo", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 328, i32 35}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 240, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @saa7134_i2c_xfer._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @saa7134_i2c_xfer._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 241, i32 2}
!28 = !{ptr @saa7134_i2c_xfer._entry.3, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @saa7134_i2c_xfer._entry_ptr.5, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 245, i32 4}
!32 = !{ptr @saa7134_i2c_xfer._entry.6, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @saa7134_i2c_xfer._entry_ptr.8, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 257, i32 5}
!36 = !{ptr @saa7134_i2c_xfer._entry.9, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @saa7134_i2c_xfer._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 261, i32 4}
!40 = !{ptr @saa7134_i2c_xfer._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @saa7134_i2c_xfer._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 268, i32 4}
!44 = !{ptr @saa7134_i2c_xfer._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @saa7134_i2c_xfer._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 270, i32 5}
!48 = !{ptr @saa7134_i2c_xfer._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @saa7134_i2c_xfer._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 274, i32 5}
!52 = !{ptr @saa7134_i2c_xfer._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @saa7134_i2c_xfer._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 281, i32 5}
!56 = !{ptr @saa7134_i2c_xfer._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @saa7134_i2c_xfer._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @saa7134_i2c_xfer._entry.27, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 285, i32 5}
!60 = !{ptr @saa7134_i2c_xfer._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 289, i32 4}
!63 = !{ptr @saa7134_i2c_xfer._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @saa7134_i2c_xfer._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 292, i32 5}
!67 = !{ptr @saa7134_i2c_xfer._entry.32, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @saa7134_i2c_xfer._entry_ptr.34, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 299, i32 2}
!71 = !{ptr @saa7134_i2c_xfer._entry.35, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @saa7134_i2c_xfer._entry_ptr.37, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 300, i32 2}
!75 = !{ptr @saa7134_i2c_xfer._entry.38, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @saa7134_i2c_xfer._entry_ptr.40, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 311, i32 2}
!79 = !{ptr @saa7134_i2c_xfer._entry.41, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @saa7134_i2c_xfer._entry_ptr.43, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 316, i32 3}
!83 = !{ptr @saa7134_i2c_xfer._entry.44, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @saa7134_i2c_xfer._entry_ptr.46, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 87, i32 2}
!87 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @i2c_get_status._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @i2c_get_status._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 163, i32 2}
!92 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @i2c_reset._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @i2c_reset._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 94, i32 2}
!97 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @i2c_set_status._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @i2c_set_status._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 201, i32 2}
!102 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @i2c_send_byte._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @i2c_send_byte._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 223, i32 2}
!107 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @i2c_recv_byte._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @i2c_recv_byte._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 100, i32 2}
!112 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @i2c_set_attr._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @i2c_set_attr._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 72, i32 2}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 72, i32 9}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 72, i32 17}
!121 = distinct !{null, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 72, i32 29}
!123 = distinct !{null, !124, !"str_i2c_attr", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 71, i32 14}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 47, i32 2}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 47, i32 10}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 47, i32 23}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 47, i32 31}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 47, i32 41}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 47, i32 51}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 48, i32 2}
!139 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 48, i32 15}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 48, i32 32}
!143 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 48, i32 48}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 49, i32 2}
!147 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 49, i32 13}
!149 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 49, i32 24}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 49, i32 36}
!153 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 49, i32 47}
!155 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 49, i32 57}
!157 = !{ptr @str_i2c_status, !158, !"str_i2c_status", i1 false, i1 false}
!158 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 46, i32 14}
!159 = !{ptr @saa7134_client_template, !160, !"saa7134_client_template", i1 false, i1 false}
!160 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 339, i32 32}
!161 = !{ptr @.str.79, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 389, i32 3}
!163 = !{ptr @.str.80, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @saa7134_i2c_eeprom._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @saa7134_i2c_eeprom._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 394, i32 3}
!168 = !{ptr @saa7134_i2c_eeprom._entry.81, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @saa7134_i2c_eeprom._entry_ptr.83, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 402, i32 3}
!172 = !{ptr @saa7134_i2c_eeprom._entry.84, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @saa7134_i2c_eeprom._entry_ptr.86, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 366, i32 3}
!176 = !{ptr @.str.88, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.89, !175, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @saa7134_i2c_eeprom_md7134_gate.__UNIQUE_ID_ddebug391, !175, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!179 = !{ptr @.str.90, !175, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 372, i32 4}
!182 = !{ptr @saa7134_i2c_eeprom_md7134_gate._entry, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @saa7134_i2c_eeprom_md7134_gate._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.92, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 426, i32 3}
!186 = !{ptr @.str.93, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @do_i2c_scan._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @do_i2c_scan._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.94, !185, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 409, i32 18}
!192 = !{ptr @.str.96, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 413, i32 18}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 412, i32 18}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 410, i32 18}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 411, i32 18}
!200 = !{ptr @i2c_devs, !201, !"i2c_devs", i1 false, i1 false}
!201 = !{!"../drivers/media/pci/saa7134/saa7134-i2c.c", i32 408, i32 14}
!202 = !{i32 1, !"wchar_size", i32 2}
!203 = !{i32 1, !"min_enum_size", i32 4}
!204 = !{i32 8, !"branch-target-enforcement", i32 0}
!205 = !{i32 8, !"sign-return-address", i32 0}
!206 = !{i32 8, !"sign-return-address-all", i32 0}
!207 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!208 = !{i32 7, !"uwtable", i32 1}
!209 = !{i32 7, !"frame-pointer", i32 2}
!210 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!211 = !{!"auto-init"}
!212 = !{i64 5021132}
!213 = !{i64 2158802650}
!214 = !{i64 2158807130}
!215 = !{i64 2158807309}
!216 = !{i64 5020737}
!217 = !{i64 2158810107}
!218 = !{i64 2158810286}
!219 = !{i64 5021352}
!220 = !{i64 2158814396}
!221 = !{i64 2158814686}
!222 = !{i64 5020934}
!223 = !{i64 2158817072}
!224 = !{i64 2148526217, i64 2148526222, i64 2148526235, i64 2148526279, i64 2148526313, i64 2148526334}
