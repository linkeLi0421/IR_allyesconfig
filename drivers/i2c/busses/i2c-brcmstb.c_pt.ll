; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-brcmstb.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-brcmstb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bsc_clk_param = type { i32, i32, i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.brcmstb_i2c_dev = type { ptr, ptr, i32, ptr, %struct.i2c_adapter, %struct.completion, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.bsc_regs = type { i32, [8 x i32], i32, i32, i32, [8 x i32], i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_i2c_brcmstb__298_755_brcmstb_i2c_driver_init6 = internal global ptr @brcmstb_i2c_driver_init, section ".initcall6.init", align 4
@brcmstb_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @brcmstb_i2c_probe, ptr @brcmstb_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcmstb_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmstb_i2c_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_brcmstb_i2c_driver_exit = internal global ptr @brcmstb_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author299 = internal constant [51 x i8] c"i2c_brcmstb.author=Kamal Dasu <kdasu@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [51 x i8] c"i2c_brcmstb.description=Broadcom Settop I2C Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [48 x i8] c"i2c_brcmstb.file=drivers/i2c/busses/i2c-brcmstb\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [27 x i8] c"i2c_brcmstb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"brcmstb-i2c\00", [20 x i8] zeroinitializer }, align 32
@brcmstb_i2c_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmper-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-hdmi-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@brcmstb_i2c_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @brcmstb_i2c_suspend, ptr @brcmstb_i2c_resume, ptr @brcmstb_i2c_suspend, ptr @brcmstb_i2c_resume, ptr @brcmstb_i2c_suspend, ptr @brcmstb_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"brcm,bcm2711-hdmi-i2c\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"interrupt-names\00", [16 x i8] zeroinitializer }, align 32
@brcmstb_i2c_probe.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 -91, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_brcmstb\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcmstb_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-brcmstb.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"falling back to polling mode\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@brcmstb_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.5, i32 670, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"setting clock-frequency@%dHz\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmstb_i2c_probe._entry_ptr = internal global ptr @brcmstb_i2c_probe._entry, section ".printk_index", align 4
@bsc_clk = internal constant { [8 x %struct.bsc_clk_param], [32 x i8] } { [8 x %struct.bsc_clk_param] [%struct.bsc_clk_param { i32 375000, i32 0, i32 0 }, %struct.bsc_clk_param { i32 390000, i32 16, i32 0 }, %struct.bsc_clk_param { i32 187500, i32 32, i32 0 }, %struct.bsc_clk_param { i32 200000, i32 48, i32 0 }, %struct.bsc_clk_param { i32 93750, i32 0, i32 128 }, %struct.bsc_clk_param { i32 97500, i32 16, i32 128 }, %struct.bsc_clk_param { i32 46875, i32 32, i32 128 }, %struct.bsc_clk_param { i32 50000, i32 48, i32 128 }], [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcm,brcmper-i2c\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Broadcom STB : \00", [16 x i8] zeroinitializer }, align 32
@brcmstb_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @brcmstb_i2c_xfer, ptr null, ptr null, ptr null, ptr @brcmstb_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@brcmstb_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 699, ptr @.str.15, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s@%dhz registered in %s mode\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@brcmstb_i2c_probe._entry_ptr.16 = internal global ptr @brcmstb_i2c_probe._entry.13, section ".printk_index", align 4
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"interrupt\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"polling\00", [24 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"auto-i2c\00", [23 x i8] zeroinitializer }, align 32
@brcmstb_i2c_isr.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.22, ptr @.str.5, ptr @.str.23, i8 0, i8 55, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcmstb_i2c_isr\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"isr CTL_REG %x IIC_EN %x\0A\00", [38 x i8] zeroinitializer }, align 32
@brcmstb_i2c_isr.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.22, ptr @.str.5, ptr @.str.24, i8 0, i8 57, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"isr handled\00", [20 x i8] zeroinitializer }, align 32
@brcmstb_i2c_set_bus_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 565, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"leaving current clock-frequency @ %dHz\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"brcmstb_i2c_set_bus_speed\00", [38 x i8] zeroinitializer }, align 32
@brcmstb_i2c_set_bus_speed._entry_ptr = internal global ptr @brcmstb_i2c_set_bus_speed._entry, section ".printk_index", align 4
@brcmstb_i2c_xfer.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.27, ptr @.str.5, ptr @.str.28, i8 0, i8 119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcmstb_i2c_xfer\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"msg# %d/%d flg %x buf %x len %d\0A\00", [63 x i8] zeroinitializer }, align 32
@brcmstb_i2c_xfer.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.27, ptr @.str.5, ptr @.str.29, i8 0, i8 122, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"NACK for addr %2.2x msg#%d rc = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@brcmstb_send_i2c_cmd.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.30, ptr @.str.5, ptr @.str.31, i8 0, i8 78, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"brcmstb_send_i2c_cmd\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"intr timeout for cmd %s\0A\00", [39 x i8] zeroinitializer }, align 32
@cmd_string = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], [16 x i8] zeroinitializer }, align 32
@brcmstb_send_i2c_cmd.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.30, ptr @.str.5, ptr @.str.32, i8 0, i8 80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"controller received NOACK intr for %s\0A\00", [57 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"WR\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RD\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WR NOACK\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RD NOACK\00", [23 x i8] zeroinitializer }, align 32
@brcmstb_i2c_xfer_bsc_data.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.37, ptr @.str.5, ptr @.str.38, i8 0, i8 96, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"brcmstb_i2c_xfer_bsc_data\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s failure\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 46875, i64 50000, i64 93750, i64 97500, i64 187500, i64 200000, i64 375000, i64 390000]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 3]
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c"brcmstb_i2c_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 746, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 748, i32 14 }
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"brcmstb_i2c_of_match\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 738, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"brcmstb_i2c_pm\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 735, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 637, i32 9 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 643, i32 53 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 662, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 668, i32 6 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 669, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [8 x i8] c"bsc_clk\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 121, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 676, i32 9 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 687, i32 22 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"brcmstb_i2c_algo\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 539, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 697, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 87, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 592, i32 61 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 221, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 230, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 564, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 473, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 489, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 313, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [11 x i8] c"cmd_string\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 103, i32 20 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 321, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 104, i32 13 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 105, i32 13 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 106, i32 19 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 107, i32 19 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-brcmstb.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 386, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_brcmstb_i2c_driver_exit, ptr @__initcall__kmod_i2c_brcmstb__298_755_brcmstb_i2c_driver_init6, ptr @brcmstb_i2c_driver_exit, ptr @brcmstb_i2c_probe._entry, ptr @brcmstb_i2c_probe._entry.13, ptr @brcmstb_i2c_probe._entry_ptr, ptr @brcmstb_i2c_probe._entry_ptr.16, ptr @brcmstb_i2c_set_bus_speed._entry, ptr @brcmstb_i2c_set_bus_speed._entry_ptr, ptr @brcmstb_i2c_driver, ptr @.str, ptr @brcmstb_i2c_of_match, ptr @brcmstb_i2c_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @bsc_clk, ptr @.str.11, ptr @.str.12, ptr @brcmstb_i2c_algo, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @init_completion.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @cmd_string, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_i2c_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_i2c_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsc_clk to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_i2c_set_bus_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_string to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcmstb_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @brcmstb_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcmstb_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %int_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_name) #8
  %0 = ptrtoint ptr %int_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %int_name, align 4, !annotation !106
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1440, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i158 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 88, i32 noundef 3520) #8
  %bsc_regmap = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %bsc_regmap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i158, ptr %bsc_regmap, align 4
  %tobool5.not = icmp eq ptr %call.i158, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 8
  %done = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #8
  %call9 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 8
  %call11 = tail call ptr @devm_ioremap_resource(ptr noundef %6, ptr noundef %call9) #8
  %base = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %if.end15

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call17 = tail call i32 @of_device_is_compatible(ptr noundef %11, ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end15.if.end24_crit_edge, label %if.then19

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then19:                                        ; preds = %if.end15
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 -16
  %call.i159 = tail call ptr @platform_get_resource_byname(ptr noundef %add.ptr.i, i32 noundef 512, ptr noundef nonnull @.str.21) #8
  %call2.i = tail call ptr @devm_ioremap_resource(ptr noundef %13, ptr noundef %call.i159) #8
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %bcm2711_release_bsc.exit, label %bcm2711_release_bsc.exit.thread

bcm2711_release_bsc.exit.thread:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %add.ptr5.i = getelementptr i8, ptr %call2.i, i32 620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 33554432) #8, !srcloc !108
  tail call void @devm_iounmap(ptr noundef %13, ptr noundef %call2.i) #8
  %14 = ptrtoint ptr %bsc_regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bsc_regmap, align 4
  %iic_enable.i = getelementptr inbounds %struct.bsc_regs, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %iic_enable.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %iic_enable.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %bsc_regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bsc_regmap, align 4
  %iic_enable11.i = getelementptr inbounds %struct.bsc_regs, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %iic_enable11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iic_enable11.i, align 4
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr12.i = getelementptr i8, ptr %22, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %20) #8, !srcloc !108
  br label %if.end24

bcm2711_release_bsc.exit:                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call2.i to i32
  br label %cleanup

if.end24:                                         ; preds = %bcm2711_release_bsc.exit.thread, %if.end15.if.end24_crit_edge
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 8
  %of_node26 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %of_node26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node26, align 8
  %call27 = call i32 @of_property_read_string(ptr noundef %27, ptr noundef nonnull @.str.2, ptr noundef nonnull %int_name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %if.then28, label %if.end24.if.end29_crit_edge

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %int_name to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %int_name, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end24.if.end29_crit_edge
  %call30 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call30, ptr %irq, align 8
  %30 = ptrtoint ptr %bsc_regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bsc_regmap, align 4
  %ctl_reg.i = getelementptr inbounds %struct.bsc_regs, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %ctl_reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctl_reg.i, align 4
  %and.i = and i32 %33, -65
  store i32 %and.i, ptr %ctl_reg.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %bsc_regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bsc_regmap, align 4
  %ctl_reg4.i = getelementptr inbounds %struct.bsc_regs, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %ctl_reg4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ctl_reg4.i, align 4
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr.i163 = getelementptr i8, ptr %39, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 %37) #8, !srcloc !108
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp32 = icmp sgt i32 %41, -1
  br i1 %cmp32, label %if.then33, label %if.end29.if.end50_crit_edge

if.end29.if.end50_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then33:                                        ; preds = %if.end29
  %42 = ptrtoint ptr %int_name to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %int_name, align 4
  %tobool36.not = icmp eq ptr %43, null
  br i1 %tobool36.not, label %cond.false, label %if.then33.cond.end_crit_edge

if.then33.cond.end_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then33.cond.end_crit_edge
  %cond = phi ptr [ %45, %cond.false ], [ %43, %if.then33.cond.end_crit_edge ]
  %call.i164 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %41, ptr noundef nonnull @brcmstb_i2c_isr, ptr noundef null, i32 noundef 128, ptr noundef %cond, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool38.not = icmp eq i32 %call.i164, 0
  br i1 %tobool38.not, label %cond.end.if.end50_crit_edge, label %do.body

cond.end.if.end50_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.body:                                          ; preds = %cond.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmstb_i2c_probe.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@brcmstb_i2c_probe, %do.end)) #8
          to label %if.then45 [label %do.end], !srcloc !112

if.then45:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmstb_i2c_probe.__UNIQUE_ID_ddebug297, ptr noundef %47, ptr noundef nonnull @.str.6) #8
  br label %do.end

do.end:                                           ; preds = %if.then45, %do.body
  %48 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %irq, align 8
  br label %if.end50

if.end50:                                         ; preds = %do.end, %cond.end.if.end50_crit_edge, %if.end29.if.end50_crit_edge
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 8
  %of_node52 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 27
  %51 = ptrtoint ptr %of_node52 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %of_node52, align 8
  %clk_freq_hz = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %call.i, i32 0, i32 6
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %52, ptr noundef nonnull @.str.7, ptr noundef %clk_freq_hz, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool54.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool54.not, label %if.end50.if.end61_crit_edge, label %do.end58

if.end50.if.end61_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

do.end58:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.8, i32 noundef 375000) #11
  %55 = ptrtoint ptr %clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 375000, ptr %clk_freq_hz, align 8
  br label %if.end61

if.end61:                                         ; preds = %do.end58, %if.end50.if.end61_crit_edge
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 8
  %of_node63 = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 27
  %58 = ptrtoint ptr %of_node63 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %of_node63, align 8
  %call64 = call i32 @of_device_is_compatible(ptr noundef %59, ptr noundef nonnull @.str.11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  %spec.select169 = select i1 %tobool65.not, i32 4, i32 1
  %60 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %call.i, i32 0, i32 7
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %spec.select169, ptr %60, align 4
  call fastcc void @brcmstb_i2c_set_bsc_reg_defaults(ptr noundef nonnull %call.i)
  %adapter = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %call.i, i32 0, i32 4
  %driver_data.i.i165 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %call.i, i32 0, i32 4, i32 9, i32 8
  %62 = ptrtoint ptr %driver_data.i.i165 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %driver_data.i.i165, align 4
  %63 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %adapter, align 8
  %name69 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %call.i, i32 0, i32 4, i32 12
  %call70 = call i32 @strlcpy(ptr noundef %name69, ptr noundef nonnull @.str.12, i32 noundef 48) #8
  %64 = ptrtoint ptr %int_name to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %int_name, align 4
  %tobool71.not = icmp eq ptr %65, null
  br i1 %tobool71.not, label %if.end61.if.end76_crit_edge, label %if.then72

if.end61.if.end76_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then72:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %call75 = call i32 @strlcat(ptr noundef %name69, ptr noundef nonnull %65, i32 noundef 48) #8
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.end61.if.end76_crit_edge
  %algo = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %call.i, i32 0, i32 4, i32 2
  %66 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @brcmstb_i2c_algo, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %call.i, i32 0, i32 4, i32 9, i32 1
  %67 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %dev1, ptr %parent, align 8
  %of_node80 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %68 = ptrtoint ptr %of_node80 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %of_node80, align 8
  %of_node82 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %call.i, i32 0, i32 4, i32 9, i32 27
  %70 = ptrtoint ptr %of_node82 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %of_node82, align 8
  %call83 = call i32 @i2c_add_adapter(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %do.end89, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end89:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 8
  %73 = ptrtoint ptr %int_name to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %int_name, align 4
  %tobool91.not = icmp eq ptr %74, null
  %spec.select = select i1 %tobool91.not, ptr @.str.17, ptr %74
  %75 = ptrtoint ptr %clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %clk_freq_hz, align 8
  %77 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp98 = icmp sgt i32 %78, -1
  %cond99 = select i1 %cmp98, ptr @.str.18, ptr @.str.19
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %72, ptr noundef nonnull @.str.14, ptr noundef nonnull %spec.select, i32 noundef %76, ptr noundef nonnull %cond99) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end89, %if.end76.cleanup_crit_edge, %bcm2711_release_bsc.exit, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end89 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %23, %bcm2711_release_bsc.exit ], [ %call83, %if.end76.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_name) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %1, i32 0, i32 4
  tail call void @i2c_del_adapter(ptr noundef %adapter) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_i2c_isr(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %devid, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 44
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmstb_i2c_isr.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@brcmstb_i2c_isr, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmstb_i2c_isr.__UNIQUE_ID_ddebug288, ptr noundef %7, ptr noundef nonnull @.str.23, i32 noundef %2, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.end.cleanup_crit_edge, label %if.end13

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %bsc_regmap.i = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %devid, i32 0, i32 3
  %8 = ptrtoint ptr %bsc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bsc_regmap.i, align 4
  %ctl_reg.i = getelementptr inbounds %struct.bsc_regs, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ctl_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctl_reg.i, align 4
  %and.i = and i32 %11, -65
  store i32 %and.i, ptr %ctl_reg.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %bsc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bsc_regmap.i, align 4
  %ctl_reg4.i = getelementptr inbounds %struct.bsc_regs, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ctl_reg4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctl_reg4.i, align 4
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #8, !srcloc !108
  %done = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %devid, i32 0, i32 5
  tail call void @complete(ptr noundef %done) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmstb_i2c_isr.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@brcmstb_i2c_isr, %cleanup)) #8
          to label %if.then28 [label %cleanup], !srcloc !112

if.then28:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %devid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmstb_i2c_isr.__UNIQUE_ID_ddebug289, ptr noundef %19, ptr noundef nonnull @.str.24) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end13, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 1, %if.then28 ], [ 1, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcmstb_i2c_set_bsc_reg_defaults(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data_regsz.i = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %data_regsz.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_regsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  %bsc_regmap = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %bsc_regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsc_regmap, align 4
  %ctlhi_reg = getelementptr inbounds %struct.bsc_regs, ptr %3, i32 0, i32 6
  br i1 %cmp, label %entry.do.body_crit_edge, label %if.else

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %ctlhi_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctlhi_reg, align 4
  %and = and i32 %5, -65
  br label %do.body

do.body:                                          ; preds = %if.else, %entry.do.body_crit_edge
  %.sink = phi i32 [ %and, %if.else ], [ 64, %entry.do.body_crit_edge ]
  %6 = ptrtoint ptr %ctlhi_reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %ctlhi_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %bsc_regmap3 = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %bsc_regmap3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bsc_regmap3, align 4
  %ctlhi_reg4 = getelementptr inbounds %struct.bsc_regs, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %ctlhi_reg4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctlhi_reg4, align 4
  %base = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #8, !srcloc !108
  %clk_freq_hz1.i = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %dev, i32 0, i32 6
  %13 = ptrtoint ptr %clk_freq_hz1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clk_freq_hz1.i, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.then11.i [
    i32 375000, label %do.body.for.end.thread.i_crit_edge
    i32 390000, label %for.end.thread.fold.split.i
    i32 187500, label %for.end.thread.fold.split38.i
    i32 200000, label %for.end.thread.fold.split39.i
    i32 93750, label %for.end.thread.fold.split40.i
    i32 97500, label %for.end.thread.fold.split41.i
    i32 46875, label %for.end.thread.fold.split42.i
    i32 50000, label %for.end.thread.fold.split43.i
  ]

do.body.for.end.thread.i_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.fold.split.i:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.fold.split38.i:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.fold.split39.i:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.fold.split40.i:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.fold.split41.i:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.fold.split42.i:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.fold.split43.i:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.thread.fold.split43.i, %for.end.thread.fold.split42.i, %for.end.thread.fold.split41.i, %for.end.thread.fold.split40.i, %for.end.thread.fold.split39.i, %for.end.thread.fold.split38.i, %for.end.thread.fold.split.i, %do.body.for.end.thread.i_crit_edge
  %i.036.lcssa.i = phi i32 [ 0, %do.body.for.end.thread.i_crit_edge ], [ 1, %for.end.thread.fold.split.i ], [ 2, %for.end.thread.fold.split38.i ], [ 3, %for.end.thread.fold.split39.i ], [ 4, %for.end.thread.fold.split40.i ], [ 5, %for.end.thread.fold.split41.i ], [ 6, %for.end.thread.fold.split42.i ], [ 7, %for.end.thread.fold.split43.i ]
  %16 = ptrtoint ptr %bsc_regmap3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bsc_regmap3, align 4
  %ctl_reg.i = getelementptr inbounds %struct.bsc_regs, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %ctl_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctl_reg.i, align 4
  %and.i = and i32 %19, -177
  store i32 %and.i, ptr %ctl_reg.i, align 4
  %scl_mask.i = getelementptr [8 x %struct.bsc_clk_param], ptr @bsc_clk, i32 0, i32 %i.036.lcssa.i, i32 1
  %20 = ptrtoint ptr %scl_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scl_mask.i, align 4
  %div_mask.i = getelementptr [8 x %struct.bsc_clk_param], ptr @bsc_clk, i32 0, i32 %i.036.lcssa.i, i32 2
  %22 = ptrtoint ptr %div_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %div_mask.i, align 4
  %or.i = or i32 %23, %21
  %24 = load ptr, ptr %bsc_regmap3, align 4
  %ctl_reg6.i = getelementptr inbounds %struct.bsc_regs, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %ctl_reg6.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctl_reg6.i, align 4
  %or7.i = or i32 %or.i, %26
  store i32 %or7.i, ptr %ctl_reg6.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %bsc_regmap3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bsc_regmap3, align 4
  %ctl_reg9.i = getelementptr inbounds %struct.bsc_regs, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %ctl_reg9.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ctl_reg9.i, align 4
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %30) #8, !srcloc !108
  br label %brcmstb_i2c_set_bus_speed.exit

if.then11.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr13.i = getelementptr i8, ptr %34, i32 40
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #8, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  %and14.i = lshr i32 %35, 4
  %shr.i = and i32 %and14.i, 3
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %arrayidx18.i = getelementptr [8 x %struct.bsc_clk_param], ptr @bsc_clk, i32 0, i32 %shr.i
  %38 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx18.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.25, i32 noundef %39) #11
  br label %brcmstb_i2c_set_bus_speed.exit

brcmstb_i2c_set_bus_speed.exit:                   ; preds = %if.then11.i, %for.end.thread.i
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_i2c_xfer(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data_regsz.i = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data_regsz.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_regsz.i, align 4
  %mul.i = shl i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp147 = icmp sgt i32 %num, 0
  br i1 %cmp147, label %for.body.lr.ph, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %num, -1
  %bsc_regmap.i = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %1, i32 0, i32 3
  %base.i = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0148 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0148
  %len2 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0148, i32 2
  %4 = ptrtoint ptr %len2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len2, align 4
  %conv = zext i16 %5 to i32
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0148, i32 3
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmstb_i2c_xfer.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@brcmstb_i2c_xfer, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !112

if.then:                                          ; preds = %for.body
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0148, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 2
  %conv7 = zext i16 %11 to i32
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv12 = zext i8 %15 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond13 = phi i32 [ %conv12, %cond.true ], [ 48, %if.then.cond.end_crit_edge ]
  %16 = ptrtoint ptr %len2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %len2, align 4
  %conv15 = zext i16 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmstb_i2c_xfer.__UNIQUE_ID_ddebug293, ptr noundef %9, ptr noundef nonnull @.str.28, i32 noundef %i.0148, i32 noundef %sub, i32 noundef %conv7, i32 noundef %cond13, i32 noundef %conv15) #8
  br label %do.end

do.end:                                           ; preds = %cond.end, %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0148, i32 %sub)
  %cmp17 = icmp slt i32 %i.0148, %sub
  br i1 %cmp17, label %land.lhs.true, label %do.end.if.else_crit_edge

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %do.end
  %add = add nuw nsw i32 %i.0148, 1
  %flags20 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 1
  %18 = ptrtoint ptr %flags20 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags20, align 2
  %20 = and i16 %19, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool22.not = icmp eq i16 %20, 0
  br i1 %tobool22.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end.if.else_crit_edge
  br label %if.end24

if.end24:                                         ; preds = %if.else, %land.lhs.true.if.end24_crit_edge
  %cond.0 = phi i32 [ 80, %if.else ], [ -113, %land.lhs.true.if.end24_crit_edge ]
  %21 = ptrtoint ptr %bsc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bsc_regmap.i, align 4
  %iic_enable.i = getelementptr inbounds %struct.bsc_regs, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %iic_enable.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iic_enable.i, align 4
  %and.i = and i32 %24, -113
  %or.i = or i32 %and.i, %cond.0
  store i32 %or.i, ptr %iic_enable.i, align 4
  %flags25 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0148, i32 1
  %25 = ptrtoint ptr %flags25 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags25, align 2
  %27 = and i16 %26, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool28.not = icmp eq i16 %27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end24.if.end55_crit_edge

if.end24.if.end55_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then29:                                        ; preds = %if.end24
  %28 = ptrtoint ptr %flags25 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags25, align 2
  %30 = and i16 %29, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i = icmp eq i16 %30, 0
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then29
  %33 = lshr i16 %32, 7
  %34 = and i16 %33, 6
  %35 = or i16 %34, 240
  %conv4.i = zext i16 %35 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %conv4.i) #8, !srcloc !108
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %42 = and i16 %39, 255
  %conv.i.i = zext i16 %42 to i32
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %44, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %conv.i.i) #8, !srcloc !108
  %call.i.i = tail call fastcc i32 @brcmstb_send_i2c_cmd(ptr noundef %1, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.i.do.body34_crit_edge, label %if.end.i

if.then.i.do.body34_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

if.end.i:                                         ; preds = %if.then.i
  %45 = ptrtoint ptr %flags25 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %flags25, align 2
  %47 = and i16 %46, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool15.not.i = icmp eq i16 %47, 0
  br i1 %tobool15.not.i, label %if.end.i.if.end55_crit_edge, label %if.then16.i

if.end.i.if.end55_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then16.i:                                      ; preds = %if.end.i
  %48 = ptrtoint ptr %bsc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bsc_regmap.i, align 4
  %iic_enable.i.i = getelementptr inbounds %struct.bsc_regs, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %iic_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %iic_enable.i.i, align 4
  %and.i.i = and i32 %51, -113
  %or.i.i = or i32 %and.i.i, 80
  store i32 %or.i.i, ptr %iic_enable.i.i, align 4
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx, align 4
  %54 = lshr i16 %53, 7
  %55 = and i16 %54, 6
  %56 = or i16 %55, 241
  %conv23.i = zext i16 %56 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %58, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48.i, i32 1) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 4
  %add.ptr5.i50.i = getelementptr i8, ptr %60, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i50.i, i32 %conv23.i) #8, !srcloc !108
  %call.i51.i = tail call fastcc i32 @brcmstb_send_i2c_cmd(ptr noundef %1, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %cmp25.i = icmp slt i32 %call.i51.i, 0
  br i1 %cmp25.i, label %if.then16.i.do.body34_crit_edge, label %if.then16.i.if.end55_crit_edge

if.then16.i.if.end55_crit_edge:                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then16.i.do.body34_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

if.else.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i52.i = zext i16 %32 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i52.i, 1
  %61 = and i16 %29, 1
  %62 = zext i16 %61 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %shl.i.masked.i = and i32 %shl.i.i, 254
  %conv34.i = or i32 %shl.i.masked.i, %62
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %conv34.i) #8, !srcloc !108
  br label %if.end55

do.body34:                                        ; preds = %if.then16.i.do.body34_crit_edge, %if.then.i.do.body34_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmstb_i2c_xfer.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@brcmstb_i2c_xfer, %out)) #8
          to label %if.then48 [label %out], !srcloc !112

if.then48:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 8
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx, align 4
  %conv50 = zext i16 %68 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmstb_i2c_xfer.__UNIQUE_ID_ddebug294, ptr noundef %66, ptr noundef nonnull @.str.29, i32 noundef %conv50, i32 noundef %i.0148, i32 noundef -121) #8
  br label %out

if.end55:                                         ; preds = %if.else.i, %if.then16.i.if.end55_crit_edge, %if.end.i.if.end55_crit_edge, %if.end24.if.end55_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool56.not143 = icmp eq i16 %5, 0
  br i1 %tobool56.not143, label %if.end55.for.inc_crit_edge, label %while.body.lr.ph

if.end55.for.inc_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.body.lr.ph:                                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0148, i32 %sub)
  %cmp68 = icmp eq i32 %i.0148, %sub
  br label %while.body

while.body:                                       ; preds = %if.end81.while.body_crit_edge, %while.body.lr.ph
  %cond_per_msg.0146 = phi i32 [ %cond.0, %while.body.lr.ph ], [ 48, %if.end81.while.body_crit_edge ]
  %len.0145 = phi i32 [ %conv, %while.body.lr.ph ], [ %sub82, %if.end81.while.body_crit_edge ]
  %tmp_buf.0144 = phi ptr [ %7, %while.body.lr.ph ], [ %add.ptr, %if.end81.while.body_crit_edge ]
  %69 = tail call i32 @llvm.smin.i32(i32 %len.0145, i32 %mul.i)
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0145, i32 %mul.i)
  %cmp64.not = icmp sgt i32 %len.0145, %mul.i
  %and75 = and i32 %cond_per_msg.0146, -81
  %or = or i32 %and75, 16
  %spec.select = select i1 %cmp68, i32 %and75, i32 %cond.0
  %cond_per_msg.1 = select i1 %cmp64.not, i32 %or, i32 %spec.select
  %70 = ptrtoint ptr %bsc_regmap.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bsc_regmap.i, align 4
  %iic_enable.i131 = getelementptr inbounds %struct.bsc_regs, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %iic_enable.i131 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %iic_enable.i131, align 4
  %and.i132 = and i32 %73, -113
  %or.i133 = or i32 %and.i132, %cond_per_msg.1
  store i32 %or.i133, ptr %iic_enable.i131, align 4
  %call77 = tail call fastcc i32 @brcmstb_i2c_xfer_bsc_data(ptr noundef %1, ptr noundef %tmp_buf.0144, i32 noundef %69, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %while.body.out_crit_edge, label %if.end81

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end81:                                         ; preds = %while.body
  %sub82 = sub i32 %len.0145, %69
  %add.ptr = getelementptr i8, ptr %tmp_buf.0144, i32 %69
  %tobool56.not = icmp eq i32 %sub82, 0
  br i1 %tobool56.not, label %if.end81.for.inc_crit_edge, label %if.end81.while.body_crit_edge

if.end81.while.body_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end81.for.inc_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.end81.for.inc_crit_edge, %if.end55.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0148, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %while.body.out_crit_edge, %if.then48, %do.body34, %entry.out_crit_edge
  %rc.0 = phi i32 [ -121, %if.then48 ], [ -121, %do.body34 ], [ %num, %entry.out_crit_edge ], [ %call77, %while.body.out_crit_edge ], [ %num, %for.inc.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brcmstb_i2c_functionality(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592735
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmstb_i2c_xfer_bsc_data(ptr noundef %dev, ptr nocapture noundef %buf, i32 noundef %len, ptr nocapture noundef readonly %pmsg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bsc_regmap = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bsc_regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsc_regmap, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %pmsg, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 4096
  %data_regsz.i = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %dev, i32 0, i32 7
  %5 = ptrtoint ptr %data_regsz.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_regsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  %7 = and i16 %3, 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not = icmp eq i16 %7, 0
  %ctlhi_reg = getelementptr inbounds %struct.bsc_regs, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %ctlhi_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctlhi_reg, align 4
  %or = or i32 %9, 2
  store i32 %or, ptr %ctlhi_reg, align 4
  %spec.select = select i1 %tobool4.not, i32 2, i32 3
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = zext i16 %7 to i32
  %ctlhi_reg10 = getelementptr inbounds %struct.bsc_regs, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %ctlhi_reg10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctlhi_reg10, align 4
  %and11 = and i32 %12, -3
  store i32 %and11, ptr %ctlhi_reg10, align 4
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %cmd.0 = phi i32 [ %10, %if.else ], [ %spec.select, %if.then ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @arm_heavy_mb() #8
  %ctlhi_reg12 = getelementptr inbounds %struct.bsc_regs, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %ctlhi_reg12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctlhi_reg12, align 4
  %base = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %dev, i32 0, i32 1
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #8, !srcloc !108
  %ctl_reg13 = getelementptr inbounds %struct.bsc_regs, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %ctl_reg13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ctl_reg13, align 4
  %and14 = and i32 %18, -4
  %19 = and i32 %cmd.0, 65533
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp ne i32 %19, 0
  %or22 = zext i1 %20 to i32
  %storemerge = or i32 %and14, %or22
  %21 = ptrtoint ptr %ctl_reg13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %ctl_reg13, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp28 = icmp eq i32 %6, 1
  %cond30 = select i1 %cmp28, i32 15, i32 63
  %and31 = and i32 %cond30, %len
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr33 = getelementptr i8, ptr %23, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %and31) #8, !srcloc !108
  %trunc = trunc i32 %cmd.0 to i16
  %24 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %trunc, label %do.body.if.end63_crit_edge [
    i16 2, label %do.body.for.cond.preheader_crit_edge
    i16 0, label %do.body.for.cond.preheader_crit_edge193
  ]

do.body.for.cond.preheader_crit_edge193:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

do.body.for.cond.preheader_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

do.body.if.end63_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

for.cond.preheader:                               ; preds = %do.body.for.cond.preheader_crit_edge, %do.body.for.cond.preheader_crit_edge193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp40181.not = icmp eq i32 %len, 0
  br i1 %cmp40181.not, label %for.cond.preheader.if.end63_crit_edge, label %for.cond42.preheader.lr.ph

for.cond.preheader.if.end63_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

for.cond42.preheader.lr.ph:                       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp43178 = icmp sgt i32 %6, 0
  %sub = shl i32 %6, 3
  %mul = add i32 %sub, -8
  br label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %do.body54.for.cond42.preheader_crit_edge, %for.cond42.preheader.lr.ph
  %cnt.0183 = phi i32 [ 0, %for.cond42.preheader.lr.ph ], [ %add60, %do.body54.for.cond42.preheader_crit_edge ]
  %i.0182 = phi i32 [ 0, %for.cond42.preheader.lr.ph ], [ %inc61, %do.body54.for.cond42.preheader_crit_edge ]
  br i1 %cmp43178, label %for.cond42.preheader.for.body45_crit_edge, label %for.cond42.preheader.do.body54_crit_edge

for.cond42.preheader.do.body54_crit_edge:         ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

for.cond42.preheader.for.body45_crit_edge:        ; preds = %for.cond42.preheader
  br label %for.body45

for.body45:                                       ; preds = %for.inc.for.body45_crit_edge, %for.cond42.preheader.for.body45_crit_edge
  %byte.0180 = phi i32 [ %inc, %for.inc.for.body45_crit_edge ], [ 0, %for.cond42.preheader.for.body45_crit_edge ]
  %word.0179 = phi i32 [ %word.1, %for.inc.for.body45_crit_edge ], [ 0, %for.cond42.preheader.for.body45_crit_edge ]
  %shr = lshr i32 %word.0179, 8
  %add = add i32 %byte.0180, %cnt.0183
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp46 = icmp ult i32 %add, %len
  br i1 %cmp46, label %if.then48, label %for.body45.for.inc_crit_edge

for.body45.for.inc_crit_edge:                     ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then48:                                        ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %buf, i32 %add
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %conv50 = zext i8 %26 to i32
  %shl51 = shl i32 %conv50, %mul
  %or52 = or i32 %shl51, %shr
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %for.body45.for.inc_crit_edge
  %word.1 = phi i32 [ %or52, %if.then48 ], [ %shr, %for.body45.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %byte.0180, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.inc.do.body54_crit_edge, label %for.inc.for.body45_crit_edge

for.inc.for.body45_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body45

for.inc.do.body54_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

do.body54:                                        ; preds = %for.inc.do.body54_crit_edge, %for.cond42.preheader.do.body54_crit_edge
  %word.0.lcssa = phi i32 [ 0, %for.cond42.preheader.do.body54_crit_edge ], [ %word.1, %for.inc.do.body54_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %29 = shl i32 %i.0182, 2
  %30 = add i32 %29, 4
  %add.ptr58 = getelementptr i8, ptr %28, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %word.0.lcssa) #8, !srcloc !108
  %add60 = add i32 %cnt.0183, %6
  %inc61 = add i32 %i.0182, 1
  %cmp40 = icmp ult i32 %add60, %len
  br i1 %cmp40, label %do.body54.for.cond42.preheader_crit_edge, label %do.body54.if.end63_crit_edge

do.body54.if.end63_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

do.body54.for.cond42.preheader_crit_edge:         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond42.preheader

if.end63:                                         ; preds = %do.body54.if.end63_crit_edge, %for.cond.preheader.if.end63_crit_edge, %do.body.if.end63_crit_edge
  %call64 = tail call fastcc i32 @brcmstb_send_i2c_cmd(ptr noundef %dev, i32 noundef %cmd.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65.not = icmp eq i32 %call64, 0
  br i1 %cmp65.not, label %if.end79, label %do.body68

do.body68:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmstb_i2c_xfer_bsc_data.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@brcmstb_i2c_xfer_bsc_data, %cleanup)) #8
          to label %if.then74 [label %cleanup], !srcloc !112

if.then74:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  %arrayidx75 = getelementptr [4 x ptr], ptr @cmd_string, i32 0, i32 %cmd.0
  %33 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx75, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmstb_i2c_xfer_bsc_data.__UNIQUE_ID_ddebug292, ptr noundef %32, ptr noundef nonnull @.str.38, ptr noundef %34) #8
  br label %cleanup

if.end79:                                         ; preds = %if.end63
  %35 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %trunc, label %if.end79.cleanup_crit_edge [
    i16 1, label %if.end79.if.then85_crit_edge
    i16 3, label %if.end79.if.then85_crit_edge194
  ]

if.end79.if.then85_crit_edge194:                  ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85

if.end79.if.then85_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then85:                                        ; preds = %if.end79.if.then85_crit_edge, %if.end79.if.then85_crit_edge194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp87188.not = icmp eq i32 %len, 0
  br i1 %cmp87188.not, label %if.then85.cleanup_crit_edge, label %for.body89.lr.ph

if.then85.cleanup_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body89.lr.ph:                                 ; preds = %if.then85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp95185 = icmp sgt i32 %6, 0
  br label %for.body89

for.body89:                                       ; preds = %for.end108.for.body89_crit_edge, %for.body89.lr.ph
  %cnt.1190 = phi i32 [ 0, %for.body89.lr.ph ], [ %add110, %for.end108.for.body89_crit_edge ]
  %i.1189 = phi i32 [ 0, %for.body89.lr.ph ], [ %inc111, %for.end108.for.body89_crit_edge ]
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %38 = shl i32 %i.1189, 2
  %39 = add i32 %38, 48
  %add.ptr91 = getelementptr i8, ptr %37, i32 %39
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #8, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  br i1 %cmp95185, label %for.body89.land.rhs_crit_edge, label %for.body89.for.end108_crit_edge

for.body89.for.end108_crit_edge:                  ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end108

for.body89.land.rhs_crit_edge:                    ; preds = %for.body89
  br label %land.rhs

land.rhs:                                         ; preds = %for.body100.land.rhs_crit_edge, %for.body89.land.rhs_crit_edge
  %data.0187 = phi i32 [ %shr105, %for.body100.land.rhs_crit_edge ], [ %40, %for.body89.land.rhs_crit_edge ]
  %byte.1186 = phi i32 [ %inc107, %for.body100.land.rhs_crit_edge ], [ 0, %for.body89.land.rhs_crit_edge ]
  %add97 = add nuw i32 %byte.1186, %cnt.1190
  call void @__sanitizer_cov_trace_cmp4(i32 %add97, i32 %len)
  %cmp98 = icmp ult i32 %add97, %len
  br i1 %cmp98, label %for.body100, label %land.rhs.for.end108_crit_edge

land.rhs.for.end108_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end108

for.body100:                                      ; preds = %land.rhs
  %conv102 = trunc i32 %data.0187 to i8
  %arrayidx104 = getelementptr i8, ptr %buf, i32 %add97
  %41 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv102, ptr %arrayidx104, align 1
  %shr105 = lshr i32 %data.0187, 8
  %inc107 = add nuw nsw i32 %byte.1186, 1
  %exitcond192.not = icmp eq i32 %inc107, %6
  br i1 %exitcond192.not, label %for.body100.for.end108_crit_edge, label %for.body100.land.rhs_crit_edge

for.body100.land.rhs_crit_edge:                   ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.body100.for.end108_crit_edge:                 ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end108

for.end108:                                       ; preds = %for.body100.for.end108_crit_edge, %land.rhs.for.end108_crit_edge, %for.body89.for.end108_crit_edge
  %add110 = add i32 %cnt.1190, %6
  %inc111 = add i32 %i.1189, 1
  %cmp87 = icmp ult i32 %add110, %len
  br i1 %cmp87, label %for.end108.for.body89_crit_edge, label %for.end108.cleanup_crit_edge

for.end108.cleanup_crit_edge:                     ; preds = %for.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end108.for.body89_crit_edge:                  ; preds = %for.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body89

cleanup:                                          ; preds = %for.end108.cleanup_crit_edge, %if.then85.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.then74, %do.body68
  %retval.0 = phi i32 [ %call64, %if.then74 ], [ 0, %if.end79.cleanup_crit_edge ], [ %call64, %do.body68 ], [ 0, %if.then85.cleanup_crit_edge ], [ 0, %for.end108.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmstb_send_i2c_cmd(ptr noundef %dev, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bsc_regmap = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %bsc_regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsc_regmap, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %2, 10
  %base.i = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %4, i32 44
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  %and9.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not10.i = icmp eq i32 %and9.i, 0
  br i1 %tobool.not10.i, label %entry.if.end_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body.i:                                     ; preds = %do.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i.cleanup_crit_edge, label %do.end.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %while.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !129
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 44
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  %and.i = and i32 %9, 2
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.if.end_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %dev, i32 0, i32 2
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp1 = icmp sgt i32 %11, -1
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %done = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %dev, i32 0, i32 5
  %12 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %done, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %13 = ptrtoint ptr %bsc_regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bsc_regmap, align 4
  %ctl_reg.i = getelementptr inbounds %struct.bsc_regs, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ctl_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctl_reg.i, align 4
  %and.sink.i = or i32 %16, 64
  store i32 %and.sink.i, ptr %ctl_reg.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %bsc_regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bsc_regmap, align 4
  %ctl_reg4.i = getelementptr inbounds %struct.bsc_regs, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %ctl_reg4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctl_reg4.i, align 4
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %22, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %20) #8, !srcloc !108
  %iic_enable = getelementptr inbounds %struct.bsc_regs, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %iic_enable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iic_enable, align 4
  %or = or i32 %24, 1
  store i32 %or, ptr %iic_enable, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %iic_enable to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iic_enable, align 4
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %26) #8, !srcloc !108
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp.i83 = icmp sgt i32 %30, -1
  br i1 %cmp.i83, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %done.i = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %dev, i32 0, i32 5
  %call1.i = tail call i32 @wait_for_completion_timeout(ptr noundef %done.i, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i84 = icmp eq i32 %call1.i, 0
  %spec.select.i = select i1 %tobool.not.i84, i32 -110, i32 0
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add.i85 = add i32 %31, 10
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i90.do.body.i_crit_edge, %if.else.i
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %33, i32 44
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #8, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub.i88 = sub i32 %add.i85, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i88)
  %cmp4.i = icmp slt i32 %sub.i88, 0
  br i1 %cmp4.i, label %do.body.i.if.then21.i_crit_edge, label %do.end.i90

do.body.i.if.then21.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.i

do.end.i90:                                       ; preds = %do.body.i
  %and.i89 = and i32 %34, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !133
  %tobool15.not.i = icmp eq i32 %and.i89, 0
  br i1 %tobool15.not.i, label %do.end.i90.do.body.i_crit_edge, label %do.end.i90.if.end17.i_crit_edge

do.end.i90.if.end17.i_crit_edge:                  ; preds = %do.end.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

do.end.i90.do.body.i_crit_edge:                   ; preds = %do.end.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end17.i:                                       ; preds = %do.end.i90.if.end17.i_crit_edge, %if.then.i
  %ret.1.i = phi i32 [ %spec.select.i, %if.then.i ], [ 0, %do.end.i90.if.end17.i_crit_edge ]
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp19.i = icmp slt i32 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %ret.1.i)
  %cmp20.i = icmp eq i32 %ret.1.i, -110
  %or.cond.i = select i1 %cmp19.i, i1 true, i1 %cmp20.i
  br i1 %or.cond.i, label %if.end17.i.if.then21.i_crit_edge, label %if.end17.i.brcmstb_i2c_wait_for_completion.exit_crit_edge

if.end17.i.brcmstb_i2c_wait_for_completion.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcmstb_i2c_wait_for_completion.exit

if.end17.i.if.then21.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.i

if.then21.i:                                      ; preds = %if.end17.i.if.then21.i_crit_edge, %do.body.i.if.then21.i_crit_edge
  %ret.134.i = phi i32 [ %ret.1.i, %if.end17.i.if.then21.i_crit_edge ], [ -110, %do.body.i.if.then21.i_crit_edge ]
  %38 = ptrtoint ptr %bsc_regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bsc_regmap, align 4
  %ctl_reg.i.i = getelementptr inbounds %struct.bsc_regs, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %ctl_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ctl_reg.i.i, align 4
  %and.i.i = and i32 %41, -65
  store i32 %and.i.i, ptr %ctl_reg.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %bsc_regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bsc_regmap, align 4
  %ctl_reg4.i.i = getelementptr inbounds %struct.bsc_regs, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %ctl_reg4.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ctl_reg4.i.i, align 4
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %45) #8, !srcloc !108
  br label %brcmstb_i2c_wait_for_completion.exit

brcmstb_i2c_wait_for_completion.exit:             ; preds = %if.then21.i, %if.end17.i.brcmstb_i2c_wait_for_completion.exit_crit_edge
  %ret.133.i = phi i32 [ %ret.1.i, %if.end17.i.brcmstb_i2c_wait_for_completion.exit_crit_edge ], [ %ret.134.i, %if.then21.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.133.i)
  %tobool.not = icmp eq i32 %ret.133.i, 0
  br i1 %tobool.not, label %if.end17, label %do.body7

do.body7:                                         ; preds = %brcmstb_i2c_wait_for_completion.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmstb_send_i2c_cmd.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@brcmstb_send_i2c_cmd, %do.body47)) #8
          to label %if.then13 [label %do.body47], !srcloc !112

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 8
  %arrayidx = getelementptr [4 x ptr], ptr @cmd_string, i32 0, i32 %cmd
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmstb_send_i2c_cmd.__UNIQUE_ID_ddebug290, ptr noundef %49, ptr noundef nonnull @.str.31, ptr noundef %51) #8
  br label %do.body47

if.end17:                                         ; preds = %brcmstb_i2c_wait_for_completion.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd)
  %switch = icmp ult i32 %cmd, 2
  br i1 %switch, label %land.lhs.true, label %if.end17.do.body47_crit_edge

if.end17.do.body47_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

land.lhs.true:                                    ; preds = %if.end17
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr21 = getelementptr i8, ptr %53, i32 44
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #8, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %and = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %land.lhs.true.do.body47_crit_edge, label %if.then25

land.lhs.true.do.body47_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body47

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcmstb_send_i2c_cmd.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@brcmstb_send_i2c_cmd, %do.body47)) #8
          to label %if.then40 [label %do.body47], !srcloc !112

if.then40:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 8
  %arrayidx42 = getelementptr [4 x ptr], ptr @cmd_string, i32 0, i32 %cmd
  %57 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcmstb_send_i2c_cmd.__UNIQUE_ID_ddebug291, ptr noundef %56, ptr noundef nonnull @.str.32, ptr noundef %58) #8
  br label %do.body47

do.body47:                                        ; preds = %if.then40, %if.then25, %land.lhs.true.do.body47_crit_edge, %if.end17.do.body47_crit_edge, %if.then13, %do.body7
  %rc.0 = phi i32 [ %ret.133.i, %if.then13 ], [ -121, %if.then40 ], [ 0, %land.lhs.true.do.body47_crit_edge ], [ 0, %if.end17.do.body47_crit_edge ], [ %ret.133.i, %do.body7 ], [ -121, %if.then25 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 4
  %add.ptr51 = getelementptr i8, ptr %60, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 0) #8, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i, align 4
  %add.ptr56 = getelementptr i8, ptr %62, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 0) #8, !srcloc !108
  br label %cleanup

cleanup:                                          ; preds = %do.body47, %while.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %do.body47 ], [ -110, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_i2c_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %adapter = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %1, i32 0, i32 4
  %lock_ops.i.i = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %1, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock_ops.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %adapter, i32 noundef 1) #8
  %locked_flags.i = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %1, i32 0, i32 4, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %locked_flags.i) #8
  %6 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %9(ptr noundef %adapter, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_i2c_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @brcmstb_i2c_set_bsc_reg_defaults(ptr noundef %1)
  %adapter = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %1, i32 0, i32 4
  %lock_ops.i.i = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %1, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock_ops.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %adapter, i32 noundef 1) #8
  %locked_flags.i = getelementptr inbounds %struct.brcmstb_i2c_dev, ptr %1, i32 0, i32 4, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %locked_flags.i) #8
  %6 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %9(ptr noundef %adapter, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !47, !49, !51, !52, !53, !55, !56, !58, !60, !61, !62, !63, !65, !67, !68, !69, !71, !72, !74, !75, !76, !78, !79, !81, !83, !85, !87, !89, !91, !92, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_i2c_brcmstb__298_755_brcmstb_i2c_driver_init6, !1, !"__initcall__kmod_i2c_brcmstb__298_755_brcmstb_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 755, i32 1}
!2 = !{ptr @__exitcall_brcmstb_i2c_driver_exit, !1, !"__exitcall_brcmstb_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author299, !4, !"__UNIQUE_ID_author299", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 757, i32 1}
!5 = !{ptr @__UNIQUE_ID_description300, !6, !"__UNIQUE_ID_description300", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 758, i32 1}
!7 = !{ptr @__UNIQUE_ID_file301, !8, !"__UNIQUE_ID_file301", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 759, i32 1}
!9 = !{ptr @__UNIQUE_ID_license302, !8, !"__UNIQUE_ID_license302", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 748, i32 14}
!12 = !{ptr @brcmstb_i2c_driver, !13, !"brcmstb_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 746, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 637, i32 9}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 643, i32 53}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 662, i32 4}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @brcmstb_i2c_probe.__UNIQUE_ID_ddebug297, !19, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 668, i32 6}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 669, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @brcmstb_i2c_probe._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @brcmstb_i2c_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 676, i32 9}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 687, i32 22}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 697, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @brcmstb_i2c_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @brcmstb_i2c_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @init_completion.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../include/linux/completion.h", i32 87, i32 2}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 592, i32 61}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 221, i32 2}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @brcmstb_i2c_isr.__UNIQUE_ID_ddebug288, !50, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 230, i32 2}
!55 = !{ptr @brcmstb_i2c_isr.__UNIQUE_ID_ddebug289, !54, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!56 = !{ptr @bsc_clk, !57, !"bsc_clk", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 121, i32 35}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 564, i32 3}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @brcmstb_i2c_set_bus_speed._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @brcmstb_i2c_set_bus_speed._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @brcmstb_i2c_algo, !64, !"brcmstb_i2c_algo", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 539, i32 35}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 473, i32 3}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @brcmstb_i2c_xfer.__UNIQUE_ID_ddebug293, !66, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 489, i32 5}
!71 = !{ptr @brcmstb_i2c_xfer.__UNIQUE_ID_ddebug294, !70, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 313, i32 3}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @brcmstb_send_i2c_cmd.__UNIQUE_ID_ddebug290, !73, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 321, i32 3}
!78 = !{ptr @brcmstb_send_i2c_cmd.__UNIQUE_ID_ddebug291, !77, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 104, i32 13}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 105, i32 13}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 106, i32 19}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 107, i32 19}
!87 = !{ptr @cmd_string, !88, !"cmd_string", i1 false, i1 false}
!88 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 103, i32 20}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 386, i32 3}
!91 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @brcmstb_i2c_xfer_bsc_data.__UNIQUE_ID_ddebug292, !90, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!93 = !{ptr @brcmstb_i2c_of_match, !94, !"brcmstb_i2c_of_match", i1 false, i1 false}
!94 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 738, i32 34}
!95 = !{ptr @brcmstb_i2c_pm, !96, !"brcmstb_i2c_pm", i1 false, i1 false}
!96 = !{!"../drivers/i2c/busses/i2c-brcmstb.c", i32 735, i32 8}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"auto-init"}
!107 = !{i64 2155620847}
!108 = !{i64 6880288}
!109 = !{i64 2155621740}
!110 = !{i64 2155579150}
!111 = !{i64 2155579728}
!112 = !{i64 2148739706, i64 2148739711, i64 2148739724, i64 2148739768, i64 2148739802, i64 2148739823}
!113 = !{i64 6880706}
!114 = !{i64 2155580450}
!115 = !{i64 2155581109}
!116 = !{i64 2155619059}
!117 = !{i64 2155615882}
!118 = !{i64 2155616604}
!119 = !{i64 2155606526}
!120 = !{i64 2155605247}
!121 = !{i64 2155605869}
!122 = !{i64 2155607260}
!123 = !{i64 2155596619}
!124 = !{i64 2155600490}
!125 = !{i64 2155601742}
!126 = !{i64 2155604690}
!127 = !{i64 2155586386}
!128 = !{i64 2155587022}
!129 = !{i64 2155586864}
!130 = !{i64 2155589129}
!131 = !{i64 2155587689}
!132 = !{i64 2155588331}
!133 = !{i64 2155588173}
!134 = !{i64 2155592221}
!135 = !{i64 2155595274}
!136 = !{i64 2155595902}
