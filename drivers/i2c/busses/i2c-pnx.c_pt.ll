; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-pnx.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-pnx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.i2c_pnx_algo_data = type { ptr, %struct.i2c_pnx_mif, i32, ptr, %struct.i2c_adapter, i32, i32 }
%struct.i2c_pnx_mif = type { i32, i32, %struct.completion, %struct.timer_list, ptr, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@i2c_pnx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @i2c_pnx_probe, ptr @i2c_pnx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @i2c_pnx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2c_pnx_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author313 = internal constant [27 x i8] c"i2c_pnx.author=Vitaly Wool\00", section ".modinfo", align 1
@__UNIQUE_ID_author314 = internal constant [50 x i8] c"i2c_pnx.author=Dennis Kovalev <source@mvista.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description315 = internal constant [67 x i8] c"i2c_pnx.description=I2C driver for Philips IP3204-based I2C busses\00", section ".modinfo", align 1
@__UNIQUE_ID_file316 = internal constant [40 x i8] c"i2c_pnx.file=drivers/i2c/busses/i2c-pnx\00", section ".modinfo", align 1
@__UNIQUE_ID_license317 = internal constant [20 x i8] c"i2c_pnx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias318 = internal constant [31 x i8] c"i2c_pnx.alias=platform:pnx-i2c\00", section ".modinfo", align 1
@__initcall__kmod_i2c_pnx__319_791_i2c_adap_pnx_init4 = internal global ptr @i2c_adap_pnx_init, section ".initcall4.init", align 4
@__exitcall_i2c_adap_pnx_exit = internal global ptr @i2c_adap_pnx_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pnx-i2c\00", [24 x i8] zeroinitializer }, align 32
@i2c_pnx_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pnx-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@i2c_pnx_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @i2c_pnx_controller_suspend, ptr @i2c_pnx_controller_resume, ptr @i2c_pnx_controller_suspend, ptr @i2c_pnx_controller_resume, ptr @i2c_pnx_controller_suspend, ptr @i2c_pnx_controller_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pnx_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @i2c_pnx_xfer, ptr null, ptr null, ptr null, ptr @i2c_pnx_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@i2c_pnx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&alg_data->mif.timer)\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@i2c_pnx_probe.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 -72, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_pnx\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_pnx_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/i2c/busses/i2c-pnx.c\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Master at %pap, irq %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@i2c_pnx_xfer.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.9, i8 0, i8 -126, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c_pnx_xfer\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): entering: %d messages, stat = %04x.\0A\00", [53 x i8] zeroinitializer }, align 32
@i2c_pnx_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.6, i32 535, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: 10 bits addr not supported!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_pnx_xfer._entry_ptr = internal global ptr @i2c_pnx_xfer._entry, section ".printk_index", align 4
@i2c_pnx_xfer.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.13, i8 0, i8 -119, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): mode %d, %d bytes\0A\00", [39 x i8] zeroinitializer }, align 32
@i2c_pnx_xfer.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.14, i8 0, i8 -113, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): Complete, return code = %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@i2c_pnx_xfer.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.15, i8 0, i8 -112, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: TDI still set... clearing now.\0A\00", [60 x i8] zeroinitializer }, align 32
@i2c_pnx_xfer.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.16, i8 0, i8 -110, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: AFI still set... clearing now.\0A\00", [60 x i8] zeroinitializer }, align 32
@i2c_pnx_xfer.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.17, i8 0, i8 -107, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): exiting, stat = %x\0A\00", [38 x i8] zeroinitializer }, align 32
@bus_reset_if_active._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.6, i32 485, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Bus is still active after xfer. Reset it...\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bus_reset_if_active\00", [44 x i8] zeroinitializer }, align 32
@bus_reset_if_active._entry_ptr = internal global ptr @bus_reset_if_active._entry, section ".printk_index", align 4
@i2c_pnx_arm_timer.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.20, ptr @.str.6, ptr @.str.21, i8 0, i8 32, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c_pnx_arm_timer\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Timer armed at %lu plus %lu jiffies.\0A\00", [58 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@i2c_pnx_start.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.22, ptr @.str.6, ptr @.str.23, i8 0, i8 37, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_pnx_start\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): addr 0x%x mode %d\0A\00", [39 x i8] zeroinitializer }, align 32
@i2c_pnx_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.6, i32 155, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: Invalid slave address %x. Only 7-bit addresses are supported\0A\00", [62 x i8] zeroinitializer }, align 32
@i2c_pnx_start._entry_ptr = internal global ptr @i2c_pnx_start._entry, section ".printk_index", align 4
@i2c_pnx_start._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.6, i32 166, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: Bus busy. Slave addr = %02x, cntrl = %x, stat = %x\0A\00", [40 x i8] zeroinitializer }, align 32
@i2c_pnx_start._entry_ptr.27 = internal global ptr @i2c_pnx_start._entry.25, section ".printk_index", align 4
@i2c_pnx_start._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str.6, i32 172, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Arbitration failure. Slave addr = %02x\0A\00", [52 x i8] zeroinitializer }, align 32
@i2c_pnx_start._entry_ptr.30 = internal global ptr @i2c_pnx_start._entry.28, section ".printk_index", align 4
@i2c_pnx_start.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.22, ptr @.str.6, ptr @.str.31, i8 0, i8 46, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s(): sending %#x\0A\00", [45 x i8] zeroinitializer }, align 32
@i2c_pnx_start.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.22, ptr @.str.6, ptr @.str.32, i8 0, i8 47, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s(): exit\0A\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@i2c_pnx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.6, i32 464, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Master timed out. stat = %04x, cntrl = %04x. Resetting master...\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c_pnx_timeout\00", [16 x i8] zeroinitializer }, align 32
@i2c_pnx_timeout._entry_ptr = internal global ptr @i2c_pnx_timeout._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@i2c_pnx_interrupt.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.36, ptr @.str.6, ptr @.str.37, i8 0, i8 97, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c_pnx_interrupt\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(): mstat = %x mctrl = %x, mode = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@i2c_pnx_interrupt.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.36, ptr @.str.6, ptr @.str.38, i8 0, i8 102, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s(): Slave did not acknowledge, generating a STOP.\0A\00", [43 x i8] zeroinitializer }, align 32
@i2c_pnx_interrupt.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.36, ptr @.str.6, ptr @.str.39, i8 0, i8 112, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): exiting, stat = %x ctrl = %x.\0A\00", [59 x i8] zeroinitializer }, align 32
@i2c_pnx_stop.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.40, ptr @.str.6, ptr @.str.41, i8 0, i8 51, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c_pnx_stop\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): entering: stat = %04x.\0A\00", [34 x i8] zeroinitializer }, align 32
@i2c_pnx_stop.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.40, ptr @.str.6, ptr @.str.42, i8 0, i8 55, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(): exiting: stat = %04x.\0A\00", [35 x i8] zeroinitializer }, align 32
@i2c_pnx_master_xmit.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.43, ptr @.str.6, ptr @.str.41, i8 0, i8 58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i2c_pnx_master_xmit\00", [44 x i8] zeroinitializer }, align 32
@i2c_pnx_master_xmit.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.43, ptr @.str.6, ptr @.str.44, i8 0, i8 62, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(): xmit %#x [%d]\0A\00", [43 x i8] zeroinitializer }, align 32
@i2c_pnx_master_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.6, i32 255, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"The bus is still active after timeout\0A\00", [57 x i8] zeroinitializer }, align 32
@i2c_pnx_master_xmit._entry_ptr = internal global ptr @i2c_pnx_master_xmit._entry, section ".printk_index", align 4
@i2c_pnx_master_xmit.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.43, ptr @.str.6, ptr @.str.46, i8 0, i8 66, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): Waking up xfer routine.\0A\00", [33 x i8] zeroinitializer }, align 32
@i2c_pnx_master_xmit.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.43, ptr @.str.6, ptr @.str.47, i8 0, i8 70, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s(): Waking up xfer routine after zero-xfer.\0A\00", [49 x i8] zeroinitializer }, align 32
@i2c_pnx_master_xmit.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.43, ptr @.str.6, ptr @.str.42, i8 0, i8 72, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@i2c_pnx_master_rcv.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.48, ptr @.str.6, ptr @.str.41, i8 0, i8 76, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c_pnx_master_rcv\00", [45 x i8] zeroinitializer }, align 32
@i2c_pnx_master_rcv.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.48, ptr @.str.6, ptr @.str.49, i8 0, i8 79, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): Write dummy data to fill Rx-fifo...\0A\00", [53 x i8] zeroinitializer }, align 32
@i2c_pnx_master_rcv.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.48, ptr @.str.6, ptr @.str.50, i8 0, i8 87, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(): rcv 0x%x [%d]\0A\00", [43 x i8] zeroinitializer }, align 32
@i2c_pnx_master_rcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.48, ptr @.str.6, i32 359, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@i2c_pnx_master_rcv._entry_ptr = internal global ptr @i2c_pnx_master_rcv._entry, section ".printk_index", align 4
@i2c_pnx_master_rcv.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.48, ptr @.str.6, ptr @.str.42, i8 0, i8 93, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"i2c_pnx_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 764, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 766, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"i2c_pnx_of_match\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 757, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"i2c_pnx_pm\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 633, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"pnx_algorithm\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 611, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 664, i32 43 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 680, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 683, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 736, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 519, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 533, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 548, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 571, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 577, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 583, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 597, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 483, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 130, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 148, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 153, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 162, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 170, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 183, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 190, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 461, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 87, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 384, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 408, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 448, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 206, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 220, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 234, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 247, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 254, i32 6 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 264, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 281, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 305, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 317, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 350, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.232 = private constant [32 x i8] c"../drivers/i2c/busses/i2c-pnx.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 358, i32 6 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_alias318, ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_author314, ptr @__UNIQUE_ID_description315, ptr @__UNIQUE_ID_file316, ptr @__UNIQUE_ID_license317, ptr @__exitcall_i2c_adap_pnx_exit, ptr @__initcall__kmod_i2c_pnx__319_791_i2c_adap_pnx_init4, ptr @bus_reset_if_active._entry, ptr @bus_reset_if_active._entry_ptr, ptr @i2c_adap_pnx_exit, ptr @i2c_pnx_master_rcv._entry, ptr @i2c_pnx_master_rcv._entry_ptr, ptr @i2c_pnx_master_xmit._entry, ptr @i2c_pnx_master_xmit._entry_ptr, ptr @i2c_pnx_start._entry, ptr @i2c_pnx_start._entry.25, ptr @i2c_pnx_start._entry.28, ptr @i2c_pnx_start._entry_ptr, ptr @i2c_pnx_start._entry_ptr.27, ptr @i2c_pnx_start._entry_ptr.30, ptr @i2c_pnx_timeout._entry, ptr @i2c_pnx_timeout._entry_ptr, ptr @i2c_pnx_xfer._entry, ptr @i2c_pnx_xfer._entry_ptr, ptr @i2c_pnx_driver, ptr @.str, ptr @i2c_pnx_of_match, ptr @i2c_pnx_pm, ptr @pnx_algorithm, ptr @.str.1, ptr @i2c_pnx_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @init_completion.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pnx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pnx_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pnx_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pnx_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pnx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pnx_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_reset_if_active._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pnx_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pnx_start._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pnx_start._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pnx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pnx_master_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_pnx_master_rcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_adap_pnx_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @i2c_pnx_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_adap_pnx_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @i2c_pnx_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_pnx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %speed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #9
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 100000, ptr %speed, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1504, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %call.i, i32 0, i32 4
  %parent = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %call.i, i32 0, i32 4, i32 9, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %parent, align 8
  %algo = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %call.i, i32 0, i32 4, i32 2
  %3 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @pnx_algorithm, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %call.i, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %algo_data, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %nr = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %call.i, i32 0, i32 4, i32 11
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %nr, align 4
  %timeout = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10, ptr %timeout, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call7 = tail call ptr @of_node_get(ptr noundef %10) #9
  %of_node10 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %call.i, i32 0, i32 4, i32 9, i32 27
  %11 = ptrtoint ptr %of_node10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7, ptr %of_node10, align 8
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %if.end.if.end18_crit_edge, label %if.then14

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.1, ptr noundef nonnull %speed, i32 noundef 1, i32 noundef 0) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end.if.end18_crit_edge
  %call20 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call20, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %do.body

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call20 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end18
  %timer = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %call.i, i32 0, i32 1, i32 3
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @i2c_pnx_timeout, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @i2c_pnx_probe.__key) #9
  %name = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %call.i, i32 0, i32 4, i32 12
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  %call29 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.3, ptr noundef %17)
  %call30 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call32 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call30) #9
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call32, ptr %call.i, align 8
  %cmp.i153 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then35, label %if.end38

if.then35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end38:                                         ; preds = %do.body
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  %call.i154 = call i32 @clk_prepare(ptr noundef %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %tobool.not.i = icmp eq i32 %call.i154, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end38
  %call1.i = call i32 @clk_enable(ptr noundef %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end43, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %21) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end.i
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk, align 4
  %call45 = call i32 @clk_get_rate(ptr noundef %23) #9
  %24 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed, align 4
  %div = udiv i32 %call45, %25
  %div46152 = lshr i32 %div, 1
  %sub = add nsw i32 %div46152, -2
  %26 = call i32 @llvm.umin.i32(i32 %sub, i32 1023)
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 8
  %add.ptr = getelementptr i8, ptr %28, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  call void @arm_heavy_mb() #9
  %29 = call i32 @llvm.bswap.i32(i32 %26) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %29) #9, !srcloc !161
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 8
  %add.ptr51 = getelementptr i8, ptr %31, i32 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %29) #9, !srcloc !161
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 8
  %add.ptr53 = getelementptr i8, ptr %33, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 65536) #9, !srcloc !161
  %34 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp6.i = icmp sgt i32 %35, 0
  br i1 %cmp6.i, label %if.end43.land.rhs.i_crit_edge, label %if.end43.out_clock_crit_edge

if.end43.out_clock_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clock

if.end43.land.rhs.i_crit_edge:                    ; preds = %if.end43
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end43.land.rhs.i_crit_edge
  %timeout.07.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ %35, %if.end43.land.rhs.i_crit_edge ]
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 8
  %add.ptr.i = getelementptr i8, ptr %37, i32 8
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %39 = and i32 %38, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i156 = icmp eq i32 %39, 0
  br i1 %tobool.not.i156, label %if.end57, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 214748000) #9
  %dec.i = add nsw i32 %timeout.07.i, -1
  %cmp.i157 = icmp sgt i32 %timeout.07.i, 1
  br i1 %cmp.i157, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.out_clock_crit_edge

while.body.i.out_clock_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clock

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

if.end57:                                         ; preds = %land.rhs.i
  %complete = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %call.i, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %call.i, i32 0, i32 1, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #9
  %call59 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %call.i, i32 0, i32 5
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call59, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp61 = icmp slt i32 %call59, 0
  br i1 %cmp61, label %if.end57.out_clock_crit_edge, label %if.end64

if.end57.out_clock_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clock

if.end64:                                         ; preds = %if.end57
  %43 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev, align 8
  %call.i158 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call59, ptr noundef nonnull @i2c_pnx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %44, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool69.not = icmp eq i32 %call.i158, 0
  br i1 %tobool69.not, label %if.end71, label %if.end64.out_clock_crit_edge

if.end64.out_clock_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clock

if.end71:                                         ; preds = %if.end64
  %call73 = call i32 @i2c_add_numbered_adapter(ptr noundef %adapter) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.end71.out_clock_crit_edge, label %do.body77

if.end71.out_clock_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clock

do.body77:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_probe.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_probe, %cleanup)) #9
          to label %if.then84 [label %cleanup], !srcloc !164

if.then84:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_probe.__UNIQUE_ID_ddebug312, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %name, ptr noundef %call30, i32 noundef %46) #9
  br label %cleanup

out_clock:                                        ; preds = %if.end71.out_clock_crit_edge, %if.end64.out_clock_crit_edge, %if.end57.out_clock_crit_edge, %while.body.i.out_clock_crit_edge, %if.end43.out_clock_crit_edge
  %ret.0 = phi i32 [ %call.i158, %if.end64.out_clock_crit_edge ], [ %call73, %if.end71.out_clock_crit_edge ], [ %call59, %if.end57.out_clock_crit_edge ], [ -19, %if.end43.out_clock_crit_edge ], [ -19, %while.body.i.out_clock_crit_edge ]
  %47 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %48) #9
  call void @clk_unprepare(ptr noundef %48) #9
  br label %cleanup

cleanup:                                          ; preds = %out_clock, %if.then84, %do.body77, %if.then3.i, %if.end38.cleanup_crit_edge, %if.then35, %if.then23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then23 ], [ %19, %if.then35 ], [ %ret.0, %out_clock ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then84 ], [ %call1.i, %if.then3.i ], [ %call.i154, %if.end38.cleanup_crit_edge ], [ 0, %do.body77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_pnx_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 4
  tail call void @i2c_del_adapter(ptr noundef %adapter) #9
  %clk = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_pnx_timeout(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -68
  %dev = getelementptr i8, ptr %t, i32 268
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %add.ptr1 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #9, !srcloc !162
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !162
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %3, i32 noundef %7) #12
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %add.ptr6 = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %11 = and i32 %10, -771751937
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %add.ptr9 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %11) #9, !srcloc !161
  %14 = or i32 %11, 65536
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  %add.ptr11 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %14) #9, !srcloc !161
  %timeout1.i = getelementptr i8, ptr %t, i32 1432
  %17 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timeout1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp6.i = icmp sgt i32 %18, 0
  br i1 %cmp6.i, label %entry.land.rhs.i_crit_edge, label %entry.wait_reset.exit_crit_edge

entry.wait_reset.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_reset.exit

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %timeout.07.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ %18, %entry.land.rhs.i_crit_edge ]
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i = getelementptr i8, ptr %20, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %22 = and i32 %21, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %land.rhs.i.wait_reset.exit_crit_edge, label %while.body.i

land.rhs.i.wait_reset.exit_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_reset.exit

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #9
  %dec.i = add nsw i32 %timeout.07.i, -1
  %cmp.i = icmp sgt i32 %timeout.07.i, 1
  br i1 %cmp.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.wait_reset.exit_crit_edge

while.body.i.wait_reset.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_reset.exit

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

wait_reset.exit:                                  ; preds = %while.body.i.wait_reset.exit_crit_edge, %land.rhs.i.wait_reset.exit_crit_edge, %entry.wait_reset.exit_crit_edge
  %mif = getelementptr i8, ptr %t, i32 -64
  %24 = ptrtoint ptr %mif to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -5, ptr %mif, align 4
  %complete = getelementptr i8, ptr %t, i32 -56
  tail call void @complete(ptr noundef %complete) #9
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_pnx_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_interrupt.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_interrupt, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !164

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %dev_id, i32 0, i32 4, i32 9
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !162
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 8
  %add.ptr6 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #9, !srcloc !162
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %mode = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %dev_id, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_interrupt.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef %3, i32 noundef %7, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_id, align 8
  %add.ptr9 = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #9, !srcloc !162
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %mif13 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %dev_id, i32 0, i32 1
  %14 = ptrtoint ptr %mif13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -5, ptr %mif13, align 4
  %15 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_id, align 8
  %add.ptr15 = getelementptr i8, ptr %16, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %18 = and i32 %17, -771751937
  %19 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_id, align 8
  %add.ptr19 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %18) #9, !srcloc !161
  %timer = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %dev_id, i32 0, i32 1, i32 3
  %call21 = tail call i32 @del_timer_sync(ptr noundef %timer) #9
  %complete = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %dev_id, i32 0, i32 1, i32 2
  tail call void @complete(ptr noundef %complete) #9
  br label %if.end79

if.else:                                          ; preds = %do.end
  %and23 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else59, label %do.body26

do.body26:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_interrupt.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_interrupt, %do.end45)) #9
          to label %if.then40 [label %do.end45], !srcloc !164

if.then40:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  %dev42 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %dev_id, i32 0, i32 4, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_interrupt.__UNIQUE_ID_ddebug304, ptr noundef %dev42, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36) #9
  br label %do.end45

do.end45:                                         ; preds = %if.then40, %do.body26
  tail call fastcc void @i2c_pnx_stop(ptr noundef %dev_id)
  %21 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_id, align 8
  %add.ptr47 = getelementptr i8, ptr %22, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %24 = and i32 %23, -771751937
  %25 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_id, align 8
  %add.ptr51 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %24) #9, !srcloc !161
  %mif52 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %dev_id, i32 0, i32 1
  %27 = ptrtoint ptr %mif52 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -5, ptr %mif52, align 4
  %timer55 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %dev_id, i32 0, i32 1, i32 3
  %call56 = tail call i32 @del_timer_sync(ptr noundef %timer55) #9
  %complete58 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %dev_id, i32 0, i32 1, i32 2
  tail call void @complete(ptr noundef %complete58) #9
  br label %if.end79

if.else59:                                        ; preds = %if.else
  %28 = and i32 %13, 520
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %28)
  %.not = icmp eq i32 %28, 512
  br i1 %.not, label %if.else59.if.end79_crit_edge, label %if.then64

if.else59.if.end79_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then64:                                        ; preds = %if.else59
  %mode66 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %dev_id, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %mode66 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mode66, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %30, label %if.then64.if.end79_crit_edge [
    i32 0, label %if.then67
    i32 1, label %if.then73
  ]

if.then64.if.end79_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @i2c_pnx_master_xmit(ptr noundef %dev_id)
  br label %if.end79

if.then73:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @i2c_pnx_master_rcv(ptr noundef %dev_id)
  br label %if.end79

if.end79:                                         ; preds = %if.then73, %if.then67, %if.then64.if.end79_crit_edge, %if.else59.if.end79_crit_edge, %do.end45, %if.then12
  %32 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_id, align 8
  %add.ptr81 = getelementptr i8, ptr %33, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %35 = or i32 %34, 50331648
  %36 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_id, align 8
  %add.ptr85 = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %35) #9, !srcloc !161
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_interrupt.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_interrupt, %do.end111)) #9
          to label %if.then100 [label %do.end111], !srcloc !164

if.then100:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %dev102 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %dev_id, i32 0, i32 4, i32 9
  %38 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_id, align 8
  %add.ptr104 = getelementptr i8, ptr %39, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104) #9, !srcloc !162
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %42 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_id, align 8
  %add.ptr107 = getelementptr i8, ptr %43, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107) #9, !srcloc !162
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_interrupt.__UNIQUE_ID_ddebug305, ptr noundef %dev102, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.36, i32 noundef %41, i32 noundef %45) #9
  br label %do.end111

do.end111:                                        ; preds = %if.then100, %if.end79
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_pnx_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_xfer.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_xfer, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !164

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 4, i32 9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !162
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_xfer.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef %num, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @bus_reset_if_active(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp5286 = icmp sgt i32 %num, 0
  br i1 %cmp5286, label %for.body.lr.ph, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %mif = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 1
  %buf17 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 1, i32 4
  %len20 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 1, i32 5
  %order = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 1, i32 6
  %mode = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 1, i32 1
  %sub = add nsw i32 %num, -1
  %last = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 2
  %dev48 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 4, i32 9
  %timer1.i = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 1, i32 3
  %timeout.i = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 6
  %expires9.i = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 1, i32 3, i32 1
  %complete = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 1, i32 2
  %wait.i = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 1, i32 2, i32 1
  %name120 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 4, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %completed.0288 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %i.0287 = phi i32 [ 0, %for.body.lr.ph ], [ %inc160, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0287
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 4
  %conv = trunc i16 %7 to i8
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0287, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 2
  %10 = and i16 %9, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool8.not = icmp eq i16 %10, 0
  br i1 %tobool8.not, label %if.end16, label %do.end12

do.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.10, ptr noundef %name120) #12
  br label %for.end

if.end16:                                         ; preds = %for.body
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0287, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf, align 4
  %13 = ptrtoint ptr %buf17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %buf17, align 4
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0287, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len, align 4
  %conv18 = zext i16 %15 to i32
  %16 = ptrtoint ptr %len20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv18, ptr %len20, align 4
  %17 = load i16, ptr %len, align 4
  %conv22 = zext i16 %17 to i32
  %18 = ptrtoint ptr %order to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv22, ptr %order, align 4
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags, align 2
  %21 = and i16 %20, 1
  %22 = zext i16 %21 to i32
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %mode, align 4
  %24 = ptrtoint ptr %mif to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %mif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0287, i32 %sub)
  %cmp30 = icmp eq i32 %i.0287, %sub
  %conv31 = zext i1 %cmp30 to i32
  %25 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv31, ptr %last, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_xfer.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_xfer, %if.else.i.i)) #9
          to label %if.then46 [label %if.else.i.i], !srcloc !164

if.then46:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode, align 4
  %28 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_xfer.__UNIQUE_ID_ddebug307, ptr noundef %dev48, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, i32 noundef %27, i32 noundef %29) #9
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %if.then46, %if.end16
  %30 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %timeout.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %31) #9
  %32 = tail call i32 @llvm.umax.i32(i32 %call2.i.i, i32 2) #9
  %call2.i = tail call i32 @del_timer_sync(ptr noundef %timer1.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_arm_timer.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_xfer, %i2c_pnx_arm_timer.exit)) #9
          to label %if.then7.i [label %i2c_pnx_arm_timer.exit], !srcloc !164

if.then7.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_arm_timer.__UNIQUE_ID_ddebug288, ptr noundef %dev48, ptr noundef nonnull @.str.21, i32 noundef %33, i32 noundef %32) #9
  br label %i2c_pnx_arm_timer.exit

i2c_pnx_arm_timer.exit:                           ; preds = %if.then7.i, %if.else.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %34, %32
  %35 = ptrtoint ptr %expires9.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add.i, ptr %expires9.i, align 4
  tail call void @add_timer(ptr noundef %timer1.i) #9
  %36 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %complete, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #9
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %add.ptr58 = getelementptr i8, ptr %38, i32 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %40 = or i32 %39, 234881024
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  %add.ptr63 = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %40) #9, !srcloc !161
  %call64 = tail call fastcc i32 @i2c_pnx_start(i8 noundef zeroext %conv, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %i2c_pnx_arm_timer.exit.for.end_crit_edge, label %if.end68

i2c_pnx_arm_timer.exit.for.end_crit_edge:         ; preds = %i2c_pnx_arm_timer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end68:                                         ; preds = %i2c_pnx_arm_timer.exit
  tail call void @wait_for_completion(ptr noundef %complete) #9
  %43 = ptrtoint ptr %mif to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool73.not = icmp eq i32 %44, 0
  %inc = zext i1 %tobool73.not to i32
  %spec.select = add i32 %completed.0288, %inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_xfer.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_xfer, %do.end95)) #9
          to label %if.then90 [label %do.end95], !srcloc !164

if.then90:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_xfer.__UNIQUE_ID_ddebug308, ptr noundef %dev48, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8, i32 noundef %44) #9
  br label %do.end95

do.end95:                                         ; preds = %if.then90, %if.end68
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  %add.ptr97 = getelementptr i8, ptr %46, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %48 = and i32 %47, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool100.not = icmp eq i32 %48, 0
  br i1 %tobool100.not, label %do.end95.if.end127_crit_edge, label %do.body102

do.end95.if.end127_crit_edge:                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

do.body102:                                       ; preds = %do.end95
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_xfer.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_xfer, %do.end124)) #9
          to label %if.then116 [label %do.end124], !srcloc !164

if.then116:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_xfer.__UNIQUE_ID_ddebug309, ptr noundef %dev48, ptr noundef nonnull @.str.15, ptr noundef %name120) #9
  br label %do.end124

do.end124:                                        ; preds = %if.then116, %do.body102
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 8
  %add.ptr126 = getelementptr i8, ptr %50, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %47) #9, !srcloc !161
  br label %if.end127

if.end127:                                        ; preds = %do.end124, %do.end95.if.end127_crit_edge
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 8
  %add.ptr129 = getelementptr i8, ptr %52, i32 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr129) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %54 = and i32 %53, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool132.not = icmp eq i32 %54, 0
  br i1 %tobool132.not, label %if.end127.for.inc_crit_edge, label %do.body134

if.end127.for.inc_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body134:                                       ; preds = %if.end127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_xfer.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_xfer, %do.end156)) #9
          to label %if.then148 [label %do.end156], !srcloc !164

if.then148:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_xfer.__UNIQUE_ID_ddebug310, ptr noundef %dev48, ptr noundef nonnull @.str.16, ptr noundef %name120) #9
  br label %do.end156

do.end156:                                        ; preds = %if.then148, %do.body134
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 8
  %add.ptr158 = getelementptr i8, ptr %56, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 %53) #9, !srcloc !161
  br label %for.inc

for.inc:                                          ; preds = %do.end156, %if.end127.for.inc_crit_edge
  %inc160 = add nuw nsw i32 %i.0287, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp = icmp sgt i32 %44, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc160, i32 %num)
  %cmp5 = icmp slt i32 %inc160, %num
  %or.cond = select i1 %cmp, i1 %cmp5, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %i2c_pnx_arm_timer.exit.for.end_crit_edge, %do.end12, %do.end.for.end_crit_edge
  %completed.0285 = phi i32 [ %completed.0288, %do.end12 ], [ 0, %do.end.for.end_crit_edge ], [ %spec.select, %for.inc.for.end_crit_edge ], [ %completed.0288, %i2c_pnx_arm_timer.exit.for.end_crit_edge ]
  %rc.2 = phi i32 [ -22, %do.end12 ], [ 0, %do.end.for.end_crit_edge ], [ %44, %for.inc.for.end_crit_edge ], [ %call64, %i2c_pnx_arm_timer.exit.for.end_crit_edge ]
  tail call fastcc void @bus_reset_if_active(ptr noundef %1)
  %buf162 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 1, i32 4
  %57 = ptrtoint ptr %buf162 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %buf162, align 4
  %len164 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 1, i32 5
  %58 = ptrtoint ptr %len164 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %len164, align 4
  %order166 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 1, i32 6
  %59 = ptrtoint ptr %order166 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %order166, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_xfer.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_xfer, %do.end189)) #9
          to label %if.then181 [label %do.end189], !srcloc !164

if.then181:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev183 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 4, i32 9
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 8
  %add.ptr185 = getelementptr i8, ptr %61, i32 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr185) #9, !srcloc !162
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_xfer.__UNIQUE_ID_ddebug311, ptr noundef %dev183, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.8, i32 noundef %63) #9
  br label %do.end189

do.end189:                                        ; preds = %if.then181, %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %completed.0285, i32 %num)
  %cmp190.not = icmp eq i32 %completed.0285, %num
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2)
  %cmp193 = icmp slt i32 %rc.2, 0
  %spec.select256 = select i1 %cmp193, i32 %rc.2, i32 -121
  %retval.0 = select i1 %cmp190.not, i32 %num, i32 %spec.select256
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @i2c_pnx_func(ptr nocapture noundef readnone %adapter) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bus_reset_if_active(ptr noundef %alg_data) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alg_data, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !162
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  %name = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %name) #12
  %4 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %alg_data, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %7 = or i32 %6, 65536
  %8 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %alg_data, align 8
  %add.ptr6 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %7) #9, !srcloc !161
  %timeout1.i = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 6
  %10 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeout1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp6.i = icmp sgt i32 %11, 0
  br i1 %cmp6.i, label %do.end.land.rhs.i_crit_edge, label %do.end.if.end32_crit_edge

do.end.if.end32_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

do.end.land.rhs.i_crit_edge:                      ; preds = %do.end
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %do.end.land.rhs.i_crit_edge
  %timeout.07.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ %11, %do.end.land.rhs.i_crit_edge ]
  %12 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %alg_data, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %15 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %land.rhs.i.if.end32_crit_edge, label %while.body.i

land.rhs.i.if.end32_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #9
  %dec.i = add nsw i32 %timeout.07.i, -1
  %cmp.i = icmp sgt i32 %timeout.07.i, 1
  br i1 %cmp.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.if.end32_crit_edge

while.body.i.if.end32_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

if.else:                                          ; preds = %entry
  %17 = and i32 %3, 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 2560, i32 %17)
  %.not = icmp eq i32 %17, 2560
  br i1 %.not, label %if.else20, label %if.then12

if.then12:                                        ; preds = %if.else
  %18 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %alg_data, align 8
  %add.ptr14 = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %21 = or i32 %20, 65536
  %22 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %alg_data, align 8
  %add.ptr18 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %21) #9, !srcloc !161
  %timeout1.i46 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 6
  %24 = ptrtoint ptr %timeout1.i46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timeout1.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp6.i47 = icmp sgt i32 %25, 0
  br i1 %cmp6.i47, label %if.then12.land.rhs.i51_crit_edge, label %if.then12.if.end32_crit_edge

if.then12.if.end32_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then12.land.rhs.i51_crit_edge:                 ; preds = %if.then12
  br label %land.rhs.i51

land.rhs.i51:                                     ; preds = %while.body.i54.land.rhs.i51_crit_edge, %if.then12.land.rhs.i51_crit_edge
  %timeout.07.i48 = phi i32 [ %dec.i52, %while.body.i54.land.rhs.i51_crit_edge ], [ %25, %if.then12.land.rhs.i51_crit_edge ]
  %26 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %alg_data, align 8
  %add.ptr.i49 = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %29 = and i32 %28, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i50 = icmp eq i32 %29, 0
  br i1 %tobool.not.i50, label %land.rhs.i51.if.end32_crit_edge, label %while.body.i54

land.rhs.i51.if.end32_crit_edge:                  ; preds = %land.rhs.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

while.body.i54:                                   ; preds = %land.rhs.i51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #9
  %dec.i52 = add nsw i32 %timeout.07.i48, -1
  %cmp.i53 = icmp sgt i32 %timeout.07.i48, 1
  br i1 %cmp.i53, label %while.body.i54.land.rhs.i51_crit_edge, label %while.body.i54.if.end32_crit_edge

while.body.i54.if.end32_crit_edge:                ; preds = %while.body.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

while.body.i54.land.rhs.i51_crit_edge:            ; preds = %while.body.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i51

if.else20:                                        ; preds = %if.else
  %and21 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else20.if.end32_crit_edge, label %if.then23

if.else20.if.end32_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then23:                                        ; preds = %if.else20
  %31 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %alg_data, align 8
  %add.ptr25 = getelementptr i8, ptr %32, i32 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %34 = or i32 %33, 65536
  %35 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %alg_data, align 8
  %add.ptr29 = getelementptr i8, ptr %36, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %34) #9, !srcloc !161
  %timeout1.i59 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 6
  %37 = ptrtoint ptr %timeout1.i59 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %timeout1.i59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp6.i60 = icmp sgt i32 %38, 0
  br i1 %cmp6.i60, label %if.then23.land.rhs.i64_crit_edge, label %if.then23.if.end32_crit_edge

if.then23.if.end32_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then23.land.rhs.i64_crit_edge:                 ; preds = %if.then23
  br label %land.rhs.i64

land.rhs.i64:                                     ; preds = %while.body.i67.land.rhs.i64_crit_edge, %if.then23.land.rhs.i64_crit_edge
  %timeout.07.i61 = phi i32 [ %dec.i65, %while.body.i67.land.rhs.i64_crit_edge ], [ %38, %if.then23.land.rhs.i64_crit_edge ]
  %39 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %alg_data, align 8
  %add.ptr.i62 = getelementptr i8, ptr %40, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %42 = and i32 %41, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i63 = icmp eq i32 %42, 0
  br i1 %tobool.not.i63, label %land.rhs.i64.if.end32_crit_edge, label %while.body.i67

land.rhs.i64.if.end32_crit_edge:                  ; preds = %land.rhs.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

while.body.i67:                                   ; preds = %land.rhs.i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #9
  %dec.i65 = add nsw i32 %timeout.07.i61, -1
  %cmp.i66 = icmp sgt i32 %timeout.07.i61, 1
  br i1 %cmp.i66, label %while.body.i67.land.rhs.i64_crit_edge, label %while.body.i67.if.end32_crit_edge

while.body.i67.if.end32_crit_edge:                ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

while.body.i67.land.rhs.i64_crit_edge:            ; preds = %while.body.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i64

if.end32:                                         ; preds = %while.body.i67.if.end32_crit_edge, %land.rhs.i64.if.end32_crit_edge, %if.then23.if.end32_crit_edge, %if.else20.if.end32_crit_edge, %while.body.i54.if.end32_crit_edge, %land.rhs.i51.if.end32_crit_edge, %if.then12.if.end32_crit_edge, %while.body.i.if.end32_crit_edge, %land.rhs.i.if.end32_crit_edge, %do.end.if.end32_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_pnx_start(i8 noundef zeroext %slave_addr, ptr noundef %alg_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_start.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_start, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !164

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  %conv = zext i8 %slave_addr to i32
  %mode = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_start.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %conv, i32 noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv4 = zext i8 %slave_addr to i32
  %and = and i32 %conv4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end13, label %do.end8

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev10 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  %name = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef %conv4) #12
  br label %return

if.end13:                                         ; preds = %do.end
  %timeout1.i = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 6
  %2 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.i = icmp sgt i32 %3, 0
  br i1 %cmp6.i, label %if.end13.land.rhs.i_crit_edge, label %if.end13.do.end18_crit_edge

if.end13.do.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

if.end13.land.rhs.i_crit_edge:                    ; preds = %if.end13
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.end13.land.rhs.i_crit_edge
  %timeout.07.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ %3, %if.end13.land.rhs.i_crit_edge ]
  %4 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %alg_data, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %7 = and i32 %6, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.else, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #9
  %dec.i = add nsw i32 %timeout.07.i, -1
  %cmp.i = icmp sgt i32 %timeout.07.i, 1
  br i1 %cmp.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.do.end18_crit_edge

while.body.i.do.end18_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

do.end18:                                         ; preds = %while.body.i.do.end18_crit_edge, %if.end13.do.end18_crit_edge
  %dev20 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  %name22 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 12
  %9 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %alg_data, align 8
  %add.ptr = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !162
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %13 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %alg_data, align 8
  %add.ptr27 = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #9, !srcloc !162
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.26, ptr noundef %name22, i32 noundef %conv4, i32 noundef %12, i32 noundef %16) #12
  br label %return

if.else:                                          ; preds = %land.rhs.i
  %17 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %alg_data, align 8
  %add.ptr30 = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %20 = and i32 %19, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool33.not = icmp eq i32 %20, 0
  br i1 %tobool33.not, label %if.end44, label %do.end36

do.end36:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %dev38 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  %name40 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.29, ptr noundef %name40, i32 noundef %conv4) #12
  br label %return

if.end44:                                         ; preds = %if.else
  %21 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %alg_data, align 8
  %add.ptr46 = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %24 = or i32 %23, 50331648
  %25 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %alg_data, align 8
  %add.ptr50 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %24) #9, !srcloc !161
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_start.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_start, %do.end74)) #9
          to label %if.then65 [label %do.end74], !srcloc !164

if.then65:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %dev67 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  %shl = shl nuw nsw i32 %conv4, 1
  %mode71 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %mode71 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode71, align 4
  %or69 = or i32 %shl, %28
  %or72 = or i32 %or69, 256
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_start.__UNIQUE_ID_ddebug290, ptr noundef %dev67, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.22, i32 noundef %or72) #9
  br label %do.end74

do.end74:                                         ; preds = %if.then65, %if.end44
  %shl76 = shl nuw nsw i32 %conv4, 1
  %mode79 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %mode79 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mode79, align 4
  %or77 = or i32 %shl76, %30
  %or80 = or i32 %or77, 256
  %31 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %alg_data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  %33 = tail call i32 @llvm.bswap.i32(i32 %or80) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %33) #9, !srcloc !161
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_start.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_start, %return)) #9
          to label %if.then96 [label %return], !srcloc !164

if.then96:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #11
  %dev98 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_start.__UNIQUE_ID_ddebug291, ptr noundef %dev98, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.22) #9
  br label %return

return:                                           ; preds = %if.then96, %do.end74, %do.end36, %do.end18, %do.end8
  %retval.0 = phi i32 [ -22, %do.end8 ], [ -16, %do.end18 ], [ -5, %do.end36 ], [ 0, %if.then96 ], [ 0, %do.end74 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_pnx_stop(ptr noundef %alg_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_stop.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_stop, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !164

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  %0 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alg_data, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !162
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_stop.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %alg_data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -16646144) #9, !srcloc !161
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %do.end
  %timeout.044 = phi i32 [ 1000, %do.end ], [ %dec, %while.body.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alg_data, align 8
  %add.ptr7 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %9 = and i32 %8, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %land.rhs.do.body10_crit_edge, label %while.body

land.rhs.do.body10_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #9
  %dec = add nsw i32 %timeout.044, -1
  %cmp = icmp ugt i32 %timeout.044, 1
  br i1 %cmp, label %while.body.land.rhs_crit_edge, label %while.body.do.body10_crit_edge

while.body.do.body10_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

do.body10:                                        ; preds = %while.body.do.body10_crit_edge, %land.rhs.do.body10_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_stop.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_stop, %do.end32)) #9
          to label %if.then24 [label %do.end32], !srcloc !164

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %dev26 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  %11 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %alg_data, align 8
  %add.ptr28 = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #9, !srcloc !162
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_stop.__UNIQUE_ID_ddebug293, ptr noundef %dev26, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef %14) #9
  br label %do.end32

do.end32:                                         ; preds = %if.then24, %do.body10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_pnx_master_xmit(ptr noundef %alg_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_master_xmit.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_master_xmit, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !164

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  %0 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alg_data, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !162
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_master_xmit.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.43, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.end
  %buf = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %incdec.ptr = getelementptr i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp9 = icmp eq i32 %5, 1
  %or = or i32 %conv, 512
  %spec.select = select i1 %cmp9, i32 %or, i32 %conv
  %dec = add nsw i32 %5, -1
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dec, ptr %len, align 4
  %11 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %alg_data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %13) #9, !srcloc !161
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_master_xmit.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_master_xmit, %do.end37)) #9
          to label %if.then30 [label %do.end37], !srcloc !164

if.then30:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %dev32 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %add = add i32 %15, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_master_xmit.__UNIQUE_ID_ddebug295, ptr noundef %dev32, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef %spec.select, i32 noundef %add) #9
  br label %do.end37

do.end37:                                         ; preds = %if.then30, %if.then5
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp40 = icmp eq i32 %17, 0
  br i1 %cmp40, label %if.then42, label %do.end37.do.body122_crit_edge

do.end37.do.body122_crit_edge:                    ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body122

if.then42:                                        ; preds = %do.end37
  %last = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 2
  %18 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool43.not = icmp eq i32 %19, 0
  br i1 %tobool43.not, label %if.then42.if.end54_crit_edge, label %if.then44

if.then42.if.end54_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then44:                                        ; preds = %if.then42
  %timeout1.i = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 6
  %20 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timeout1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp6.i = icmp sgt i32 %21, 0
  br i1 %cmp6.i, label %if.then44.land.rhs.i_crit_edge, label %if.then44.do.end50_crit_edge

if.then44.do.end50_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

if.then44.land.rhs.i_crit_edge:                   ; preds = %if.then44
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then44.land.rhs.i_crit_edge
  %timeout.07.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ %21, %if.then44.land.rhs.i_crit_edge ]
  %22 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %alg_data, align 8
  %add.ptr.i = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %25 = and i32 %24, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %land.rhs.i.if.end54_crit_edge, label %while.body.i

land.rhs.i.if.end54_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #9
  %dec.i = add nsw i32 %timeout.07.i, -1
  %cmp.i = icmp sgt i32 %timeout.07.i, 1
  br i1 %cmp.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.do.end50_crit_edge

while.body.i.do.end50_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

do.end50:                                         ; preds = %while.body.i.do.end50_crit_edge, %if.then44.do.end50_crit_edge
  %dev52 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52, ptr noundef nonnull @.str.45) #12
  br label %if.end54

if.end54:                                         ; preds = %do.end50, %land.rhs.i.if.end54_crit_edge, %if.then42.if.end54_crit_edge
  %27 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %alg_data, align 8
  %add.ptr56 = getelementptr i8, ptr %28, i32 8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %30 = and i32 %29, -234881025
  %31 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %alg_data, align 8
  %add.ptr59 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %30) #9, !srcloc !161
  %timer = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 1, i32 3
  %call61 = tail call i32 @del_timer_sync(ptr noundef %timer) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_master_xmit.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_master_xmit, %do.body122.sink.split)) #9
          to label %if.then76 [label %do.body122.sink.split], !srcloc !164

if.then76:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %dev78 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_master_xmit.__UNIQUE_ID_ddebug296, ptr noundef %dev78, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.43) #9
  br label %do.body122.sink.split

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp86 = icmp eq i32 %5, 0
  br i1 %cmp86, label %if.then88, label %if.else.do.body122_crit_edge

if.else.do.body122_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body122

if.then88:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @i2c_pnx_stop(ptr noundef %alg_data)
  %33 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %alg_data, align 8
  %add.ptr90 = getelementptr i8, ptr %34, i32 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %36 = and i32 %35, -234881025
  %37 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %alg_data, align 8
  %add.ptr94 = getelementptr i8, ptr %38, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %36) #9, !srcloc !161
  %timer96 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 1, i32 3
  %call97 = tail call i32 @del_timer_sync(ptr noundef %timer96) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_master_xmit.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_master_xmit, %do.body122.sink.split)) #9
          to label %if.then112 [label %do.body122.sink.split], !srcloc !164

if.then112:                                       ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  %dev114 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_master_xmit.__UNIQUE_ID_ddebug297, ptr noundef %dev114, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.43) #9
  br label %do.body122.sink.split

do.body122.sink.split:                            ; preds = %if.then112, %if.then88, %if.then76, %if.end54
  %complete = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 1, i32 2
  tail call void @complete(ptr noundef %complete) #9
  br label %do.body122

do.body122:                                       ; preds = %do.body122.sink.split, %if.else.do.body122_crit_edge, %do.end37.do.body122_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_master_xmit.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_master_xmit, %do.end144)) #9
          to label %if.then136 [label %do.end144], !srcloc !164

if.then136:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #11
  %dev138 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  %39 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %alg_data, align 8
  %add.ptr140 = getelementptr i8, ptr %40, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr140) #9, !srcloc !162
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_master_xmit.__UNIQUE_ID_ddebug298, ptr noundef %dev138, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %42) #9
  br label %do.end144

do.end144:                                        ; preds = %if.then136, %do.body122
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_pnx_master_rcv(ptr noundef %alg_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_master_rcv.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_master_rcv, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !164

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  %0 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alg_data, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !162
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_master_rcv.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.48, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %alg_data, align 8
  %add.ptr6 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %7 = and i32 %6, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end47, label %if.then9

if.then9:                                         ; preds = %do.end
  %order = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %order, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.then9.cleanup_crit_edge, label %do.body12

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body12:                                        ; preds = %if.then9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_master_rcv.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_master_rcv, %do.end31)) #9
          to label %if.then26 [label %do.end31], !srcloc !164

if.then26:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %dev28 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_master_rcv.__UNIQUE_ID_ddebug300, ptr noundef %dev28, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48) #9
  br label %do.end31

do.end31:                                         ; preds = %if.then26, %do.body12
  %10 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %order, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then34, label %do.end31.if.end42_crit_edge

do.end31.if.end42_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then34:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %alg_data, align 8
  %add.ptr36 = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %15 = and i32 %14, -1744830465
  %16 = or i32 %15, 1610612736
  %17 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %alg_data, align 8
  %add.ptr41 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %16) #9, !srcloc !161
  br label %if.end42

if.end42:                                         ; preds = %if.then34, %do.end31.if.end42_crit_edge
  %val.0 = phi i32 [ 131072, %if.then34 ], [ 0, %do.end31.if.end42_crit_edge ]
  %19 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %alg_data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %val.0) #9, !srcloc !161
  %21 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %order, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %order, align 4
  br label %cleanup

if.end47:                                         ; preds = %do.end
  %len = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 1, i32 5
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp49 = icmp sgt i32 %24, 0
  br i1 %cmp49, label %if.then50, label %if.end47.do.body108_crit_edge

if.end47.do.body108_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body108

if.then50:                                        ; preds = %if.end47
  %25 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %alg_data, align 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !162
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %conv = trunc i32 %28 to i8
  %buf = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buf, align 4
  %incdec.ptr = getelementptr i8, ptr %30, i32 1
  store ptr %incdec.ptr, ptr %buf, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv, ptr %30, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_master_rcv.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_master_rcv, %do.end76)) #9
          to label %if.then69 [label %do.end76], !srcloc !164

if.then69:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  %dev71 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_master_rcv.__UNIQUE_ID_ddebug301, ptr noundef %dev71, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef %28, i32 noundef %33) #9
  br label %do.end76

do.end76:                                         ; preds = %if.then69, %if.then50
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %dec79 = add i32 %35, -1
  store i32 %dec79, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec79)
  %cmp82 = icmp eq i32 %dec79, 0
  br i1 %cmp82, label %if.then84, label %do.end76.do.body108_crit_edge

do.end76.do.body108_crit_edge:                    ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body108

if.then84:                                        ; preds = %do.end76
  %last = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 2
  %36 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %last, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool85.not = icmp eq i32 %37, 0
  br i1 %tobool85.not, label %if.then84.if.end96_crit_edge, label %if.then86

if.then84.if.end96_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

if.then86:                                        ; preds = %if.then84
  %timeout1.i = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 6
  %38 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %timeout1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp6.i = icmp sgt i32 %39, 0
  br i1 %cmp6.i, label %if.then86.land.rhs.i_crit_edge, label %if.then86.do.end92_crit_edge

if.then86.do.end92_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92

if.then86.land.rhs.i_crit_edge:                   ; preds = %if.then86
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then86.land.rhs.i_crit_edge
  %timeout.07.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ %39, %if.then86.land.rhs.i_crit_edge ]
  %40 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %alg_data, align 8
  %add.ptr.i = getelementptr i8, ptr %41, i32 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %43 = and i32 %42, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i, label %land.rhs.i.if.end96_crit_edge, label %while.body.i

land.rhs.i.if.end96_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #9
  %dec.i = add nsw i32 %timeout.07.i, -1
  %cmp.i = icmp sgt i32 %timeout.07.i, 1
  br i1 %cmp.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.do.end92_crit_edge

while.body.i.do.end92_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end92

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

do.end92:                                         ; preds = %while.body.i.do.end92_crit_edge, %if.then86.do.end92_crit_edge
  %dev94 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94, ptr noundef nonnull @.str.45) #12
  br label %if.end96

if.end96:                                         ; preds = %do.end92, %land.rhs.i.if.end96_crit_edge, %if.then84.if.end96_crit_edge
  %45 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %alg_data, align 8
  %add.ptr98 = getelementptr i8, ptr %46, i32 8
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #9, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  %48 = and i32 %47, -1845493761
  %49 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %alg_data, align 8
  %add.ptr102 = getelementptr i8, ptr %50, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 %48) #9, !srcloc !161
  %timer = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 1, i32 3
  %call104 = tail call i32 @del_timer_sync(ptr noundef %timer) #9
  %complete = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 1, i32 2
  tail call void @complete(ptr noundef %complete) #9
  br label %do.body108

do.body108:                                       ; preds = %if.end96, %do.end76.do.body108_crit_edge, %if.end47.do.body108_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_pnx_master_rcv.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_pnx_master_rcv, %cleanup)) #9
          to label %if.then122 [label %cleanup], !srcloc !164

if.then122:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #11
  %dev124 = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %alg_data, i32 0, i32 4, i32 9
  %51 = ptrtoint ptr %alg_data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %alg_data, align 8
  %add.ptr126 = getelementptr i8, ptr %52, i32 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr126) #9, !srcloc !162
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_pnx_master_rcv.__UNIQUE_ID_ddebug302, ptr noundef %dev124, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.48, i32 noundef %54) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then122, %do.body108, %if.end42, %if.then9.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_pnx_controller_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_pnx_controller_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.i2c_pnx_algo_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !28, !29, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !92, !93, !94, !95, !97, !98, !100, !101, !102, !104, !105, !107, !108, !110, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !125, !127, !128, !130, !131, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !149}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !{ptr @__UNIQUE_ID_author313, !1, !"__UNIQUE_ID_author313", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 784, i32 1}
!2 = !{ptr @__UNIQUE_ID_author314, !3, !"__UNIQUE_ID_author314", i1 false, i1 false}
!3 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 785, i32 1}
!4 = !{ptr @__UNIQUE_ID_description315, !5, !"__UNIQUE_ID_description315", i1 false, i1 false}
!5 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 786, i32 1}
!6 = !{ptr @__UNIQUE_ID_file316, !7, !"__UNIQUE_ID_file316", i1 false, i1 false}
!7 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 787, i32 1}
!8 = !{ptr @__UNIQUE_ID_license317, !7, !"__UNIQUE_ID_license317", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias318, !10, !"__UNIQUE_ID_alias318", i1 false, i1 false}
!10 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 788, i32 1}
!11 = !{ptr @__initcall__kmod_i2c_pnx__319_791_i2c_adap_pnx_init4, !12, !"__initcall__kmod_i2c_pnx__319_791_i2c_adap_pnx_init4", i1 false, i1 false}
!12 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 791, i32 1}
!13 = !{ptr @__exitcall_i2c_adap_pnx_exit, !14, !"__exitcall_i2c_adap_pnx_exit", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 792, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 766, i32 11}
!17 = !{ptr @i2c_pnx_driver, !18, !"i2c_pnx_driver", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 764, i32 31}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 664, i32 43}
!21 = !{ptr @i2c_pnx_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 680, i32 2}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 683, i32 4}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 736, i32 2}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @i2c_pnx_probe.__UNIQUE_ID_ddebug312, !27, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!32 = !{ptr @pnx_algorithm, !33, !"pnx_algorithm", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 611, i32 35}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 519, i32 2}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @i2c_pnx_xfer.__UNIQUE_ID_ddebug306, !35, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 533, i32 4}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @i2c_pnx_xfer._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @i2c_pnx_xfer._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 548, i32 3}
!46 = !{ptr @i2c_pnx_xfer.__UNIQUE_ID_ddebug307, !45, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 571, i32 3}
!49 = !{ptr @i2c_pnx_xfer.__UNIQUE_ID_ddebug308, !48, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 577, i32 4}
!52 = !{ptr @i2c_pnx_xfer.__UNIQUE_ID_ddebug309, !51, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 583, i32 4}
!55 = !{ptr @i2c_pnx_xfer.__UNIQUE_ID_ddebug310, !54, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 597, i32 2}
!58 = !{ptr @i2c_pnx_xfer.__UNIQUE_ID_ddebug311, !57, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 483, i32 3}
!61 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @bus_reset_if_active._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @bus_reset_if_active._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 130, i32 2}
!66 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @i2c_pnx_arm_timer.__UNIQUE_ID_ddebug288, !65, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 148, i32 2}
!70 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @i2c_pnx_start.__UNIQUE_ID_ddebug289, !69, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 153, i32 3}
!74 = !{ptr @i2c_pnx_start._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @i2c_pnx_start._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 162, i32 3}
!78 = !{ptr @i2c_pnx_start._entry.25, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @i2c_pnx_start._entry_ptr.27, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 170, i32 3}
!82 = !{ptr @i2c_pnx_start._entry.28, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @i2c_pnx_start._entry_ptr.30, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 183, i32 2}
!86 = !{ptr @i2c_pnx_start.__UNIQUE_ID_ddebug290, !85, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 190, i32 2}
!89 = !{ptr @i2c_pnx_start.__UNIQUE_ID_ddebug291, !88, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 461, i32 2}
!92 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @i2c_pnx_timeout._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @i2c_pnx_timeout._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @init_completion.__key, !96, !"__key", i1 false, i1 false}
!96 = !{!"../include/linux/completion.h", i32 87, i32 2}
!97 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 384, i32 2}
!100 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @i2c_pnx_interrupt.__UNIQUE_ID_ddebug303, !99, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 408, i32 3}
!104 = !{ptr @i2c_pnx_interrupt.__UNIQUE_ID_ddebug304, !103, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 448, i32 2}
!107 = !{ptr @i2c_pnx_interrupt.__UNIQUE_ID_ddebug305, !106, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 206, i32 2}
!110 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @i2c_pnx_stop.__UNIQUE_ID_ddebug292, !109, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 220, i32 2}
!114 = !{ptr @i2c_pnx_stop.__UNIQUE_ID_ddebug293, !113, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 234, i32 2}
!117 = !{ptr @i2c_pnx_master_xmit.__UNIQUE_ID_ddebug294, !116, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!118 = !{ptr @.str.44, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 247, i32 3}
!120 = !{ptr @i2c_pnx_master_xmit.__UNIQUE_ID_ddebug295, !119, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!121 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 254, i32 6}
!123 = !{ptr @i2c_pnx_master_xmit._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @i2c_pnx_master_xmit._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 264, i32 4}
!127 = !{ptr @i2c_pnx_master_xmit.__UNIQUE_ID_ddebug296, !126, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!128 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 281, i32 3}
!130 = !{ptr @i2c_pnx_master_xmit.__UNIQUE_ID_ddebug297, !129, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!131 = !{ptr @i2c_pnx_master_xmit.__UNIQUE_ID_ddebug298, !132, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!132 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 288, i32 2}
!133 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 305, i32 2}
!135 = !{ptr @i2c_pnx_master_rcv.__UNIQUE_ID_ddebug299, !134, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!136 = !{ptr @.str.49, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 317, i32 4}
!138 = !{ptr @i2c_pnx_master_rcv.__UNIQUE_ID_ddebug300, !137, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!139 = !{ptr @.str.50, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 350, i32 3}
!141 = !{ptr @i2c_pnx_master_rcv.__UNIQUE_ID_ddebug301, !140, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!142 = !{ptr @i2c_pnx_master_rcv._entry, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 358, i32 6}
!144 = !{ptr @i2c_pnx_master_rcv._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @i2c_pnx_master_rcv.__UNIQUE_ID_ddebug302, !146, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!146 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 373, i32 2}
!147 = !{ptr @i2c_pnx_of_match, !148, !"i2c_pnx_of_match", i1 false, i1 false}
!148 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 757, i32 34}
!149 = !{ptr @i2c_pnx_pm, !150, !"i2c_pnx_pm", i1 false, i1 false}
!150 = !{!"../drivers/i2c/busses/i2c-pnx.c", i32 633, i32 8}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 8, !"branch-target-enforcement", i32 0}
!154 = !{i32 8, !"sign-return-address", i32 0}
!155 = !{i32 8, !"sign-return-address-all", i32 0}
!156 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"uwtable", i32 1}
!158 = !{i32 7, !"frame-pointer", i32 2}
!159 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!160 = !{i64 2152177818}
!161 = !{i64 4635696}
!162 = !{i64 4636114}
!163 = !{i64 2152176463}
!164 = !{i64 2148973191, i64 2148973196, i64 2148973209, i64 2148973253, i64 2148973287, i64 2148973308}
