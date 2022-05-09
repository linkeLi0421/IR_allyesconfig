; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-st.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-st.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.st_i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.st_i2c_dev = type { %struct.i2c_adapter, ptr, ptr, %struct.completion, i32, ptr, i32, i32, i32, %struct.st_i2c_client, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.st_i2c_client = type { i8, i32, i32, ptr, i32, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_st__290_910_st_i2c_driver_init6 = internal global ptr @st_i2c_driver_init, section ".initcall6.init", align 4
@st_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @st_i2c_probe, ptr @st_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_i2c_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_st_i2c_driver_exit = internal global ptr @st_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [55 x i8] c"i2c_st.author=Maxime Coquelin <maxime.coquelin@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [49 x i8] c"i2c_st.description=STMicroelectronics I2C driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [38 x i8] c"i2c_st.file=drivers/i2c/busses/i2c-st\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"i2c_st.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"st-i2c\00", [25 x i8] zeroinitializer }, align 32
@st_i2c_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,comms-ssc-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,comms-ssc4-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@st_i2c_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @st_i2c_suspend, ptr @st_i2c_resume, ptr @st_i2c_suspend, ptr @st_i2c_resume, ptr @st_i2c_suspend, ptr @st_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@st_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 827, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IRQ missing or invalid\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st_i2c_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/i2c/busses/i2c-st.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_i2c_probe._entry_ptr = internal global ptr @st_i2c_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ssc\00", [28 x i8] zeroinitializer }, align 32
@st_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 833, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to request clock\0A\00", [39 x i8] zeroinitializer }, align 32
@st_i2c_probe._entry_ptr.9 = internal global ptr @st_i2c_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@st_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 848, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to request irq %i\0A\00", [38 x i8] zeroinitializer }, align 32
@st_i2c_probe._entry_ptr.13 = internal global ptr @st_i2c_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ST I2C(%pa)\00", [20 x i8] zeroinitializer }, align 32
@st_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @st_i2c_xfer, ptr null, ptr null, ptr null, ptr @st_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@st_i2c_recovery_info = internal global { %struct.i2c_bus_recovery_info, [44 x i8] } { %struct.i2c_bus_recovery_info { ptr @st_i2c_recover_bus, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@st_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 879, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s initialized\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@st_i2c_probe._entry_ptr.18 = internal global ptr @st_i2c_probe._entry.15, section ".printk_index", align 4
@st_i2c_isr_thread.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 -112, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2c_st\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"st_i2c_isr_thread\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"spurious it (sta=0x%04x, ien=0x%04x)\0A\00", [58 x i8] zeroinitializer }, align 32
@st_i2c_isr_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 625, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"it %d unhandled (sta=0x%04x)\0A\00", [34 x i8] zeroinitializer }, align 32
@st_i2c_isr_thread._entry_ptr = internal global ptr @st_i2c_isr_thread._entry, section ".printk_index", align 4
@st_i2c_read_rx_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 484, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unexpected %d bytes in rx fifo\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"st_i2c_read_rx_fifo\00", [44 x i8] zeroinitializer }, align 32
@st_i2c_read_rx_fifo._entry_ptr = internal global ptr @st_i2c_read_rx_fifo._entry, section ".printk_index", align 4
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"st,i2c-min-scl-pulse-width-us\00", [34 x i8] zeroinitializer }, align 32
@st_i2c_of_get_deglitch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 793, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"st,i2c-min-scl-pulse-width-us invalid\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"st_i2c_of_get_deglitch\00", [41 x i8] zeroinitializer }, align 32
@st_i2c_of_get_deglitch._entry_ptr = internal global ptr @st_i2c_of_get_deglitch._entry, section ".printk_index", align 4
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"st,i2c-min-sda-pulse-width-us\00", [34 x i8] zeroinitializer }, align 32
@st_i2c_of_get_deglitch._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.3, i32 800, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"st,i2c-min-sda-pulse-width-us invalid\0A\00", [57 x i8] zeroinitializer }, align 32
@st_i2c_of_get_deglitch._entry_ptr.31 = internal global ptr @st_i2c_of_get_deglitch._entry.29, section ".printk_index", align 4
@st_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 723, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to prepare_enable clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st_i2c_xfer\00", [20 x i8] zeroinitializer }, align 32
@st_i2c_xfer._entry_ptr = internal global ptr @st_i2c_xfer._entry, section ".printk_index", align 4
@i2c_timings = internal constant { [2 x %struct.st_i2c_timings], [32 x i8] } { [2 x %struct.st_i2c_timings] [%struct.st_i2c_timings { i32 100000, i32 4400, i32 5170, i32 4400, i32 275, i32 4400, i32 5170, i32 0 }, %struct.st_i2c_timings { i32 400000, i32 660, i32 660, i32 660, i32 110, i32 660, i32 1430, i32 0 }], [32 x i8] zeroinitializer }, align 32
@st_i2c_xfer_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 694, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Write to slave 0x%x timed out\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st_i2c_xfer_msg\00", [16 x i8] zeroinitializer }, align 32
@st_i2c_xfer_msg._entry_ptr = internal global ptr @st_i2c_xfer_msg._entry, section ".printk_index", align 4
@st_i2c_wait_free_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 382, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bus not free (status = 0x%08x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"st_i2c_wait_free_bus\00", [43 x i8] zeroinitializer }, align 32
@st_i2c_wait_free_bus._entry_ptr = internal global ptr @st_i2c_wait_free_bus._entry, section ".printk_index", align 4
@st_i2c_wait_free_bus._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 386, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to recover the bus (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@st_i2c_wait_free_bus._entry_ptr.40 = internal global ptr @st_i2c_wait_free_bus._entry.38, section ".printk_index", align 4
@st_i2c_recover_bus.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 85, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st_i2c_recover_bus\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Trying to recover bus\0A\00", [41 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967221, i64 4294967235]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 4294967221, i64 4294967235]
@__sancov_gen_cov_switch_values.45 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 128, i64 256, i64 1024, i64 2048]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"st_i2c_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 900, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 902, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"st_i2c_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 893, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [10 x i8] c"st_i2c_pm\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 765, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 827, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 831, i32 40 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 833, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 838, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 848, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 862, i32 43 }
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"st_i2c_algo\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 776, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant [21 x i8] c"st_i2c_recovery_info\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 781, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 879, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 578, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 624, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 484, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 790, i32 33 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 793, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 797, i32 33 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 800, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 723, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [12 x i8] c"i2c_timings\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 214, i32 30 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 693, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 382, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 386, i32 3 }
@___asan_gen_.198 = private constant [31 x i8] c"../drivers/i2c/busses/i2c-st.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 342, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 87, i32 2 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_st_i2c_driver_exit, ptr @__initcall__kmod_i2c_st__290_910_st_i2c_driver_init6, ptr @st_i2c_driver_exit, ptr @st_i2c_isr_thread._entry, ptr @st_i2c_isr_thread._entry_ptr, ptr @st_i2c_of_get_deglitch._entry, ptr @st_i2c_of_get_deglitch._entry.29, ptr @st_i2c_of_get_deglitch._entry_ptr, ptr @st_i2c_of_get_deglitch._entry_ptr.31, ptr @st_i2c_probe._entry, ptr @st_i2c_probe._entry.11, ptr @st_i2c_probe._entry.15, ptr @st_i2c_probe._entry.7, ptr @st_i2c_probe._entry_ptr, ptr @st_i2c_probe._entry_ptr.13, ptr @st_i2c_probe._entry_ptr.18, ptr @st_i2c_probe._entry_ptr.9, ptr @st_i2c_read_rx_fifo._entry, ptr @st_i2c_read_rx_fifo._entry_ptr, ptr @st_i2c_wait_free_bus._entry, ptr @st_i2c_wait_free_bus._entry.38, ptr @st_i2c_wait_free_bus._entry_ptr, ptr @st_i2c_wait_free_bus._entry_ptr.40, ptr @st_i2c_xfer._entry, ptr @st_i2c_xfer._entry_ptr, ptr @st_i2c_xfer_msg._entry, ptr @st_i2c_xfer_msg._entry_ptr, ptr @st_i2c_driver, ptr @.str, ptr @st_i2c_match, ptr @st_i2c_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @st_i2c_algo, ptr @st_i2c_recovery_info, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @i2c_timings, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @init_completion.__key, ptr @.str.43], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_i2c_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_i2c_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_i2c_recovery_info to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_i2c_isr_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_i2c_read_rx_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_i2c_of_get_deglitch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_i2c_of_get_deglitch._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_timings to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_i2c_xfer_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_i2c_wait_free_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_i2c_wait_free_bus._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @st_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_rate) #8
  %2 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %clk_rate, align 4, !annotation !113
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1472, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call2) #8
  %base = getelementptr inbounds %struct.st_i2c_dev, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.st_i2c_dev, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call11, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool13.not = icmp eq i32 %call11, 0
  br i1 %tobool13.not, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %call17 = tail call ptr @of_clk_get_by_name(ptr noundef %1, ptr noundef nonnull @.str.6) #8
  %clk = getelementptr inbounds %struct.st_i2c_dev, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call17, ptr %clk, align 4
  %cmp.i132 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %do.end23, label %if.end27

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end16
  %mode = getelementptr inbounds %struct.st_i2c_dev, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mode, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %clk_rate, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool29.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool29.not, label %land.lhs.true, label %if.end27.if.end32_crit_edge

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end27
  %11 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %12)
  %cmp = icmp eq i32 %12, 400000
  br i1 %cmp, label %if.then30, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %mode, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %land.lhs.true.if.end32_crit_edge, %if.end27.if.end32_crit_edge
  %dev34 = getelementptr inbounds %struct.st_i2c_dev, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %dev34 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %dev34, align 8
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 8
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %call37 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %16, ptr noundef null, ptr noundef nonnull @st_i2c_isr_thread, i32 noundef 8192, ptr noundef %18, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end45, label %do.end42

do.end42:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %20) #11
  br label %cleanup

if.end45:                                         ; preds = %if.end32
  %21 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev34, align 8
  %call47 = call i32 @pinctrl_pm_select_default_state(ptr noundef %22) #8
  %23 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev34, align 8
  %call49 = call i32 @pinctrl_pm_select_idle_state(ptr noundef %24) #8
  %scl_min_width_us.i = getelementptr inbounds %struct.st_i2c_dev, ptr %call.i, i32 0, i32 7
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef %scl_min_width_us.i, i32 noundef 1, i32 noundef 0) #8
  %25 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #8
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %if.end.i [
    i32 -61, label %if.end45.st_i2c_of_get_deglitch.exit_crit_edge
    i32 -75, label %if.end45.st_i2c_of_get_deglitch.exit_crit_edge136
  ]

if.end45.st_i2c_of_get_deglitch.exit_crit_edge136: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %st_i2c_of_get_deglitch.exit

if.end45.st_i2c_of_get_deglitch.exit_crit_edge:   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %st_i2c_of_get_deglitch.exit

if.end.i:                                         ; preds = %if.end45
  %sda_min_width_us.i = getelementptr inbounds %struct.st_i2c_dev, ptr %call.i, i32 0, i32 8
  %call.i.i21.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef %sda_min_width_us.i, i32 noundef 1, i32 noundef 0) #8
  %27 = call i32 @llvm.smin.i32(i32 %call.i.i21.i, i32 0) #8
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %27, label %if.end53 [
    i32 -61, label %if.end.i.st_i2c_of_get_deglitch.exit_crit_edge
    i32 -75, label %if.end.i.st_i2c_of_get_deglitch.exit_crit_edge137
  ]

if.end.i.st_i2c_of_get_deglitch.exit_crit_edge137: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %st_i2c_of_get_deglitch.exit

if.end.i.st_i2c_of_get_deglitch.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %st_i2c_of_get_deglitch.exit

st_i2c_of_get_deglitch.exit:                      ; preds = %if.end.i.st_i2c_of_get_deglitch.exit_crit_edge, %if.end.i.st_i2c_of_get_deglitch.exit_crit_edge137, %if.end45.st_i2c_of_get_deglitch.exit_crit_edge, %if.end45.st_i2c_of_get_deglitch.exit_crit_edge136
  %.str.30.sink.i = phi ptr [ @.str.26, %if.end45.st_i2c_of_get_deglitch.exit_crit_edge ], [ @.str.26, %if.end45.st_i2c_of_get_deglitch.exit_crit_edge136 ], [ @.str.30, %if.end.i.st_i2c_of_get_deglitch.exit_crit_edge ], [ @.str.30, %if.end.i.st_i2c_of_get_deglitch.exit_crit_edge137 ]
  %retval.0.ph.i = phi i32 [ %25, %if.end45.st_i2c_of_get_deglitch.exit_crit_edge ], [ %25, %if.end45.st_i2c_of_get_deglitch.exit_crit_edge136 ], [ %27, %if.end.i.st_i2c_of_get_deglitch.exit_crit_edge ], [ %27, %if.end.i.st_i2c_of_get_deglitch.exit_crit_edge137 ]
  %29 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev34, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull %.str.30.sink.i) #11
  br label %cleanup

if.end53:                                         ; preds = %if.end.i
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %name55 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %call56 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name55, i32 noundef 48, ptr noundef nonnull @.str.14, ptr noundef %call2)
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %call.i, align 8
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 7
  %33 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 200, ptr %timeout, align 4
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 8
  %34 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %retries, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %35 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @st_i2c_algo, ptr %algo, align 8
  %bus_recovery_info = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 16
  %36 = ptrtoint ptr %bus_recovery_info to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @st_i2c_recovery_info, ptr %bus_recovery_info, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev, ptr %parent, align 8
  %38 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node, align 8
  %of_node62 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %40 = ptrtoint ptr %of_node62 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %of_node62, align 8
  %complete = getelementptr inbounds %struct.st_i2c_dev, ptr %call.i, i32 0, i32 3
  %41 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.st_i2c_dev, ptr %call.i, i32 0, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @init_completion.__key) #8
  %call63 = call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end66:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i133 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %42 = ptrtoint ptr %driver_data.i.i133 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %driver_data.i.i133, align 4
  %43 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev34, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.16, ptr noundef %name55) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.end53.cleanup_crit_edge, %st_i2c_of_get_deglitch.exit, %do.end42, %do.end23, %do.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then7 ], [ %9, %do.end23 ], [ %call37, %do.end42 ], [ 0, %if.end66 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph.i, %st_i2c_of_get_deglitch.exit ], [ %call63, %if.end53.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_rate) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_del_adapter(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_i2c_isr_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.st_i2c_dev, ptr %data, i32 0, i32 9
  %base = getelementptr inbounds %struct.st_i2c_dev, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !114
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !114
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and = and i32 %7, %3
  %8 = tail call i32 @llvm.ctlz.i32(i32 %and, i1 false) #8, !range !115
  %sub.i = sub nsw i32 31, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body, label %if.end13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_i2c_isr_thread.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@st_i2c_isr_thread, %cleanup)) #8
          to label %if.then12 [label %cleanup], !srcloc !116

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.st_i2c_dev, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st_i2c_isr_thread.__UNIQUE_ID_ddebug289, ptr noundef %10, ptr noundef nonnull @.str.21, i32 noundef %7, i32 noundef %3) #8
  br label %cleanup

if.end13:                                         ; preds = %entry
  %shl = lshr i32 -2147483648, %8
  %11 = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %shl, label %do.end48 [
    i32 4, label %sw.bb
    i32 128, label %if.end13.sw.bb18_crit_edge
    i32 2048, label %if.end13.sw.bb18_crit_edge90
    i32 1024, label %sw.bb21
    i32 256, label %sw.bb38
  ]

if.end13.sw.bb18_crit_edge90:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

if.end13.sw.bb18_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

sw.bb:                                            ; preds = %if.end13
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %client, align 4
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @st_i2c_handle_read(ptr noundef %data)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 20
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !114
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.else.for.body.preheader.i.i_crit_edge

if.else.for.body.preheader.i.i_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i.i

if.end.i.i:                                       ; preds = %if.else
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %20, i32 60
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #8, !srcloc !114
  %22 = lshr i32 %21, 24
  %and6.i.i = and i32 %22, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %cmp15.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %cmp15.not.i.i, label %if.end.i.i.st_i2c_flush_rx_fifo.exit.i_crit_edge, label %if.end.i.i.for.body.preheader.i.i_crit_edge

if.end.i.i.for.body.preheader.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i.i

if.end.i.i.st_i2c_flush_rx_fifo.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %st_i2c_flush_rx_fifo.exit.i

for.body.preheader.i.i:                           ; preds = %if.end.i.i.for.body.preheader.i.i_crit_edge, %if.else.for.body.preheader.i.i_crit_edge
  %count.019.i.i = phi i32 [ %and6.i.i, %if.end.i.i.for.body.preheader.i.i_crit_edge ], [ 8, %if.else.for.body.preheader.i.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.016.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %24, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #8, !srcloc !114
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %count.019.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.st_i2c_flush_rx_fifo.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.st_i2c_flush_rx_fifo.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %st_i2c_flush_rx_fifo.exit.i

st_i2c_flush_rx_fifo.exit.i:                      ; preds = %for.body.i.i.st_i2c_flush_rx_fifo.exit.i_crit_edge, %if.end.i.i.st_i2c_flush_rx_fifo.exit.i_crit_edge
  %count.i = getelementptr inbounds %struct.st_i2c_dev, ptr %data, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %st_i2c_flush_rx_fifo.exit.i
  %add.ptr.i5.i = getelementptr i8, ptr %29, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #8, !srcloc !114
  %31 = and i32 %30, -67108865
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %31) #8, !srcloc !117
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %33, i32 24
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #8, !srcloc !114
  %35 = and i32 %34, -33554433
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %35) #8, !srcloc !117
  %stop.i.i = getelementptr inbounds %struct.st_i2c_dev, ptr %data, i32 0, i32 9, i32 5
  %36 = ptrtoint ptr %stop.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %stop.i.i, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i6.i = icmp eq i8 %37, 0
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %39, i32 16
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #8
  br i1 %tobool.not.i6.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = or i32 %40, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %41) #8, !srcloc !117
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %43, i32 24
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #8, !srcloc !114
  %45 = or i32 %44, 67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %45) #8, !srcloc !117
  br label %sw.epilog

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = or i32 %40, 524288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %46) #8, !srcloc !117
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %48, i32 24
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #8, !srcloc !114
  %50 = or i32 %49, 524288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 %50) #8, !srcloc !117
  br label %sw.epilog

if.else.i:                                        ; preds = %st_i2c_flush_rx_fifo.exit.i
  %add.ptr.i9.i = getelementptr i8, ptr %29, i32 20
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #8, !srcloc !114
  %52 = and i32 %51, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i10.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i10.i, label %if.end.i13.i, label %if.else.i.sw.epilog_crit_edge

if.else.i.sw.epilog_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i13.i:                                     ; preds = %if.else.i
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr3.i11.i = getelementptr i8, ptr %54, i32 56
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i11.i) #8, !srcloc !114
  %56 = lshr i32 %55, 24
  %and6.i12.i = and i32 %56, 7
  %57 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count.i, align 4
  %sub.i.i = sub nuw nsw i32 8, %and6.i12.i
  %59 = tail call i32 @llvm.umin.i32(i32 %58, i32 %sub.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp1128.not.i.i = icmp eq i32 %59, 0
  br i1 %cmp1128.not.i.i, label %if.end.i13.i.sw.epilog_crit_edge, label %for.body.lr.ph.i.i

if.end.i13.i.sw.epilog_crit_edge:                 ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.lr.ph.i.i:                               ; preds = %if.end.i13.i
  %buf.i.i = getelementptr inbounds %struct.st_i2c_dev, ptr %data, i32 0, i32 9, i32 3
  %60 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buf.i.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 1
  %conv.i.i.i = zext i8 %63 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 1
  %or.i.i.i = or i32 %shl.i.i.i, 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #8
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %66, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %64) #8, !srcloc !117
  %67 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %count.i, align 4
  %dec13.i.i = add i32 %68, -1
  store i32 %dec13.i.i, ptr %count.i, align 4
  %69 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %buf.i.i, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %70, i32 1
  store ptr %incdec.ptr.i.i, ptr %buf.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp11.i.i = icmp ugt i32 %59, 1
  br i1 %cmp11.i.i, label %for.body.i14.i.1, label %for.body.lr.ph.i.i.sw.epilog_crit_edge

for.body.lr.ph.i.i.sw.epilog_crit_edge:           ; preds = %for.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i14.i.1:                                 ; preds = %for.body.lr.ph.i.i
  %71 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %buf.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 1
  %conv.i.i.i.1 = zext i8 %74 to i32
  %shl.i.i.i.1 = shl nuw nsw i32 %conv.i.i.i.1, 1
  %or.i.i.i.1 = or i32 %shl.i.i.i.1, 1
  %75 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.1) #8
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.1 = getelementptr i8, ptr %77, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.1, i32 %75) #8, !srcloc !117
  %78 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count.i, align 4
  %dec13.i.i.1 = add i32 %79, -1
  store i32 %dec13.i.i.1, ptr %count.i, align 4
  %80 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %buf.i.i, align 4
  %incdec.ptr.i.i.1 = getelementptr i8, ptr %81, i32 1
  store ptr %incdec.ptr.i.i.1, ptr %buf.i.i, align 4
  %82 = add nsw i32 %59, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %82)
  %cmp11.i.i.1 = icmp ult i32 %82, -2
  br i1 %cmp11.i.i.1, label %for.body.i14.i.2, label %for.body.i14.i.1.sw.epilog_crit_edge

for.body.i14.i.1.sw.epilog_crit_edge:             ; preds = %for.body.i14.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i14.i.2:                                 ; preds = %for.body.i14.i.1
  %83 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buf.i.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %84, align 1
  %conv.i.i.i.2 = zext i8 %86 to i32
  %shl.i.i.i.2 = shl nuw nsw i32 %conv.i.i.i.2, 1
  %or.i.i.i.2 = or i32 %shl.i.i.i.2, 1
  %87 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.2) #8
  %88 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.2 = getelementptr i8, ptr %89, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.2, i32 %87) #8, !srcloc !117
  %90 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %count.i, align 4
  %dec13.i.i.2 = add i32 %91, -1
  store i32 %dec13.i.i.2, ptr %count.i, align 4
  %92 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %buf.i.i, align 4
  %incdec.ptr.i.i.2 = getelementptr i8, ptr %93, i32 1
  store ptr %incdec.ptr.i.i.2, ptr %buf.i.i, align 4
  %94 = and i32 %59, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %94)
  %cmp11.i.i.2.not = icmp eq i32 %94, 2
  br i1 %cmp11.i.i.2.not, label %for.body.i14.i.2.sw.epilog_crit_edge, label %for.body.i14.i.3

for.body.i14.i.2.sw.epilog_crit_edge:             ; preds = %for.body.i14.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i14.i.3:                                 ; preds = %for.body.i14.i.2
  %95 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %buf.i.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 1
  %conv.i.i.i.3 = zext i8 %98 to i32
  %shl.i.i.i.3 = shl nuw nsw i32 %conv.i.i.i.3, 1
  %or.i.i.i.3 = or i32 %shl.i.i.i.3, 1
  %99 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.3) #8
  %100 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.3 = getelementptr i8, ptr %101, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.3, i32 %99) #8, !srcloc !117
  %102 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %count.i, align 4
  %dec13.i.i.3 = add i32 %103, -1
  store i32 %dec13.i.i.3, ptr %count.i, align 4
  %104 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %buf.i.i, align 4
  %incdec.ptr.i.i.3 = getelementptr i8, ptr %105, i32 1
  store ptr %incdec.ptr.i.i.3, ptr %buf.i.i, align 4
  %106 = add nsw i32 %59, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %106)
  %cmp11.i.i.3 = icmp ult i32 %106, -2
  br i1 %cmp11.i.i.3, label %for.body.i14.i.4, label %for.body.i14.i.3.sw.epilog_crit_edge

for.body.i14.i.3.sw.epilog_crit_edge:             ; preds = %for.body.i14.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i14.i.4:                                 ; preds = %for.body.i14.i.3
  %107 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %buf.i.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %108, align 1
  %conv.i.i.i.4 = zext i8 %110 to i32
  %shl.i.i.i.4 = shl nuw nsw i32 %conv.i.i.i.4, 1
  %or.i.i.i.4 = or i32 %shl.i.i.i.4, 1
  %111 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.4) #8
  %112 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.4 = getelementptr i8, ptr %113, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.4, i32 %111) #8, !srcloc !117
  %114 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %count.i, align 4
  %dec13.i.i.4 = add i32 %115, -1
  store i32 %dec13.i.i.4, ptr %count.i, align 4
  %116 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %buf.i.i, align 4
  %incdec.ptr.i.i.4 = getelementptr i8, ptr %117, i32 1
  store ptr %incdec.ptr.i.i.4, ptr %buf.i.i, align 4
  %118 = and i32 %59, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %118)
  %cmp11.i.i.4.not = icmp eq i32 %118, 4
  br i1 %cmp11.i.i.4.not, label %for.body.i14.i.4.sw.epilog_crit_edge, label %for.body.i14.i.5

for.body.i14.i.4.sw.epilog_crit_edge:             ; preds = %for.body.i14.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i14.i.5:                                 ; preds = %for.body.i14.i.4
  %119 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %buf.i.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %120, align 1
  %conv.i.i.i.5 = zext i8 %122 to i32
  %shl.i.i.i.5 = shl nuw nsw i32 %conv.i.i.i.5, 1
  %or.i.i.i.5 = or i32 %shl.i.i.i.5, 1
  %123 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.5) #8
  %124 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.5 = getelementptr i8, ptr %125, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.5, i32 %123) #8, !srcloc !117
  %126 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %count.i, align 4
  %dec13.i.i.5 = add i32 %127, -1
  store i32 %dec13.i.i.5, ptr %count.i, align 4
  %128 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %buf.i.i, align 4
  %incdec.ptr.i.i.5 = getelementptr i8, ptr %129, i32 1
  store ptr %incdec.ptr.i.i.5, ptr %buf.i.i, align 4
  %130 = add nsw i32 %59, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %130)
  %cmp11.i.i.5 = icmp ult i32 %130, -2
  br i1 %cmp11.i.i.5, label %for.body.i14.i.6, label %for.body.i14.i.5.sw.epilog_crit_edge

for.body.i14.i.5.sw.epilog_crit_edge:             ; preds = %for.body.i14.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i14.i.6:                                 ; preds = %for.body.i14.i.5
  %131 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %buf.i.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %132, align 1
  %conv.i.i.i.6 = zext i8 %134 to i32
  %shl.i.i.i.6 = shl nuw nsw i32 %conv.i.i.i.6, 1
  %or.i.i.i.6 = or i32 %shl.i.i.i.6, 1
  %135 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.6) #8
  %136 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.6 = getelementptr i8, ptr %137, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.6, i32 %135) #8, !srcloc !117
  %138 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %count.i, align 4
  %dec13.i.i.6 = add i32 %139, -1
  store i32 %dec13.i.i.6, ptr %count.i, align 4
  %140 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %buf.i.i, align 4
  %incdec.ptr.i.i.6 = getelementptr i8, ptr %141, i32 1
  store ptr %incdec.ptr.i.i.6, ptr %buf.i.i, align 4
  %142 = and i32 %59, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %142)
  %cmp11.i.i.6.not = icmp eq i32 %142, 6
  br i1 %cmp11.i.i.6.not, label %for.body.i14.i.6.sw.epilog_crit_edge, label %for.body.i14.i.7

for.body.i14.i.6.sw.epilog_crit_edge:             ; preds = %for.body.i14.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i14.i.7:                                 ; preds = %for.body.i14.i.6
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %buf.i.i, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %144, align 1
  %conv.i.i.i.7 = zext i8 %146 to i32
  %shl.i.i.i.7 = shl nuw nsw i32 %conv.i.i.i.7, 1
  %or.i.i.i.7 = or i32 %shl.i.i.i.7, 1
  %147 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.7) #8
  %148 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.7 = getelementptr i8, ptr %149, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.7, i32 %147) #8, !srcloc !117
  %150 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %count.i, align 4
  %dec13.i.i.7 = add i32 %151, -1
  store i32 %dec13.i.i.7, ptr %count.i, align 4
  %152 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %buf.i.i, align 4
  %incdec.ptr.i.i.7 = getelementptr i8, ptr %153, i32 1
  store ptr %incdec.ptr.i.i.7, ptr %buf.i.i, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end13.sw.bb18_crit_edge, %if.end13.sw.bb18_crit_edge90
  %154 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %155, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #8, !srcloc !117
  %complete = getelementptr inbounds %struct.st_i2c_dev, ptr %data, i32 0, i32 3
  tail call void @complete(ptr noundef %complete) #8
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end13
  %156 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base, align 4
  %add.ptr23 = getelementptr i8, ptr %157, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 262144) #8, !srcloc !117
  %158 = ptrtoint ptr %client to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %client, align 4
  %160 = and i8 %159, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool27.not = icmp eq i8 %160, 0
  br i1 %tobool27.not, label %sw.bb21.if.end33_crit_edge, label %land.lhs.true

sw.bb21.if.end33_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true:                                    ; preds = %sw.bb21
  %count = getelementptr inbounds %struct.st_i2c_dev, ptr %data, i32 0, i32 9, i32 1
  %161 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %162)
  %cmp28 = icmp eq i32 %162, 1
  br i1 %cmp28, label %land.lhs.true30, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true30:                                  ; preds = %land.lhs.true
  %xfered = getelementptr inbounds %struct.st_i2c_dev, ptr %data, i32 0, i32 9, i32 2
  %163 = ptrtoint ptr %xfered to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %xfered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool31.not = icmp eq i32 %164, 0
  br i1 %tobool31.not, label %land.lhs.true30.if.end33_crit_edge, label %if.then32

land.lhs.true30.if.end33_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @st_i2c_handle_read(ptr noundef %data)
  br label %sw.epilog

if.end33:                                         ; preds = %land.lhs.true30.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %sw.bb21.if.end33_crit_edge
  %165 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %base, align 4
  %add.ptr35 = getelementptr i8, ptr %166, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 -2147418112) #8, !srcloc !117
  %167 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %base, align 4
  %add.ptr37 = getelementptr i8, ptr %168, i32 24
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #8, !srcloc !114
  %170 = or i32 %169, 67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %170) #8, !srcloc !117
  %result = getelementptr inbounds %struct.st_i2c_dev, ptr %data, i32 0, i32 9, i32 4
  %171 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 -5, ptr %result, align 4
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %172 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %base, align 4
  %add.ptr40 = getelementptr i8, ptr %173, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 65536) #8, !srcloc !117
  %174 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %base, align 4
  %add.ptr42 = getelementptr i8, ptr %175, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 -2147418112) #8, !srcloc !117
  %176 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %base, align 4
  %add.ptr44 = getelementptr i8, ptr %177, i32 24
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #8, !srcloc !114
  %179 = or i32 %178, 67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %179) #8, !srcloc !117
  %result45 = getelementptr inbounds %struct.st_i2c_dev, ptr %data, i32 0, i32 9, i32 4
  %180 = ptrtoint ptr %result45 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 -11, ptr %result45, align 4
  br label %sw.epilog

do.end48:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %dev49 = getelementptr inbounds %struct.st_i2c_dev, ptr %data, i32 0, i32 1
  %181 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev49, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %182, ptr noundef nonnull @.str.22, i32 noundef %sub.i, i32 noundef %7) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end48, %sw.bb38, %if.end33, %if.then32, %sw.bb18, %for.body.i14.i.7, %for.body.i14.i.6.sw.epilog_crit_edge, %for.body.i14.i.5.sw.epilog_crit_edge, %for.body.i14.i.4.sw.epilog_crit_edge, %for.body.i14.i.3.sw.epilog_crit_edge, %for.body.i14.i.2.sw.epilog_crit_edge, %for.body.i14.i.1.sw.epilog_crit_edge, %for.body.lr.ph.i.i.sw.epilog_crit_edge, %if.end.i13.i.sw.epilog_crit_edge, %if.else.i.sw.epilog_crit_edge, %if.else.i.i, %if.then.i.i, %if.then16
  %183 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %base, align 4
  %add.ptr52 = getelementptr i8, ptr %184, i32 16
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then12, %do.body
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 0, %if.then12 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @st_i2c_handle_read(ptr nocapture noundef %i2c_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %xfered = getelementptr inbounds %struct.st_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %xfered to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xfered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %base = getelementptr inbounds %struct.st_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !114
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !114
  %8 = and i32 %7, -536870913
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %8) #8, !srcloc !117
  br label %if.end

if.else:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !114
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.land.rhs.lr.ph.i_crit_edge

if.else.land.rhs.lr.ph.i_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.lr.ph.i

if.end.i:                                         ; preds = %if.else
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr3.i = getelementptr i8, ptr %12, i32 60
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #8, !srcloc !114
  %14 = lshr i32 %13, 24
  %and6.i = and i32 %14, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %cond35.i = icmp eq i32 %and6.i, 0
  br i1 %cond35.i, label %if.end.i.if.end_crit_edge, label %if.end.i.land.rhs.lr.ph.i_crit_edge

if.end.i.land.rhs.lr.ph.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.lr.ph.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs.lr.ph.i:                                 ; preds = %if.end.i.land.rhs.lr.ph.i_crit_edge, %if.else.land.rhs.lr.ph.i_crit_edge
  %i.041.i = phi i32 [ %and6.i, %if.end.i.land.rhs.lr.ph.i_crit_edge ], [ 8, %if.else.land.rhs.lr.ph.i_crit_edge ]
  %count.i = getelementptr inbounds %struct.st_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 1
  %buf.i = getelementptr inbounds %struct.st_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 3
  %15 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load i32, ptr %count.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %16 = phi i32 [ %.pr.i, %land.rhs.lr.ph.i ], [ %dec18.i, %for.body.i.land.rhs.i_crit_edge ]
  %i.136.i = phi i32 [ %i.041.i, %land.rhs.lr.ph.i ], [ %dec.i, %for.body.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp7.not.i = icmp eq i32 %16, 0
  br i1 %cmp7.not.i, label %do.end.i, label %for.body.i

for.body.i:                                       ; preds = %land.rhs.i
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr10.i = getelementptr i8, ptr %18, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #8, !srcloc !114
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %shr.i = lshr i32 %20, 1
  %conv16.i = trunc i32 %shr.i to i8
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf.i, align 4
  %incdec.ptr.i = getelementptr i8, ptr %22, i32 1
  store ptr %incdec.ptr.i, ptr %buf.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv16.i, ptr %22, align 1
  %dec.i = add nsw i32 %i.136.i, -1
  %24 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count.i, align 4
  %dec18.i = add i32 %25, -1
  store i32 %dec18.i, ptr %count.i, align 4
  %cond.i = icmp eq i32 %dec.i, 0
  br i1 %cond.i, label %for.body.i.if.end_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i:                                         ; preds = %land.rhs.i
  %dev.i = getelementptr inbounds %struct.st_i2c_dev, ptr %i2c_dev, i32 0, i32 1
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.23, i32 noundef %i.136.i) #11
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 20
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !114
  %31 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.for.body.preheader.i.i_crit_edge

do.end.i.for.body.preheader.i.i_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i.i

if.end.i.i:                                       ; preds = %do.end.i
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %33, i32 60
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #8, !srcloc !114
  %35 = lshr i32 %34, 24
  %and6.i.i = and i32 %35, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %cmp15.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %cmp15.not.i.i, label %if.end.i.i.if.end_crit_edge, label %if.end.i.i.for.body.preheader.i.i_crit_edge

if.end.i.i.for.body.preheader.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.preheader.i.i:                           ; preds = %if.end.i.i.for.body.preheader.i.i_crit_edge, %do.end.i.for.body.preheader.i.i_crit_edge
  %count.019.i.i = phi i32 [ %and6.i.i, %if.end.i.i.for.body.preheader.i.i_crit_edge ], [ 8, %do.end.i.for.body.preheader.i.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.016.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %37, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #8, !srcloc !114
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %count.019.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.if.end_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %for.body.i.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %for.body.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then
  %count = getelementptr inbounds %struct.st_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 1
  %39 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %40, label %if.else13 [
    i32 0, label %if.then4
    i32 1, label %if.then7
  ]

if.then4:                                         ; preds = %if.end
  %base.i29 = getelementptr inbounds %struct.st_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %42 = ptrtoint ptr %base.i29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i29, align 4
  %add.ptr.i30 = getelementptr i8, ptr %43, i32 16
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #8, !srcloc !114
  %45 = and i32 %44, -67108865
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %45) #8, !srcloc !117
  %46 = ptrtoint ptr %base.i29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i29, align 4
  %add.ptr2.i = getelementptr i8, ptr %47, i32 24
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !114
  %49 = and i32 %48, -33554433
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %49) #8, !srcloc !117
  %stop.i = getelementptr inbounds %struct.st_i2c_dev, ptr %i2c_dev, i32 0, i32 9, i32 5
  %50 = ptrtoint ptr %stop.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %stop.i, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i31 = icmp eq i8 %51, 0
  %52 = ptrtoint ptr %base.i29 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i29, align 4
  %add.ptr8.i = getelementptr i8, ptr %53, i32 16
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8
  br i1 %tobool.not.i31, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %55 = or i32 %54, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %55) #8, !srcloc !117
  %56 = ptrtoint ptr %base.i29 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i29, align 4
  %add.ptr6.i = getelementptr i8, ptr %57, i32 24
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !114
  %59 = or i32 %58, 67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %59) #8, !srcloc !117
  br label %if.end16

if.else.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %60 = or i32 %54, 524288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %60) #8, !srcloc !117
  %61 = ptrtoint ptr %base.i29 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i29, align 4
  %add.ptr10.i32 = getelementptr i8, ptr %62, i32 24
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i32) #8, !srcloc !114
  %64 = or i32 %63, 524288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i32, i32 %64) #8, !srcloc !117
  br label %if.end16

if.then7:                                         ; preds = %if.end
  %base8 = getelementptr inbounds %struct.st_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %65 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base8, align 4
  %add.ptr9 = getelementptr i8, ptr %66, i32 24
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8, !srcloc !114
  %68 = and i32 %67, -134217729
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %68) #8, !srcloc !117
  %69 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base8, align 4
  %add.ptr11 = getelementptr i8, ptr %70, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 327680) #8, !srcloc !117
  %71 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %count, align 4
  %73 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base8, align 4
  %add.ptr.i36 = getelementptr i8, ptr %74, i32 20
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #8, !srcloc !114
  %76 = and i32 %75, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i37 = icmp eq i32 %76, 0
  br i1 %tobool.not.i37, label %if.end.i40, label %if.then7.if.end16_crit_edge

if.then7.if.end16_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end.i40:                                       ; preds = %if.then7
  %77 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base8, align 4
  %add.ptr3.i38 = getelementptr i8, ptr %78, i32 56
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i38) #8, !srcloc !114
  %80 = lshr i32 %79, 24
  %and6.i39 = and i32 %80, 7
  %sub.i = sub nuw nsw i32 8, %and6.i39
  %81 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %72) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp1021.not.i = icmp eq i32 %81, 0
  br i1 %cmp1021.not.i, label %if.end.i40.if.end16_crit_edge, label %for.body.i43

if.end.i40.if.end16_crit_edge:                    ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

for.body.i43:                                     ; preds = %if.end.i40
  %82 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base8, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %83, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i41, i32 -16711680) #8, !srcloc !117
  %84 = ptrtoint ptr %xfered to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %xfered, align 4
  %inc.i = add i32 %85, 1
  store i32 %inc.i, ptr %xfered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp10.i = icmp ugt i32 %81, 1
  br i1 %cmp10.i, label %for.body.i43.1, label %for.body.i43.if.end16_crit_edge

for.body.i43.if.end16_crit_edge:                  ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

for.body.i43.1:                                   ; preds = %for.body.i43
  %86 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base8, align 4
  %add.ptr.i.i41.1 = getelementptr i8, ptr %87, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i41.1, i32 -16711680) #8, !srcloc !117
  %88 = ptrtoint ptr %xfered to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %xfered, align 4
  %inc.i.1 = add i32 %89, 1
  store i32 %inc.i.1, ptr %xfered, align 4
  %90 = add nsw i32 %81, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %90)
  %cmp10.i.1 = icmp ult i32 %90, -2
  br i1 %cmp10.i.1, label %for.body.i43.2, label %for.body.i43.1.if.end16_crit_edge

for.body.i43.1.if.end16_crit_edge:                ; preds = %for.body.i43.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

for.body.i43.2:                                   ; preds = %for.body.i43.1
  %91 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base8, align 4
  %add.ptr.i.i41.2 = getelementptr i8, ptr %92, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i41.2, i32 -16711680) #8, !srcloc !117
  %93 = ptrtoint ptr %xfered to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %xfered, align 4
  %inc.i.2 = add i32 %94, 1
  store i32 %inc.i.2, ptr %xfered, align 4
  %95 = and i32 %81, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %cmp10.i.2.not = icmp eq i32 %95, 2
  br i1 %cmp10.i.2.not, label %for.body.i43.2.if.end16_crit_edge, label %for.body.i43.3

for.body.i43.2.if.end16_crit_edge:                ; preds = %for.body.i43.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

for.body.i43.3:                                   ; preds = %for.body.i43.2
  %96 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base8, align 4
  %add.ptr.i.i41.3 = getelementptr i8, ptr %97, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i41.3, i32 -16711680) #8, !srcloc !117
  %98 = ptrtoint ptr %xfered to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %xfered, align 4
  %inc.i.3 = add i32 %99, 1
  store i32 %inc.i.3, ptr %xfered, align 4
  %100 = add nsw i32 %81, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %100)
  %cmp10.i.3 = icmp ult i32 %100, -2
  br i1 %cmp10.i.3, label %for.body.i43.4, label %for.body.i43.3.if.end16_crit_edge

for.body.i43.3.if.end16_crit_edge:                ; preds = %for.body.i43.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

for.body.i43.4:                                   ; preds = %for.body.i43.3
  %101 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base8, align 4
  %add.ptr.i.i41.4 = getelementptr i8, ptr %102, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i41.4, i32 -16711680) #8, !srcloc !117
  %103 = ptrtoint ptr %xfered to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %xfered, align 4
  %inc.i.4 = add i32 %104, 1
  store i32 %inc.i.4, ptr %xfered, align 4
  %105 = and i32 %81, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %105)
  %cmp10.i.4.not = icmp eq i32 %105, 4
  br i1 %cmp10.i.4.not, label %for.body.i43.4.if.end16_crit_edge, label %for.body.i43.5

for.body.i43.4.if.end16_crit_edge:                ; preds = %for.body.i43.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

for.body.i43.5:                                   ; preds = %for.body.i43.4
  %106 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base8, align 4
  %add.ptr.i.i41.5 = getelementptr i8, ptr %107, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i41.5, i32 -16711680) #8, !srcloc !117
  %108 = ptrtoint ptr %xfered to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %xfered, align 4
  %inc.i.5 = add i32 %109, 1
  store i32 %inc.i.5, ptr %xfered, align 4
  %110 = add nsw i32 %81, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %110)
  %cmp10.i.5 = icmp ult i32 %110, -2
  br i1 %cmp10.i.5, label %for.body.i43.6, label %for.body.i43.5.if.end16_crit_edge

for.body.i43.5.if.end16_crit_edge:                ; preds = %for.body.i43.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

for.body.i43.6:                                   ; preds = %for.body.i43.5
  %111 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base8, align 4
  %add.ptr.i.i41.6 = getelementptr i8, ptr %112, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i41.6, i32 -16711680) #8, !srcloc !117
  %113 = ptrtoint ptr %xfered to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %xfered, align 4
  %inc.i.6 = add i32 %114, 1
  store i32 %inc.i.6, ptr %xfered, align 4
  %115 = and i32 %81, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %115)
  %cmp10.i.6.not = icmp eq i32 %115, 6
  br i1 %cmp10.i.6.not, label %for.body.i43.6.if.end16_crit_edge, label %for.body.i43.7

for.body.i43.6.if.end16_crit_edge:                ; preds = %for.body.i43.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

for.body.i43.7:                                   ; preds = %for.body.i43.6
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %base8 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base8, align 4
  %add.ptr.i.i41.7 = getelementptr i8, ptr %117, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i41.7, i32 -16711680) #8, !srcloc !117
  %118 = ptrtoint ptr %xfered to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %xfered, align 4
  %inc.i.7 = add i32 %119, 1
  store i32 %inc.i.7, ptr %xfered, align 4
  br label %if.end16

if.else13:                                        ; preds = %if.end
  %base.i44 = getelementptr inbounds %struct.st_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %120 = ptrtoint ptr %base.i44 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base.i44, align 4
  %add.ptr.i45 = getelementptr i8, ptr %121, i32 20
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #8, !srcloc !114
  %123 = and i32 %122, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool.not.i46 = icmp eq i32 %123, 0
  br i1 %tobool.not.i46, label %if.end.i51, label %if.else13.if.end16_crit_edge

if.else13.if.end16_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end.i51:                                       ; preds = %if.else13
  %124 = ptrtoint ptr %base.i44 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base.i44, align 4
  %add.ptr3.i47 = getelementptr i8, ptr %125, i32 56
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i47) #8, !srcloc !114
  %127 = lshr i32 %126, 24
  %and6.i48 = and i32 %127, 7
  %sub.i49 = sub nuw nsw i32 8, %and6.i48
  %sub = add i32 %40, -1
  %128 = tail call i32 @llvm.umin.i32(i32 %sub.i49, i32 %sub) #8
  %129 = ptrtoint ptr %base.i44 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %base.i44, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %130, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55, i32 -16711680) #8, !srcloc !117
  %131 = ptrtoint ptr %xfered to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %xfered, align 4
  %inc.i57 = add i32 %132, 1
  store i32 %inc.i57, ptr %xfered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %128)
  %cmp10.i58 = icmp ugt i32 %128, 1
  br i1 %cmp10.i58, label %for.body.i59.1, label %if.end.i51.if.end16_crit_edge

if.end.i51.if.end16_crit_edge:                    ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

for.body.i59.1:                                   ; preds = %if.end.i51
  %133 = ptrtoint ptr %base.i44 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base.i44, align 4
  %add.ptr.i.i55.1 = getelementptr i8, ptr %134, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55.1, i32 -16711680) #8, !srcloc !117
  %135 = ptrtoint ptr %xfered to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %xfered, align 4
  %inc.i57.1 = add i32 %136, 1
  store i32 %inc.i57.1, ptr %xfered, align 4
  %137 = add nsw i32 %128, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %137)
  %cmp10.i58.1 = icmp ult i32 %137, -2
  br i1 %cmp10.i58.1, label %for.body.i59.2, label %for.body.i59.1.if.end16_crit_edge

for.body.i59.1.if.end16_crit_edge:                ; preds = %for.body.i59.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

for.body.i59.2:                                   ; preds = %for.body.i59.1
  %138 = ptrtoint ptr %base.i44 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base.i44, align 4
  %add.ptr.i.i55.2 = getelementptr i8, ptr %139, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55.2, i32 -16711680) #8, !srcloc !117
  %140 = ptrtoint ptr %xfered to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %xfered, align 4
  %inc.i57.2 = add i32 %141, 1
  store i32 %inc.i57.2, ptr %xfered, align 4
  %142 = and i32 %128, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %142)
  %cmp10.i58.2.not = icmp eq i32 %142, 2
  br i1 %cmp10.i58.2.not, label %for.body.i59.2.if.end16_crit_edge, label %for.body.i59.3

for.body.i59.2.if.end16_crit_edge:                ; preds = %for.body.i59.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

for.body.i59.3:                                   ; preds = %for.body.i59.2
  %143 = ptrtoint ptr %base.i44 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %base.i44, align 4
  %add.ptr.i.i55.3 = getelementptr i8, ptr %144, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55.3, i32 -16711680) #8, !srcloc !117
  %145 = ptrtoint ptr %xfered to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %xfered, align 4
  %inc.i57.3 = add i32 %146, 1
  store i32 %inc.i57.3, ptr %xfered, align 4
  %147 = add nsw i32 %128, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %147)
  %cmp10.i58.3 = icmp ult i32 %147, -2
  br i1 %cmp10.i58.3, label %for.body.i59.4, label %for.body.i59.3.if.end16_crit_edge

for.body.i59.3.if.end16_crit_edge:                ; preds = %for.body.i59.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

for.body.i59.4:                                   ; preds = %for.body.i59.3
  %148 = ptrtoint ptr %base.i44 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %base.i44, align 4
  %add.ptr.i.i55.4 = getelementptr i8, ptr %149, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55.4, i32 -16711680) #8, !srcloc !117
  %150 = ptrtoint ptr %xfered to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %xfered, align 4
  %inc.i57.4 = add i32 %151, 1
  store i32 %inc.i57.4, ptr %xfered, align 4
  %152 = and i32 %128, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %152)
  %cmp10.i58.4.not = icmp eq i32 %152, 4
  br i1 %cmp10.i58.4.not, label %for.body.i59.4.if.end16_crit_edge, label %for.body.i59.5

for.body.i59.4.if.end16_crit_edge:                ; preds = %for.body.i59.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

for.body.i59.5:                                   ; preds = %for.body.i59.4
  %153 = ptrtoint ptr %base.i44 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base.i44, align 4
  %add.ptr.i.i55.5 = getelementptr i8, ptr %154, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55.5, i32 -16711680) #8, !srcloc !117
  %155 = ptrtoint ptr %xfered to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %xfered, align 4
  %inc.i57.5 = add i32 %156, 1
  store i32 %inc.i57.5, ptr %xfered, align 4
  %157 = add nsw i32 %128, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %157)
  %cmp10.i58.5 = icmp ult i32 %157, -2
  br i1 %cmp10.i58.5, label %for.body.i59.6, label %for.body.i59.5.if.end16_crit_edge

for.body.i59.5.if.end16_crit_edge:                ; preds = %for.body.i59.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

for.body.i59.6:                                   ; preds = %for.body.i59.5
  %158 = ptrtoint ptr %base.i44 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %base.i44, align 4
  %add.ptr.i.i55.6 = getelementptr i8, ptr %159, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55.6, i32 -16711680) #8, !srcloc !117
  %160 = ptrtoint ptr %xfered to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %xfered, align 4
  %inc.i57.6 = add i32 %161, 1
  store i32 %inc.i57.6, ptr %xfered, align 4
  %162 = and i32 %128, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %162)
  %cmp10.i58.6.not = icmp eq i32 %162, 6
  br i1 %cmp10.i58.6.not, label %for.body.i59.6.if.end16_crit_edge, label %for.body.i59.7

for.body.i59.6.if.end16_crit_edge:                ; preds = %for.body.i59.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

for.body.i59.7:                                   ; preds = %for.body.i59.6
  call void @__sanitizer_cov_trace_pc() #10
  %163 = ptrtoint ptr %base.i44 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %base.i44, align 4
  %add.ptr.i.i55.7 = getelementptr i8, ptr %164, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55.7, i32 -16711680) #8, !srcloc !117
  %165 = ptrtoint ptr %xfered to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %xfered, align 4
  %inc.i57.7 = add i32 %166, 1
  store i32 %inc.i57.7, ptr %xfered, align 4
  br label %if.end16

if.end16:                                         ; preds = %for.body.i59.7, %for.body.i59.6.if.end16_crit_edge, %for.body.i59.5.if.end16_crit_edge, %for.body.i59.4.if.end16_crit_edge, %for.body.i59.3.if.end16_crit_edge, %for.body.i59.2.if.end16_crit_edge, %for.body.i59.1.if.end16_crit_edge, %if.end.i51.if.end16_crit_edge, %if.else13.if.end16_crit_edge, %for.body.i43.7, %for.body.i43.6.if.end16_crit_edge, %for.body.i43.5.if.end16_crit_edge, %for.body.i43.4.if.end16_crit_edge, %for.body.i43.3.if.end16_crit_edge, %for.body.i43.2.if.end16_crit_edge, %for.body.i43.1.if.end16_crit_edge, %for.body.i43.if.end16_crit_edge, %if.end.i40.if.end16_crit_edge, %if.then7.if.end16_crit_edge, %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_i2c_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %busy = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %busy, align 4
  %clk = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %4) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.32) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %dev2 = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev2, align 8
  %call3 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %8) #8
  tail call fastcc void @st_i2c_hw_config(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp37 = icmp sgt i32 %num, 0
  br i1 %cmp37, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %sub = add nsw i32 %num, -1
  %client.i = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 9
  %buf2.i = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 9, i32 3
  %count.i = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 9, i32 1
  %xfered.i = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 9, i32 2
  %result.i = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 9, i32 4
  %stop.i = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 9, i32 5
  %complete.i = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 3
  %base.i = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 2
  %timeout28.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %st_i2c_xfer_msg.exit.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %st_i2c_xfer_msg.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.038
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.038)
  %cmp5 = icmp eq i32 %i.038, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.038, i32 %sub)
  %cmp6 = icmp eq i32 %i.038, %sub
  %frombool1.i = zext i1 %cmp6 to i8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 4
  %conv.i.i = trunc i16 %10 to i8
  %shl.i.i = shl i8 %conv.i.i, 1
  %flags.i.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.038, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags.i.i, align 2
  %13 = trunc i16 %12 to i8
  %14 = and i8 %13, 1
  %or.i.i = or i8 %14, %shl.i.i
  %15 = ptrtoint ptr %client.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or.i.i, ptr %client.i, align 4
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.038, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf.i, align 4
  %18 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %buf2.i, align 4
  %len.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.038, i32 2
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %20 to i32
  %21 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i, ptr %count.i, align 4
  %22 = ptrtoint ptr %xfered.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %xfered.i, align 4
  %23 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %result.i, align 4
  %24 = ptrtoint ptr %stop.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool1.i, ptr %stop.i, align 4
  %25 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %complete.i, align 4
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !114
  %29 = or i32 %28, 1769472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %29) #8, !srcloc !117
  %30 = ptrtoint ptr %client.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %client.i, align 4
  %32 = and i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool6.not.i = icmp eq i8 %32, 0
  %spec.select.i = select i1 %tobool6.not.i, i32 32, i32 40
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %34, i32 24
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8, !srcloc !114
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  %or.i75.i = or i32 %36, %spec.select.i
  %37 = tail call i32 @llvm.bswap.i32(i32 %or.i75.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %37) #8, !srcloc !117
  %38 = ptrtoint ptr %client.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %client.i, align 4
  %conv.i76.i = zext i8 %39 to i32
  %shl.i77.i = shl nuw nsw i32 %conv.i76.i, 1
  %or.i78.i = or i32 %shl.i77.i, 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i78.i) #8
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %40) #8, !srcloc !117
  %43 = ptrtoint ptr %client.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %client.i, align 4
  %45 = and i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool13.not.i = icmp eq i8 %45, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %for.body.if.end15.i_crit_edge

for.body.if.end15.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then14.i:                                      ; preds = %for.body
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %47, i32 20
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80.i) #8, !srcloc !114
  %49 = and i32 %48, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then14.i.if.end15.i_crit_edge

if.then14.i.if.end15.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.end.i.i:                                       ; preds = %if.then14.i
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %51, i32 56
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #8, !srcloc !114
  %53 = lshr i32 %52, 24
  %and6.i.i = and i32 %53, 7
  %54 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count.i, align 4
  %sub.i.i = sub nuw nsw i32 8, %and6.i.i
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 %sub.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp1128.not.i.i = icmp eq i32 %56, 0
  br i1 %cmp1128.not.i.i, label %if.end.i.i.if.end15.i_crit_edge, label %for.body.i.i

if.end.i.i.if.end15.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

for.body.i.i:                                     ; preds = %if.end.i.i
  %57 = ptrtoint ptr %buf2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buf2.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 1
  %conv.i.i.i = zext i8 %60 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 1
  %or.i.i.i = or i32 %shl.i.i.i, 1
  %61 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #8
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %63, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %61) #8, !srcloc !117
  %64 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count.i, align 4
  %dec13.i.i = add i32 %65, -1
  store i32 %dec13.i.i, ptr %count.i, align 4
  %66 = ptrtoint ptr %buf2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buf2.i, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %67, i32 1
  store ptr %incdec.ptr.i.i, ptr %buf2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp11.i.i = icmp ugt i32 %56, 1
  br i1 %cmp11.i.i, label %for.body.i.i.1, label %for.body.i.i.if.end15.i_crit_edge

for.body.i.i.if.end15.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

for.body.i.i.1:                                   ; preds = %for.body.i.i
  %68 = ptrtoint ptr %buf2.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %buf2.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 1
  %conv.i.i.i.1 = zext i8 %71 to i32
  %shl.i.i.i.1 = shl nuw nsw i32 %conv.i.i.i.1, 1
  %or.i.i.i.1 = or i32 %shl.i.i.i.1, 1
  %72 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.1) #8
  %73 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i.1 = getelementptr i8, ptr %74, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.1, i32 %72) #8, !srcloc !117
  %75 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %count.i, align 4
  %dec13.i.i.1 = add i32 %76, -1
  store i32 %dec13.i.i.1, ptr %count.i, align 4
  %77 = ptrtoint ptr %buf2.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buf2.i, align 4
  %incdec.ptr.i.i.1 = getelementptr i8, ptr %78, i32 1
  store ptr %incdec.ptr.i.i.1, ptr %buf2.i, align 4
  %79 = add nsw i32 %56, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %79)
  %cmp11.i.i.1 = icmp ult i32 %79, -2
  br i1 %cmp11.i.i.1, label %for.body.i.i.2, label %for.body.i.i.1.if.end15.i_crit_edge

for.body.i.i.1.if.end15.i_crit_edge:              ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

for.body.i.i.2:                                   ; preds = %for.body.i.i.1
  %80 = ptrtoint ptr %buf2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %buf2.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %81, align 1
  %conv.i.i.i.2 = zext i8 %83 to i32
  %shl.i.i.i.2 = shl nuw nsw i32 %conv.i.i.i.2, 1
  %or.i.i.i.2 = or i32 %shl.i.i.i.2, 1
  %84 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.2) #8
  %85 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i.2 = getelementptr i8, ptr %86, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.2, i32 %84) #8, !srcloc !117
  %87 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %count.i, align 4
  %dec13.i.i.2 = add i32 %88, -1
  store i32 %dec13.i.i.2, ptr %count.i, align 4
  %89 = ptrtoint ptr %buf2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %buf2.i, align 4
  %incdec.ptr.i.i.2 = getelementptr i8, ptr %90, i32 1
  store ptr %incdec.ptr.i.i.2, ptr %buf2.i, align 4
  %91 = and i32 %56, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp11.i.i.2.not = icmp eq i32 %91, 2
  br i1 %cmp11.i.i.2.not, label %for.body.i.i.2.if.end15.i_crit_edge, label %for.body.i.i.3

for.body.i.i.2.if.end15.i_crit_edge:              ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

for.body.i.i.3:                                   ; preds = %for.body.i.i.2
  %92 = ptrtoint ptr %buf2.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %buf2.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %93, align 1
  %conv.i.i.i.3 = zext i8 %95 to i32
  %shl.i.i.i.3 = shl nuw nsw i32 %conv.i.i.i.3, 1
  %or.i.i.i.3 = or i32 %shl.i.i.i.3, 1
  %96 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.3) #8
  %97 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i.3 = getelementptr i8, ptr %98, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.3, i32 %96) #8, !srcloc !117
  %99 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %count.i, align 4
  %dec13.i.i.3 = add i32 %100, -1
  store i32 %dec13.i.i.3, ptr %count.i, align 4
  %101 = ptrtoint ptr %buf2.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %buf2.i, align 4
  %incdec.ptr.i.i.3 = getelementptr i8, ptr %102, i32 1
  store ptr %incdec.ptr.i.i.3, ptr %buf2.i, align 4
  %103 = add nsw i32 %56, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %103)
  %cmp11.i.i.3 = icmp ult i32 %103, -2
  br i1 %cmp11.i.i.3, label %for.body.i.i.4, label %for.body.i.i.3.if.end15.i_crit_edge

for.body.i.i.3.if.end15.i_crit_edge:              ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

for.body.i.i.4:                                   ; preds = %for.body.i.i.3
  %104 = ptrtoint ptr %buf2.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %buf2.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %105, align 1
  %conv.i.i.i.4 = zext i8 %107 to i32
  %shl.i.i.i.4 = shl nuw nsw i32 %conv.i.i.i.4, 1
  %or.i.i.i.4 = or i32 %shl.i.i.i.4, 1
  %108 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.4) #8
  %109 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i.4 = getelementptr i8, ptr %110, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.4, i32 %108) #8, !srcloc !117
  %111 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %count.i, align 4
  %dec13.i.i.4 = add i32 %112, -1
  store i32 %dec13.i.i.4, ptr %count.i, align 4
  %113 = ptrtoint ptr %buf2.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %buf2.i, align 4
  %incdec.ptr.i.i.4 = getelementptr i8, ptr %114, i32 1
  store ptr %incdec.ptr.i.i.4, ptr %buf2.i, align 4
  %115 = and i32 %56, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %115)
  %cmp11.i.i.4.not = icmp eq i32 %115, 4
  br i1 %cmp11.i.i.4.not, label %for.body.i.i.4.if.end15.i_crit_edge, label %for.body.i.i.5

for.body.i.i.4.if.end15.i_crit_edge:              ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

for.body.i.i.5:                                   ; preds = %for.body.i.i.4
  %116 = ptrtoint ptr %buf2.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %buf2.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %117, align 1
  %conv.i.i.i.5 = zext i8 %119 to i32
  %shl.i.i.i.5 = shl nuw nsw i32 %conv.i.i.i.5, 1
  %or.i.i.i.5 = or i32 %shl.i.i.i.5, 1
  %120 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.5) #8
  %121 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i.5 = getelementptr i8, ptr %122, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.5, i32 %120) #8, !srcloc !117
  %123 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %count.i, align 4
  %dec13.i.i.5 = add i32 %124, -1
  store i32 %dec13.i.i.5, ptr %count.i, align 4
  %125 = ptrtoint ptr %buf2.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %buf2.i, align 4
  %incdec.ptr.i.i.5 = getelementptr i8, ptr %126, i32 1
  store ptr %incdec.ptr.i.i.5, ptr %buf2.i, align 4
  %127 = add nsw i32 %56, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %127)
  %cmp11.i.i.5 = icmp ult i32 %127, -2
  br i1 %cmp11.i.i.5, label %for.body.i.i.6, label %for.body.i.i.5.if.end15.i_crit_edge

for.body.i.i.5.if.end15.i_crit_edge:              ; preds = %for.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

for.body.i.i.6:                                   ; preds = %for.body.i.i.5
  %128 = ptrtoint ptr %buf2.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %buf2.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %129, align 1
  %conv.i.i.i.6 = zext i8 %131 to i32
  %shl.i.i.i.6 = shl nuw nsw i32 %conv.i.i.i.6, 1
  %or.i.i.i.6 = or i32 %shl.i.i.i.6, 1
  %132 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.6) #8
  %133 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i.6 = getelementptr i8, ptr %134, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.6, i32 %132) #8, !srcloc !117
  %135 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %count.i, align 4
  %dec13.i.i.6 = add i32 %136, -1
  store i32 %dec13.i.i.6, ptr %count.i, align 4
  %137 = ptrtoint ptr %buf2.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %buf2.i, align 4
  %incdec.ptr.i.i.6 = getelementptr i8, ptr %138, i32 1
  store ptr %incdec.ptr.i.i.6, ptr %buf2.i, align 4
  %139 = and i32 %56, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %139)
  %cmp11.i.i.6.not = icmp eq i32 %139, 6
  br i1 %cmp11.i.i.6.not, label %for.body.i.i.6.if.end15.i_crit_edge, label %for.body.i.i.7

for.body.i.i.6.if.end15.i_crit_edge:              ; preds = %for.body.i.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

for.body.i.i.7:                                   ; preds = %for.body.i.i.6
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %buf2.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %buf2.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %141, align 1
  %conv.i.i.i.7 = zext i8 %143 to i32
  %shl.i.i.i.7 = shl nuw nsw i32 %conv.i.i.i.7, 1
  %or.i.i.i.7 = or i32 %shl.i.i.i.7, 1
  %144 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.7) #8
  %145 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i.7 = getelementptr i8, ptr %146, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.7, i32 %144) #8, !srcloc !117
  %147 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %count.i, align 4
  %dec13.i.i.7 = add i32 %148, -1
  store i32 %dec13.i.i.7, ptr %count.i, align 4
  %149 = ptrtoint ptr %buf2.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %buf2.i, align 4
  %incdec.ptr.i.i.7 = getelementptr i8, ptr %150, i32 1
  store ptr %incdec.ptr.i.i.7, ptr %buf2.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %for.body.i.i.7, %for.body.i.i.6.if.end15.i_crit_edge, %for.body.i.i.5.if.end15.i_crit_edge, %for.body.i.i.4.if.end15.i_crit_edge, %for.body.i.i.3.if.end15.i_crit_edge, %for.body.i.i.2.if.end15.i_crit_edge, %for.body.i.i.1.if.end15.i_crit_edge, %for.body.i.i.if.end15.i_crit_edge, %if.end.i.i.if.end15.i_crit_edge, %if.then14.i.if.end15.i_crit_edge, %for.body.if.end15.i_crit_edge
  %151 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %152, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 67436544) #8, !srcloc !117
  br i1 %cmp5, label %if.then19.i, label %if.end15.i.if.end26.i_crit_edge

if.end15.i.if.end26.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then19.i:                                      ; preds = %if.end15.i
  %153 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base.i, align 4
  %add.ptr.i82.i = getelementptr i8, ptr %154, i32 20
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.i) #8, !srcloc !114
  %156 = and i32 %155, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.not.i83.i = icmp eq i32 %156, 0
  br i1 %tobool.not.i83.i, label %if.then19.i.if.end23.i_crit_edge, label %if.end.i84.i

if.then19.i.if.end23.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.end.i84.i:                                     ; preds = %if.then19.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %157 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %base.i, align 4
  %add.ptr.1.i.i = getelementptr i8, ptr %158, i32 20
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i.i) #8, !srcloc !114
  %160 = and i32 %159, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool.not.1.i.i = icmp eq i32 %160, 0
  br i1 %tobool.not.1.i.i, label %if.end.i84.i.if.end23.i_crit_edge, label %if.end.1.i.i

if.end.i84.i.if.end23.i_crit_edge:                ; preds = %if.end.i84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.end.1.i.i:                                     ; preds = %if.end.i84.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %161 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %base.i, align 4
  %add.ptr.2.i.i = getelementptr i8, ptr %162, i32 20
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i.i) #8, !srcloc !114
  %164 = and i32 %163, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool.not.2.i.i = icmp eq i32 %164, 0
  br i1 %tobool.not.2.i.i, label %if.end.1.i.i.if.end23.i_crit_edge, label %if.end.2.i.i

if.end.1.i.i.if.end23.i_crit_edge:                ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.end.2.i.i:                                     ; preds = %if.end.1.i.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %165 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %base.i, align 4
  %add.ptr.3.i.i = getelementptr i8, ptr %166, i32 20
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i.i) #8, !srcloc !114
  %168 = and i32 %167, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool.not.3.i.i = icmp eq i32 %168, 0
  br i1 %tobool.not.3.i.i, label %if.end.2.i.i.if.end23.i_crit_edge, label %if.end.3.i.i

if.end.2.i.i.if.end23.i_crit_edge:                ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.end.3.i.i:                                     ; preds = %if.end.2.i.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %169 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %base.i, align 4
  %add.ptr.4.i.i = getelementptr i8, ptr %170, i32 20
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.i.i) #8, !srcloc !114
  %172 = and i32 %171, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.not.4.i.i = icmp eq i32 %172, 0
  br i1 %tobool.not.4.i.i, label %if.end.3.i.i.if.end23.i_crit_edge, label %if.end.4.i.i

if.end.3.i.i.if.end23.i_crit_edge:                ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.end.4.i.i:                                     ; preds = %if.end.3.i.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %173 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %base.i, align 4
  %add.ptr.5.i.i = getelementptr i8, ptr %174, i32 20
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5.i.i) #8, !srcloc !114
  %176 = and i32 %175, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool.not.5.i.i = icmp eq i32 %176, 0
  br i1 %tobool.not.5.i.i, label %if.end.4.i.i.if.end23.i_crit_edge, label %if.end.5.i.i

if.end.4.i.i.if.end23.i_crit_edge:                ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.end.5.i.i:                                     ; preds = %if.end.4.i.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %177 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %base.i, align 4
  %add.ptr.6.i.i = getelementptr i8, ptr %178, i32 20
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6.i.i) #8, !srcloc !114
  %180 = and i32 %179, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool.not.6.i.i = icmp eq i32 %180, 0
  br i1 %tobool.not.6.i.i, label %if.end.5.i.i.if.end23.i_crit_edge, label %if.end.6.i.i

if.end.5.i.i.if.end23.i_crit_edge:                ; preds = %if.end.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.end.6.i.i:                                     ; preds = %if.end.5.i.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %181 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %base.i, align 4
  %add.ptr.7.i.i = getelementptr i8, ptr %182, i32 20
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.7.i.i) #8, !srcloc !114
  %184 = and i32 %183, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool.not.7.i.i = icmp eq i32 %184, 0
  br i1 %tobool.not.7.i.i, label %if.end.6.i.i.if.end23.i_crit_edge, label %if.end.7.i.i

if.end.6.i.i.if.end23.i_crit_edge:                ; preds = %if.end.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.end.7.i.i:                                     ; preds = %if.end.6.i.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %185 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %base.i, align 4
  %add.ptr.8.i.i = getelementptr i8, ptr %186, i32 20
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.8.i.i) #8, !srcloc !114
  %188 = and i32 %187, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.8.i.i = icmp eq i32 %188, 0
  br i1 %tobool.not.8.i.i, label %if.end.7.i.i.if.end23.i_crit_edge, label %if.end.8.i.i

if.end.7.i.i.if.end23.i_crit_edge:                ; preds = %if.end.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.end.8.i.i:                                     ; preds = %if.end.7.i.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %189 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %base.i, align 4
  %add.ptr.9.i.i = getelementptr i8, ptr %190, i32 20
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.9.i.i) #8, !srcloc !114
  %192 = tail call i32 @llvm.bswap.i32(i32 %191) #8
  %and.9.i.i = and i32 %192, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9.i.i)
  %tobool.not.9.i.i = icmp eq i32 %and.9.i.i, 0
  br i1 %tobool.not.9.i.i, label %if.end.8.i.i.if.end23.i_crit_edge, label %if.end.9.i.i

if.end.8.i.i.if.end23.i_crit_edge:                ; preds = %if.end.8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.end.9.i.i:                                     ; preds = %if.end.8.i.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %193 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %194, ptr noundef nonnull @.str.36, i32 noundef %192) #11
  %call1.i.i = tail call i32 @i2c_recover_bus(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.9.i.i.for.end_crit_edge, label %do.end6.i.i

if.end.9.i.i.for.end_crit_edge:                   ; preds = %if.end.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.end6.i.i:                                      ; preds = %if.end.9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %195 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dev2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %196, ptr noundef nonnull @.str.39, i32 noundef %call1.i.i) #11
  br label %for.end

if.end23.i:                                       ; preds = %if.end.8.i.i.if.end23.i_crit_edge, %if.end.7.i.i.if.end23.i_crit_edge, %if.end.6.i.i.if.end23.i_crit_edge, %if.end.5.i.i.if.end23.i_crit_edge, %if.end.4.i.i.if.end23.i_crit_edge, %if.end.3.i.i.if.end23.i_crit_edge, %if.end.2.i.i.if.end23.i_crit_edge, %if.end.1.i.i.if.end23.i_crit_edge, %if.end.i84.i.if.end23.i_crit_edge, %if.then19.i.if.end23.i_crit_edge
  %197 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %base.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %198, i32 24
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #8, !srcloc !114
  %200 = or i32 %199, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %200) #8, !srcloc !117
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end23.i, %if.end15.i.if.end26.i_crit_edge
  %201 = ptrtoint ptr %timeout28.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %timeout28.i, align 4
  %call29.i = tail call i32 @wait_for_completion_timeout(ptr noundef %complete.i, i32 noundef %202) #8
  %203 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool31.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool31.not.i, label %do.end.i, label %if.end26.i.st_i2c_xfer_msg.exit_crit_edge

if.end26.i.st_i2c_xfer_msg.exit_crit_edge:        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %st_i2c_xfer_msg.exit

do.end.i:                                         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %205 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev2, align 8
  %207 = ptrtoint ptr %client.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %client.i, align 4
  %conv34.i = zext i8 %208 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %206, ptr noundef nonnull @.str.34, i32 noundef %conv34.i) #11
  br label %st_i2c_xfer_msg.exit

st_i2c_xfer_msg.exit:                             ; preds = %do.end.i, %if.end26.i.st_i2c_xfer_msg.exit_crit_edge
  %ret.0.i = phi i32 [ %204, %if.end26.i.st_i2c_xfer_msg.exit_crit_edge ], [ -110, %do.end.i ]
  %209 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %base.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %210, i32 24
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i) #8, !srcloc !114
  %212 = and i32 %211, -67633153
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %212) #8, !srcloc !117
  %213 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %base.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %214, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 -2146959360) #8, !srcloc !117
  %inc = add nuw nsw i32 %i.038, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %num)
  %cmp = icmp slt i32 %inc, %num
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool4.not = icmp eq i32 %ret.0.i, 0
  %or.cond = select i1 %cmp, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %st_i2c_xfer_msg.exit.for.body_crit_edge, label %st_i2c_xfer_msg.exit.for.end_crit_edge

st_i2c_xfer_msg.exit.for.end_crit_edge:           ; preds = %st_i2c_xfer_msg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

st_i2c_xfer_msg.exit.for.body_crit_edge:          ; preds = %st_i2c_xfer_msg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %st_i2c_xfer_msg.exit.for.end_crit_edge, %do.end6.i.i, %if.end.9.i.i.for.end_crit_edge, %if.end.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ -16, %if.end.9.i.i.for.end_crit_edge ], [ %call1.i.i, %do.end6.i.i ], [ %ret.0.i, %st_i2c_xfer_msg.exit.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ 1, %if.end.9.i.i.for.end_crit_edge ], [ 1, %do.end6.i.i ], [ %inc, %st_i2c_xfer_msg.exit.for.end_crit_edge ]
  %215 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev2, align 8
  %call9 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %216) #8
  %217 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %218) #8
  tail call void @clk_unprepare(ptr noundef %218) #8
  %219 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 0, ptr %busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa)
  %cmp12 = icmp slt i32 %ret.0.lcssa, 0
  %spec.select = select i1 %cmp12, i32 %ret.0.lcssa, i32 %i.0.lcssa
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %spec.select, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @st_i2c_func(ptr nocapture noundef readnone %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @st_i2c_hw_config(ptr nocapture noundef readonly %i2c_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.st_i2c_dev, ptr %i2c_dev, i32 0, i32 6
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 8
  %base.i.i = getelementptr inbounds %struct.st_i2c_dev, ptr %i2c_dev, i32 0, i32 2
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !114
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.for.body.preheader.i.i_crit_edge

entry.for.body.preheader.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i.i

if.end.i.i:                                       ; preds = %entry
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %7, i32 60
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #8, !srcloc !114
  %9 = lshr i32 %8, 24
  %and6.i.i = and i32 %9, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %cmp15.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %cmp15.not.i.i, label %if.end.i.i.st_i2c_soft_reset.exit_crit_edge, label %if.end.i.i.for.body.preheader.i.i_crit_edge

if.end.i.i.for.body.preheader.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i.i

if.end.i.i.st_i2c_soft_reset.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %st_i2c_soft_reset.exit

for.body.preheader.i.i:                           ; preds = %if.end.i.i.for.body.preheader.i.i_crit_edge, %entry.for.body.preheader.i.i_crit_edge
  %count.019.i.i = phi i32 [ %and6.i.i, %if.end.i.i.for.body.preheader.i.i_crit_edge ], [ 8, %entry.for.body.preheader.i.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.016.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #8, !srcloc !114
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %count.019.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.st_i2c_soft_reset.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.st_i2c_soft_reset.exit_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %st_i2c_soft_reset.exit

st_i2c_soft_reset.exit:                           ; preds = %for.body.i.i.st_i2c_soft_reset.exit_crit_edge, %if.end.i.i.st_i2c_soft_reset.exit_crit_edge
  %arrayidx = getelementptr [2 x %struct.st_i2c_timings], ptr @i2c_timings, i32 0, i32 %1
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !114
  %16 = or i32 %15, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #8, !srcloc !117
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %18, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !114
  %20 = and i32 %19, 2147483647
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %20) #8, !srcloc !117
  %21 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1072889856) #8, !srcloc !117
  %23 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i, align 4
  %add.ptr2 = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 2013265920) #8, !srcloc !117
  %clk = getelementptr inbounds %struct.st_i2c_dev, ptr %i2c_dev, i32 0, i32 5
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %26) #8
  %div = udiv i32 1000000000, %call
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %mul = shl i32 %28, 1
  %div4 = udiv i32 %call, %mul
  %29 = tail call i32 @llvm.bswap.i32(i32 %div4)
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #8, !srcloc !117
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %add.ptr8 = getelementptr i8, ptr %33, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 16777216) #8, !srcloc !117
  %34 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i, align 4
  %add.ptr10 = getelementptr i8, ptr %35, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 16777216) #8, !srcloc !117
  %rep_start_hold = getelementptr [2 x %struct.st_i2c_timings], ptr @i2c_timings, i32 0, i32 %1, i32 1
  %36 = ptrtoint ptr %rep_start_hold to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rep_start_hold, align 4
  %div11 = udiv i32 %37, %div
  %38 = tail call i32 @llvm.bswap.i32(i32 %div11)
  %39 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i, align 4
  %add.ptr13 = getelementptr i8, ptr %40, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %38) #8, !srcloc !117
  %rep_start_setup = getelementptr [2 x %struct.st_i2c_timings], ptr @i2c_timings, i32 0, i32 %1, i32 2
  %41 = ptrtoint ptr %rep_start_setup to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rep_start_setup, align 4
  %div14 = udiv i32 %42, %div
  %43 = tail call i32 @llvm.bswap.i32(i32 %div14)
  %44 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i, align 4
  %add.ptr16 = getelementptr i8, ptr %45, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %43) #8, !srcloc !117
  %start_hold = getelementptr [2 x %struct.st_i2c_timings], ptr @i2c_timings, i32 0, i32 %1, i32 3
  %46 = ptrtoint ptr %start_hold to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %start_hold, align 4
  %div17 = udiv i32 %47, %div
  %48 = tail call i32 @llvm.bswap.i32(i32 %div17)
  %49 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i, align 4
  %add.ptr19 = getelementptr i8, ptr %50, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %48) #8, !srcloc !117
  %data_setup_time = getelementptr [2 x %struct.st_i2c_timings], ptr @i2c_timings, i32 0, i32 %1, i32 4
  %51 = ptrtoint ptr %data_setup_time to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_setup_time, align 4
  %div20 = udiv i32 %52, %div
  %53 = tail call i32 @llvm.bswap.i32(i32 %div20)
  %54 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i.i, align 4
  %add.ptr22 = getelementptr i8, ptr %55, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %53) #8, !srcloc !117
  %stop_setup_time = getelementptr [2 x %struct.st_i2c_timings], ptr @i2c_timings, i32 0, i32 %1, i32 5
  %56 = ptrtoint ptr %stop_setup_time to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %stop_setup_time, align 4
  %div23 = udiv i32 %57, %div
  %58 = tail call i32 @llvm.bswap.i32(i32 %div23)
  %59 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i, align 4
  %add.ptr25 = getelementptr i8, ptr %60, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %58) #8, !srcloc !117
  %bus_free_time = getelementptr [2 x %struct.st_i2c_timings], ptr @i2c_timings, i32 0, i32 %1, i32 6
  %61 = ptrtoint ptr %bus_free_time to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bus_free_time, align 4
  %div26 = udiv i32 %62, %div
  %63 = tail call i32 @llvm.bswap.i32(i32 %div26)
  %64 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i.i, align 4
  %add.ptr28 = getelementptr i8, ptr %65, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %63) #8, !srcloc !117
  %div29 = udiv i32 %call, 10000000
  %66 = tail call i32 @llvm.bswap.i32(i32 %div29)
  %67 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i, align 4
  %add.ptr31 = getelementptr i8, ptr %68, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %66) #8, !srcloc !117
  %69 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i, align 4
  %add.ptr33 = getelementptr i8, ptr %70, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %66) #8, !srcloc !117
  %scl_min_width_us = getelementptr inbounds %struct.st_i2c_dev, ptr %i2c_dev, i32 0, i32 7
  %71 = ptrtoint ptr %scl_min_width_us to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %scl_min_width_us, align 4
  %mul34 = mul i32 %72, %call
  %div35 = udiv i32 %mul34, 100000000
  %73 = shl nuw nsw i32 %div35, 24
  %74 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i.i, align 4
  %add.ptr37 = getelementptr i8, ptr %75, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %73) #8, !srcloc !117
  %sda_min_width_us = getelementptr inbounds %struct.st_i2c_dev, ptr %i2c_dev, i32 0, i32 8
  %76 = ptrtoint ptr %sda_min_width_us to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sda_min_width_us, align 8
  %mul38 = mul i32 %77, %call
  %div39 = udiv i32 %mul38, 100000000
  %78 = shl nuw nsw i32 %div39, 24
  %79 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i.i, align 4
  %add.ptr41 = getelementptr i8, ptr %80, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %78) #8, !srcloc !117
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_i2c_recover_bus(ptr nocapture noundef readonly %i2c_adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_i2c_recover_bus.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@st_i2c_recover_bus, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !116

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st_i2c_recover_bus.__UNIQUE_ID_ddebug288, ptr noundef %3, ptr noundef nonnull @.str.42) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %base = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !117
  tail call fastcc void @st_i2c_hw_config(ptr noundef %1)
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8, !srcloc !114
  %9 = or i32 %8, 1769472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %9) #8, !srcloc !117
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !114
  %13 = and i32 %12, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %13) #8, !srcloc !117
  tail call void @usleep_range_state(i32 noundef 8000, i32 noundef 10000, i32 noundef 2) #8
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #8, !srcloc !117
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %17, i32 24
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !114
  %19 = or i32 %18, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %19) #8, !srcloc !117
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_i2c_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %busy = getelementptr inbounds %struct.st_i2c_dev, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %busy, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_i2c_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #8
  %call1 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %dev) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !59, !60, !61, !62, !64, !66, !67, !68, !70, !72, !73, !74, !75, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !95, !96, !97, !99, !100, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__initcall__kmod_i2c_st__290_910_st_i2c_driver_init6, !1, !"__initcall__kmod_i2c_st__290_910_st_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-st.c", i32 910, i32 1}
!2 = !{ptr @__exitcall_st_i2c_driver_exit, !1, !"__exitcall_st_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-st.c", i32 912, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-st.c", i32 913, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-st.c", i32 914, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-st.c", i32 902, i32 11}
!12 = !{ptr @st_i2c_driver, !13, !"st_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-st.c", i32 900, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-st.c", i32 827, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @st_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @st_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-st.c", i32 831, i32 40}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-st.c", i32 833, i32 3}
!26 = !{ptr @st_i2c_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @st_i2c_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-st.c", i32 838, i32 33}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-st.c", i32 848, i32 3}
!32 = !{ptr @st_i2c_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @st_i2c_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-st.c", i32 862, i32 43}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-st.c", i32 879, i32 2}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @st_i2c_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @st_i2c_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-st.c", i32 578, i32 3}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @st_i2c_isr_thread.__UNIQUE_ID_ddebug289, !42, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-st.c", i32 624, i32 3}
!48 = !{ptr @st_i2c_isr_thread._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @st_i2c_isr_thread._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-st.c", i32 484, i32 3}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @st_i2c_read_rx_fifo._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @st_i2c_read_rx_fifo._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/i2c/busses/i2c-st.c", i32 790, i32 33}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-st.c", i32 793, i32 3}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @st_i2c_of_get_deglitch._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @st_i2c_of_get_deglitch._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/i2c/busses/i2c-st.c", i32 797, i32 33}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/i2c/busses/i2c-st.c", i32 800, i32 3}
!66 = !{ptr @st_i2c_of_get_deglitch._entry.29, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @st_i2c_of_get_deglitch._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @st_i2c_algo, !69, !"st_i2c_algo", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-st.c", i32 776, i32 35}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/i2c/busses/i2c-st.c", i32 723, i32 3}
!72 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @st_i2c_xfer._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @st_i2c_xfer._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @i2c_timings, !76, !"i2c_timings", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-st.c", i32 214, i32 30}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/i2c/busses/i2c-st.c", i32 693, i32 3}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @st_i2c_xfer_msg._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @st_i2c_xfer_msg._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/i2c/busses/i2c-st.c", i32 382, i32 2}
!84 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @st_i2c_wait_free_bus._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @st_i2c_wait_free_bus._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/i2c/busses/i2c-st.c", i32 386, i32 3}
!89 = !{ptr @st_i2c_wait_free_bus._entry.38, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @st_i2c_wait_free_bus._entry_ptr.40, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @st_i2c_recovery_info, !92, !"st_i2c_recovery_info", i1 false, i1 false}
!92 = !{!"../drivers/i2c/busses/i2c-st.c", i32 781, i32 37}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/i2c/busses/i2c-st.c", i32 342, i32 2}
!95 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @st_i2c_recover_bus.__UNIQUE_ID_ddebug288, !94, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!97 = !{ptr @init_completion.__key, !98, !"__key", i1 false, i1 false}
!98 = !{!"../include/linux/completion.h", i32 87, i32 2}
!99 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @st_i2c_match, !101, !"st_i2c_match", i1 false, i1 false}
!101 = !{!"../drivers/i2c/busses/i2c-st.c", i32 893, i32 34}
!102 = !{ptr @st_i2c_pm, !103, !"st_i2c_pm", i1 false, i1 false}
!103 = !{!"../drivers/i2c/busses/i2c-st.c", i32 765, i32 8}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"auto-init"}
!114 = !{i64 6884005}
!115 = !{i32 0, i32 33}
!116 = !{i64 2148743005, i64 2148743010, i64 2148743023, i64 2148743067, i64 2148743101, i64 2148743122}
!117 = !{i64 6883587}
!118 = !{i8 0, i8 2}
!119 = !{i64 2155625218}
