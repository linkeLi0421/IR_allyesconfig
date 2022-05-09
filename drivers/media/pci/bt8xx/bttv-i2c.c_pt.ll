; ModuleID = '/llk/IR_all_yes/drivers/media/pci/bt8xx/bttv-i2c.c_pt.bc'
source_filename = "../drivers/media/pci/bt8xx/bttv-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.bttv = type { %struct.bttv_core, i16, i8, ptr, i32, i32, i32, i32, i32, i8, %struct.bttv_pll_info, i32, i32, i32, i32, ptr, ptr, %struct.spinlock, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, %struct.video_device, %struct.video_device, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, i32, ptr, %struct.IR_i2c_init_data, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.v4l2_framebuffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bttv_tea575x_gpio, %struct.snd_tea575x, i32, i32, i32, [4 x i8], %struct.btcx_riscmem, ptr, %struct.list_head, %struct.list_head, %struct.bttv_buffer_set, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.bttv_suspend_state, i32, i32, i32, i32, i32, %struct.bttv_fh, %struct.work_struct, [2 x %struct.bttv_crop], i32, i32 }
%struct.bttv_core = type { %struct.v4l2_device, ptr, %struct.i2c_adapter, %struct.list_head, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.bttv_pll_info = type { i32, i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.100 }
%struct.anon.100 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bttv_tea575x_gpio = type { i8, i8, i8, i8 }
%struct.snd_tea575x = type { ptr, %struct.v4l2_file_operations, %struct.video_device, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.mutex, ptr, ptr, [32 x i8], [32 x i8], %struct.v4l2_ctrl_handler, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.btcx_riscmem = type { i32, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.bttv_buffer_set = type { ptr, ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.bttv_suspend_state = type { i32, i32, i32, i32, %struct.bttv_buffer_set, ptr }
%struct.bttv_fh = type { %struct.v4l2_fh, ptr, i32, i32, %struct.videobuf_queue, ptr, i32, i32, ptr, %struct.bttv_overlay, i32, %struct.videobuf_queue, %struct.bttv_vbi_fmt }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.bttv_overlay = type { i32, %struct.v4l2_rect, i32, ptr, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.bttv_vbi_fmt = type { %struct.v4l2_vbi_format, ptr, i32 }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bttv_crop = type { %struct.v4l2_rect, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.98, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.98 = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__param_str_i2c_debug = internal constant [15 x i8] c"bttv.i2c_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@i2c_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_debug = internal constant %struct.kernel_param { ptr @__param_str_i2c_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @i2c_debug } }, section "__param", align 4
@__UNIQUE_ID_i2c_debugtype321 = internal constant [28 x i8] c"bttv.parmtype=i2c_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_debug322 = internal constant [46 x i8] c"bttv.parm=i2c_debug:configure i2c debug level\00", section ".modinfo", align 1
@__param_str_i2c_hw = internal constant [12 x i8] c"bttv.i2c_hw\00", align 1
@i2c_hw = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_hw = internal constant %struct.kernel_param { ptr @__param_str_i2c_hw, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @i2c_hw } }, section "__param", align 4
@__UNIQUE_ID_i2c_hwtype323 = internal constant [25 x i8] c"bttv.parmtype=i2c_hw:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_hw324 = internal constant [80 x i8] c"bttv.parm=i2c_hw:force use of hardware i2c support, instead of software bitbang\00", section ".modinfo", align 1
@__param_str_i2c_scan = internal constant [14 x i8] c"bttv.i2c_scan\00", align 1
@i2c_scan = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_scan = internal constant %struct.kernel_param { ptr @__param_str_i2c_scan, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @i2c_scan } }, section "__param", align 4
@__UNIQUE_ID_i2c_scantype325 = internal constant [27 x i8] c"bttv.parmtype=i2c_scan:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_scan326 = internal constant [47 x i8] c"bttv.parm=i2c_scan:scan i2c bus at insmod time\00", section ".modinfo", align 1
@__param_str_i2c_udelay = internal constant [16 x i8] c"bttv.i2c_udelay\00", align 1
@i2c_udelay = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_i2c_udelay = internal constant %struct.kernel_param { ptr @__param_str_i2c_udelay, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @i2c_udelay } }, section "__param", align 4
@__UNIQUE_ID_i2c_udelaytype327 = internal constant [29 x i8] c"bttv.parmtype=i2c_udelay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_udelay328 = internal constant [122 x i8] c"bttv.parm=i2c_udelay:soft i2c delay at insmod time, in usecs (should be 5 or higher). Lower value means higher bus speed.\00", section ".modinfo", align 1
@bttv_verbose = external dso_local local_unnamed_addr global i32, align 4
@bttv_I2CRead._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016bttv: %d: i2c: checking for %s @ 0x%02x... \00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bttv_I2CRead\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/pci/bt8xx/bttv-i2c.c\00", [61 x i8] zeroinitializer }, align 32
@bttv_I2CRead._entry_ptr = internal global ptr @bttv_I2CRead._entry, section ".printk_index", align 4
@bttv_I2CRead._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01cnot found\0A\00", [19 x i8] zeroinitializer }, align 32
@bttv_I2CRead._entry_ptr.5 = internal global ptr @bttv_I2CRead._entry.3, section ".printk_index", align 4
@bttv_I2CRead._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014bttv: %d: i2c read 0x%x: error\0A\00", [62 x i8] zeroinitializer }, align 32
@bttv_I2CRead._entry_ptr.8 = internal global ptr @bttv_I2CRead._entry.6, section ".printk_index", align 4
@bttv_I2CRead._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cfound\0A\00", [23 x i8] zeroinitializer }, align 32
@bttv_I2CRead._entry_ptr.11 = internal global ptr @bttv_I2CRead._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bttv internal\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bt878\00", [26 x i8] zeroinitializer }, align 32
@bttv_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @bttv_i2c_xfer, ptr null, ptr null, ptr null, ptr @functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bttv\00", [27 x i8] zeroinitializer }, align 32
@bttv_i2c_algo_bit_template = internal constant { %struct.i2c_algo_bit_data, [56 x i8] } { %struct.i2c_algo_bit_data { ptr null, ptr @bttv_bit_setsda, ptr @bttv_bit_setscl, ptr @bttv_bit_getsda, ptr @bttv_bit_getscl, ptr null, ptr null, i32 16, i32 200, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bt%d #%d [%s]\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hw\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sw\00", [29 x i8] zeroinitializer }, align 32
@bttv_i2c_xfer.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bttv_i2c_xfer\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bt-i2c:\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bttv: bt-i2c:\00", [18 x i8] zeroinitializer }, align 32
@bttv_i2c_readbytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c <R %02x\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bttv_i2c_readbytes\00", [45 x i8] zeroinitializer }, align 32
@bttv_i2c_readbytes._entry_ptr = internal global ptr @bttv_i2c_readbytes._entry, section ".printk_index", align 4
@bttv_i2c_readbytes._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c =%02x\00", [23 x i8] zeroinitializer }, align 32
@bttv_i2c_readbytes._entry_ptr.25 = internal global ptr @bttv_i2c_readbytes._entry.23, section ".printk_index", align 4
@bttv_i2c_readbytes._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c >\0A\00", [26 x i8] zeroinitializer }, align 32
@bttv_i2c_readbytes._entry_ptr.28 = internal global ptr @bttv_i2c_readbytes._entry.26, section ".printk_index", align 4
@bttv_i2c_readbytes._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01c ERR: %d\0A\00", [20 x i8] zeroinitializer }, align 32
@bttv_i2c_readbytes._entry_ptr.31 = internal global ptr @bttv_i2c_readbytes._entry.29, section ".printk_index", align 4
@bttv_i2c_sendbytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01c <W %02x %02x\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bttv_i2c_sendbytes\00", [45 x i8] zeroinitializer }, align 32
@bttv_i2c_sendbytes._entry_ptr = internal global ptr @bttv_i2c_sendbytes._entry, section ".printk_index", align 4
@bttv_i2c_sendbytes._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c %02x\00", [24 x i8] zeroinitializer }, align 32
@bttv_i2c_sendbytes._entry_ptr.36 = internal global ptr @bttv_i2c_sendbytes._entry.34, section ".printk_index", align 4
@bttv_i2c_sendbytes._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c>\0A\00", [27 x i8] zeroinitializer }, align 32
@bttv_i2c_sendbytes._entry_ptr.39 = internal global ptr @bttv_i2c_sendbytes._entry.37, section ".printk_index", align 4
@bttv_i2c_sendbytes._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.33, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bttv_i2c_sendbytes._entry_ptr.41 = internal global ptr @bttv_i2c_sendbytes._entry.40, section ".printk_index", align 4
@do_i2c_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016bttv: %s: i2c scan: found device @ 0x%x  [%s]\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_i2c_scan\00", [20 x i8] zeroinitializer }, align 32
@do_i2c_scan._entry_ptr = internal global ptr @do_i2c_scan._entry, section ".printk_index", align 4
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lgdt330x\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IR (hauppauge)\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msp34xx\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda9887\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tuner (analog)\00", [17 x i8] zeroinitializer }, align 32
@i2c_devs = internal constant { <{ [98 x ptr], [30 x ptr] }>, [128 x i8] } { <{ [98 x ptr], [30 x ptr] }> <{ [98 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.45, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.46, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.47, ptr null, ptr null, ptr @.str.48, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.49, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.50, ptr @.str.50], [30 x ptr] zeroinitializer }>, [128 x i8] zeroinitializer }, align 32
@___asan_gen_.52 = private unnamed_addr constant [10 x i8] c"i2c_debug\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 29, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"i2c_hw\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 30, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant [9 x i8] c"i2c_scan\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 31, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant [11 x i8] c"i2c_udelay\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 39, i32 21 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 266, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 272, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 274, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 279, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 338, i32 32 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 344, i32 33 }
@___asan_gen_.100 = private unnamed_addr constant [10 x i8] c"bttv_algo\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 250, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 353, i32 33 }
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"bttv_i2c_algo_bit_template\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 88, i32 39 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 364, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 365, i32 22 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 365, i32 29 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 228, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 192, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 203, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 206, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 216, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 145, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 160, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 163, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 170, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 330, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 311, i32 18 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 312, i32 18 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 313, i32 18 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 314, i32 18 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 315, i32 18 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 316, i32 18 }
@___asan_gen_.208 = private unnamed_addr constant [9 x i8] c"i2c_devs\00", align 1
@___asan_gen_.209 = private constant [38 x i8] c"../drivers/media/pci/bt8xx/bttv-i2c.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 310, i32 14 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_i2c_debug322, ptr @__UNIQUE_ID_i2c_debugtype321, ptr @__UNIQUE_ID_i2c_hw324, ptr @__UNIQUE_ID_i2c_hwtype323, ptr @__UNIQUE_ID_i2c_scan326, ptr @__UNIQUE_ID_i2c_scantype325, ptr @__UNIQUE_ID_i2c_udelay328, ptr @__UNIQUE_ID_i2c_udelaytype327, ptr @__param_i2c_debug, ptr @__param_i2c_hw, ptr @__param_i2c_scan, ptr @__param_i2c_udelay, ptr @bttv_I2CRead._entry, ptr @bttv_I2CRead._entry.3, ptr @bttv_I2CRead._entry.6, ptr @bttv_I2CRead._entry.9, ptr @bttv_I2CRead._entry_ptr, ptr @bttv_I2CRead._entry_ptr.11, ptr @bttv_I2CRead._entry_ptr.5, ptr @bttv_I2CRead._entry_ptr.8, ptr @bttv_i2c_readbytes._entry, ptr @bttv_i2c_readbytes._entry.23, ptr @bttv_i2c_readbytes._entry.26, ptr @bttv_i2c_readbytes._entry.29, ptr @bttv_i2c_readbytes._entry_ptr, ptr @bttv_i2c_readbytes._entry_ptr.25, ptr @bttv_i2c_readbytes._entry_ptr.28, ptr @bttv_i2c_readbytes._entry_ptr.31, ptr @bttv_i2c_sendbytes._entry, ptr @bttv_i2c_sendbytes._entry.34, ptr @bttv_i2c_sendbytes._entry.37, ptr @bttv_i2c_sendbytes._entry.40, ptr @bttv_i2c_sendbytes._entry_ptr, ptr @bttv_i2c_sendbytes._entry_ptr.36, ptr @bttv_i2c_sendbytes._entry_ptr.39, ptr @bttv_i2c_sendbytes._entry_ptr.41, ptr @do_i2c_scan._entry, ptr @do_i2c_scan._entry_ptr, ptr @i2c_debug, ptr @i2c_hw, ptr @i2c_scan, ptr @i2c_udelay, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @bttv_algo, ptr @.str.14, ptr @bttv_i2c_algo_bit_template, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @i2c_devs], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hw to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_scan to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_udelay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_I2CRead._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_I2CRead._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_I2CRead._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_I2CRead._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_i2c_algo_bit_template to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_i2c_readbytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_i2c_readbytes._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_i2c_readbytes._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_i2c_readbytes._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_i2c_sendbytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_i2c_sendbytes._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_i2c_sendbytes._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bttv_i2c_sendbytes._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_i2c_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_devs to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bttv_I2CRead(ptr noundef %btv, i8 noundef zeroext %addr, ptr noundef %probe_for) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buffer) #7
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %buffer, align 1
  %i2c_rc = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 21
  %1 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_verbose to i32))
  %3 = load i32, ptr @bttv_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cmp1.not = icmp eq ptr %probe_for, null
  %or.cond = or i1 %cmp1.not, %tobool.not
  br i1 %or.cond, label %if.end.if.end3_crit_edge, label %do.end

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = zext i8 %addr to i32
  br label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %nr = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 8
  %conv = zext i8 %addr to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %5, ptr noundef nonnull %probe_for, i32 noundef %conv) #10
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.end.if.end3_crit_edge
  %conv4.pre-phi = phi i32 [ %.pre, %if.end.if.end3_crit_edge ], [ %conv, %do.end ]
  %6 = lshr i32 %conv4.pre-phi, 1
  %conv5 = trunc i32 %6 to i16
  %i2c_client = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 19
  %addr6 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 19, i32 1
  %7 = ptrtoint ptr %addr6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv5, ptr %addr6, align 2
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client, ptr noundef nonnull %buffer, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp9.not = icmp eq i32 %call.i, 1
  br i1 %cmp9.not, label %if.end32, label %if.then11

if.then11:                                        ; preds = %if.end3
  br i1 %cmp1.not, label %do.end25, label %if.then14

if.then14:                                        ; preds = %if.then11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_verbose to i32))
  %8 = load i32, ptr @bttv_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool15.not = icmp eq i32 %8, 0
  br i1 %tobool15.not, label %if.then14.cleanup_crit_edge, label %do.end19

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end19:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %cleanup

do.end25:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %nr28 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %9 = ptrtoint ptr %nr28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr28, align 8
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %10, i32 noundef %conv4.pre-phi) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bttv_verbose to i32))
  %11 = load i32, ptr @bttv_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool33.not = icmp eq i32 %11, 0
  %or.cond54 = or i1 %cmp1.not, %tobool33.not
  br i1 %or.cond54, label %if.end32.if.end43_crit_edge, label %do.end40

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %if.end32.if.end43_crit_edge
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buffer, align 1
  %conv44 = zext i8 %13 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end25, %do.end19, %if.then14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv44, %if.end43 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.then14.cleanup_crit_edge ], [ -1, %do.end19 ], [ -1, %do.end25 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buffer) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bttv_I2CWrite(ptr noundef %btv, i8 noundef zeroext %addr, i8 noundef zeroext %b1, i8 noundef zeroext %b2, i32 noundef %both) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer) #7
  %i2c_rc = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 21
  %0 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = getelementptr inbounds [2 x i8], ptr %buffer, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %both)
  %tobool.not = icmp eq i32 %both, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  %3 = lshr i8 %addr, 1
  %conv1 = zext i8 %3 to i16
  %i2c_client = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 19
  %addr2 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %addr2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv1, ptr %addr2, align 2
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %b1, ptr %buffer, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %b2, ptr %2, align 1
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client, ptr noundef nonnull %buffer, i32 noundef %cond, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %call.i)
  %cmp5.not = icmp ne i32 %cond, %call.i
  %. = sext i1 %cmp5.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bttv_readee(ptr noundef %btv, ptr noundef %eedata, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %eedata, i32 0, i32 256)
  %i2c_rc = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 21
  %1 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = lshr i32 %addr, 1
  %conv = trunc i32 %3 to i16
  %i2c_client = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 19
  %addr1 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 19, i32 1
  %4 = ptrtoint ptr %addr1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %addr1, align 2
  %call = tail call i32 @tveeprom_read(ptr noundef %i2c_client, ptr noundef %eedata, i32 noundef 256) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tveeprom_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_bttv_i2c(ptr noundef %btv) local_unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_client = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 19
  %name = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 19, i32 2
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.12, i32 noundef 20) #7
  %0 = load i32, ptr @i2c_hw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %use_i2c_hw = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 13
  %1 = ptrtoint ptr %use_i2c_hw to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %use_i2c_hw, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %use_i2c_hw1 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 13
  %2 = ptrtoint ptr %use_i2c_hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use_i2c_hw1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name4 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2, i32 12
  %call6 = tail call i32 @strscpy(ptr noundef %name4, ptr noundef nonnull @.str.13, i32 noundef 48) #7
  %algo = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bttv_algo, ptr %algo, align 8
  br label %if.end21

if.else:                                          ; preds = %if.end
  %5 = load i32, ptr @i2c_udelay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp = icmp ult i32 %5, 5
  br i1 %cmp, label %if.then9, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  store i32 5, ptr @i2c_udelay, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.else.if.end10_crit_edge
  %name13 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2, i32 12
  %call15 = tail call i32 @strscpy(ptr noundef %name13, ptr noundef nonnull @.str.14, i32 noundef 48) #7
  %i2c_algo = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 18
  %6 = call ptr @memcpy(ptr %i2c_algo, ptr @bttv_i2c_algo_bit_template, i32 40)
  %7 = load i32, ptr @i2c_udelay, align 4
  %udelay = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 18, i32 7
  %8 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %udelay, align 4
  %9 = ptrtoint ptr %i2c_algo to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %btv, ptr %i2c_algo, align 4
  %algo_data = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %i2c_algo, ptr %algo_data, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end10, %if.then3
  %i2c_adap23 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2
  %11 = ptrtoint ptr %i2c_adap23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %i2c_adap23, align 8
  %pci = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 1
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %parent = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2, i32 9, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %parent, align 8
  %name30 = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2, i32 12
  %id = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 1
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %id, align 8
  %conv = zext i16 %16 to i32
  %nr = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 4
  %17 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr, align 8
  %19 = ptrtoint ptr %use_i2c_hw1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %use_i2c_hw1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool34.not = icmp eq i32 %20, 0
  %cond = select i1 %tobool34.not, ptr @.str.17, ptr @.str.16
  %call35 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name30, i32 noundef 48, ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %18, ptr noundef nonnull %cond)
  %driver_data.i.i = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2, i32 9, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %btv, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 19, i32 3
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %i2c_adap23, ptr %adapter, align 8
  %23 = ptrtoint ptr %use_i2c_hw1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %use_i2c_hw1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool43.not = icmp eq i32 %24, 0
  br i1 %tobool43.not, label %if.else48, label %if.then44

if.then44:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adap23) #7
  br label %if.end53

if.else48:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_state1.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 20
  %25 = ptrtoint ptr %i2c_state1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i2c_state1.i, align 8
  %or.sink.i = or i32 %26, 2
  store i32 %or.sink.i, ptr %i2c_state1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %i2c_state1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i2c_state1.i, align 8
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  %bt848_mmio.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 3
  %30 = ptrtoint ptr %bt848_mmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bt848_mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %29) #7, !srcloc !134
  %32 = ptrtoint ptr %bt848_mmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bt848_mmio.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %33, i32 272
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %35 = ptrtoint ptr %i2c_state1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i2c_state1.i, align 8
  %or.sink.i101 = or i32 %36, 1
  store i32 %or.sink.i101, ptr %i2c_state1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %i2c_state1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i2c_state1.i, align 8
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  %40 = ptrtoint ptr %bt848_mmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bt848_mmio.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %41, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %39) #7, !srcloc !134
  %42 = ptrtoint ptr %bt848_mmio.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bt848_mmio.i, align 4
  %add.ptr4.i105 = getelementptr i8, ptr %43, i32 272
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i105) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %call51 = tail call i32 @i2c_bit_add_bus(ptr noundef %i2c_adap23) #7
  br label %if.end53

if.end53:                                         ; preds = %if.else48, %if.then44
  %call47.sink = phi i32 [ %call51, %if.else48 ], [ %call47, %if.then44 ]
  %45 = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 21
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call47.sink, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.sink)
  %cmp55 = icmp eq i32 %call47.sink, 0
  br i1 %cmp55, label %land.lhs.true, label %if.end53.if.end64_crit_edge

if.end53.if.end64_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

land.lhs.true:                                    ; preds = %if.end53
  %47 = load i32, ptr @i2c_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool57.not = icmp eq i32 %47, 0
  br i1 %tobool57.not, label %land.lhs.true.if.end64_crit_edge, label %if.then58

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then58:                                        ; preds = %land.lhs.true
  %name61 = getelementptr inbounds %struct.v4l2_device, ptr %btv, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #7
  %48 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %buf.i, align 1, !annotation !139
  %addr.i = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 19, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then58
  %i.011.i = phi i32 [ 0, %if.then58 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.011.i to i16
  %49 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i, ptr %addr.i, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client, ptr noundef nonnull %buf.i, i32 noundef 0, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %do.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw nsw i32 %i.011.i, 1
  %arrayidx.i = getelementptr [128 x ptr], ptr @i2c_devs, i32 0, i32 %i.011.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %51, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.44, ptr %51
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name61, i32 noundef %shl.i, ptr noundef nonnull %spec.select.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %do_i2c_scan.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do_i2c_scan.exit:                                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #7
  br label %if.end64

if.end64:                                         ; preds = %do_i2c_scan.exit, %land.lhs.true.if.end64_crit_edge, %if.end53.if.end64_crit_edge
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %45, align 4
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bttv_bit_setscl(ptr nocapture noundef %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %i2c_state1 = getelementptr inbounds %struct.bttv, ptr %data, i32 0, i32 20
  %0 = ptrtoint ptr %i2c_state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c_state1, align 8
  %and = and i32 %1, -3
  %masksel = select i1 %tobool.not, i32 0, i32 2
  %or.sink = or i32 %and, %masksel
  store i32 %or.sink, ptr %i2c_state1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %i2c_state2 = getelementptr inbounds %struct.bttv, ptr %data, i32 0, i32 20
  %2 = ptrtoint ptr %i2c_state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_state2, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %bt848_mmio = getelementptr inbounds %struct.bttv, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !134
  %7 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 272
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bttv_bit_setsda(ptr nocapture noundef %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp ne i32 %state, 0
  %i2c_state1 = getelementptr inbounds %struct.bttv, ptr %data, i32 0, i32 20
  %0 = ptrtoint ptr %i2c_state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c_state1, align 8
  %and = and i32 %1, -2
  %masksel = zext i1 %tobool.not to i32
  %or.sink = or i32 %and, %masksel
  store i32 %or.sink, ptr %i2c_state1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %i2c_state2 = getelementptr inbounds %struct.bttv, ptr %data, i32 0, i32 20
  %2 = ptrtoint ptr %i2c_state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_state2, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %bt848_mmio = getelementptr inbounds %struct.bttv, ptr %data, i32 0, i32 3
  %5 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !134
  %7 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 272
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fini_bttv_i2c(ptr noundef %btv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_rc = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 21
  %0 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_adap = getelementptr inbounds %struct.bttv_core, ptr %btv, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bttv_i2c_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.body9_crit_edge, label %do.body

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bttv_i2c_xfer.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bttv_i2c_xfer, %if.then7)) #7
          to label %do.body9 [label %if.then7], !srcloc !140

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bttv_i2c_xfer.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.20) #7
  br label %do.body9

do.body9:                                         ; preds = %if.then7, %do.body, %entry.do.body9_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %bt848_mmio = getelementptr inbounds %struct.bttv, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 65538) #7, !srcloc !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp80 = icmp sgt i32 %num, 0
  br i1 %cmp80, label %do.body9.for.body_crit_edge, label %do.body9.cleanup_crit_edge

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body9.for.body_crit_edge:                      ; preds = %do.body9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body9.for.body_crit_edge
  %i.081 = phi i32 [ %inc.pre-phi, %for.inc.for.body_crit_edge ], [ 0, %do.body9.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.081
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.081, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 2
  %7 = and i16 %6, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool12.not = icmp eq i16 %7, 0
  %len.i51 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.081, i32 2
  %8 = ptrtoint ptr %len.i51 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.i52 = icmp eq i16 %9, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %for.body
  %.pre = add nuw nsw i32 %i.081, 1
  br i1 %cmp.i52, label %if.then13.for.inc_crit_edge, label %for.body.lr.ph.i

if.then13.for.inc_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre, i32 %num)
  %cmp15 = icmp ne i32 %.pre, %num
  %conv109.i = zext i16 %9 to i32
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.081, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv113.i = phi i32 [ %conv109.i, %for.body.lr.ph.i ], [ %conv.i, %for.inc.i.for.body.i_crit_edge ]
  %cnt.0111.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 4
  %conv3.i = zext i16 %11 to i32
  %shl.i = shl i32 %conv3.i, 25
  %sub.i = add nsw i32 %conv113.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0111.i, i32 %sub.i)
  %cmp7.i = icmp ult i32 %cnt.0111.i, %sub.i
  %spec.select.v.i = select i1 %cmp7.i, i32 16777359, i32 16777355
  %spec.select.i = or i32 %shl.i, %spec.select.v.i
  %or.cond.i = or i1 %cmp15, %cmp7.i
  %or16.i = or i32 %spec.select.i, 32
  %xmit.1.i = select i1 %or.cond.i, i32 %or16.i, i32 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0111.i)
  %tobool18.not.i = icmp eq i32 %cnt.0111.i, 0
  %or20.i = or i32 %xmit.1.i, 16
  %xmit.2.i = select i1 %tobool18.not.i, i32 %xmit.1.i, i32 %or20.i
  %12 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool22.not.i = icmp ne i32 %12, 0
  %and.i = and i32 %xmit.2.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool24.not.i = icmp eq i32 %and.i, 0
  %or.cond106.i = select i1 %tobool22.not.i, i1 %tobool24.not.i, i1 false
  br i1 %or.cond106.i, label %do.end.i, label %for.body.i.do.body31.i_crit_edge

for.body.i.do.body31.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body31.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl28.i = shl nuw nsw i32 %conv3.i, 1
  %add.i = or i32 %shl28.i, 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %add.i) #10
  br label %do.body31.i

do.body31.i:                                      ; preds = %do.end.i, %for.body.i.do.body31.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %xmit.2.i) #7
  %14 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #7, !srcloc !134
  %call34.i = tail call fastcc i32 @bttv_i2c_wait_done(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 0
  br i1 %cmp35.i, label %do.body31.i.err.i_crit_edge, label %if.end38.i

do.body31.i.err.i_crit_edge:                      ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end38.i:                                       ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp39.i = icmp eq i32 %call34.i, 0
  br i1 %cmp39.i, label %if.end38.i.err.i_crit_edge, label %if.end42.i

if.end38.i.err.i_crit_edge:                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end42.i:                                       ; preds = %if.end38.i
  %16 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr44.i = getelementptr i8, ptr %17, i32 272
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.i) #7, !srcloc !135
  %19 = lshr i32 %18, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %conv49.i = trunc i32 %19 to i8
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf.i, align 4
  %arrayidx.i = getelementptr i8, ptr %21, i32 %cnt.0111.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv49.i, ptr %arrayidx.i, align 1
  %23 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool50.not.i = icmp eq i32 %23, 0
  br i1 %tobool50.not.i, label %if.end42.i.if.end60.i_crit_edge, label %do.end54.i

if.end42.i.if.end60.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i

do.end54.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf.i, align 4
  %arrayidx57.i = getelementptr i8, ptr %25, i32 %cnt.0111.i
  %26 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx57.i, align 1
  %conv58.i = zext i8 %27 to i32
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %conv58.i) #10
  br label %if.end60.i

if.end60.i:                                       ; preds = %do.end54.i, %if.end42.i.if.end60.i_crit_edge
  %28 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool61.not.i = icmp ne i32 %28, 0
  %and62.i = and i32 %xmit.2.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  %or.cond107.i = select i1 %tobool61.not.i, i1 %tobool63.not.i, i1 false
  br i1 %or.cond107.i, label %do.end67.i, label %if.end60.i.for.inc.i_crit_edge

if.end60.i.for.inc.i_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end67.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  %call69.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end67.i, %if.end60.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %cnt.0111.i, 1
  %29 = ptrtoint ptr %len.i51 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %len.i51, align 4
  %conv.i = zext i16 %30 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.inc_crit_edge

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

err.i:                                            ; preds = %if.end38.i.err.i_crit_edge, %do.body31.i.err.i_crit_edge
  %retval1.0.i = phi i32 [ %call34.i, %do.body31.i.err.i_crit_edge ], [ -5, %if.end38.i.err.i_crit_edge ]
  %31 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool73.not.i = icmp eq i32 %31, 0
  br i1 %tobool73.not.i, label %err.i.cleanup_crit_edge, label %err.i.cleanup.sink.split_crit_edge

err.i.cleanup.sink.split_crit_edge:               ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

err.i.cleanup_crit_edge:                          ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %for.body
  br i1 %cmp.i52, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %add23 = add nuw nsw i32 %i.081, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %num)
  %cmp24 = icmp ne i32 %add23, %num
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx, align 4
  %conv3.i53 = zext i16 %33 to i32
  %shl.i54 = shl i32 %conv3.i53, 25
  %buf.i55 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.081, i32 3
  %34 = ptrtoint ptr %buf.i55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buf.i55, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  %conv4.i = zext i8 %37 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp9.not.i = icmp ne i16 %9, 1
  %or.cond.i57 = or i1 %cmp24, %cmp9.not.i
  %xmit.0.v.i = select i1 %or.cond.i57, i32 171, i32 139
  %or.i = or i32 %shl.i54, %xmit.0.v.i
  %xmit.0.i = or i32 %shl5.i, %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  %38 = tail call i32 @llvm.bswap.i32(i32 %xmit.0.i) #7
  %39 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr.i59 = getelementptr i8, ptr %40, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %38) #7, !srcloc !134
  %call.i60 = tail call fastcc i32 @bttv_i2c_wait_done(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp14.i = icmp slt i32 %call.i60, 0
  br i1 %cmp14.i, label %if.end.i.err.i70_crit_edge, label %if.end17.i

if.end.i.err.i70_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i70

if.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp18.i = icmp eq i32 %call.i60, 0
  br i1 %cmp18.i, label %if.end17.i.err.i70_crit_edge, label %if.end21.i

if.end17.i.err.i70_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i70

if.end21.i:                                       ; preds = %if.end17.i
  %41 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool22.not.i61 = icmp eq i32 %41, 0
  br i1 %tobool22.not.i61, label %if.end21.i.if.end34.i_crit_edge, label %do.end26.i

if.end21.i.if.end34.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

do.end26.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx, align 4
  %conv28.i = zext i16 %43 to i32
  %shl29.i = shl nuw nsw i32 %conv28.i, 1
  %44 = ptrtoint ptr %buf.i55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf.i55, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  %conv32.i = zext i8 %47 to i32
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %shl29.i, i32 noundef %conv32.i) #10
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end26.i, %if.end21.i.if.end34.i_crit_edge
  %48 = ptrtoint ptr %len.i51 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %len.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %49)
  %cmp37131.i = icmp ugt i16 %49, 1
  br i1 %cmp37131.i, label %for.body.preheader.i, label %if.end34.i.for.end.i_crit_edge

if.end34.i.for.end.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end34.i
  %conv36130.i = zext i16 %49 to i32
  br label %for.body.i65

for.body.i65:                                     ; preds = %for.inc.i67.for.body.i65_crit_edge, %for.body.preheader.i
  %conv36134.i = phi i32 [ %conv36.i, %for.inc.i67.for.body.i65_crit_edge ], [ %conv36130.i, %for.body.preheader.i ]
  %cnt.0132.i = phi i32 [ %inc.i66, %for.inc.i67.for.body.i65_crit_edge ], [ 1, %for.body.preheader.i ]
  %50 = ptrtoint ptr %buf.i55 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buf.i55, align 4
  %arrayidx40.i = getelementptr i8, ptr %51, i32 %cnt.0132.i
  %52 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx40.i, align 1
  %conv41.i = zext i8 %53 to i32
  %shl42.i = shl nuw i32 %conv41.i, 24
  %sub.i62 = add nsw i32 %conv36134.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0132.i, i32 %sub.i62)
  %cmp47.i = icmp slt i32 %cnt.0132.i, %sub.i62
  %or.cond127.i = or i1 %cmp24, %cmp47.i
  %xmit.2.v.i = select i1 %or.cond127.i, i32 187, i32 155
  %xmit.2.i63 = or i32 %shl42.i, %xmit.2.v.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %54 = tail call i32 @llvm.bswap.i32(i32 %xmit.2.i63) #7
  %55 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr58.i = getelementptr i8, ptr %56, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.i, i32 %54) #7, !srcloc !134
  %call59.i64 = tail call fastcc i32 @bttv_i2c_wait_done(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i64)
  %cmp60.i = icmp slt i32 %call59.i64, 0
  br i1 %cmp60.i, label %for.body.i65.err.i70_crit_edge, label %if.end63.i

for.body.i65.err.i70_crit_edge:                   ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i70

if.end63.i:                                       ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i64)
  %cmp64.i = icmp eq i32 %call59.i64, 0
  br i1 %cmp64.i, label %if.end63.i.err.i70_crit_edge, label %if.end67.i

if.end63.i.err.i70_crit_edge:                     ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i70

if.end67.i:                                       ; preds = %if.end63.i
  %57 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool68.not.i = icmp eq i32 %57, 0
  br i1 %tobool68.not.i, label %if.end67.i.for.inc.i67_crit_edge, label %do.end72.i

if.end67.i.for.inc.i67_crit_edge:                 ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i67

do.end72.i:                                       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %buf.i55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buf.i55, align 4
  %arrayidx75.i = getelementptr i8, ptr %59, i32 %cnt.0132.i
  %60 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx75.i, align 1
  %conv76.i = zext i8 %61 to i32
  %call77.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %conv76.i) #10
  br label %for.inc.i67

for.inc.i67:                                      ; preds = %do.end72.i, %if.end67.i.for.inc.i67_crit_edge
  %inc.i66 = add nuw nsw i32 %cnt.0132.i, 1
  %62 = ptrtoint ptr %len.i51 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %len.i51, align 4
  %conv36.i = zext i16 %63 to i32
  %cmp37.i = icmp ult i32 %inc.i66, %conv36.i
  br i1 %cmp37.i, label %for.inc.i67.for.body.i65_crit_edge, label %for.inc.i67.for.end.i_crit_edge

for.inc.i67.for.end.i_crit_edge:                  ; preds = %for.inc.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i67.for.body.i65_crit_edge:               ; preds = %for.inc.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i65

for.end.i:                                        ; preds = %for.inc.i67.for.end.i_crit_edge, %if.end34.i.for.end.i_crit_edge
  %xmit.1.lcssa.i = phi i32 [ %xmit.0.i, %if.end34.i.for.end.i_crit_edge ], [ %xmit.2.i63, %for.inc.i67.for.end.i_crit_edge ]
  %64 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool79.not.i = icmp ne i32 %64, 0
  %and.i68 = and i32 %xmit.1.lcssa.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool80.not.i = icmp eq i32 %and.i68, 0
  %or.cond128.i = select i1 %tobool79.not.i, i1 %tobool80.not.i, i1 false
  br i1 %or.cond128.i, label %do.end84.i, label %for.end.i.for.inc_crit_edge

for.end.i.for.inc_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end84.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #10
  br label %for.inc

err.i70:                                          ; preds = %if.end63.i.err.i70_crit_edge, %for.body.i65.err.i70_crit_edge, %if.end17.i.err.i70_crit_edge, %if.end.i.err.i70_crit_edge
  %retval1.0.i69 = phi i32 [ %call59.i64, %for.body.i65.err.i70_crit_edge ], [ -5, %if.end63.i.err.i70_crit_edge ], [ -5, %if.end17.i.err.i70_crit_edge ], [ %call.i60, %if.end.i.err.i70_crit_edge ]
  %65 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool90.not.i = icmp eq i32 %65, 0
  br i1 %tobool90.not.i, label %err.i70.cleanup_crit_edge, label %err.i70.cleanup.sink.split_crit_edge

err.i70.cleanup.sink.split_crit_edge:             ; preds = %err.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

err.i70.cleanup_crit_edge:                        ; preds = %err.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %do.end84.i, %for.end.i.for.inc_crit_edge, %for.inc.i.for.inc_crit_edge, %if.then13.for.inc_crit_edge
  %inc.pre-phi = phi i32 [ %add23, %do.end84.i ], [ %add23, %for.end.i.for.inc_crit_edge ], [ %.pre, %if.then13.for.inc_crit_edge ], [ %.pre, %for.inc.i.for.inc_crit_edge ]
  %exitcond.not = icmp eq i32 %inc.pre-phi, %num
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %err.i70.cleanup.sink.split_crit_edge, %err.i.cleanup.sink.split_crit_edge
  %retval1.0.i69.sink = phi i32 [ %retval1.0.i, %err.i.cleanup.sink.split_crit_edge ], [ %retval1.0.i69, %err.i70.cleanup.sink.split_crit_edge ]
  %call96.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %retval1.0.i69.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %err.i70.cleanup_crit_edge, %if.else.cleanup_crit_edge, %err.i.cleanup_crit_edge, %do.body9.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0.i, %err.i.cleanup_crit_edge ], [ %retval1.0.i69, %err.i70.cleanup_crit_edge ], [ %num, %do.body9.cleanup_crit_edge ], [ %retval1.0.i69.sink, %cleanup.sink.split ], [ %num, %for.inc.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @functionality(ptr nocapture noundef readnone %adap) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592712
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bttv_i2c_wait_done(ptr noundef %btv) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 112) #7
  %i2c_done = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 22
  %0 = ptrtoint ptr %i2c_done to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c_done, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then9, label %entry.if.end38.thread_crit_edge

entry.if.end38.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.thread

if.then9:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %i2c_queue = getelementptr inbounds %struct.bttv, ptr %btv, i32 0, i32 23
  %call1274 = call i32 @prepare_to_wait_event(ptr noundef %i2c_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %3 = ptrtoint ptr %i2c_done to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i2c_done, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool15.not75.not = icmp eq i32 %4, 0
  br i1 %tobool15.not75.not, label %if.then9.if.end31_crit_edge, label %if.then9.for.end_crit_edge

if.then9.for.end_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then9.if.end31_crit_edge:                      ; preds = %if.then9
  br label %if.end31

if.end31:                                         ; preds = %cleanup.if.end31_crit_edge, %if.then9.if.end31_crit_edge
  %__ret10.178 = phi i32 [ %__ret10.1, %cleanup.if.end31_crit_edge ], [ 9, %if.then9.if.end31_crit_edge ]
  %call1277 = phi i32 [ %call12, %cleanup.if.end31_crit_edge ], [ %call1274, %if.then9.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1277)
  %tobool32.not = icmp eq i32 %call1277, 0
  br i1 %tobool32.not, label %cleanup, label %if.end31.if.end38_crit_edge

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

cleanup:                                          ; preds = %if.end31
  %call35 = call i32 @schedule_timeout(i32 noundef %__ret10.178) #7
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %i2c_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %5 = ptrtoint ptr %i2c_done to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i2c_done, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool15.not = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool19.not = icmp eq i32 %call35, 0
  %spec.store.select48 = select i1 %tobool19.not, i32 1, i32 %call35
  %__ret10.1 = select i1 %tobool15.not, i32 %call35, i32 %spec.store.select48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1)
  %tobool25.not = icmp eq i32 %__ret10.1, 0
  %not.tobool15.not = xor i1 %tobool15.not, true
  %7 = select i1 %not.tobool15.not, i1 true, i1 %tobool25.not
  br i1 %7, label %cleanup.for.end_crit_edge, label %cleanup.if.end31_crit_edge

cleanup.if.end31_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then9.for.end_crit_edge
  %__ret10.1.lcssa = phi i32 [ 9, %if.then9.for.end_crit_edge ], [ %__ret10.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %i2c_queue, ptr noundef nonnull %__wq_entry) #7
  br label %if.end38

if.end38:                                         ; preds = %for.end, %if.end31.if.end38_crit_edge
  %__ret10.264 = phi i32 [ %__ret10.1.lcssa, %for.end ], [ %call1277, %if.end31.if.end38_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %__ret10.264)
  %cmp = icmp eq i32 %__ret10.264, -512
  %spec.select = select i1 %cmp, i32 -5, i32 0
  br label %if.end38.thread

if.end38.thread:                                  ; preds = %if.end38, %entry.if.end38.thread_crit_edge
  %8 = phi i32 [ 0, %entry.if.end38.thread_crit_edge ], [ %spec.select, %if.end38 ]
  %9 = ptrtoint ptr %i2c_done to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i2c_done, align 8
  %and = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  %rc.1 = select i1 %tobool43.not, i32 %8, i32 1
  %11 = ptrtoint ptr %i2c_done to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %i2c_done, align 8
  ret i32 %rc.1
}

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bttv_bit_getsda(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bt848_mmio = getelementptr inbounds %struct.bttv, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 272
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !135
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  %and = and i32 %3, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bttv_bit_getscl(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bt848_mmio = getelementptr inbounds %struct.bttv, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %bt848_mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bt848_mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 272
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  %3 = lshr i32 %2, 25
  %.lobit = and i32 %3, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !60, !62, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !104, !106, !107, !108, !109, !110, !112, !114, !116, !118, !120, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__param_i2c_debug, !1, !"__param_i2c_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_i2c_debugtype321, !1, !"__UNIQUE_ID_i2c_debugtype321", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_i2c_debug322, !4, !"__UNIQUE_ID_i2c_debug322", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 33, i32 1}
!5 = !{ptr @__param_i2c_hw, !6, !"__param_i2c_hw", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 34, i32 1}
!7 = !{ptr @__UNIQUE_ID_i2c_hwtype323, !6, !"__UNIQUE_ID_i2c_hwtype323", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_i2c_hw324, !9, !"__UNIQUE_ID_i2c_hw324", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 35, i32 1}
!10 = !{ptr @__param_i2c_scan, !11, !"__param_i2c_scan", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 36, i32 1}
!12 = !{ptr @__UNIQUE_ID_i2c_scantype325, !11, !"__UNIQUE_ID_i2c_scantype325", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_i2c_scan326, !14, !"__UNIQUE_ID_i2c_scan326", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 37, i32 1}
!15 = !{ptr @__param_i2c_udelay, !16, !"__param_i2c_udelay", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 40, i32 1}
!17 = !{ptr @__UNIQUE_ID_i2c_udelaytype327, !16, !"__UNIQUE_ID_i2c_udelaytype327", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_i2c_udelay328, !19, !"__UNIQUE_ID_i2c_udelay328", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 41, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 266, i32 3}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @bttv_I2CRead._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @bttv_I2CRead._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 272, i32 5}
!28 = !{ptr @bttv_I2CRead._entry.3, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @bttv_I2CRead._entry_ptr.5, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 274, i32 4}
!32 = !{ptr @bttv_I2CRead._entry.6, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @bttv_I2CRead._entry_ptr.8, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 279, i32 3}
!36 = !{ptr @bttv_I2CRead._entry.9, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @bttv_I2CRead._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 338, i32 32}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 344, i32 33}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 353, i32 33}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 364, i32 4}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 365, i32 22}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 365, i32 29}
!50 = !{ptr @i2c_debug, !51, !"i2c_debug", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 29, i32 12}
!52 = !{ptr @i2c_hw, !53, !"i2c_hw", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 30, i32 12}
!54 = !{ptr @i2c_scan, !55, !"i2c_scan", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 31, i32 12}
!56 = !{ptr @__param_str_i2c_debug, !1, !"__param_str_i2c_debug", i1 false, i1 false}
!57 = !{ptr @__param_str_i2c_hw, !6, !"__param_str_i2c_hw", i1 false, i1 false}
!58 = !{ptr @__param_str_i2c_scan, !11, !"__param_str_i2c_scan", i1 false, i1 false}
!59 = !{ptr @__param_str_i2c_udelay, !16, !"__param_str_i2c_udelay", i1 false, i1 false}
!60 = !{ptr @i2c_udelay, !61, !"i2c_udelay", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 39, i32 21}
!62 = !{ptr @bttv_algo, !63, !"bttv_algo", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 250, i32 35}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 228, i32 3}
!66 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @bttv_i2c_xfer.__UNIQUE_ID_ddebug329, !65, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!68 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 192, i32 5}
!71 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @bttv_i2c_readbytes._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @bttv_i2c_readbytes._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 203, i32 4}
!76 = !{ptr @bttv_i2c_readbytes._entry.23, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @bttv_i2c_readbytes._entry_ptr.25, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 206, i32 4}
!80 = !{ptr @bttv_i2c_readbytes._entry.26, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @bttv_i2c_readbytes._entry_ptr.28, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 216, i32 3}
!84 = !{ptr @bttv_i2c_readbytes._entry.29, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @bttv_i2c_readbytes._entry_ptr.31, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 145, i32 3}
!88 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @bttv_i2c_sendbytes._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @bttv_i2c_sendbytes._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 160, i32 4}
!93 = !{ptr @bttv_i2c_sendbytes._entry.34, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @bttv_i2c_sendbytes._entry_ptr.36, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 163, i32 3}
!97 = !{ptr @bttv_i2c_sendbytes._entry.37, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @bttv_i2c_sendbytes._entry_ptr.39, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @bttv_i2c_sendbytes._entry.40, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 170, i32 3}
!101 = !{ptr @bttv_i2c_sendbytes._entry_ptr.41, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @bttv_i2c_algo_bit_template, !103, !"bttv_i2c_algo_bit_template", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 88, i32 39}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 330, i32 3}
!106 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @do_i2c_scan._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @do_i2c_scan._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 311, i32 18}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 312, i32 18}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 313, i32 18}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 314, i32 18}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 315, i32 18}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 316, i32 18}
!122 = !{ptr @i2c_devs, !123, !"i2c_devs", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/bt8xx/bttv-i2c.c", i32 310, i32 14}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i64 2157305273}
!134 = !{i64 6852942}
!135 = !{i64 6853360}
!136 = !{i64 2157306060}
!137 = !{i64 2157306361}
!138 = !{i64 2157307148}
!139 = !{!"auto-init"}
!140 = !{i64 2148960537, i64 2148960542, i64 2148960555, i64 2148960599, i64 2148960633, i64 2148960654}
!141 = !{i64 2157326885}
!142 = !{i64 2157319554}
!143 = !{i64 2157320311}
!144 = !{i64 2157311294}
!145 = !{i64 2157313375}
!146 = !{i64 2157308266}
!147 = !{i64 2157307707}
