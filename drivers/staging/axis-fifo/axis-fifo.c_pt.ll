; ModuleID = '/llk/IR_all_yes/drivers/staging/axis-fifo/axis-fifo.c_pt.bc'
source_filename = "../drivers/staging/axis-fifo/axis-fifo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.axis_fifo = type { i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.mutex, %struct.wait_queue_head, %struct.mutex, i32, i32, ptr, %struct.miscdevice }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_read_timeout = internal constant [23 x i8] c"axis_fifo.read_timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@read_timeout = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@__param_read_timeout = internal constant %struct.kernel_param { ptr @__param_str_read_timeout, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @read_timeout } }, section "__param", align 4
@__UNIQUE_ID_read_timeouttype227 = internal constant [36 x i8] c"axis_fifo.parmtype=read_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_read_timeout228 = internal constant [99 x i8] c"axis_fifo.parm=read_timeout:ms to wait before blocking read() timing out; set to -1 for no timeout\00", section ".modinfo", align 1
@__param_str_write_timeout = internal constant [24 x i8] c"axis_fifo.write_timeout\00", align 1
@write_timeout = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@__param_write_timeout = internal constant %struct.kernel_param { ptr @__param_str_write_timeout, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @write_timeout } }, section "__param", align 4
@__UNIQUE_ID_write_timeouttype229 = internal constant [37 x i8] c"axis_fifo.parmtype=write_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_write_timeout230 = internal constant [101 x i8] c"axis_fifo.parm=write_timeout:ms to wait before blocking write() timing out; set to -1 for no timeout\00", section ".modinfo", align 1
@__initcall__kmod_axis_fifo__238_956_axis_fifo_init6 = internal global ptr @axis_fifo_init, section ".initcall6.init", align 4
@axis_fifo_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @axis_fifo_probe, ptr @axis_fifo_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @axis_fifo_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_axis_fifo_exit = internal global ptr @axis_fifo_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file239 = internal constant [51 x i8] c"axis_fifo.file=drivers/staging/axis-fifo/axis-fifo\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [22 x i8] c"axis_fifo.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [53 x i8] c"axis_fifo.author=Jacob Feder <jacobsfeder@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [65 x i8] c"axis_fifo.description=Xilinx AXI-Stream FIFO v4.1 IP core driver\00", section ".modinfo", align 1
@axis_fifo_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\016axis-fifo driver loaded with parameters read_timeout = %i, write_timeout = %i\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"axis_fifo_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/axis-fifo/axis-fifo.c\00", [58 x i8] zeroinitializer }, align 32
@axis_fifo_init._entry_ptr = internal global ptr @axis_fifo_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"axis_fifo\00", [22 x i8] zeroinitializer }, align 32
@axis_fifo_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi-fifo-mm-s-4.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@axis_fifo_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&fifo->read_queue\00", [46 x i8] zeroinitializer }, align 32
@axis_fifo_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&fifo->write_queue\00", [45 x i8] zeroinitializer }, align 32
@axis_fifo_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&fifo->read_lock\00", [47 x i8] zeroinitializer }, align 32
@axis_fifo_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&fifo->write_lock\00", [46 x i8] zeroinitializer }, align 32
@axis_fifo_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 849, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid address\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"axis_fifo_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axis_fifo_probe._entry_ptr = internal global ptr @axis_fifo_probe._entry, section ".printk_index", align 4
@axis_fifo_probe.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"remapped memory to 0x%p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s_%pa\00", [25 x i8] zeroinitializer }, align 32
@axis_fifo_probe.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.12, ptr @.str.2, ptr @.str.17, i8 0, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"device name [%s]\0A\00", [46 x i8] zeroinitializer }, align 32
@axis_fifo_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.12, ptr @.str.2, i32 894, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't allocate interrupt %i\0A\00", [32 x i8] zeroinitializer }, align 32
@axis_fifo_probe._entry_ptr.20 = internal global ptr @axis_fifo_probe._entry.18, section ".printk_index", align 4
@fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @axis_fifo_read, ptr @axis_fifo_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @axis_fifo_open, ptr null, ptr @axis_fifo_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@axis_fifo_attrs_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @axis_fifo_attrs_group, ptr null], [24 x i8] zeroinitializer }, align 32
@axis_fifo_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.12, ptr @.str.2, i32 914, ptr @.str.23, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"axis-fifo created at %pa mapped to 0x%pa, irq=%i\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@axis_fifo_probe._entry_ptr.24 = internal global ptr @axis_fifo_probe._entry.21, section ".printk_index", align 4
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xlnx,axi-str-rxd-tdata-width\00", [35 x i8] zeroinitializer }, align 32
@axis_fifo_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 755, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"missing xlnx,axi-str-rxd-tdata-width property\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"axis_fifo_parse_dt\00", [45 x i8] zeroinitializer }, align 32
@axis_fifo_parse_dt._entry_ptr = internal global ptr @axis_fifo_parse_dt._entry, section ".printk_index", align 4
@axis_fifo_parse_dt._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 758, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"xlnx,axi-str-rxd-tdata-width only supports 32 bits\0A\00", [44 x i8] zeroinitializer }, align 32
@axis_fifo_parse_dt._entry_ptr.30 = internal global ptr @axis_fifo_parse_dt._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xlnx,axi-str-txd-tdata-width\00", [35 x i8] zeroinitializer }, align 32
@axis_fifo_parse_dt._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.27, ptr @.str.2, i32 765, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"missing xlnx,axi-str-txd-tdata-width property\0A\00", [49 x i8] zeroinitializer }, align 32
@axis_fifo_parse_dt._entry_ptr.34 = internal global ptr @axis_fifo_parse_dt._entry.32, section ".printk_index", align 4
@axis_fifo_parse_dt._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.27, ptr @.str.2, i32 768, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"xlnx,axi-str-txd-tdata-width only supports 32 bits\0A\00", [44 x i8] zeroinitializer }, align 32
@axis_fifo_parse_dt._entry_ptr.37 = internal global ptr @axis_fifo_parse_dt._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xlnx,rx-fifo-depth\00", [45 x i8] zeroinitializer }, align 32
@axis_fifo_parse_dt._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.27, ptr @.str.2, i32 776, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"missing xlnx,rx-fifo-depth property\0A\00", [59 x i8] zeroinitializer }, align 32
@axis_fifo_parse_dt._entry_ptr.41 = internal global ptr @axis_fifo_parse_dt._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xlnx,tx-fifo-depth\00", [45 x i8] zeroinitializer }, align 32
@axis_fifo_parse_dt._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.27, ptr @.str.2, i32 784, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"missing xlnx,tx-fifo-depth property\0A\00", [59 x i8] zeroinitializer }, align 32
@axis_fifo_parse_dt._entry_ptr.45 = internal global ptr @axis_fifo_parse_dt._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xlnx,use-rx-data\00", [47 x i8] zeroinitializer }, align 32
@axis_fifo_parse_dt._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.27, ptr @.str.2, i32 794, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"missing xlnx,use-rx-data property\0A\00", [61 x i8] zeroinitializer }, align 32
@axis_fifo_parse_dt._entry_ptr.49 = internal global ptr @axis_fifo_parse_dt._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xlnx,use-tx-data\00", [47 x i8] zeroinitializer }, align 32
@axis_fifo_parse_dt._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.27, ptr @.str.2, i32 801, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"missing xlnx,use-tx-data property\0A\00", [61 x i8] zeroinitializer }, align 32
@axis_fifo_parse_dt._entry_ptr.53 = internal global ptr @axis_fifo_parse_dt._entry.51, section ".printk_index", align 4
@get_dts_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 739, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"couldn't read IP dts property '%s'\00", [61 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_dts_property\00", [47 x i8] zeroinitializer }, align 32
@get_dts_property._entry_ptr = internal global ptr @get_dts_property._entry, section ".printk_index", align 4
@get_dts_property.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 -71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dts property '%s' = %u\0A\00", [40 x i8] zeroinitializer }, align 32
@axis_fifo_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 640, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"receive under-read interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"axis_fifo_irq\00", [18 x i8] zeroinitializer }, align 32
@axis_fifo_irq._entry_ptr = internal global ptr @axis_fifo_irq._entry, section ".printk_index", align 4
@axis_fifo_irq._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 647, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"receive over-read interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@axis_fifo_irq._entry_ptr.61 = internal global ptr @axis_fifo_irq._entry.59, section ".printk_index", align 4
@axis_fifo_irq._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 654, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"receive underrun error interrupt\0A\00", [62 x i8] zeroinitializer }, align 32
@axis_fifo_irq._entry_ptr.64 = internal global ptr @axis_fifo_irq._entry.62, section ".printk_index", align 4
@axis_fifo_irq._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.2, i32 661, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"transmit overrun error interrupt\0A\00", [62 x i8] zeroinitializer }, align 32
@axis_fifo_irq._entry_ptr.67 = internal global ptr @axis_fifo_irq._entry.65, section ".printk_index", align 4
@axis_fifo_irq._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.58, ptr @.str.2, i32 668, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"transmit length mismatch error interrupt\0A\00", [54 x i8] zeroinitializer }, align 32
@axis_fifo_irq._entry_ptr.70 = internal global ptr @axis_fifo_irq._entry.68, section ".printk_index", align 4
@axis_fifo_irq._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.58, ptr @.str.2, i32 676, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unknown interrupt(s) 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@axis_fifo_irq._entry_ptr.73 = internal global ptr @axis_fifo_irq._entry.71, section ".printk_index", align 4
@axis_fifo_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 396, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"wait_event_interruptible_timeout() error in read (ret=%i)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"axis_fifo_read\00", [17 x i8] zeroinitializer }, align 32
@axis_fifo_read._entry_ptr = internal global ptr @axis_fifo_read._entry, section ".printk_index", align 4
@axis_fifo_read._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 405, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"received a packet of length 0 - fifo core will be reset\0A\00", [39 x i8] zeroinitializer }, align 32
@axis_fifo_read._entry_ptr.78 = internal global ptr @axis_fifo_read._entry.76, section ".printk_index", align 4
@axis_fifo_read._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.2, i32 413, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"user read buffer too small (available bytes=%zu user buffer bytes=%zu) - fifo core will be reset\0A\00", [62 x i8] zeroinitializer }, align 32
@axis_fifo_read._entry_ptr.81 = internal global ptr @axis_fifo_read._entry.79, section ".printk_index", align 4
@axis_fifo_read._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.2, i32 423, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"received a packet that isn't word-aligned - fifo core will be reset\0A\00", [59 x i8] zeroinitializer }, align 32
@axis_fifo_read._entry_ptr.84 = internal global ptr @axis_fifo_read._entry.82, section ".printk_index", align 4
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@axis_fifo_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 490, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"tried to send a packet that isn't word-aligned\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"axis_fifo_write\00", [16 x i8] zeroinitializer }, align 32
@axis_fifo_write._entry_ptr = internal global ptr @axis_fifo_write._entry, section ".printk_index", align 4
@axis_fifo_write._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 498, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tried to send a packet of length 0\0A\00", [60 x i8] zeroinitializer }, align 32
@axis_fifo_write._entry_ptr.92 = internal global ptr @axis_fifo_write._entry.90, section ".printk_index", align 4
@axis_fifo_write._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.2, i32 504, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"tried to write more words [%u] than slots in the fifo buffer [%u]\0A\00", [61 x i8] zeroinitializer }, align 32
@axis_fifo_write._entry_ptr.95 = internal global ptr @axis_fifo_write._entry.93, section ".printk_index", align 4
@axis_fifo_write._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.89, ptr @.str.2, i32 540, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"wait_event_interruptible_timeout() error in write (ret=%i)\0A\00", [36 x i8] zeroinitializer }, align 32
@axis_fifo_write._entry_ptr.98 = internal global ptr @axis_fifo_write._entry.96, section ".printk_index", align 4
@axis_fifo_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 697, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"tried to open device for write but the transmit fifo is disabled\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"axis_fifo_open\00", [17 x i8] zeroinitializer }, align 32
@axis_fifo_open._entry_ptr = internal global ptr @axis_fifo_open._entry, section ".printk_index", align 4
@axis_fifo_open._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.2, i32 707, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"tried to open device for read but the receive fifo is disabled\0A\00", [32 x i8] zeroinitializer }, align 32
@axis_fifo_open._entry_ptr.103 = internal global ptr @axis_fifo_open._entry.101, section ".printk_index", align 4
@axis_fifo_attrs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.104, ptr null, ptr null, ptr @axis_fifo_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ip_registers\00", [19 x i8] zeroinitializer }, align 32
@axis_fifo_attrs = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @dev_attr_isr, ptr @dev_attr_ier, ptr @dev_attr_tdfr, ptr @dev_attr_tdfv, ptr @dev_attr_tdfd, ptr @dev_attr_tlr, ptr @dev_attr_rdfr, ptr @dev_attr_rdfo, ptr @dev_attr_rdfd, ptr @dev_attr_rlr, ptr @dev_attr_srr, ptr @dev_attr_tdr, ptr @dev_attr_rdr, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_isr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @isr_show, ptr @isr_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ier = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ier_show, ptr @ier_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tdfr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @tdfr_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tdfv = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tdfv_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tdfd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @tdfd_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tlr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @tlr_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rdfr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @rdfr_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rdfo = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rdfo_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rdfd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rdfd_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rlr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rlr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_srr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @srr_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tdr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @tdr_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rdr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rdr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"isr\00", [28 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ier\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tdfr\00", [27 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tdfv\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tdfd\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tlr\00", [28 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdfr\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdfo\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdfd\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rlr\00", [28 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"srr\00", [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tdr\00", [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rdr\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.121 = private unnamed_addr constant [13 x i8] c"read_timeout\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 106, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant [14 x i8] c"write_timeout\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 107, i32 12 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"axis_fifo_driver\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 940, i32 31 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 951, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 942, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant [19 x i8] c"axis_fifo_of_match\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 934, i32 34 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 835, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 836, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 838, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 839, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 849, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 861, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 864, i32 28 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 865, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 893, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [5 x i8] c"fops\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 722, i32 37 }
@___asan_gen_.205 = private unnamed_addr constant [23 x i8] c"axis_fifo_attrs_groups\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 318, i32 38 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 913, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 753, i32 31 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 755, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 758, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 763, i32 31 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 765, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 768, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 773, i32 31 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 776, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 781, i32 31 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 784, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 792, i32 31 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 794, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 799, i32 31 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 801, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 738, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 742, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 639, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 646, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 653, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 660, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 667, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 674, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 395, i32 5 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 405, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 412, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 423, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 174, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 489, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 497, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 503, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 539, i32 5 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 697, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 707, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant [22 x i8] c"axis_fifo_attrs_group\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 313, i32 37 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 314, i32 10 }
@___asan_gen_.415 = private unnamed_addr constant [16 x i8] c"axis_fifo_attrs\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 296, i32 26 }
@___asan_gen_.418 = private unnamed_addr constant [13 x i8] c"dev_attr_isr\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [13 x i8] c"dev_attr_ier\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [14 x i8] c"dev_attr_tdfr\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [14 x i8] c"dev_attr_tdfv\00", align 1
@___asan_gen_.430 = private unnamed_addr constant [14 x i8] c"dev_attr_tdfd\00", align 1
@___asan_gen_.433 = private unnamed_addr constant [13 x i8] c"dev_attr_tlr\00", align 1
@___asan_gen_.436 = private unnamed_addr constant [14 x i8] c"dev_attr_rdfr\00", align 1
@___asan_gen_.439 = private unnamed_addr constant [14 x i8] c"dev_attr_rdfo\00", align 1
@___asan_gen_.442 = private unnamed_addr constant [14 x i8] c"dev_attr_rdfd\00", align 1
@___asan_gen_.445 = private unnamed_addr constant [13 x i8] c"dev_attr_rlr\00", align 1
@___asan_gen_.448 = private unnamed_addr constant [13 x i8] c"dev_attr_srr\00", align 1
@___asan_gen_.451 = private unnamed_addr constant [13 x i8] c"dev_attr_tdr\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [13 x i8] c"dev_attr_rdr\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 192, i32 8 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 174, i32 36 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 206, i32 8 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 214, i32 8 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 222, i32 8 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 230, i32 8 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 238, i32 8 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 246, i32 8 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 254, i32 8 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 262, i32 8 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 270, i32 8 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 278, i32 8 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 286, i32 8 }
@___asan_gen_.496 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.497 = private constant [41 x i8] c"../drivers/staging/axis-fifo/axis-fifo.c\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.497, i32 294, i32 8 }
@llvm.compiler.used = appending global [168 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__UNIQUE_ID_read_timeout228, ptr @__UNIQUE_ID_read_timeouttype227, ptr @__UNIQUE_ID_write_timeout230, ptr @__UNIQUE_ID_write_timeouttype229, ptr @__exitcall_axis_fifo_exit, ptr @__initcall__kmod_axis_fifo__238_956_axis_fifo_init6, ptr @__param_read_timeout, ptr @__param_write_timeout, ptr @axis_fifo_exit, ptr @axis_fifo_init._entry, ptr @axis_fifo_init._entry_ptr, ptr @axis_fifo_irq._entry, ptr @axis_fifo_irq._entry.59, ptr @axis_fifo_irq._entry.62, ptr @axis_fifo_irq._entry.65, ptr @axis_fifo_irq._entry.68, ptr @axis_fifo_irq._entry.71, ptr @axis_fifo_irq._entry_ptr, ptr @axis_fifo_irq._entry_ptr.61, ptr @axis_fifo_irq._entry_ptr.64, ptr @axis_fifo_irq._entry_ptr.67, ptr @axis_fifo_irq._entry_ptr.70, ptr @axis_fifo_irq._entry_ptr.73, ptr @axis_fifo_open._entry, ptr @axis_fifo_open._entry.101, ptr @axis_fifo_open._entry_ptr, ptr @axis_fifo_open._entry_ptr.103, ptr @axis_fifo_parse_dt._entry, ptr @axis_fifo_parse_dt._entry.28, ptr @axis_fifo_parse_dt._entry.32, ptr @axis_fifo_parse_dt._entry.35, ptr @axis_fifo_parse_dt._entry.39, ptr @axis_fifo_parse_dt._entry.43, ptr @axis_fifo_parse_dt._entry.47, ptr @axis_fifo_parse_dt._entry.51, ptr @axis_fifo_parse_dt._entry_ptr, ptr @axis_fifo_parse_dt._entry_ptr.30, ptr @axis_fifo_parse_dt._entry_ptr.34, ptr @axis_fifo_parse_dt._entry_ptr.37, ptr @axis_fifo_parse_dt._entry_ptr.41, ptr @axis_fifo_parse_dt._entry_ptr.45, ptr @axis_fifo_parse_dt._entry_ptr.49, ptr @axis_fifo_parse_dt._entry_ptr.53, ptr @axis_fifo_probe._entry, ptr @axis_fifo_probe._entry.18, ptr @axis_fifo_probe._entry.21, ptr @axis_fifo_probe._entry_ptr, ptr @axis_fifo_probe._entry_ptr.20, ptr @axis_fifo_probe._entry_ptr.24, ptr @axis_fifo_read._entry, ptr @axis_fifo_read._entry.76, ptr @axis_fifo_read._entry.79, ptr @axis_fifo_read._entry.82, ptr @axis_fifo_read._entry_ptr, ptr @axis_fifo_read._entry_ptr.78, ptr @axis_fifo_read._entry_ptr.81, ptr @axis_fifo_read._entry_ptr.84, ptr @axis_fifo_write._entry, ptr @axis_fifo_write._entry.90, ptr @axis_fifo_write._entry.93, ptr @axis_fifo_write._entry.96, ptr @axis_fifo_write._entry_ptr, ptr @axis_fifo_write._entry_ptr.92, ptr @axis_fifo_write._entry_ptr.95, ptr @axis_fifo_write._entry_ptr.98, ptr @get_dts_property._entry, ptr @get_dts_property._entry_ptr, ptr @read_timeout, ptr @write_timeout, ptr @axis_fifo_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @axis_fifo_of_match, ptr @axis_fifo_probe.__key, ptr @.str.4, ptr @axis_fifo_probe.__key.5, ptr @.str.6, ptr @axis_fifo_probe.__key.7, ptr @.str.8, ptr @axis_fifo_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @fops, ptr @axis_fifo_attrs_groups, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @axis_fifo_attrs_group, ptr @.str.104, ptr @axis_fifo_attrs, ptr @dev_attr_isr, ptr @dev_attr_ier, ptr @dev_attr_tdfr, ptr @dev_attr_tdfv, ptr @dev_attr_tdfd, ptr @dev_attr_tlr, ptr @dev_attr_rdfr, ptr @dev_attr_rdfo, ptr @dev_attr_rdfd, ptr @dev_attr_rlr, ptr @dev_attr_srr, ptr @dev_attr_tdr, ptr @dev_attr_rdr, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], section "llvm.metadata"
@0 = internal global [126 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_attrs_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_parse_dt._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_parse_dt._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_parse_dt._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_parse_dt._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_parse_dt._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_parse_dt._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_parse_dt._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_dts_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_irq._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_irq._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_irq._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_irq._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_irq._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_read._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_read._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_read._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_write._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_write._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_write._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_open._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_attrs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axis_fifo_attrs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_isr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ier to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tdfr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tdfv to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tdfd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tlr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rdfr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rdfo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rdfd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rlr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_srr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tdr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rdr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axis_fifo_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @read_timeout, align 4
  %1 = load i32, ptr @write_timeout, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0, i32 noundef %1) #12
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @axis_fifo_driver, ptr noundef null) #9
  ret i32 %call1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axis_fifo_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @axis_fifo_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axis_fifo_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i150 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 364, i32 noundef 3520) #9
  %tobool3.not = icmp eq ptr %call.i150, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i150, ptr %driver_data.i, align 4
  %dt_device = getelementptr inbounds %struct.axis_fifo, ptr %call.i150, i32 0, i32 12
  %1 = ptrtoint ptr %dt_device to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dt_device, align 4
  %read_queue = getelementptr inbounds %struct.axis_fifo, ptr %call.i150, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %read_queue, ptr noundef nonnull @.str.4, ptr noundef nonnull @axis_fifo_probe.__key) #9
  %write_queue = getelementptr inbounds %struct.axis_fifo, ptr %call.i150, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %write_queue, ptr noundef nonnull @.str.6, ptr noundef nonnull @axis_fifo_probe.__key.5) #9
  %read_lock = getelementptr inbounds %struct.axis_fifo, ptr %call.i150, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %read_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @axis_fifo_probe.__key.7) #9
  %write_lock = getelementptr inbounds %struct.axis_fifo, ptr %call.i150, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %write_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @axis_fifo_probe.__key.9) #9
  %call15 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %tobool16.not = icmp eq ptr %call15, null
  %2 = ptrtoint ptr %dt_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dt_device, align 4
  br i1 %tobool16.not, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11) #12
  br label %err_initial

if.end22:                                         ; preds = %if.end5
  %call24 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %call15) #9
  %base_addr = getelementptr inbounds %struct.axis_fifo, ptr %call.i150, i32 0, i32 1
  %4 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call24, ptr %base_addr, align 4
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %do.body31

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call24 to i32
  br label %err_initial

do.body31:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axis_fifo_probe.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axis_fifo_probe, %if.then36)) #9
          to label %do.end41 [label %if.then36], !srcloc !264

if.then36:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %dt_device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dt_device, align 4
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axis_fifo_probe.__UNIQUE_ID_ddebug236, ptr noundef %7, ptr noundef nonnull @.str.15, ptr noundef %9) #9
  br label %do.end41

do.end41:                                         ; preds = %if.then36, %do.body31
  %call42 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, ptr noundef nonnull %call15)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @axis_fifo_probe.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axis_fifo_probe, %if.then55)) #9
          to label %do.end59 [label %if.then55], !srcloc !264

if.then55:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dt_device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dt_device, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @axis_fifo_probe.__UNIQUE_ID_ddebug237, ptr noundef %11, ptr noundef nonnull @.str.17, ptr noundef nonnull %call.i) #9
  br label %do.end59

do.end59:                                         ; preds = %if.then55, %do.end41
  %call60 = tail call fastcc i32 @axis_fifo_parse_dt(ptr noundef nonnull %call.i150)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %do.end59.err_initial_crit_edge

do.end59.err_initial_crit_edge:                   ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_initial

if.end63:                                         ; preds = %do.end59
  %12 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1526726656) #9, !srcloc !266
  %14 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_addr, align 4
  %add.ptr2.i = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -1526726656) #9, !srcloc !266
  %16 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr, align 4
  %add.ptr4.i = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -1526726656) #9, !srcloc !266
  %18 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr, align 4
  %add.ptr6.i = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 254) #9, !srcloc !266
  %20 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 63743) #9, !srcloc !266
  %call64 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp = icmp slt i32 %call64, 0
  br i1 %cmp, label %if.end63.err_initial_crit_edge, label %if.end66

if.end63.err_initial_crit_edge:                   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_initial

if.end66:                                         ; preds = %if.end63
  %22 = ptrtoint ptr %call.i150 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call64, ptr %call.i150, align 4
  %23 = ptrtoint ptr %dt_device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dt_device, align 4
  %call.i151 = tail call i32 @devm_request_threaded_irq(ptr noundef %24, i32 noundef %call64, ptr noundef nonnull @axis_fifo_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %call.i150) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool70.not = icmp eq i32 %call.i151, 0
  br i1 %tobool70.not, label %if.end77, label %do.end74

do.end74:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %dt_device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dt_device, align 4
  %27 = ptrtoint ptr %call.i150 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call.i150, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.19, i32 noundef %28) #12
  br label %err_initial

if.end77:                                         ; preds = %if.end66
  %miscdev = getelementptr inbounds %struct.axis_fifo, ptr %call.i150, i32 0, i32 13
  %fops = getelementptr inbounds %struct.axis_fifo, ptr %call.i150, i32 0, i32 13, i32 2
  %29 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @fops, ptr %fops, align 4
  %30 = ptrtoint ptr %miscdev to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 255, ptr %miscdev, align 4
  %name = getelementptr inbounds %struct.axis_fifo, ptr %call.i150, i32 0, i32 13, i32 1
  %31 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %name, align 4
  %groups = getelementptr inbounds %struct.axis_fifo, ptr %call.i150, i32 0, i32 13, i32 6
  %32 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @axis_fifo_attrs_groups, ptr %groups, align 4
  %parent = getelementptr inbounds %struct.axis_fifo, ptr %call.i150, i32 0, i32 13, i32 4
  %33 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev1, ptr %parent, align 4
  %call83 = tail call i32 @misc_register(ptr noundef %miscdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.end77.err_initial_crit_edge, label %do.end89

if.end77.err_initial_crit_edge:                   ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_initial

do.end89:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %dt_device to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dt_device, align 4
  %36 = ptrtoint ptr %call.i150 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call.i150, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.22, ptr noundef nonnull %call15, ptr noundef %base_addr, i32 noundef %37) #12
  br label %cleanup

err_initial:                                      ; preds = %if.end77.err_initial_crit_edge, %do.end74, %if.end63.err_initial_crit_edge, %do.end59.err_initial_crit_edge, %if.then27, %do.end20
  %rc.0 = phi i32 [ %5, %if.then27 ], [ %call60, %do.end59.err_initial_crit_edge ], [ %call64, %if.end63.err_initial_crit_edge ], [ %call.i151, %do.end74 ], [ %call83, %if.end77.err_initial_crit_edge ], [ -19, %do.end20 ]
  %38 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_initial, %do.end89, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %err_initial ], [ 0, %do.end89 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axis_fifo_remove(ptr nocapture noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %miscdev = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 13
  tail call void @misc_deregister(ptr noundef %miscdev) #9
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @axis_fifo_parse_dt(ptr noundef %fifo) unnamed_addr #3 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !267
  %dt_device.i = getelementptr inbounds %struct.axis_fifo, ptr %fifo, i32 0, i32 12
  %1 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dt_device.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.25, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %do.body2.i, label %do.end

do.body2.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_dts_property.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axis_fifo_parse_dt, %get_dts_property.exit.thread)) #9
          to label %if.else [label %get_dts_property.exit.thread], !srcloc !264

get_dts_property.exit.thread:                     ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dt_device.i, align 4
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_dts_property.__UNIQUE_ID_ddebug235, ptr noundef %6, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.25, i32 noundef %8) #9
  br label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dt_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.25) #12
  %11 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dt_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.26) #12
  br label %end

if.else:                                          ; preds = %get_dts_property.exit.thread, %do.body2.i
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp.not = icmp eq i32 %14, 32
  %15 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dt_device.i, align 4
  br i1 %cmp.not, label %if.end6, label %do.end4

do.end4:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.29) #12
  br label %end

if.end6:                                          ; preds = %if.else
  %of_node.i81 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %of_node.i81 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node.i81, align 8
  %call.i.i.i82 = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.31, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i82)
  %tobool.not.i83 = icmp sgt i32 %call.i.i.i82, -1
  br i1 %tobool.not.i83, label %do.body2.i85, label %do.end12

do.body2.i85:                                     ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_dts_property.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axis_fifo_parse_dt, %get_dts_property.exit87.thread)) #9
          to label %if.else14 [label %get_dts_property.exit87.thread], !srcloc !264

get_dts_property.exit87.thread:                   ; preds = %do.body2.i85
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dt_device.i, align 4
  %21 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %value, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_dts_property.__UNIQUE_ID_ddebug235, ptr noundef %20, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.31, i32 noundef %22) #9
  br label %if.else14

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dt_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.31) #12
  %25 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dt_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.33) #12
  br label %end

if.else14:                                        ; preds = %get_dts_property.exit87.thread, %do.body2.i85
  %27 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %28)
  %cmp15.not = icmp eq i32 %28, 32
  br i1 %cmp15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dt_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.36) #12
  br label %end

if.end22:                                         ; preds = %if.else14
  %rx_fifo_depth = getelementptr inbounds %struct.axis_fifo, ptr %fifo, i32 0, i32 2
  %31 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dt_device.i, align 4
  %of_node.i89 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %of_node.i89 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node.i89, align 8
  %call.i.i.i90 = call i32 @of_property_read_variable_u32_array(ptr noundef %34, ptr noundef nonnull @.str.38, ptr noundef %rx_fifo_depth, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i90)
  %tobool.not.i91 = icmp sgt i32 %call.i.i.i90, -1
  br i1 %tobool.not.i91, label %do.body2.i93, label %do.end28

do.body2.i93:                                     ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_dts_property.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axis_fifo_parse_dt, %get_dts_property.exit95.thread)) #9
          to label %if.end30 [label %get_dts_property.exit95.thread], !srcloc !264

get_dts_property.exit95.thread:                   ; preds = %do.body2.i93
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dt_device.i, align 4
  %37 = ptrtoint ptr %rx_fifo_depth to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_fifo_depth, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_dts_property.__UNIQUE_ID_ddebug235, ptr noundef %36, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.38, i32 noundef %38) #9
  br label %if.end30

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dt_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.38) #12
  %41 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dt_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.40) #12
  br label %end

if.end30:                                         ; preds = %get_dts_property.exit95.thread, %do.body2.i93
  %tx_fifo_depth = getelementptr inbounds %struct.axis_fifo, ptr %fifo, i32 0, i32 3
  %43 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dt_device.i, align 4
  %of_node.i97 = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 27
  %45 = ptrtoint ptr %of_node.i97 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node.i97, align 8
  %call.i.i.i98 = call i32 @of_property_read_variable_u32_array(ptr noundef %46, ptr noundef nonnull @.str.42, ptr noundef %tx_fifo_depth, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i98)
  %tobool.not.i99 = icmp sgt i32 %call.i.i.i98, -1
  br i1 %tobool.not.i99, label %do.body2.i101, label %do.end36

do.body2.i101:                                    ; preds = %if.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_dts_property.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axis_fifo_parse_dt, %get_dts_property.exit103.thread)) #9
          to label %if.end38 [label %get_dts_property.exit103.thread], !srcloc !264

get_dts_property.exit103.thread:                  ; preds = %do.body2.i101
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dt_device.i, align 4
  %49 = ptrtoint ptr %tx_fifo_depth to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_fifo_depth, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_dts_property.__UNIQUE_ID_ddebug235, ptr noundef %48, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.42, i32 noundef %50) #9
  br label %if.end38

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dt_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.42) #12
  %53 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dt_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.44) #12
  br label %end

if.end38:                                         ; preds = %get_dts_property.exit103.thread, %do.body2.i101
  %55 = ptrtoint ptr %tx_fifo_depth to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tx_fifo_depth, align 4
  %sub = add i32 %56, -4
  store i32 %sub, ptr %tx_fifo_depth, align 4
  %has_rx_fifo = getelementptr inbounds %struct.axis_fifo, ptr %fifo, i32 0, i32 4
  %57 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dt_device.i, align 4
  %of_node.i105 = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 27
  %59 = ptrtoint ptr %of_node.i105 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %of_node.i105, align 8
  %call.i.i.i106 = call i32 @of_property_read_variable_u32_array(ptr noundef %60, ptr noundef nonnull @.str.46, ptr noundef %has_rx_fifo, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i106)
  %tobool.not.i107 = icmp sgt i32 %call.i.i.i106, -1
  br i1 %tobool.not.i107, label %do.body2.i109, label %do.end45

do.body2.i109:                                    ; preds = %if.end38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_dts_property.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axis_fifo_parse_dt, %get_dts_property.exit111.thread)) #9
          to label %if.end47 [label %get_dts_property.exit111.thread], !srcloc !264

get_dts_property.exit111.thread:                  ; preds = %do.body2.i109
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dt_device.i, align 4
  %63 = ptrtoint ptr %has_rx_fifo to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %has_rx_fifo, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_dts_property.__UNIQUE_ID_ddebug235, ptr noundef %62, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.46, i32 noundef %64) #9
  br label %if.end47

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dt_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.46) #12
  %67 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dt_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.48) #12
  br label %end

if.end47:                                         ; preds = %get_dts_property.exit111.thread, %do.body2.i109
  %has_tx_fifo = getelementptr inbounds %struct.axis_fifo, ptr %fifo, i32 0, i32 5
  %69 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dt_device.i, align 4
  %of_node.i113 = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 27
  %71 = ptrtoint ptr %of_node.i113 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %of_node.i113, align 8
  %call.i.i.i114 = call i32 @of_property_read_variable_u32_array(ptr noundef %72, ptr noundef nonnull @.str.50, ptr noundef %has_tx_fifo, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i114)
  %tobool.not.i115 = icmp sgt i32 %call.i.i.i114, -1
  br i1 %tobool.not.i115, label %do.body2.i117, label %do.end53

do.body2.i117:                                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_dts_property.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@axis_fifo_parse_dt, %get_dts_property.exit119.thread)) #9
          to label %end [label %get_dts_property.exit119.thread], !srcloc !264

get_dts_property.exit119.thread:                  ; preds = %do.body2.i117
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dt_device.i, align 4
  %75 = ptrtoint ptr %has_tx_fifo to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %has_tx_fifo, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_dts_property.__UNIQUE_ID_ddebug235, ptr noundef %74, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.50, i32 noundef %76) #9
  br label %end

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dt_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.50) #12
  %79 = ptrtoint ptr %dt_device.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dt_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.52) #12
  br label %end

end:                                              ; preds = %do.end53, %get_dts_property.exit119.thread, %do.body2.i117, %do.end45, %do.end36, %do.end28, %do.end19, %do.end12, %do.end4, %do.end
  %ret.0 = phi i32 [ %call.i.i.i, %do.end ], [ -5, %do.end4 ], [ %call.i.i.i82, %do.end12 ], [ -5, %do.end19 ], [ -5, %do.end28 ], [ -5, %do.end36 ], [ -5, %do.end45 ], [ -5, %do.end53 ], [ 0, %get_dts_property.exit119.thread ], [ 0, %do.body2.i117 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axis_fifo_irq(i32 noundef %irq, ptr noundef %dw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.axis_fifo, ptr %dw, i32 0, i32 1
  %read_queue = getelementptr inbounds %struct.axis_fifo, ptr %dw, i32 0, i32 6
  %write_queue = getelementptr inbounds %struct.axis_fifo, ptr %dw, i32 0, i32 8
  %dt_device = getelementptr inbounds %struct.axis_fifo, ptr %dw, i32 0, i32 12
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  %3 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base_addr, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  %6 = and i32 %5, %2
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and4 = and i32 %7, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wake_up(ptr noundef %read_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 4) #9, !srcloc !266
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %do.end100, %do.end91, %do.end81, %do.end71, %do.end61, %do.end, %if.then45, %if.then39, %if.then33, %if.then27, %if.then21, %if.then15, %if.then9, %if.then
  br label %do.body

if.else:                                          ; preds = %do.body
  %and7 = and i32 %7, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else12, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wake_up(ptr noundef %write_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %10 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 8) #9, !srcloc !266
  br label %do.body.backedge

if.else12:                                        ; preds = %if.else
  %and13 = and i32 %7, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else18, label %if.then15

if.then15:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 16384) #9, !srcloc !266
  br label %do.body.backedge

if.else18:                                        ; preds = %if.else12
  %and19 = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else24, label %if.then21

if.then21:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 8192) #9, !srcloc !266
  br label %do.body.backedge

if.else24:                                        ; preds = %if.else18
  %and25 = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else30, label %if.then27

if.then27:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 4096) #9, !srcloc !266
  br label %do.body.backedge

if.else30:                                        ; preds = %if.else24
  %and31 = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else36, label %if.then33

if.then33:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 2048) #9, !srcloc !266
  br label %do.body.backedge

if.else36:                                        ; preds = %if.else30
  %and37 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else42, label %if.then39

if.then39:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 1) #9, !srcloc !266
  br label %do.body.backedge

if.else42:                                        ; preds = %if.else36
  %and43 = and i32 %7, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.else48, label %if.then45

if.then45:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 32768) #9, !srcloc !266
  br label %do.body.backedge

if.else48:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool50.not = icmp sgt i32 %7, -1
  br i1 %tobool50.not, label %if.else55, label %do.end

do.end:                                           ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dt_device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dt_device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.57) #12
  %26 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 128) #9, !srcloc !266
  br label %do.body.backedge

if.else55:                                        ; preds = %if.else48
  %and56 = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.else65, label %do.end61

do.end61:                                         ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %dt_device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dt_device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.60) #12
  %30 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 64) #9, !srcloc !266
  br label %do.body.backedge

if.else65:                                        ; preds = %if.else55
  %and66 = and i32 %7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.else75, label %do.end71

do.end71:                                         ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %dt_device to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dt_device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.63) #12
  %34 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 32) #9, !srcloc !266
  br label %do.body.backedge

if.else75:                                        ; preds = %if.else65
  %and76 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.else85, label %do.end81

do.end81:                                         ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %dt_device to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dt_device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.66) #12
  %38 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 16) #9, !srcloc !266
  br label %do.body.backedge

if.else85:                                        ; preds = %if.else75
  %and86 = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.else95, label %do.end91

do.end91:                                         ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %dt_device to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dt_device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.69) #12
  %42 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 2) #9, !srcloc !266
  br label %do.body.backedge

if.else95:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond = icmp eq i32 %6, 0
  br i1 %cond, label %do.end119, label %do.end100

do.end100:                                        ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %dt_device to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dt_device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.72, i32 noundef %7) #12
  %46 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 63743) #9, !srcloc !266
  br label %do.body.backedge

do.end119:                                        ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axis_fifo_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %off) #3 align 64 {
entry:
  %tmp_buf = alloca [128 x i32], align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %tmp_buf) #9
  %2 = call ptr @memset(ptr %tmp_buf, i32 255, i32 512)
  %read_flags = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %read_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %read_flags, align 4
  %and = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %read_lock7 = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 7
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @mutex_trylock(ptr noundef %read_lock7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.cleanup119_crit_edge, label %if.end

if.then.cleanup119_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup119

if.end:                                           ; preds = %if.then
  %base_addr = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 28
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end.end_unlock_crit_edge, label %if.end.if.end74_crit_edge

if.end.if.end74_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.end.end_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_unlock

if.else:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %read_lock7, i32 noundef 0) #9
  %8 = load i32, ptr @read_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp = icmp sgt i32 %8, -1
  br i1 %cmp, label %if.else.i, label %if.else.cond.end_crit_edge

if.else.cond.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %8) #9
  br label %cond.end

cond.end:                                         ; preds = %if.else.i, %if.else.cond.end_crit_edge
  %cond = phi i32 [ 2147483647, %if.else.cond.end_crit_edge ], [ %call2.i, %if.else.i ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 389) #9
  %base_addr12 = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %base_addr12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base_addr12, align 4
  %add.ptr13 = getelementptr i8, ptr %10, i32 28
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #9, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool15.not = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool17.not = icmp eq i32 %cond, 0
  %spec.select = select i1 %tobool17.not, i32 1, i32 %cond
  %__ret.0 = select i1 %tobool15.not, i32 %cond, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool21.not = icmp eq i32 %__ret.0, 0
  %not.tobool15.not = xor i1 %tobool15.not, true
  %12 = select i1 %not.tobool15.not, i1 true, i1 %tobool21.not
  br i1 %12, label %cond.end.if.end59_crit_edge, label %if.then23

cond.end.if.end59_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then23:                                        ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %13 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %14 = load i32, ptr @read_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp25 = icmp sgt i32 %14, -1
  br i1 %cmp25, label %if.else.i180, label %if.then23.cond.end29_crit_edge

if.then23.cond.end29_crit_edge:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end29

if.else.i180:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i179 = tail call i32 @__msecs_to_jiffies(i32 noundef %14) #9
  br label %cond.end29

cond.end29:                                       ; preds = %if.else.i180, %if.then23.cond.end29_crit_edge
  %cond30 = phi i32 [ 2147483647, %if.then23.cond.end29_crit_edge ], [ %call2.i179, %if.else.i180 ]
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %read_queue = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %cond.end29
  %__ret24.0 = phi i32 [ %cond30, %cond.end29 ], [ %call56, %cleanup ]
  %call31 = call i32 @prepare_to_wait_event(ptr noundef %read_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %15 = ptrtoint ptr %base_addr12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr12, align 4
  %add.ptr34 = getelementptr i8, ptr %16, i32 28
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #9, !srcloc !268
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool36.not = icmp eq i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret24.0)
  %tobool40.not = icmp eq i32 %__ret24.0, 0
  %spec.store.select127 = select i1 %tobool40.not, i32 1, i32 %__ret24.0
  %__ret24.1 = select i1 %tobool36.not, i32 %__ret24.0, i32 %spec.store.select127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret24.1)
  %tobool46.not = icmp eq i32 %__ret24.1, 0
  %not.tobool36.not = xor i1 %tobool36.not, true
  %18 = select i1 %not.tobool36.not, i1 true, i1 %tobool46.not
  br i1 %18, label %for.end, label %if.end52

if.end52:                                         ; preds = %for.cond
  %tobool53.not = icmp eq i32 %call31, 0
  br i1 %tobool53.not, label %cleanup, label %if.end52.__out_crit_edge

if.end52.__out_crit_edge:                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out

cleanup:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %call56 = call i32 @schedule_timeout(i32 noundef %__ret24.1) #9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %read_queue, ptr noundef nonnull %__wq_entry) #9
  br label %__out

__out:                                            ; preds = %for.end, %if.end52.__out_crit_edge
  %__ret24.2201 = phi i32 [ %__ret24.1, %for.end ], [ %call31, %if.end52.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end59

if.end59:                                         ; preds = %__out, %cond.end.if.end59_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %cond.end.if.end59_crit_edge ], [ %__ret24.2201, %__out ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret.1)
  %cmp61 = icmp slt i32 %__ret.1, 1
  br i1 %cmp61, label %if.then62, label %if.end59.if.end74_crit_edge

if.end59.if.end74_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then62:                                        ; preds = %if.end59
  %19 = zext i32 %__ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__ret.1, label %do.end70 [
    i32 0, label %if.then62.end_unlock_crit_edge
    i32 -512, label %end_unlock.fold.split
  ]

if.then62.end_unlock_crit_edge:                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_unlock

do.end70:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  %dt_device = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %dt_device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dt_device, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.74, i32 noundef %__ret.1) #12
  br label %end_unlock

if.end74:                                         ; preds = %if.end59.if.end74_crit_edge, %if.end.if.end74_crit_edge
  %base_addr75 = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_addr75, align 4
  %add.ptr76 = getelementptr i8, ptr %23, i32 36
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #9, !srcloc !268
  %25 = call i32 @llvm.bswap.i32(i32 %24) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool78.not = icmp eq i32 %24, 0
  br i1 %tobool78.not, label %do.end82, label %if.end84

do.end82:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  %dt_device83 = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 12
  %26 = ptrtoint ptr %dt_device83 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dt_device83, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.77) #12
  %28 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base_addr75, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1526726656) #9, !srcloc !266
  %30 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base_addr75, align 4
  %add.ptr2.i = getelementptr i8, ptr %31, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -1526726656) #9, !srcloc !266
  %32 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base_addr75, align 4
  %add.ptr4.i = getelementptr i8, ptr %33, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -1526726656) #9, !srcloc !266
  %34 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base_addr75, align 4
  %add.ptr6.i = getelementptr i8, ptr %35, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 254) #9, !srcloc !266
  %36 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base_addr75, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 63743) #9, !srcloc !266
  br label %end_unlock

if.end84:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %len)
  %cmp85 = icmp ugt i32 %25, %len
  br i1 %cmp85, label %do.end89, label %if.end91

do.end89:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %dt_device90 = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 12
  %38 = ptrtoint ptr %dt_device90 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dt_device90, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.80, i32 noundef %25, i32 noundef %len) #12
  %40 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base_addr75, align 4
  %add.ptr.i185 = getelementptr i8, ptr %41, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 -1526726656) #9, !srcloc !266
  %42 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base_addr75, align 4
  %add.ptr2.i186 = getelementptr i8, ptr %43, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i186, i32 -1526726656) #9, !srcloc !266
  %44 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base_addr75, align 4
  %add.ptr4.i187 = getelementptr i8, ptr %45, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i187, i32 -1526726656) #9, !srcloc !266
  %46 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base_addr75, align 4
  %add.ptr6.i188 = getelementptr i8, ptr %47, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i188, i32 254) #9, !srcloc !266
  %48 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base_addr75, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 63743) #9, !srcloc !266
  br label %end_unlock

if.end91:                                         ; preds = %if.end84
  %rem = and i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool92.not = icmp eq i32 %rem, 0
  br i1 %tobool92.not, label %if.end98, label %do.end96

do.end96:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  %dt_device97 = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 12
  %50 = ptrtoint ptr %dt_device97 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dt_device97, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.83) #12
  %52 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base_addr75, align 4
  %add.ptr.i190 = getelementptr i8, ptr %53, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190, i32 -1526726656) #9, !srcloc !266
  %54 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base_addr75, align 4
  %add.ptr2.i191 = getelementptr i8, ptr %55, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i191, i32 -1526726656) #9, !srcloc !266
  %56 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base_addr75, align 4
  %add.ptr4.i192 = getelementptr i8, ptr %57, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i192, i32 -1526726656) #9, !srcloc !266
  %58 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base_addr75, align 4
  %add.ptr6.i193 = getelementptr i8, ptr %59, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i193, i32 254) #9, !srcloc !266
  %60 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base_addr75, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 63743) #9, !srcloc !266
  br label %end_unlock

if.end98:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp99.not213 = icmp ult i32 %25, 4
  br i1 %cmp99.not213, label %if.end98.end_unlock_crit_edge, label %while.body.preheader

if.end98.end_unlock_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_unlock

while.body.preheader:                             ; preds = %if.end98
  %div175 = lshr i32 %25, 2
  br label %while.body

while.body:                                       ; preds = %if.end117.while.body_crit_edge, %while.body.preheader
  %words_available.0215 = phi i32 [ %sub, %if.end117.while.body_crit_edge ], [ %div175, %while.body.preheader ]
  %copied.0214 = phi i32 [ %add, %if.end117.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %62 = call i32 @llvm.umin.i32(i32 %words_available.0215, i32 128)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.body
  %i.0212 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %while.body ]
  %63 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base_addr75, align 4
  %add.ptr109 = getelementptr i8, ptr %64, i32 32
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr109) #9, !srcloc !268
  %66 = call i32 @llvm.bswap.i32(i32 %65) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  %arrayidx = getelementptr [128 x i32], ptr %tmp_buf, i32 0, i32 %i.0212
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0212, 1
  %exitcond.not = icmp eq i32 %inc, %62
  br i1 %exitcond.not, label %for.end111, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end111:                                       ; preds = %for.body
  %mul = shl i32 %copied.0214, 2
  %add.ptr112 = getelementptr i8, ptr %buf, i32 %mul
  %mul113 = shl nuw nsw i32 %62, 2
  call void @__check_object_size(ptr noundef nonnull %tmp_buf, i32 noundef %mul113, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.87, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %for.end111.copy_to_user.exit_crit_edge, label %if.end.i.i

for.end111.copy_to_user.exit_crit_edge:           ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %for.end111
  %68 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr112, i32 %mul113, i32 -1226833920) #13, !srcloc !270
  %asmresult.i.i = extractvalue { i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp_buf, i32 noundef %mul113) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %add.ptr112, ptr noundef nonnull %tmp_buf, i32 noundef %mul113) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %for.end111.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %mul113, %for.end111.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul113, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool115.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool115.not, label %if.end117, label %if.then116

if.then116:                                       ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base_addr75, align 4
  %add.ptr.i195 = getelementptr i8, ptr %70, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i195, i32 -1526726656) #9, !srcloc !266
  %71 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base_addr75, align 4
  %add.ptr2.i196 = getelementptr i8, ptr %72, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i196, i32 -1526726656) #9, !srcloc !266
  %73 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base_addr75, align 4
  %add.ptr4.i197 = getelementptr i8, ptr %74, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i197, i32 -1526726656) #9, !srcloc !266
  %75 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base_addr75, align 4
  %add.ptr6.i198 = getelementptr i8, ptr %76, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i198, i32 254) #9, !srcloc !266
  %77 = ptrtoint ptr %base_addr75 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base_addr75, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 63743) #9, !srcloc !266
  br label %end_unlock

if.end117:                                        ; preds = %copy_to_user.exit
  %add = add i32 %62, %copied.0214
  %sub = sub i32 %words_available.0215, %62
  %cmp99.not = icmp eq i32 %sub, 0
  br i1 %cmp99.not, label %if.end117.end_unlock_crit_edge, label %if.end117.while.body_crit_edge

if.end117.while.body_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end117.end_unlock_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_unlock

end_unlock.fold.split:                            ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_unlock

end_unlock:                                       ; preds = %end_unlock.fold.split, %if.end117.end_unlock_crit_edge, %if.then116, %if.end98.end_unlock_crit_edge, %do.end96, %do.end89, %do.end82, %do.end70, %if.then62.end_unlock_crit_edge, %if.end.end_unlock_crit_edge
  %ret.0 = phi i32 [ -22, %do.end89 ], [ -5, %do.end96 ], [ -14, %if.then116 ], [ -5, %do.end82 ], [ %__ret.1, %do.end70 ], [ -11, %if.end.end_unlock_crit_edge ], [ -11, %if.then62.end_unlock_crit_edge ], [ -512, %end_unlock.fold.split ], [ %25, %if.end98.end_unlock_crit_edge ], [ %25, %if.end117.end_unlock_crit_edge ]
  %read_lock118 = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 7
  call void @mutex_unlock(ptr noundef %read_lock118) #9
  br label %cleanup119

cleanup119:                                       ; preds = %end_unlock, %if.then.cleanup119_crit_edge
  %retval.0 = phi i32 [ %ret.0, %end_unlock ], [ -11, %if.then.cleanup119_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %tmp_buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axis_fifo_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %off) #3 align 64 {
entry:
  %tmp_buf = alloca [128 x i32], align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %tmp_buf) #9
  %2 = call ptr @memset(ptr %tmp_buf, i32 255, i32 512)
  %rem = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dt_device = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %dt_device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dt_device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.88) #12
  br label %cleanup119

if.end:                                           ; preds = %entry
  %div177 = lshr i32 %len, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %tobool1.not = icmp ult i32 %len, 4
  br i1 %tobool1.not, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dt_device6 = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %dt_device6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dt_device6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.91) #12
  br label %cleanup119

if.end7:                                          ; preds = %if.end
  %tx_fifo_depth = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %tx_fifo_depth to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_fifo_depth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div177, i32 %8)
  %cmp = icmp ugt i32 %div177, %8
  br i1 %cmp, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %dt_device12 = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %dt_device12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dt_device12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.94, i32 noundef %div177, i32 noundef %8) #12
  br label %cleanup119

if.end14:                                         ; preds = %if.end7
  %write_flags = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %write_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %write_flags, align 4
  %and = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %write_lock24 = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 9
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  %call = tail call i32 @mutex_trylock(ptr noundef %write_lock24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.then16.cleanup119_crit_edge, label %if.end19

if.then16.cleanup119_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup119

if.end19:                                         ; preds = %if.then16
  %base_addr = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !268
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  call void @__sanitizer_cov_trace_cmp4(i32 %div177, i32 %16)
  %cmp21 = icmp ugt i32 %div177, %16
  br i1 %cmp21, label %if.end19.end_unlock_crit_edge, label %if.end19.while.body.lr.ph_crit_edge

if.end19.while.body.lr.ph_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

if.end19.end_unlock_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_unlock

if.else:                                          ; preds = %if.end14
  tail call void @mutex_lock_nested(ptr noundef %write_lock24, i32 noundef 0) #9
  %17 = load i32, ptr @write_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp25 = icmp sgt i32 %17, -1
  br i1 %cmp25, label %if.else.i, label %if.else.cond.end_crit_edge

if.else.cond.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %17) #9
  br label %cond.end

cond.end:                                         ; preds = %if.else.i, %if.else.cond.end_crit_edge
  %cond = phi i32 [ 2147483647, %if.else.cond.end_crit_edge ], [ %call2.i, %if.else.i ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 533) #9
  %base_addr33 = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %base_addr33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr33, align 4
  %add.ptr34 = getelementptr i8, ptr %19, i32 12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #9, !srcloc !268
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %div177)
  %cmp36.not = icmp ult i32 %21, %div177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool38.not = icmp eq i32 %cond, 0
  %spec.select = select i1 %tobool38.not, i32 1, i32 %cond
  %__ret.0 = select i1 %cmp36.not, i32 %cond, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool42.not = icmp eq i32 %__ret.0, 0
  %not.cmp36.not = xor i1 %cmp36.not, true
  %22 = select i1 %not.cmp36.not, i1 true, i1 %tobool42.not
  br i1 %22, label %cond.end.if.end80_crit_edge, label %if.then44

cond.end.if.end80_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then44:                                        ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %23 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %24 = load i32, ptr @write_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp46 = icmp sgt i32 %24, -1
  br i1 %cmp46, label %if.else.i182, label %if.then44.cond.end50_crit_edge

if.then44.cond.end50_crit_edge:                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end50

if.else.i182:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i181 = tail call i32 @__msecs_to_jiffies(i32 noundef %24) #9
  br label %cond.end50

cond.end50:                                       ; preds = %if.else.i182, %if.then44.cond.end50_crit_edge
  %cond51 = phi i32 [ 2147483647, %if.then44.cond.end50_crit_edge ], [ %call2.i181, %if.else.i182 ]
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %write_queue = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %cond.end50
  %__ret45.0 = phi i32 [ %cond51, %cond.end50 ], [ %call77, %cleanup ]
  %call52 = call i32 @prepare_to_wait_event(ptr noundef %write_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %25 = ptrtoint ptr %base_addr33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base_addr33, align 4
  %add.ptr55 = getelementptr i8, ptr %26, i32 12
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #9, !srcloc !268
  %28 = call i32 @llvm.bswap.i32(i32 %27) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %div177)
  %cmp57.not = icmp ult i32 %28, %div177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret45.0)
  %tobool61.not = icmp eq i32 %__ret45.0, 0
  %spec.store.select126 = select i1 %tobool61.not, i32 1, i32 %__ret45.0
  %__ret45.1 = select i1 %cmp57.not, i32 %__ret45.0, i32 %spec.store.select126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret45.1)
  %tobool67.not = icmp eq i32 %__ret45.1, 0
  %not.cmp57.not = xor i1 %cmp57.not, true
  %29 = select i1 %not.cmp57.not, i1 true, i1 %tobool67.not
  br i1 %29, label %for.end, label %if.end73

if.end73:                                         ; preds = %for.cond
  %tobool74.not = icmp eq i32 %call52, 0
  br i1 %tobool74.not, label %cleanup, label %if.end73.__out_crit_edge

if.end73.__out_crit_edge:                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out

cleanup:                                          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %call77 = call i32 @schedule_timeout(i32 noundef %__ret45.1) #9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %write_queue, ptr noundef nonnull %__wq_entry) #9
  br label %__out

__out:                                            ; preds = %for.end, %if.end73.__out_crit_edge
  %__ret45.2189 = phi i32 [ %__ret45.1, %for.end ], [ %call52, %if.end73.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end80

if.end80:                                         ; preds = %__out, %cond.end.if.end80_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %cond.end.if.end80_crit_edge ], [ %__ret45.2189, %__out ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret.1)
  %cmp82 = icmp slt i32 %__ret.1, 1
  br i1 %cmp82, label %if.then83, label %if.end80.while.body.lr.ph_crit_edge

if.end80.while.body.lr.ph_crit_edge:              ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

if.then83:                                        ; preds = %if.end80
  %30 = zext i32 %__ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %__ret.1, label %do.end91 [
    i32 0, label %if.then83.end_unlock_crit_edge
    i32 -512, label %end_unlock.fold.split
  ]

if.then83.end_unlock_crit_edge:                   ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_unlock

do.end91:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  %dt_device92 = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 12
  %31 = ptrtoint ptr %dt_device92 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dt_device92, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.97, i32 noundef %__ret.1) #12
  br label %end_unlock

while.body.lr.ph:                                 ; preds = %if.end80.while.body.lr.ph_crit_edge, %if.end19.while.body.lr.ph_crit_edge
  %base_addr112 = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %for.end114.while.body_crit_edge, %while.body.lr.ph
  %words_to_write.0207 = phi i32 [ %div177, %while.body.lr.ph ], [ %sub, %for.end114.while.body_crit_edge ]
  %copied.0206 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %for.end114.while.body_crit_edge ]
  %33 = call i32 @llvm.umin.i32(i32 %words_to_write.0207, i32 128)
  %mul = shl i32 %copied.0206, 2
  %add.ptr104 = getelementptr i8, ptr %buf, i32 %mul
  %mul105 = shl nuw nsw i32 %33, 2
  call void @__check_object_size(ptr noundef nonnull %tmp_buf, i32 noundef %mul105, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.87, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %while.body.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

while.body.if.then11.i.i_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %while.body
  %34 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr104, i32 %mul105, i32 -1226833920) #13, !srcloc !271
  %asmresult.i.i = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !272

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp_buf, i32 noundef %mul105) #9
  %35 = call i32 @llvm.read_register.i32(metadata !254) #9
  %and.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !273
  %and.i.i.i.i = and i32 %37, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !274
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !275
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp_buf, ptr noundef %add.ptr104, i32 noundef %mul105) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #9, !srcloc !274
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %for.cond110.preheader, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !272

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

for.cond110.preheader:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp111203.not = icmp eq i32 %33, 0
  br i1 %cmp111203.not, label %for.cond110.preheader.for.end114_crit_edge, label %for.cond110.preheader.for.body_crit_edge

for.cond110.preheader.for.body_crit_edge:         ; preds = %for.cond110.preheader
  br label %for.body

for.cond110.preheader.for.end114_crit_edge:       ; preds = %for.cond110.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %while.body.if.then11.i.i_crit_edge
  %res.0.i.i196 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %mul105, %while.body.if.then11.i.i_crit_edge ], [ %mul105, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i185 = sub i32 %mul105, %res.0.i.i196
  %add.ptr.i.i = getelementptr i8, ptr %tmp_buf, i32 %sub.i.i185
  %38 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i196)
  %39 = ptrtoint ptr %base_addr112 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base_addr112, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1526726656) #9, !srcloc !266
  %41 = ptrtoint ptr %base_addr112 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base_addr112, align 4
  %add.ptr2.i = getelementptr i8, ptr %42, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -1526726656) #9, !srcloc !266
  %43 = ptrtoint ptr %base_addr112 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base_addr112, align 4
  %add.ptr4.i = getelementptr i8, ptr %44, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -1526726656) #9, !srcloc !266
  %45 = ptrtoint ptr %base_addr112 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base_addr112, align 4
  %add.ptr6.i = getelementptr i8, ptr %46, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 254) #9, !srcloc !266
  %47 = ptrtoint ptr %base_addr112 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base_addr112, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 63743) #9, !srcloc !266
  br label %end_unlock

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond110.preheader.for.body_crit_edge
  %i.0204 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond110.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x i32], ptr %tmp_buf, i32 0, i32 %i.0204
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  %51 = ptrtoint ptr %base_addr112 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base_addr112, align 4
  %add.ptr113 = getelementptr i8, ptr %52, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  %53 = call i32 @llvm.bswap.i32(i32 %50) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 %53) #9, !srcloc !266
  %inc = add nuw nsw i32 %i.0204, 1
  %exitcond.not = icmp eq i32 %inc, %33
  br i1 %exitcond.not, label %for.body.for.end114_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end114_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end114

for.end114:                                       ; preds = %for.body.for.end114_crit_edge, %for.cond110.preheader.for.end114_crit_edge
  %add = add i32 %33, %copied.0206
  %sub = sub i32 %words_to_write.0207, %33
  %cmp97.not = icmp eq i32 %sub, 0
  br i1 %cmp97.not, label %while.end, label %for.end114.while.body_crit_edge

for.end114.while.body_crit_edge:                  ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %for.end114
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = shl i32 %add, 2
  %base_addr116 = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %base_addr116 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base_addr116, align 4
  %add.ptr117 = getelementptr i8, ptr %55, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  %56 = call i32 @llvm.bswap.i32(i32 %phi.bo) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 %56) #9, !srcloc !266
  br label %end_unlock

end_unlock.fold.split:                            ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %end_unlock

end_unlock:                                       ; preds = %end_unlock.fold.split, %while.end, %if.then11.i.i, %do.end91, %if.then83.end_unlock_crit_edge, %if.end19.end_unlock_crit_edge
  %ret.0 = phi i32 [ -14, %if.then11.i.i ], [ %phi.bo, %while.end ], [ %__ret.1, %do.end91 ], [ -11, %if.end19.end_unlock_crit_edge ], [ -11, %if.then83.end_unlock_crit_edge ], [ -512, %end_unlock.fold.split ]
  %write_lock118 = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %write_lock118) #9
  br label %cleanup119

cleanup119:                                       ; preds = %end_unlock, %if.then16.cleanup119_crit_edge, %do.end11, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ %ret.0, %end_unlock ], [ -22, %do.end5 ], [ -11, %if.then16.cleanup119_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %tmp_buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axis_fifo_open(ptr nocapture noundef readnone %inod, ptr nocapture noundef %f) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -324
  store ptr %add.ptr, ptr %private_data, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %and = and i32 %3, 3
  %and.off = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.off)
  %switch = icmp ult i32 %and.off, 2
  br i1 %switch, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  %has_tx_fifo = getelementptr i8, ptr %1, i32 -304
  %4 = ptrtoint ptr %has_tx_fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %has_tx_fifo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.end, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %write_flags = getelementptr i8, ptr %1, i32 -12
  %6 = ptrtoint ptr %write_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %write_flags, align 4
  br label %if.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dt_device = getelementptr i8, ptr %1, i32 -4
  %7 = ptrtoint ptr %dt_device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dt_device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.99) #12
  br label %cleanup

if.end7:                                          ; preds = %if.then5, %entry.if.end7_crit_edge
  %9 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_flags, align 4
  %and9 = and i32 %10, 3
  %11 = zext i32 %and9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %and9, label %if.end7.cleanup_crit_edge [
    i32 0, label %if.end7.if.then15_crit_edge
    i32 2, label %if.end7.if.then15_crit_edge39
  ]

if.end7.if.then15_crit_edge39:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.end7.if.then15_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %if.end7.if.then15_crit_edge, %if.end7.if.then15_crit_edge39
  %has_rx_fifo = getelementptr i8, ptr %1, i32 -308
  %12 = ptrtoint ptr %has_rx_fifo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %has_rx_fifo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool16.not = icmp eq i32 %13, 0
  br i1 %tobool16.not, label %do.end22, label %if.then17

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %read_flags = getelementptr i8, ptr %1, i32 -8
  %14 = ptrtoint ptr %read_flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %10, ptr %read_flags, align 4
  br label %cleanup

do.end22:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %dt_device23 = getelementptr i8, ptr %1, i32 -4
  %15 = ptrtoint ptr %dt_device23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dt_device23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.102) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.then17, %if.end7.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end22 ], [ -1, %do.end ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.then17 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @axis_fifo_close(ptr nocapture noundef readnone %inod, ptr nocapture noundef writeonly %f) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  %tmp.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i) #9
  %base_addr.i = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %2 = call ptr @memset(ptr %tmp.i, i32 255, i32 32)
  %3 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base_addr.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !268
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  %call2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 32, ptr noundef nonnull @.str.106, i32 noundef %6) #9
  %7 = call ptr @memcpy(ptr %buf, ptr %tmp.i, i32 %call2.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i) #9
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isr_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp.i, align 4, !annotation !267
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.sysfs_write.exit_crit_edge, label %if.end.i

entry.sysfs_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i, align 4
  %base_addr.i = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  %7 = call i32 @llvm.bswap.i32(i32 %4) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %7) #9, !srcloc !266
  br label %sysfs_write.exit

sysfs_write.exit:                                 ; preds = %if.end.i, %entry.sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %entry.sysfs_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ier_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  %tmp.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i) #9
  %base_addr.i = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %2 = call ptr @memset(ptr %tmp.i, i32 255, i32 32)
  %3 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !268
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  %call2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 32, ptr noundef nonnull @.str.106, i32 noundef %6) #9
  %7 = call ptr @memcpy(ptr %buf, ptr %tmp.i, i32 %call2.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i) #9
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ier_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp.i, align 4, !annotation !267
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.sysfs_write.exit_crit_edge, label %if.end.i

entry.sysfs_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i, align 4
  %base_addr.i = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  %7 = call i32 @llvm.bswap.i32(i32 %4) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #9, !srcloc !266
  br label %sysfs_write.exit

sysfs_write.exit:                                 ; preds = %if.end.i, %entry.sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %entry.sysfs_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdfr_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp.i, align 4, !annotation !267
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.sysfs_write.exit_crit_edge, label %if.end.i

entry.sysfs_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i, align 4
  %base_addr.i = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  %7 = call i32 @llvm.bswap.i32(i32 %4) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #9, !srcloc !266
  br label %sysfs_write.exit

sysfs_write.exit:                                 ; preds = %if.end.i, %entry.sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %entry.sysfs_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdfv_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  %tmp.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i) #9
  %base_addr.i = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %2 = call ptr @memset(ptr %tmp.i, i32 255, i32 32)
  %3 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !268
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  %call2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 32, ptr noundef nonnull @.str.106, i32 noundef %6) #9
  %7 = call ptr @memcpy(ptr %buf, ptr %tmp.i, i32 %call2.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i) #9
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdfd_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp.i, align 4, !annotation !267
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.sysfs_write.exit_crit_edge, label %if.end.i

entry.sysfs_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i, align 4
  %base_addr.i = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  %7 = call i32 @llvm.bswap.i32(i32 %4) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #9, !srcloc !266
  br label %sysfs_write.exit

sysfs_write.exit:                                 ; preds = %if.end.i, %entry.sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %entry.sysfs_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlr_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp.i, align 4, !annotation !267
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.sysfs_write.exit_crit_edge, label %if.end.i

entry.sysfs_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i, align 4
  %base_addr.i = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  %7 = call i32 @llvm.bswap.i32(i32 %4) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #9, !srcloc !266
  br label %sysfs_write.exit

sysfs_write.exit:                                 ; preds = %if.end.i, %entry.sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %entry.sysfs_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdfr_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp.i, align 4, !annotation !267
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.sysfs_write.exit_crit_edge, label %if.end.i

entry.sysfs_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i, align 4
  %base_addr.i = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  %7 = call i32 @llvm.bswap.i32(i32 %4) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #9, !srcloc !266
  br label %sysfs_write.exit

sysfs_write.exit:                                 ; preds = %if.end.i, %entry.sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %entry.sysfs_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdfo_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  %tmp.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i) #9
  %base_addr.i = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %2 = call ptr @memset(ptr %tmp.i, i32 255, i32 32)
  %3 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 28
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !268
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  %call2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 32, ptr noundef nonnull @.str.106, i32 noundef %6) #9
  %7 = call ptr @memcpy(ptr %buf, ptr %tmp.i, i32 %call2.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i) #9
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdfd_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  %tmp.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i) #9
  %base_addr.i = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %2 = call ptr @memset(ptr %tmp.i, i32 255, i32 32)
  %3 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !268
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  %call2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 32, ptr noundef nonnull @.str.106, i32 noundef %6) #9
  %7 = call ptr @memcpy(ptr %buf, ptr %tmp.i, i32 %call2.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i) #9
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rlr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  %tmp.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i) #9
  %base_addr.i = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %2 = call ptr @memset(ptr %tmp.i, i32 255, i32 32)
  %3 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 36
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !268
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  %call2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 32, ptr noundef nonnull @.str.106, i32 noundef %6) #9
  %7 = call ptr @memcpy(ptr %buf, ptr %tmp.i, i32 %call2.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i) #9
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @srr_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp.i, align 4, !annotation !267
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.sysfs_write.exit_crit_edge, label %if.end.i

entry.sysfs_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i, align 4
  %base_addr.i = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  %7 = call i32 @llvm.bswap.i32(i32 %4) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #9, !srcloc !266
  br label %sysfs_write.exit

sysfs_write.exit:                                 ; preds = %if.end.i, %entry.sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %entry.sysfs_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tdr_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp.i, align 4, !annotation !267
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.sysfs_write.exit_crit_edge, label %if.end.i

entry.sysfs_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sysfs_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i, align 4
  %base_addr.i = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void @arm_heavy_mb() #9
  %7 = call i32 @llvm.bswap.i32(i32 %4) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #9, !srcloc !266
  br label %sysfs_write.exit

sysfs_write.exit:                                 ; preds = %if.end.i, %entry.sysfs_write.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end.i ], [ %call.i.i, %entry.sysfs_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  %tmp.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp.i) #9
  %base_addr.i = getelementptr inbounds %struct.axis_fifo, ptr %1, i32 0, i32 1
  %2 = call ptr @memset(ptr %tmp.i, i32 255, i32 32)
  %3 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 48
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !268
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  %call2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 32, ptr noundef nonnull @.str.106, i32 noundef %6) #9
  %7 = call ptr @memcpy(ptr %buf, ptr %tmp.i, i32 %call2.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp.i) #9
  ret i32 %call2.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21, !22, !24, !25, !27, !29, !30, !31, !32, !33, !35, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !53, !54, !55, !56, !58, !59, !61, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !77, !78, !79, !80, !82, !83, !84, !86, !88, !89, !90, !92, !93, !94, !96, !98, !99, !100, !102, !104, !105, !106, !108, !110, !111, !112, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !175, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !205, !207, !209, !211, !213, !214, !216, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !251, !252}
!llvm.named.register.sp = !{!254}
!llvm.module.flags = !{!255, !256, !257, !258, !259, !260, !261, !262}
!llvm.ident = !{!263}

!0 = !{ptr @__param_read_timeout, !1, !"__param_read_timeout", i1 false, i1 false}
!1 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 114, i32 1}
!2 = !{ptr @__UNIQUE_ID_read_timeouttype227, !1, !"__UNIQUE_ID_read_timeouttype227", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_read_timeout228, !4, !"__UNIQUE_ID_read_timeout228", i1 false, i1 false}
!4 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 115, i32 1}
!5 = !{ptr @__param_write_timeout, !6, !"__param_write_timeout", i1 false, i1 false}
!6 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 116, i32 1}
!7 = !{ptr @__UNIQUE_ID_write_timeouttype229, !6, !"__UNIQUE_ID_write_timeouttype229", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_write_timeout230, !9, !"__UNIQUE_ID_write_timeout230", i1 false, i1 false}
!9 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 117, i32 1}
!10 = !{ptr @__initcall__kmod_axis_fifo__238_956_axis_fifo_init6, !11, !"__initcall__kmod_axis_fifo__238_956_axis_fifo_init6", i1 false, i1 false}
!11 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 956, i32 1}
!12 = !{ptr @__exitcall_axis_fifo_exit, !13, !"__exitcall_axis_fifo_exit", i1 false, i1 false}
!13 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 963, i32 1}
!14 = !{ptr @__UNIQUE_ID_file239, !15, !"__UNIQUE_ID_file239", i1 false, i1 false}
!15 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 965, i32 1}
!16 = !{ptr @__UNIQUE_ID_license240, !15, !"__UNIQUE_ID_license240", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_author241, !18, !"__UNIQUE_ID_author241", i1 false, i1 false}
!18 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 966, i32 1}
!19 = !{ptr @__UNIQUE_ID_description242, !20, !"__UNIQUE_ID_description242", i1 false, i1 false}
!20 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 967, i32 1}
!21 = !{ptr @__param_str_read_timeout, !1, !"__param_str_read_timeout", i1 false, i1 false}
!22 = !{ptr @read_timeout, !23, !"read_timeout", i1 false, i1 false}
!23 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 106, i32 12}
!24 = !{ptr @__param_str_write_timeout, !6, !"__param_str_write_timeout", i1 false, i1 false}
!25 = !{ptr @write_timeout, !26, !"write_timeout", i1 false, i1 false}
!26 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 107, i32 12}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 951, i32 2}
!29 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @axis_fifo_init._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @axis_fifo_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 942, i32 11}
!35 = !{ptr @axis_fifo_driver, !36, !"axis_fifo_driver", i1 false, i1 false}
!36 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 940, i32 31}
!37 = !{ptr @axis_fifo_probe.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 835, i32 2}
!39 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @axis_fifo_probe.__key.5, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 836, i32 2}
!42 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @axis_fifo_probe.__key.7, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 838, i32 2}
!45 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @axis_fifo_probe.__key.9, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 839, i32 2}
!48 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 849, i32 3}
!51 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @axis_fifo_probe._entry, !50, !"_entry", i1 false, i1 false}
!55 = !{ptr @axis_fifo_probe._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 861, i32 2}
!58 = !{ptr @axis_fifo_probe.__UNIQUE_ID_ddebug236, !57, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 864, i32 28}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 865, i32 2}
!63 = !{ptr @axis_fifo_probe.__UNIQUE_ID_ddebug237, !62, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 893, i32 3}
!66 = !{ptr @axis_fifo_probe._entry.18, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @axis_fifo_probe._entry_ptr.20, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 913, i32 2}
!70 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @axis_fifo_probe._entry.21, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @axis_fifo_probe._entry_ptr.24, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 753, i32 31}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 755, i32 3}
!77 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @axis_fifo_parse_dt._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @axis_fifo_parse_dt._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 758, i32 3}
!82 = !{ptr @axis_fifo_parse_dt._entry.28, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @axis_fifo_parse_dt._entry_ptr.30, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 763, i32 31}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 765, i32 3}
!88 = !{ptr @axis_fifo_parse_dt._entry.32, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @axis_fifo_parse_dt._entry_ptr.34, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 768, i32 3}
!92 = !{ptr @axis_fifo_parse_dt._entry.35, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @axis_fifo_parse_dt._entry_ptr.37, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 773, i32 31}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 776, i32 3}
!98 = !{ptr @axis_fifo_parse_dt._entry.39, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @axis_fifo_parse_dt._entry_ptr.41, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 781, i32 31}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 784, i32 3}
!104 = !{ptr @axis_fifo_parse_dt._entry.43, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @axis_fifo_parse_dt._entry_ptr.45, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 792, i32 31}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 794, i32 3}
!110 = !{ptr @axis_fifo_parse_dt._entry.47, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @axis_fifo_parse_dt._entry_ptr.49, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 799, i32 31}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 801, i32 3}
!116 = !{ptr @axis_fifo_parse_dt._entry.51, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @axis_fifo_parse_dt._entry_ptr.53, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 738, i32 3}
!120 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @get_dts_property._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @get_dts_property._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 742, i32 2}
!125 = !{ptr @get_dts_property.__UNIQUE_ID_ddebug235, !124, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 639, i32 4}
!128 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @axis_fifo_irq._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @axis_fifo_irq._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 646, i32 4}
!133 = !{ptr @axis_fifo_irq._entry.59, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @axis_fifo_irq._entry_ptr.61, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 653, i32 4}
!137 = !{ptr @axis_fifo_irq._entry.62, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @axis_fifo_irq._entry_ptr.64, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 660, i32 4}
!141 = !{ptr @axis_fifo_irq._entry.65, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @axis_fifo_irq._entry_ptr.67, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 667, i32 4}
!145 = !{ptr @axis_fifo_irq._entry.68, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @axis_fifo_irq._entry_ptr.70, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 674, i32 4}
!149 = !{ptr @axis_fifo_irq._entry.71, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @axis_fifo_irq._entry_ptr.73, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @fops, !152, !"fops", i1 false, i1 false}
!152 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 722, i32 37}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 395, i32 5}
!155 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @axis_fifo_read._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @axis_fifo_read._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 405, i32 3}
!160 = !{ptr @axis_fifo_read._entry.76, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @axis_fifo_read._entry_ptr.78, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 412, i32 3}
!164 = !{ptr @axis_fifo_read._entry.79, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @axis_fifo_read._entry_ptr.81, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 423, i32 3}
!168 = !{ptr @axis_fifo_read._entry.82, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @axis_fifo_read._entry_ptr.84, !167, !"_entry_ptr", i1 false, i1 false}
!170 = distinct !{null, !171, !"__already_done", i1 false, i1 false}
!171 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!172 = distinct !{null, !171, !"<string literal>", i1 false, i1 false}
!173 = distinct !{null, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!175 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 489, i32 3}
!179 = !{ptr @.str.89, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @axis_fifo_write._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @axis_fifo_write._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.91, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 497, i32 3}
!184 = !{ptr @axis_fifo_write._entry.90, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @axis_fifo_write._entry_ptr.92, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 503, i32 3}
!188 = !{ptr @axis_fifo_write._entry.93, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @axis_fifo_write._entry_ptr.95, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.97, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 539, i32 5}
!192 = !{ptr @axis_fifo_write._entry.96, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @axis_fifo_write._entry_ptr.98, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.99, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 697, i32 4}
!196 = !{ptr @.str.100, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @axis_fifo_open._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @axis_fifo_open._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.102, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 707, i32 4}
!201 = !{ptr @axis_fifo_open._entry.101, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @axis_fifo_open._entry_ptr.103, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @axis_fifo_attrs_groups, !204, !"axis_fifo_attrs_groups", i1 false, i1 false}
!204 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 318, i32 38}
!205 = !{ptr @.str.104, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 314, i32 10}
!207 = !{ptr @axis_fifo_attrs_group, !208, !"axis_fifo_attrs_group", i1 false, i1 false}
!208 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 313, i32 37}
!209 = !{ptr @axis_fifo_attrs, !210, !"axis_fifo_attrs", i1 false, i1 false}
!210 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 296, i32 26}
!211 = !{ptr @.str.105, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 192, i32 8}
!213 = !{ptr @dev_attr_isr, !212, !"dev_attr_isr", i1 false, i1 false}
!214 = !{ptr @.str.106, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 174, i32 36}
!216 = !{ptr @.str.107, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 206, i32 8}
!218 = !{ptr @dev_attr_ier, !217, !"dev_attr_ier", i1 false, i1 false}
!219 = !{ptr @.str.108, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 214, i32 8}
!221 = !{ptr @dev_attr_tdfr, !220, !"dev_attr_tdfr", i1 false, i1 false}
!222 = !{ptr @.str.109, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 222, i32 8}
!224 = !{ptr @dev_attr_tdfv, !223, !"dev_attr_tdfv", i1 false, i1 false}
!225 = !{ptr @.str.110, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 230, i32 8}
!227 = !{ptr @dev_attr_tdfd, !226, !"dev_attr_tdfd", i1 false, i1 false}
!228 = !{ptr @.str.111, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 238, i32 8}
!230 = !{ptr @dev_attr_tlr, !229, !"dev_attr_tlr", i1 false, i1 false}
!231 = !{ptr @.str.112, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 246, i32 8}
!233 = !{ptr @dev_attr_rdfr, !232, !"dev_attr_rdfr", i1 false, i1 false}
!234 = !{ptr @.str.113, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 254, i32 8}
!236 = !{ptr @dev_attr_rdfo, !235, !"dev_attr_rdfo", i1 false, i1 false}
!237 = !{ptr @.str.114, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 262, i32 8}
!239 = !{ptr @dev_attr_rdfd, !238, !"dev_attr_rdfd", i1 false, i1 false}
!240 = !{ptr @.str.115, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 270, i32 8}
!242 = !{ptr @dev_attr_rlr, !241, !"dev_attr_rlr", i1 false, i1 false}
!243 = !{ptr @.str.116, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 278, i32 8}
!245 = !{ptr @dev_attr_srr, !244, !"dev_attr_srr", i1 false, i1 false}
!246 = !{ptr @.str.117, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 286, i32 8}
!248 = !{ptr @dev_attr_tdr, !247, !"dev_attr_tdr", i1 false, i1 false}
!249 = !{ptr @.str.118, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 294, i32 8}
!251 = !{ptr @dev_attr_rdr, !250, !"dev_attr_rdr", i1 false, i1 false}
!252 = !{ptr @axis_fifo_of_match, !253, !"axis_fifo_of_match", i1 false, i1 false}
!253 = !{!"../drivers/staging/axis-fifo/axis-fifo.c", i32 934, i32 34}
!254 = !{!"sp"}
!255 = !{i32 1, !"wchar_size", i32 2}
!256 = !{i32 1, !"min_enum_size", i32 4}
!257 = !{i32 8, !"branch-target-enforcement", i32 0}
!258 = !{i32 8, !"sign-return-address", i32 0}
!259 = !{i32 8, !"sign-return-address-all", i32 0}
!260 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!261 = !{i32 7, !"uwtable", i32 1}
!262 = !{i32 7, !"frame-pointer", i32 2}
!263 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!264 = !{i64 2148716141, i64 2148716146, i64 2148716159, i64 2148716203, i64 2148716237, i64 2148716258}
!265 = !{i64 2152735826}
!266 = !{i64 5193704}
!267 = !{!"auto-init"}
!268 = !{i64 5194122}
!269 = !{i64 2152734471}
!270 = !{i64 2153379822, i64 2153379847}
!271 = !{i64 2153379141, i64 2153379166}
!272 = !{!"branch_weights", i32 2000, i32 1}
!273 = !{i64 5874696}
!274 = !{i64 5874893}
!275 = !{i64 2153360126}
