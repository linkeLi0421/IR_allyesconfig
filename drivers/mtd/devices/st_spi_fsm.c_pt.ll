; ModuleID = '/llk/IR_all_yes/drivers/mtd/devices/st_spi_fsm.c_pt.bc'
source_filename = "../drivers/mtd/devices/st_spi_fsm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.flash_info = type { ptr, i32, i16, i32, i16, i32, i32, ptr }
%struct.seq_rw_config = type { i32, i8, i32, i8, i8, i8, i8, i8 }
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
%struct.stfsm = type { ptr, ptr, %struct.mtd_info, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, %struct.stfsm_seq, %struct.stfsm_seq, %struct.stfsm_seq }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.stfsm_seq = type { i32, i32, i32, i32, [5 x i32], i32, i32, i32, [16 x i8], i32 }
%struct.erase_info = type { i64, i64, i64 }

@__initcall__kmod_st_spi_fsm__257_2167_stfsm_driver_init6 = internal global ptr @stfsm_driver_init, section ".initcall6.init", align 4
@stfsm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stfsm_probe, ptr @stfsm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stfsm_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stfsm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stfsm_driver_exit = internal global ptr @stfsm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author258 = internal constant [51 x i8] c"st_spi_fsm.author=Angus Clark <angus.clark@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description259 = internal constant [41 x i8] c"st_spi_fsm.description=ST SPI FSM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file260 = internal constant [47 x i8] c"st_spi_fsm.file=drivers/mtd/devices/st_spi_fsm\00", section ".modinfo", align 1
@__UNIQUE_ID_license261 = internal constant [23 x i8] c"st_spi_fsm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st-spi-fsm\00", [21 x i8] zeroinitializer }, align 32
@stfsm_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,spi-fsm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stfsm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stfsmfsm_suspend, ptr @stfsmfsm_resume, ptr @stfsmfsm_suspend, ptr @stfsmfsm_resume, ptr @stfsmfsm_suspend, ptr @stfsmfsm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stfsm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2024, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No DT found\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stfsm_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mtd/devices/st_spi_fsm.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stfsm_probe._entry_ptr = internal global ptr @stfsm_probe._entry, section ".printk_index", align 4
@stfsm_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2038, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Resource not found\0A\00", [44 x i8] zeroinitializer }, align 32
@stfsm_probe._entry_ptr.8 = internal global ptr @stfsm_probe._entry.6, section ".printk_index", align 4
@stfsm_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 2045, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to reserve memory region %pR\0A\00", [59 x i8] zeroinitializer }, align 32
@stfsm_probe._entry_ptr.11 = internal global ptr @stfsm_probe._entry.9, section ".printk_index", align 4
@stfsm_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 2051, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't find EMI clock.\0A\00", [38 x i8] zeroinitializer }, align 32
@stfsm_probe._entry_ptr.14 = internal global ptr @stfsm_probe._entry.12, section ".printk_index", align 4
@stfsm_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 2057, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable EMI clock.\0A\00", [35 x i8] zeroinitializer }, align 32
@stfsm_probe._entry_ptr.17 = internal global ptr @stfsm_probe._entry.15, section ".printk_index", align 4
@stfsm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&fsm->lock\00", [21 x i8] zeroinitializer }, align 32
@stfsm_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 2065, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to initialise FSM Controller\0A\00", [59 x i8] zeroinitializer }, align 32
@stfsm_probe._entry_ptr.21 = internal global ptr @stfsm_probe._entry.19, section ".printk_index", align 4
@stfsm_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 2116, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Found serial flash device: %s\0A size = %llx (%lldMiB) erasesize = 0x%08x (%uKiB)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stfsm_probe._entry_ptr.25 = internal global ptr @stfsm_probe._entry.22, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stfsm_set_freq.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 1, i8 -31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st_spi_fsm\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stfsm_set_freq\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"emi_clk = %uHZ, spi_freq = %uHZ, clk_div = %u\0A\00", [49 x i8] zeroinitializer }, align 32
@stfsm_clear_fifo.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 -54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stfsm_clear_fifo\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cleared %d words from FIFO\0A\00", [36 x i8] zeroinitializer }, align 32
@stfsm_clear_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 825, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to clear bytes from the data FIFO\0A\00", [54 x i8] zeroinitializer }, align 32
@stfsm_clear_fifo._entry_ptr = internal global ptr @stfsm_clear_fifo._entry, section ".printk_index", align 4
@stfsm_clear_fifo.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.29, ptr @.str.3, ptr @.str.32, i8 0, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cleared %d byte(s) from the data FIFO\0A\00", [57 x i8] zeroinitializer }, align 32
@stfsm_seq_load_fifo_byte = internal constant { { i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, [13 x i8] }>, i32 }, [60 x i8] } { { i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, [13 x i8] }>, i32 } { i32 8, i32 0, i32 0, i32 0, [5 x i32] [i32 2207, i32 0, i32 0, i32 0, i32 0], i32 0, i32 0, i32 0, <{ i8, i8, i8, [13 x i8] }> <{ i8 17, i8 38, i8 15, [13 x i8] zeroinitializer }>, i32 193 }, [60 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@stfsm_wait_seq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 745, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"timeout on sequence completion\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stfsm_wait_seq\00", [17 x i8] zeroinitializer }, align 32
@stfsm_wait_seq._entry_ptr = internal global ptr @stfsm_wait_seq._entry, section ".printk_index", align 4
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st,syscfg\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st,reset-signal\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st,reset-por\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st,boot-device-reg\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st,boot-device-spi\00", [45 x i8] zeroinitializer }, align 32
@stfsm_fetch_platform_configs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 2012, ptr @.str.43, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"failed to fetch boot device, assuming boot from SPI\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stfsm_fetch_platform_configs\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stfsm_fetch_platform_configs._entry_ptr = internal global ptr @stfsm_fetch_platform_configs._entry, section ".printk_index", align 4
@stfsm_jedec_probe.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 1, i8 -47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stfsm_jedec_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"JEDEC =  0x%08x [%5ph]\0A\00", [40 x i8] zeroinitializer }, align 32
@flash_types = internal global { [30 x %struct.flash_info], [224 x i8] } { [30 x %struct.flash_info] [%struct.flash_info { ptr @.str.50, i32 2105363, i16 0, i32 65536, i16 8, i32 3, i32 25, ptr null }, %struct.flash_info { ptr @.str.51, i32 2105364, i16 0, i32 65536, i16 16, i32 3, i32 25, ptr null }, %struct.flash_info { ptr @.str.52, i32 2105365, i16 0, i32 65536, i16 32, i32 3, i32 25, ptr null }, %struct.flash_info { ptr @.str.53, i32 2105366, i16 0, i32 65536, i16 64, i32 3, i32 50, ptr null }, %struct.flash_info { ptr @.str.54, i32 2105367, i16 0, i32 65536, i16 128, i32 3, i32 50, ptr null }, %struct.flash_info { ptr @.str.55, i32 2105368, i16 0, i32 262144, i16 64, i32 3, i32 50, ptr null }, %struct.flash_info { ptr @.str.56, i32 2126102, i16 0, i32 65536, i16 64, i32 4355, i32 75, ptr null }, %struct.flash_info { ptr @.str.57, i32 2126103, i16 0, i32 65536, i16 128, i32 4355, i32 75, ptr null }, %struct.flash_info { ptr @.str.58, i32 12754454, i16 0, i32 65536, i16 64, i32 2163471, i32 86, ptr @stfsm_mx25_config }, %struct.flash_info { ptr @.str.59, i32 12722201, i16 0, i32 65536, i16 512, i32 66415, i32 70, ptr @stfsm_mx25_config }, %struct.flash_info { ptr @.str.60, i32 12723737, i16 0, i32 65536, i16 512, i32 66415, i32 70, ptr @stfsm_mx25_config }, %struct.flash_info { ptr @.str.61, i32 2144792, i16 0, i32 65536, i16 256, i32 3355395, i32 108, ptr @stfsm_n25q_config }, %struct.flash_info { ptr @.str.62, i32 2144793, i16 0, i32 65536, i16 512, i32 3355427, i32 108, ptr @stfsm_n25q_config }, %struct.flash_info { ptr @.str.63, i32 66069, i16 19712, i32 65536, i16 64, i32 1245955, i32 80, ptr @stfsm_s25fl_config }, %struct.flash_info { ptr @.str.64, i32 73752, i16 19712, i32 262144, i16 64, i32 1245955, i32 80, ptr @stfsm_s25fl_config }, %struct.flash_info { ptr @.str.65, i32 73752, i16 19713, i32 65536, i16 256, i32 1245955, i32 80, ptr @stfsm_s25fl_config }, %struct.flash_info { ptr @.str.66, i32 73752, i16 768, i32 262144, i16 64, i32 1246147, i32 80, ptr @stfsm_s25fl_config }, %struct.flash_info { ptr @.str.67, i32 73752, i16 769, i32 65536, i16 256, i32 1246147, i32 80, ptr @stfsm_s25fl_config }, %struct.flash_info { ptr @.str.68, i32 66073, i16 19712, i32 262144, i16 128, i32 1246179, i32 80, ptr @stfsm_s25fl_config }, %struct.flash_info { ptr @.str.69, i32 66073, i16 19713, i32 65536, i16 512, i32 1246179, i32 80, ptr @stfsm_s25fl_config }, %struct.flash_info { ptr @.str.70, i32 15675411, i16 0, i32 65536, i16 8, i32 4355, i32 75, ptr null }, %struct.flash_info { ptr @.str.71, i32 15675412, i16 0, i32 65536, i16 16, i32 4355, i32 75, ptr null }, %struct.flash_info { ptr @.str.72, i32 15675413, i16 0, i32 65536, i16 32, i32 4355, i32 75, ptr null }, %struct.flash_info { ptr @.str.73, i32 15675414, i16 0, i32 65536, i16 64, i32 4355, i32 75, ptr null }, %struct.flash_info { ptr @.str.74, i32 15675415, i16 0, i32 65536, i16 128, i32 4355, i32 75, ptr null }, %struct.flash_info { ptr @.str.75, i32 15679508, i16 0, i32 65536, i16 16, i32 1245955, i32 80, ptr @stfsm_w25q_config }, %struct.flash_info { ptr @.str.76, i32 15679509, i16 0, i32 65536, i16 32, i32 1245955, i32 80, ptr @stfsm_w25q_config }, %struct.flash_info { ptr @.str.77, i32 15679510, i16 0, i32 65536, i16 64, i32 1245955, i32 80, ptr @stfsm_w25q_config }, %struct.flash_info { ptr @.str.78, i32 15679511, i16 0, i32 65536, i16 128, i32 1245955, i32 80, ptr @stfsm_w25q_config }, %struct.flash_info zeroinitializer], [224 x i8] zeroinitializer }, align 32
@stfsm_jedec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 1871, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unrecognized JEDEC id %06x\0A\00", [36 x i8] zeroinitializer }, align 32
@stfsm_jedec_probe._entry_ptr = internal global ptr @stfsm_jedec_probe._entry, section ".printk_index", align 4
@stfsm_seq_read_jedec = internal constant { { i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, [13 x i8] }>, i32 }, [60 x i8] } { { i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, [13 x i8] }>, i32 } { i32 64, i32 0, i32 0, i32 0, [5 x i32] [i32 2207, i32 0, i32 0, i32 0, i32 0], i32 0, i32 0, i32 0, <{ i8, i8, i8, [13 x i8] }> <{ i8 17, i8 38, i8 15, [13 x i8] zeroinitializer }>, i32 193 }, [60 x i8] zeroinitializer }, align 32
@stfsm_read_fifo.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 -68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stfsm_read_fifo\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Reading %d bytes from FIFO\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m25p40\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m25p80\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m25p16\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m25p32\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m25p64\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"m25p128\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"m25px32\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"m25px64\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mx25l3255e\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mx25l25635e\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mx25l25655e\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"n25q128\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"n25q256\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s25fl032p\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s25fl129p0\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s25fl129p1\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s25fl128s0\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s25fl128s1\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s25fl256s0\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s25fl256s1\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"w25x40\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"w25x80\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"w25x16\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"w25x32\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"w25x64\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"w25q80\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"w25q16\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"w25q32\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"w25q64\00", [25 x i8] zeroinitializer }, align 32
@stfsm_read_status.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.79, ptr @.str.3, ptr @.str.80, i8 0, i8 -26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stfsm_read_status\00", [46 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"read 'status' register [0x%02x], %d byte(s)\0A\00", [51 x i8] zeroinitializer }, align 32
@stfsm_seq_read_status_fifo = internal global { { i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, [13 x i8] }>, i32 }, [60 x i8] } { { i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, [13 x i8] }>, i32 } { i32 32, i32 0, i32 0, i32 0, [5 x i32] [i32 2053, i32 0, i32 0, i32 0, i32 0], i32 0, i32 0, i32 0, <{ i8, i8, i8, [13 x i8] }> <{ i8 17, i8 38, i8 15, [13 x i8] zeroinitializer }>, i32 193 }, [60 x i8] zeroinitializer }, align 32
@stfsm_write_status.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.82, ptr @.str.3, ptr @.str.83, i8 0, i8 -19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stfsm_write_status\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"write 'status' register [0x%02x], %d byte(s), 0x%04x\0A %s wait-busy\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"with\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@stfsm_seq_write_status = internal global { { i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, i8, [12 x i8] }>, i32 }, [60 x i8] } { { i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, i8, [12 x i8] }>, i32 } { i32 0, i32 0, i32 0, i32 0, [5 x i32] [i32 67590, i32 2049, i32 0, i32 0, i32 0], i32 0, i32 0, i32 0, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 17, i8 33, i8 19, i8 15, [12 x i8] zeroinitializer }>, i32 193 }, [60 x i8] zeroinitializer }, align 32
@stfsm_wait_busy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 908, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"timeout on wait_busy\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stfsm_wait_busy\00", [16 x i8] zeroinitializer }, align 32
@stfsm_wait_busy._entry_ptr = internal global ptr @stfsm_wait_busy._entry, section ".printk_index", align 4
@n25q_read4_configs = internal global { [7 x %struct.seq_rw_config], [52 x i8] } { [7 x %struct.seq_rw_config] [%struct.seq_rw_config { i32 131072, i8 -20, i32 0, i8 4, i8 4, i8 0, i8 0, i8 8 }, %struct.seq_rw_config { i32 65536, i8 108, i32 0, i8 1, i8 4, i8 0, i8 0, i8 8 }, %struct.seq_rw_config { i32 512, i8 -68, i32 0, i8 2, i8 2, i8 0, i8 0, i8 8 }, %struct.seq_rw_config { i32 256, i8 60, i32 0, i8 1, i8 2, i8 0, i8 0, i8 8 }, %struct.seq_rw_config { i32 2, i8 12, i32 0, i8 1, i8 1, i8 0, i8 0, i8 8 }, %struct.seq_rw_config { i32 1, i8 19, i32 0, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.seq_rw_config zeroinitializer], [52 x i8] zeroinitializer }, align 32
@n25q_read3_configs = internal global { [7 x %struct.seq_rw_config], [52 x i8] } { [7 x %struct.seq_rw_config] [%struct.seq_rw_config { i32 131072, i8 -21, i32 0, i8 4, i8 4, i8 0, i8 0, i8 8 }, %struct.seq_rw_config { i32 65536, i8 107, i32 0, i8 1, i8 4, i8 0, i8 0, i8 8 }, %struct.seq_rw_config { i32 512, i8 -69, i32 0, i8 2, i8 2, i8 0, i8 0, i8 8 }, %struct.seq_rw_config { i32 256, i8 59, i32 0, i8 1, i8 2, i8 0, i8 0, i8 8 }, %struct.seq_rw_config { i32 2, i8 11, i32 0, i8 1, i8 1, i8 0, i8 0, i8 8 }, %struct.seq_rw_config { i32 1, i8 3, i32 0, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.seq_rw_config zeroinitializer], [52 x i8] zeroinitializer }, align 32
@stfsm_n25q_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 1223, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"failed to prepare READ sequence with flags [0x%08x]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stfsm_n25q_config\00", [46 x i8] zeroinitializer }, align 32
@stfsm_n25q_config._entry_ptr = internal global ptr @stfsm_n25q_config._entry, section ".printk_index", align 4
@default_write_configs = internal global { [6 x %struct.seq_rw_config], [40 x i8] } { [6 x %struct.seq_rw_config] [%struct.seq_rw_config { i32 2097152, i8 18, i32 1, i8 4, i8 4, i8 0, i8 0, i8 0 }, %struct.seq_rw_config { i32 1048576, i8 50, i32 1, i8 1, i8 4, i8 0, i8 0, i8 0 }, %struct.seq_rw_config { i32 8192, i8 -46, i32 1, i8 2, i8 2, i8 0, i8 0, i8 0 }, %struct.seq_rw_config { i32 4096, i8 -94, i32 1, i8 1, i8 2, i8 0, i8 0, i8 0 }, %struct.seq_rw_config { i32 1, i8 2, i32 1, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.seq_rw_config zeroinitializer], [40 x i8] zeroinitializer }, align 32
@stfsm_n25q_config._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.3, i32 1233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"preparing WRITE sequence using flags [0x%08x] failed\0A\00", [42 x i8] zeroinitializer }, align 32
@stfsm_n25q_config._entry_ptr.93 = internal global ptr @stfsm_n25q_config._entry.91, section ".printk_index", align 4
@stfsm_search_prepare_rw_seq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 1107, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to find suitable config\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stfsm_search_prepare_rw_seq\00", [36 x i8] zeroinitializer }, align 32
@stfsm_search_prepare_rw_seq._entry_ptr = internal global ptr @stfsm_search_prepare_rw_seq._entry, section ".printk_index", align 4
@stfsm_seq_erase_sector = internal global { { i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, i8, i8, [11 x i8] }>, i32 }, [60 x i8] } { { i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, i8, i8, [11 x i8] }>, i32 } { i32 0, i32 0, i32 0, i32 0, [5 x i32] [i32 67590, i32 2264, i32 0, i32 0, i32 0], i32 0, i32 0, i32 0, <{ i8, i8, i8, i8, i8, [11 x i8] }> <{ i8 17, i8 33, i8 18, i8 34, i8 15, [11 x i8] zeroinitializer }>, i32 193 }, [60 x i8] zeroinitializer }, align 32
@stfsm_s25fl_read4_configs = internal global { [7 x %struct.seq_rw_config], [52 x i8] } { [7 x %struct.seq_rw_config] [%struct.seq_rw_config { i32 131072, i8 -20, i32 0, i8 4, i8 4, i8 0, i8 2, i8 4 }, %struct.seq_rw_config { i32 65536, i8 108, i32 0, i8 1, i8 4, i8 0, i8 0, i8 8 }, %struct.seq_rw_config { i32 512, i8 -68, i32 0, i8 2, i8 2, i8 0, i8 4, i8 0 }, %struct.seq_rw_config { i32 256, i8 60, i32 0, i8 1, i8 2, i8 0, i8 0, i8 8 }, %struct.seq_rw_config { i32 2, i8 12, i32 0, i8 1, i8 1, i8 0, i8 0, i8 8 }, %struct.seq_rw_config { i32 1, i8 19, i32 0, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.seq_rw_config zeroinitializer], [52 x i8] zeroinitializer }, align 32
@stfsm_s25fl_write4_configs = internal global { [3 x %struct.seq_rw_config], [36 x i8] } { [3 x %struct.seq_rw_config] [%struct.seq_rw_config { i32 1048576, i8 52, i32 1, i8 1, i8 4, i8 0, i8 0, i8 0 }, %struct.seq_rw_config { i32 1, i8 18, i32 1, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.seq_rw_config zeroinitializer], [36 x i8] zeroinitializer }, align 32
@default_read_configs = internal global { [7 x %struct.seq_rw_config], [52 x i8] } { [7 x %struct.seq_rw_config] [%struct.seq_rw_config { i32 131072, i8 -21, i32 0, i8 4, i8 4, i8 0, i8 2, i8 4 }, %struct.seq_rw_config { i32 65536, i8 107, i32 0, i8 1, i8 4, i8 0, i8 4, i8 0 }, %struct.seq_rw_config { i32 512, i8 -69, i32 0, i8 2, i8 2, i8 0, i8 4, i8 0 }, %struct.seq_rw_config { i32 256, i8 59, i32 0, i8 1, i8 2, i8 0, i8 0, i8 8 }, %struct.seq_rw_config { i32 2, i8 11, i32 0, i8 1, i8 1, i8 0, i8 0, i8 8 }, %struct.seq_rw_config { i32 1, i8 3, i32 0, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.seq_rw_config zeroinitializer], [52 x i8] zeroinitializer }, align 32
@stfsm_prepare_rwe_seqs_default._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.3, i32 1128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to prep READ sequence with flags [0x%08x]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"stfsm_prepare_rwe_seqs_default\00", [33 x i8] zeroinitializer }, align 32
@stfsm_prepare_rwe_seqs_default._entry_ptr = internal global ptr @stfsm_prepare_rwe_seqs_default._entry, section ".printk_index", align 4
@stfsm_prepare_rwe_seqs_default._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.3, i32 1138, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to prep WRITE sequence with flags [0x%08x]\0A\00", [45 x i8] zeroinitializer }, align 32
@stfsm_prepare_rwe_seqs_default._entry_ptr.101 = internal global ptr @stfsm_prepare_rwe_seqs_default._entry.99, section ".printk_index", align 4
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@stfsm_mtd_read.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.103, ptr @.str.3, ptr @.str.104, i8 1, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stfsm_mtd_read\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s from 0x%08x, len %zd\0A\00", [39 x i8] zeroinitializer }, align 32
@stfsm_read.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.105, ptr @.str.3, ptr @.str.106, i8 1, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stfsm_read\00", [21 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reading %d bytes from 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@stfsm_mtd_write.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.107, ptr @.str.3, ptr @.str.108, i8 1, i8 -74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stfsm_mtd_write\00", [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s to 0x%08x, len %zd\0A\00", [41 x i8] zeroinitializer }, align 32
@stfsm_write.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.109, ptr @.str.3, ptr @.str.110, i8 1, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stfsm_write\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"writing %d bytes to 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@stfsm_write_fifo.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.111, ptr @.str.3, ptr @.str.112, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stfsm_write_fifo\00", [47 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"writing %d bytes to FIFO\0A\00", [38 x i8] zeroinitializer }, align 32
@__const.stfsm_s25fl_clear_status_reg.seq = private unnamed_addr constant { i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, i8, [12 x i8] }>, i32 } { i32 0, i32 0, i32 0, i32 0, [5 x i32] [i32 67632, i32 67588, i32 0, i32 0, i32 0], i32 0, i32 0, i32 0, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 17, i8 33, i8 7, i8 15, [12 x i8] zeroinitializer }>, i32 449 }, align 4
@stfsm_mtd_erase.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.113, ptr @.str.3, ptr @.str.114, i8 1, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stfsm_mtd_erase\00", [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s at 0x%llx, len %lld\0A\00", [40 x i8] zeroinitializer }, align 32
@stfsm_erase_chip.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.115, ptr @.str.3, ptr @.str.116, i8 1, i8 -80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stfsm_erase_chip\00", [47 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"erasing chip\0A\00", [18 x i8] zeroinitializer }, align 32
@stfsm_seq_erase_chip = internal constant { { i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, i8, [12 x i8] }>, i32 }, [60 x i8] } { { i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, i8, [12 x i8] }>, i32 } { i32 0, i32 0, i32 0, i32 0, [5 x i32] [i32 67590, i32 67783, i32 0, i32 0, i32 0], i32 0, i32 0, i32 0, <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 17, i8 33, i8 7, i8 15, [12 x i8] zeroinitializer }>, i32 449 }, [60 x i8] zeroinitializer }, align 32
@stfsm_erase_sector.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.118, ptr @.str.3, ptr @.str.119, i8 1, i8 -87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stfsm_erase_sector\00", [45 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"erasing sector at 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.120 = private unnamed_addr constant [13 x i8] c"stfsm_driver\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2158, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2162, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant [12 x i8] c"stfsm_match\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2152, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant [13 x i8] c"stfsm_pm_ops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2150, i32 8 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2024, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2038, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2044, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2051, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2057, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2061, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2065, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2111, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1926, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 809, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 825, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 832, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [25 x i8] c"stfsm_seq_load_fifo_byte\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 664, i32 31 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 745, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1983, i32 47 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1987, i32 48 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1989, i32 45 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1992, i32 33 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1997, i32 33 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 2011, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1862, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [12 x i8] c"flash_types\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 316, i32 26 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1871, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [21 x i8] c"stfsm_seq_read_jedec\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 571, i32 25 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 754, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 323, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 324, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 325, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 326, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 327, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 328, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 334, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 335, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 348, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 351, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 354, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 368, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 370, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 384, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 386, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 388, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 403, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 405, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 407, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 409, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 417, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 418, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 419, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 420, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 421, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 431, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 433, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 435, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 437, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 921, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant [27 x i8] c"stfsm_seq_read_status_fifo\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 587, i32 25 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 946, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant [23 x i8] c"stfsm_seq_write_status\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 646, i32 25 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 908, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [19 x i8] c"n25q_read4_configs\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 504, i32 29 }
@___asan_gen_.405 = private unnamed_addr constant [19 x i8] c"n25q_read3_configs\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 489, i32 29 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1221, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant [22 x i8] c"default_write_configs\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 462, i32 29 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1231, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1107, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant [23 x i8] c"stfsm_seq_erase_sector\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 603, i32 25 }
@___asan_gen_.438 = private unnamed_addr constant [26 x i8] c"stfsm_s25fl_read4_configs\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 550, i32 29 }
@___asan_gen_.441 = private unnamed_addr constant [27 x i8] c"stfsm_s25fl_write4_configs\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 560, i32 29 }
@___asan_gen_.444 = private unnamed_addr constant [21 x i8] c"default_read_configs\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 451, i32 29 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1126, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1136, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.463, i32 464, i32 31 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1675, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1526, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1755, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1590, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 840, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1797, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1731, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant [21 x i8] c"stfsm_seq_erase_chip\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 625, i32 25 }
@___asan_gen_.513 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.514 = private constant [36 x i8] c"../drivers/mtd/devices/st_spi_fsm.c\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.514, i32 1702, i32 2 }
@llvm.compiler.used = appending global [156 x ptr] [ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_description259, ptr @__UNIQUE_ID_file260, ptr @__UNIQUE_ID_license261, ptr @__exitcall_stfsm_driver_exit, ptr @__initcall__kmod_st_spi_fsm__257_2167_stfsm_driver_init6, ptr @stfsm_clear_fifo._entry, ptr @stfsm_clear_fifo._entry_ptr, ptr @stfsm_driver_exit, ptr @stfsm_fetch_platform_configs._entry, ptr @stfsm_fetch_platform_configs._entry_ptr, ptr @stfsm_jedec_probe._entry, ptr @stfsm_jedec_probe._entry_ptr, ptr @stfsm_n25q_config._entry, ptr @stfsm_n25q_config._entry.91, ptr @stfsm_n25q_config._entry_ptr, ptr @stfsm_n25q_config._entry_ptr.93, ptr @stfsm_prepare_rwe_seqs_default._entry, ptr @stfsm_prepare_rwe_seqs_default._entry.99, ptr @stfsm_prepare_rwe_seqs_default._entry_ptr, ptr @stfsm_prepare_rwe_seqs_default._entry_ptr.101, ptr @stfsm_probe._entry, ptr @stfsm_probe._entry.12, ptr @stfsm_probe._entry.15, ptr @stfsm_probe._entry.19, ptr @stfsm_probe._entry.22, ptr @stfsm_probe._entry.6, ptr @stfsm_probe._entry.9, ptr @stfsm_probe._entry_ptr, ptr @stfsm_probe._entry_ptr.11, ptr @stfsm_probe._entry_ptr.14, ptr @stfsm_probe._entry_ptr.17, ptr @stfsm_probe._entry_ptr.21, ptr @stfsm_probe._entry_ptr.25, ptr @stfsm_probe._entry_ptr.8, ptr @stfsm_search_prepare_rw_seq._entry, ptr @stfsm_search_prepare_rw_seq._entry_ptr, ptr @stfsm_wait_busy._entry, ptr @stfsm_wait_busy._entry_ptr, ptr @stfsm_wait_seq._entry, ptr @stfsm_wait_seq._entry_ptr, ptr @stfsm_driver, ptr @.str, ptr @stfsm_match, ptr @stfsm_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @stfsm_probe.__key, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @stfsm_seq_load_fifo_byte, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @flash_types, ptr @.str.46, ptr @stfsm_seq_read_jedec, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @stfsm_seq_read_status_fifo, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @stfsm_seq_write_status, ptr @.str.87, ptr @.str.88, ptr @n25q_read4_configs, ptr @n25q_read3_configs, ptr @.str.89, ptr @.str.90, ptr @default_write_configs, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @stfsm_seq_erase_sector, ptr @stfsm_s25fl_read4_configs, ptr @stfsm_s25fl_write4_configs, ptr @default_read_configs, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @stfsm_seq_erase_chip, ptr @.str.118, ptr @.str.119], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_clear_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_seq_load_fifo_byte to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_wait_seq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_fetch_platform_configs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_types to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_jedec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_seq_read_jedec to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_seq_read_status_fifo to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_seq_write_status to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_wait_busy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n25q_read4_configs to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n25q_read3_configs to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_n25q_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_write_configs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_n25q_config._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_search_prepare_rw_seq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_seq_erase_sector to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_s25fl_read4_configs to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_s25fl_write4_configs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_read_configs to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_prepare_rwe_seqs_default._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_prepare_rwe_seqs_default._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stfsm_seq_erase_chip to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stfsm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stfsm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stfsm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @stfsm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stfsm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %boot_device_reg.i = alloca i32, align 4
  %boot_device_spi.i = alloca i32, align 4
  %boot_device.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1736, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call8 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %call17 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call8) #6
  %base = getelementptr inbounds %struct.stfsm, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call17, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end23, label %if.end27

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull %call8) #9
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  %call29 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.stfsm, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call29, ptr %clk, align 8
  %cmp.i193 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i193, label %do.end35, label %if.end39

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.13) #9
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 8
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end27
  %call.i194 = tail call i32 @clk_prepare(ptr noundef %call29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool.not.i = icmp eq i32 %call.i194, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end39.do.end46_crit_edge

if.end39.do.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end46

if.end.i:                                         ; preds = %if.end39
  %call1.i = tail call i32 @clk_enable(ptr noundef %call29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body49, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call29) #6
  br label %do.end46

do.end46:                                         ; preds = %if.then3.i, %if.end39.do.end46_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i194, %if.end39.do.end46_crit_edge ]
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.16) #9
  br label %cleanup

do.body49:                                        ; preds = %if.end.i
  %lock = getelementptr inbounds %struct.stfsm, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @stfsm_probe.__key) #6
  %call52 = tail call fastcc i32 @stfsm_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end59, label %do.end57

do.end57:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #9
  br label %err_clk_unprepare

if.end59:                                         ; preds = %do.body49
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i, align 4
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %boot_device_reg.i) #6
  %20 = ptrtoint ptr %boot_device_reg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %boot_device_reg.i, align 4, !annotation !268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %boot_device_spi.i) #6
  %21 = ptrtoint ptr %boot_device_spi.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %boot_device_spi.i, align 4, !annotation !268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %boot_device.i) #6
  %22 = ptrtoint ptr %boot_device.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %boot_device.i, align 4, !annotation !268
  %booted_from_spi.i = getelementptr inbounds %struct.stfsm, ptr %17, i32 0, i32 8
  %23 = ptrtoint ptr %booted_from_spi.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %booted_from_spi.i, align 4
  %call1.i195 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %19, ptr noundef nonnull @.str.36) #6
  %cmp.i.i = icmp ugt ptr %call1.i195, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end59.do.end.i_crit_edge, label %if.end.i197

if.end59.do.end.i_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i197:                                      ; preds = %if.end59
  %call.i.i = tail call ptr @of_find_property(ptr noundef %19, ptr noundef nonnull @.str.37, ptr noundef null) #6
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %reset_signal.i = getelementptr inbounds %struct.stfsm, ptr %17, i32 0, i32 9
  %frombool.i = zext i1 %tobool.i.i to i8
  %24 = ptrtoint ptr %reset_signal.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool.i, ptr %reset_signal.i, align 1
  %call.i39.i = tail call ptr @of_find_property(ptr noundef %19, ptr noundef nonnull @.str.38, ptr noundef null) #6
  %tobool.i40.i = icmp ne ptr %call.i39.i, null
  %reset_por.i = getelementptr inbounds %struct.stfsm, ptr %17, i32 0, i32 10
  %frombool5.i = zext i1 %tobool.i40.i to i8
  %25 = ptrtoint ptr %reset_por.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool5.i, ptr %reset_por.i, align 2
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %19, ptr noundef nonnull @.str.39, ptr noundef nonnull %boot_device_reg.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i196 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i196, label %if.end8.i, label %if.end.i197.do.end.i_crit_edge

if.end.i197.do.end.i_crit_edge:                   ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end8.i:                                        ; preds = %if.end.i197
  %call.i.i41.i = call i32 @of_property_read_variable_u32_array(ptr noundef %19, ptr noundef nonnull @.str.40, ptr noundef nonnull %boot_device_spi.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i41.i)
  %tobool10.not.i = icmp sgt i32 %call.i.i41.i, -1
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.do.end.i_crit_edge

if.end8.i.do.end.i_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end12.i:                                       ; preds = %if.end8.i
  %26 = ptrtoint ptr %boot_device_reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %boot_device_reg.i, align 4
  %call13.i = call i32 @regmap_read(ptr noundef %call1.i195, i32 noundef %27, ptr noundef nonnull %boot_device.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.do.end.i_crit_edge

if.end12.i.do.end.i_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end16.i:                                       ; preds = %if.end12.i
  %28 = ptrtoint ptr %boot_device.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %boot_device.i, align 4
  %30 = ptrtoint ptr %boot_device_spi.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %boot_device_spi.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.not.i = icmp eq i32 %29, %31
  br i1 %cmp.not.i, label %if.end16.i.stfsm_fetch_platform_configs.exit_crit_edge, label %if.then17.i

if.end16.i.stfsm_fetch_platform_configs.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stfsm_fetch_platform_configs.exit

if.then17.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %booted_from_spi.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %booted_from_spi.i, align 4
  br label %stfsm_fetch_platform_configs.exit

do.end.i:                                         ; preds = %if.end12.i.do.end.i_crit_edge, %if.end8.i.do.end.i_crit_edge, %if.end.i197.do.end.i_crit_edge, %if.end59.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.41) #9
  br label %stfsm_fetch_platform_configs.exit

stfsm_fetch_platform_configs.exit:                ; preds = %do.end.i, %if.then17.i, %if.end16.i.stfsm_fetch_platform_configs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boot_device.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boot_device_spi.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boot_device_reg.i) #6
  %call60 = call fastcc ptr @stfsm_jedec_probe(ptr noundef nonnull %call.i)
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %stfsm_fetch_platform_configs.exit.err_clk_unprepare_crit_edge, label %if.end63

stfsm_fetch_platform_configs.exit.err_clk_unprepare_crit_edge: ; preds = %stfsm_fetch_platform_configs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk_unprepare

if.end63:                                         ; preds = %stfsm_fetch_platform_configs.exit
  %info64 = getelementptr inbounds %struct.stfsm, ptr %call.i, i32 0, i32 4
  %33 = ptrtoint ptr %info64 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call60, ptr %info64, align 4
  %sector_size = getelementptr inbounds %struct.flash_info, ptr %call60, i32 0, i32 3
  %34 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sector_size, align 4
  %n_sectors = getelementptr inbounds %struct.flash_info, ptr %call60, i32 0, i32 4
  %36 = ptrtoint ptr %n_sectors to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %n_sectors, align 4
  %conv = zext i16 %37 to i32
  %mul = mul i32 %35, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %mul)
  %cmp = icmp ugt i32 %mul, 16777216
  br i1 %cmp, label %if.then66, label %if.end63.if.end67_crit_edge

if.end63.if.end67_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.flash_info, ptr %call60, i32 0, i32 5
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %or = or i32 %39, 32
  store i32 %or, ptr %flags, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end63.if.end67_crit_edge
  %config = getelementptr inbounds %struct.flash_info, ptr %call60, i32 0, i32 7
  %40 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %config, align 4
  %tobool68.not = icmp eq ptr %41, null
  br i1 %tobool68.not, label %if.else, label %if.then69

if.then69:                                        ; preds = %if.end67
  %call71 = call i32 %41(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then69.if.end79_crit_edge, label %if.then69.err_clk_unprepare_crit_edge

if.then69.err_clk_unprepare_crit_edge:            ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_clk_unprepare

if.then69.if.end79_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.else:                                          ; preds = %if.end67
  %42 = ptrtoint ptr %info64 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %info64, align 4
  %flags1.i = getelementptr inbounds %struct.flash_info, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags1.i, align 4
  %stfsm_seq_read.i = getelementptr inbounds %struct.stfsm, ptr %call.i, i32 0, i32 11
  %call.i198 = call fastcc i32 @stfsm_search_prepare_rw_seq(ptr noundef nonnull %call.i, ptr noundef %stfsm_seq_read.i, ptr noundef nonnull @default_read_configs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool.not.i199 = icmp eq i32 %call.i198, 0
  br i1 %tobool.not.i199, label %if.end.i201, label %do.end.i200

do.end.i200:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.97, i32 noundef %45) #9
  br label %err_clk_unprepare

if.end.i201:                                      ; preds = %if.else
  %stfsm_seq_write.i = getelementptr inbounds %struct.stfsm, ptr %call.i, i32 0, i32 12
  %call2.i = call fastcc i32 @stfsm_search_prepare_rw_seq(ptr noundef nonnull %call.i, ptr noundef %stfsm_seq_write.i, ptr noundef nonnull @default_write_configs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %stfsm_prepare_rwe_seqs_default.exit, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.100, i32 noundef %45) #9
  br label %err_clk_unprepare

stfsm_prepare_rwe_seqs_default.exit:              ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %info64 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %info64, align 4
  %flags.i.i = getelementptr inbounds %struct.flash_info, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %53, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or3.i.i = select i1 %tobool.not.i.i, i32 17825800, i32 17825808
  store i32 %or3.i.i, ptr getelementptr inbounds ({ i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, i8, i8, [11 x i8] }>, i32 }, ptr @stfsm_seq_erase_sector, i32 0, i32 3), align 4
  br label %if.end79

if.end79:                                         ; preds = %stfsm_prepare_rwe_seqs_default.exit, %if.then69.if.end79_crit_edge
  %54 = ptrtoint ptr %call60 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call60, align 4
  %mtd = getelementptr inbounds %struct.stfsm, ptr %call.i, i32 0, i32 2
  %name80 = getelementptr inbounds %struct.stfsm, ptr %call.i, i32 0, i32 2, i32 13
  %56 = ptrtoint ptr %name80 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %name80, align 8
  %parent = getelementptr inbounds %struct.stfsm, ptr %call.i, i32 0, i32 2, i32 56, i32 1
  %57 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dev, ptr %parent, align 8
  %of_node.i203 = getelementptr inbounds %struct.stfsm, ptr %call.i, i32 0, i32 2, i32 56, i32 27
  %58 = ptrtoint ptr %of_node.i203 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %1, ptr %of_node.i203, align 8
  %tobool.not.i204 = icmp eq ptr %55, null
  br i1 %tobool.not.i204, label %if.then.i, label %if.end79.mtd_set_of_node.exit_crit_edge

if.end79.mtd_set_of_node.exit_crit_edge:          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtd_set_of_node.exit

if.then.i:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %call.i205 = call i32 @of_property_read_string(ptr noundef nonnull %1, ptr noundef nonnull @.str.102, ptr noundef %name80) #6
  br label %mtd_set_of_node.exit

mtd_set_of_node.exit:                             ; preds = %if.then.i, %if.end79.mtd_set_of_node.exit_crit_edge
  %59 = ptrtoint ptr %mtd to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 3, ptr %mtd, align 8
  %writesize = getelementptr inbounds %struct.stfsm, ptr %call.i, i32 0, i32 2, i32 4
  %60 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 4, ptr %writesize, align 4
  %writebufsize = getelementptr inbounds %struct.stfsm, ptr %call.i, i32 0, i32 2, i32 5
  %61 = ptrtoint ptr %writebufsize to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4, ptr %writebufsize, align 8
  %flags91 = getelementptr inbounds %struct.stfsm, ptr %call.i, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %flags91 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3072, ptr %flags91, align 4
  %63 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sector_size, align 4
  %65 = ptrtoint ptr %n_sectors to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %n_sectors, align 4
  %conv94 = zext i16 %66 to i32
  %mul95 = mul i32 %64, %conv94
  %conv96 = zext i32 %mul95 to i64
  %size = getelementptr inbounds %struct.stfsm, ptr %call.i, i32 0, i32 2, i32 2
  %67 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv96, ptr %size, align 8
  %68 = load i32, ptr %sector_size, align 4
  %erasesize = getelementptr inbounds %struct.stfsm, ptr %call.i, i32 0, i32 2, i32 3
  %69 = ptrtoint ptr %erasesize to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %erasesize, align 8
  %_read = getelementptr inbounds %struct.stfsm, ptr %call.i, i32 0, i32 2, i32 24
  %70 = ptrtoint ptr %_read to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @stfsm_mtd_read, ptr %_read, align 4
  %_write = getelementptr inbounds %struct.stfsm, ptr %call.i, i32 0, i32 2, i32 25
  %71 = ptrtoint ptr %_write to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @stfsm_mtd_write, ptr %_write, align 8
  %_erase = getelementptr inbounds %struct.stfsm, ptr %call.i, i32 0, i32 2, i32 21
  %72 = ptrtoint ptr %_erase to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @stfsm_mtd_erase, ptr %_erase, align 8
  %73 = ptrtoint ptr %call60 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call60, align 4
  %shr = lshr i64 %conv96, 20
  %shr116 = lshr i32 %68, 10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef %74, i64 noundef %conv96, i64 noundef %shr, i32 noundef %68, i32 noundef %shr116) #9
  %call118 = call i32 @mtd_device_parse_register(ptr noundef %mtd, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #6
  br label %cleanup

err_clk_unprepare:                                ; preds = %do.end7.i, %do.end.i200, %if.then69.err_clk_unprepare_crit_edge, %stfsm_fetch_platform_configs.exit.err_clk_unprepare_crit_edge, %do.end57
  %ret.0 = phi i32 [ %call52, %do.end57 ], [ %call71, %if.then69.err_clk_unprepare_crit_edge ], [ -19, %stfsm_fetch_platform_configs.exit.err_clk_unprepare_crit_edge ], [ %call2.i, %do.end7.i ], [ %call.i198, %do.end.i200 ]
  %75 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clk, align 8
  call void @clk_disable(ptr noundef %76) #6
  call void @clk_unprepare(ptr noundef %76) #6
  br label %cleanup

cleanup:                                          ; preds = %err_clk_unprepare, %mtd_set_of_node.exit, %do.end46, %do.end35, %do.end23, %do.end13, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %7, %do.end23 ], [ %13, %do.end35 ], [ %retval.0.i.ph, %do.end46 ], [ %ret.0, %err_clk_unprepare ], [ %call118, %mtd_set_of_node.exit ], [ -19, %do.end13 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stfsm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mtd = getelementptr inbounds %struct.stfsm, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @mtd_device_unregister(ptr noundef %mtd) #6
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stfsm_init(ptr nocapture noundef %fsm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !269
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 536870912) #6, !srcloc !270
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #6, !srcloc !270
  %clk.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 5
  %5 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk.i, align 8
  %call.i = tail call i32 @clk_get_rate(ptr noundef %6) #6
  %sub.i = add i32 %call.i, 19999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %sub.i)
  %7 = icmp ult i32 %sub.i, 20000000
  %div.i = udiv i32 %sub.i, 20000000
  %mul2.i = shl nuw nsw i32 %div.i, 1
  %8 = tail call i32 @llvm.umin.i32(i32 %mul2.i, i32 128) #6
  %clk_div.0.i = select i1 %7, i32 2, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %clk_div.0.i)
  %cmp6.i = icmp ult i32 %clk_div.0.i, 5
  br i1 %cmp6.i, label %entry.do.body.i_crit_edge, label %if.else8.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.else8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %clk_div.0.i)
  %cmp9.i = icmp ult i32 %clk_div.0.i, 11
  br i1 %cmp9.i, label %if.else8.i.do.body.i_crit_edge, label %if.else12.i

if.else8.i.do.body.i_crit_edge:                   ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.else12.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = trunc i32 %clk_div.0.i to i8
  %div15.lhs.trunc.i = add nuw i8 %9, 9
  %div152.i = udiv i8 %div15.lhs.trunc.i, 10
  %div15.zext.i = zext i8 %div152.i to i32
  br label %do.body.i

do.body.i:                                        ; preds = %if.else12.i, %if.else8.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %.sink.i = phi i32 [ %div15.zext.i, %if.else12.i ], [ 0, %entry.do.body.i_crit_edge ], [ 1, %if.else8.i.do.body.i_crit_edge ]
  %fifo_dir_delay.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 7
  %10 = ptrtoint ptr %fifo_dir_delay.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink.i, ptr %fifo_dir_delay.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stfsm_set_freq.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stfsm_init, %if.then22.i)) #6
          to label %stfsm_set_freq.exit [label %if.then22.i], !srcloc !272

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stfsm_set_freq.__UNIQUE_ID_ddebug256, ptr noundef %12, ptr noundef nonnull @.str.28, i32 noundef %call.i, i32 noundef 10000000, i32 noundef %clk_div.0.i) #6
  br label %stfsm_set_freq.exit

stfsm_set_freq.exit:                              ; preds = %if.then22.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !273
  tail call void @arm_heavy_mb() #6
  %13 = shl nuw i32 %clk_div.0.i, 24
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #6, !srcloc !270
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr.i30 = getelementptr i8, ptr %17, i32 40
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !275
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool2.not.i = icmp eq i32 %19, 0
  br i1 %tobool2.not.i, label %if.end.i, label %stfsm_set_freq.exit.do.body6_crit_edge

stfsm_set_freq.exit.do.body6_crit_edge:           ; preds = %stfsm_set_freq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

if.end.i:                                         ; preds = %stfsm_set_freq.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #6
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr.1.i = getelementptr i8, ptr %22, i32 40
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !275
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool2.not.1.i = icmp eq i32 %24, 0
  br i1 %tobool2.not.1.i, label %if.end.1.i, label %if.end.i.do.body6_crit_edge

if.end.i.do.body6_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

if.end.1.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #6
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr.2.i = getelementptr i8, ptr %27, i32 40
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !275
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool2.not.2.i = icmp eq i32 %29, 0
  br i1 %tobool2.not.2.i, label %if.end.2.i, label %if.end.1.i.do.body6_crit_edge

if.end.1.i.do.body6_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

if.end.2.i:                                       ; preds = %if.end.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #6
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr.3.i = getelementptr i8, ptr %32, i32 40
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !275
  %34 = and i32 %33, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool2.not.3.i = icmp eq i32 %34, 0
  br i1 %tobool2.not.3.i, label %if.end.3.i, label %if.end.2.i.do.body6_crit_edge

if.end.2.i.do.body6_crit_edge:                    ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

if.end.3.i:                                       ; preds = %if.end.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #6
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr.4.i = getelementptr i8, ptr %37, i32 40
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.i) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !275
  %39 = and i32 %38, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool2.not.4.i = icmp eq i32 %39, 0
  br i1 %tobool2.not.4.i, label %if.end.4.i, label %if.end.3.i.do.body6_crit_edge

if.end.3.i.do.body6_crit_edge:                    ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

if.end.4.i:                                       ; preds = %if.end.3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748) #6
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr.5.i = getelementptr i8, ptr %42, i32 40
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5.i) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !275
  %44 = and i32 %43, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool2.not.5.i = icmp eq i32 %44, 0
  br i1 %tobool2.not.5.i, label %if.end.5.i, label %if.end.4.i.do.body6_crit_edge

if.end.4.i.do.body6_crit_edge:                    ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

if.end.5.i:                                       ; preds = %if.end.4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #6
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr.6.i = getelementptr i8, ptr %47, i32 40
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6.i) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !275
  %49 = and i32 %48, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool2.not.6.i = icmp eq i32 %49, 0
  br i1 %tobool2.not.6.i, label %if.end.6.i, label %if.end.5.i.do.body6_crit_edge

if.end.5.i.do.body6_crit_edge:                    ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

if.end.6.i:                                       ; preds = %if.end.5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748) #6
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr.7.i = getelementptr i8, ptr %52, i32 40
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.7.i) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !275
  %54 = and i32 %53, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool2.not.7.i = icmp eq i32 %54, 0
  br i1 %tobool2.not.7.i, label %if.end.7.i, label %if.end.6.i.do.body6_crit_edge

if.end.6.i.do.body6_crit_edge:                    ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

if.end.7.i:                                       ; preds = %if.end.6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748) #6
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %add.ptr.8.i = getelementptr i8, ptr %57, i32 40
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.8.i) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !275
  %59 = and i32 %58, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool2.not.8.i = icmp eq i32 %59, 0
  br i1 %tobool2.not.8.i, label %stfsm_set_mode.exit, label %if.end.7.i.do.body6_crit_edge

if.end.7.i.do.body6_crit_edge:                    ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

stfsm_set_mode.exit:                              ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748) #6
  br label %cleanup

do.body6:                                         ; preds = %if.end.7.i.do.body6_crit_edge, %if.end.6.i.do.body6_crit_edge, %if.end.5.i.do.body6_crit_edge, %if.end.4.i.do.body6_crit_edge, %if.end.3.i.do.body6_crit_edge, %if.end.2.i.do.body6_crit_edge, %if.end.1.i.do.body6_crit_edge, %if.end.i.do.body6_crit_edge, %stfsm_set_freq.exit.do.body6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !276
  tail call void @arm_heavy_mb() #6
  %61 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base, align 4
  %add.ptr7.i = getelementptr i8, ptr %62, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 134217728) #6, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !277
  tail call void @arm_heavy_mb() #6
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %64, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 -1593139200) #6, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !278
  tail call void @arm_heavy_mb() #6
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %66, i32 356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #6, !srcloc !270
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !279
  tail call void @arm_heavy_mb() #6
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %68, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 16777216) #6, !srcloc !270
  tail call fastcc void @stfsm_clear_fifo(ptr noundef %fsm)
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %stfsm_set_mode.exit
  %retval.0 = phi i32 [ 0, %do.body6 ], [ -16, %stfsm_set_mode.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @stfsm_jedec_probe(ptr nocapture noundef readonly %fsm) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca [2 x i32], align 4
  %id = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %id) #6
  %0 = getelementptr inbounds [5 x i8], ptr %id, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %id, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i8], ptr %id, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i8], ptr %id, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #6
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp.i, align 4, !annotation !268
  %5 = getelementptr inbounds [2 x i32], ptr %tmp.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !268
  %base.i.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 1
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 324
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %10 = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.body11.preheader.i.i, !prof !281

do.body11.preheader.i.i:                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 256
  br label %do.body11.i.i

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/devices/st_spi_fsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 719, 0\0A.popsection", ""() #6, !srcloc !282
  unreachable

do.body11.i.i:                                    ; preds = %do.body11.i.i.do.body11.i.i_crit_edge, %do.body11.preheader.i.i
  %words.020.i.i = phi i32 [ %dec.i.i, %do.body11.i.i.do.body11.i.i_crit_edge ], [ 17, %do.body11.preheader.i.i ]
  %src.019.i.i = phi ptr [ %incdec.ptr.i.i, %do.body11.i.i.do.body11.i.i_crit_edge ], [ @stfsm_seq_read_jedec, %do.body11.preheader.i.i ]
  %dst.018.i.i = phi ptr [ %add.ptr14.i.i, %do.body11.i.i.do.body11.i.i_crit_edge ], [ %add.ptr.i.i, %do.body11.preheader.i.i ]
  %dec.i.i = add nsw i32 %words.020.i.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !283
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %src.019.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %src.019.i.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.018.i.i, i32 %13) #6, !srcloc !270
  %incdec.ptr.i.i = getelementptr i32, ptr %src.019.i.i, i32 1
  %add.ptr14.i.i = getelementptr i8, ptr %dst.018.i.i, i32 4
  %tobool10.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool10.not.i.i, label %stfsm_load_seq.exit.i, label %do.body11.i.i.do.body11.i.i_crit_edge

do.body11.i.i.do.body11.i.i_crit_edge:            ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i.i

stfsm_load_seq.exit.i:                            ; preds = %do.body11.i.i
  call fastcc void @stfsm_read_fifo(ptr noundef %fsm, ptr noundef nonnull %tmp.i, i32 noundef 8) #6
  %14 = call ptr @memcpy(ptr %id, ptr %tmp.i, i32 5)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -100, %15
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end4.i.i.while.body.i.i_crit_edge, %stfsm_load_seq.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %18, i32 324
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i) #6, !srcloc !274
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %20 = and i32 %19, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool2.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %while.body.i.i.stfsm_read_jedec.exit_crit_edge

while.body.i.i.stfsm_read_jedec.exit_crit_edge:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stfsm_read_jedec.exit

if.end4.i.i:                                      ; preds = %while.body.i.i
  %sub.i.i = add i32 %add.neg.i.i, %16
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 742, i32 noundef 0) #6
  %call.i.i.i = call i32 @__cond_resched() #6
  %tobool.not.i5.i = icmp slt i32 %sub.i.i, 0
  br i1 %tobool.not.i5.i, label %if.end4.i.i.while.body.i.i_crit_edge, label %do.end.i.i

if.end4.i.i.while.body.i.i_crit_edge:             ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

do.end.i.i:                                       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fsm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.34) #9
  br label %stfsm_read_jedec.exit

stfsm_read_jedec.exit:                            ; preds = %do.end.i.i, %while.body.i.i.stfsm_read_jedec.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #6
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %id, align 1
  %conv = zext i8 %24 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %0, align 1
  %conv2 = zext i8 %26 to i32
  %shl3 = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl3, %shl
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %1, align 1
  %conv5 = zext i8 %28 to i32
  %or6 = or i32 %or, %conv5
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %2, align 1
  %conv8 = zext i8 %30 to i32
  %shl9 = shl nuw nsw i32 %conv8, 8
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %3, align 1
  %conv11 = zext i8 %32 to i32
  %or12 = or i32 %shl9, %conv11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stfsm_jedec_probe.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stfsm_jedec_probe, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !272

if.then:                                          ; preds = %stfsm_read_jedec.exit
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fsm, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stfsm_jedec_probe.__UNIQUE_ID_ddebug255, ptr noundef %34, ptr noundef nonnull @.str.45, i32 noundef %or6, ptr noundef nonnull %id) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %stfsm_read_jedec.exit
  %35 = load ptr, ptr @flash_types, align 4
  %tobool17.not48 = icmp eq ptr %35, null
  br i1 %tobool17.not48, label %do.end.do.end32_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.do.end32_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %info.049 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ @flash_types, %do.end.for.body_crit_edge ]
  %jedec_id = getelementptr inbounds %struct.flash_info, ptr %info.049, i32 0, i32 1
  %36 = ptrtoint ptr %jedec_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %jedec_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %or6)
  %cmp = icmp eq i32 %37, %or6
  br i1 %cmp, label %if.then19, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then19:                                        ; preds = %for.body
  %ext_id = getelementptr inbounds %struct.flash_info, ptr %info.049, i32 0, i32 2
  %38 = ptrtoint ptr %ext_id to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ext_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool21.not = icmp eq i16 %39, 0
  %conv20 = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or12, i32 %conv20)
  %cmp25.not = icmp eq i32 %or12, %conv20
  %or.cond = select i1 %tobool21.not, i1 true, i1 %cmp25.not
  br i1 %or.cond, label %if.then19.cleanup_crit_edge, label %if.then19.for.inc_crit_edge

if.then19.for.inc_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %if.then19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.flash_info, ptr %info.049, i32 1
  %40 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %incdec.ptr, align 4
  %tobool17.not = icmp eq ptr %41, null
  br i1 %tobool17.not, label %for.inc.do.end32_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end32_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32

do.end32:                                         ; preds = %for.inc.do.end32_crit_edge, %do.end.do.end32_crit_edge
  %42 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fsm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.46, i32 noundef %or6) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %if.then19.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end32 ], [ %info.049, %if.then19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %id) #6
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stfsm_mtd_read(ptr nocapture noundef readonly %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 56, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stfsm_mtd_read.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stfsm_mtd_read, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %conv = trunc i64 %from to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stfsm_mtd_read.__UNIQUE_ID_ddebug246, ptr noundef %5, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.103, i32 noundef %conv, i32 noundef %len) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.stfsm, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not30 = icmp eq i32 %len, 0
  br i1 %cmp.not30, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  %from.addr.033 = phi i64 [ %add, %while.body.while.body_crit_edge ], [ %from, %do.end.while.body_crit_edge ]
  %len.addr.032 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %len, %do.end.while.body_crit_edge ]
  %buf.addr.031 = phi ptr [ %add.ptr, %while.body.while.body_crit_edge ], [ %buf, %do.end.while.body_crit_edge ]
  %6 = tail call i32 @llvm.umin.i32(i32 %len.addr.032, i32 256)
  %conv9 = trunc i64 %from.addr.033 to i32
  tail call fastcc void @stfsm_read(ptr noundef %3, ptr noundef %buf.addr.031, i32 noundef %6, i32 noundef %conv9)
  %add.ptr = getelementptr i8, ptr %buf.addr.031, i32 %6
  %conv11 = zext i32 %6 to i64
  %add = add i64 %from.addr.033, %conv11
  %sub = sub i32 %len.addr.032, %6
  %7 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %retlen, align 4
  %add12 = add i32 %8, %6
  store i32 %add12, ptr %retlen, align 4
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stfsm_mtd_write(ptr nocapture noundef readonly %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 56, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stfsm_mtd_write.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stfsm_mtd_write, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %conv = trunc i64 %to to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stfsm_mtd_write.__UNIQUE_ID_ddebug251, ptr noundef %5, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i32 noundef %conv, i32 noundef %len) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.stfsm, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool6.not36 = icmp eq i32 %len, 0
  br i1 %tobool6.not36, label %do.end.out1_crit_edge, label %while.body.preheader

do.end.out1_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out1

while.body.preheader:                             ; preds = %do.end
  %rem = srem i64 %to, 256
  %conv5 = trunc i64 %rem to i32
  %phi.bo = sub nsw i32 256, %conv5
  %6 = tail call i32 @llvm.umin.i32(i32 %phi.bo, i32 %len)
  %conv9.peel = trunc i64 %to to i32
  tail call fastcc void @stfsm_write(ptr noundef %3, ptr noundef %buf, i32 noundef %6, i32 noundef %conv9.peel)
  %sub14.peel = sub i32 %len, %6
  %7 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %retlen, align 4
  %add16.peel = add i32 %8, %6
  store i32 %add16.peel, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14.peel)
  %tobool6.not.peel = icmp eq i32 %sub14.peel, 0
  br i1 %tobool6.not.peel, label %while.body.preheader.out1_crit_edge, label %while.body.peel.next

while.body.preheader.out1_crit_edge:              ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %out1

while.body.peel.next:                             ; preds = %while.body.preheader
  %conv15.peel = zext i32 %6 to i64
  %add.peel = add i64 %conv15.peel, %to
  %add.ptr.peel = getelementptr i8, ptr %buf, i32 %6
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.peel.next
  %to.addr.040 = phi i64 [ %add, %while.body.while.body_crit_edge ], [ %add.peel, %while.body.peel.next ]
  %len.addr.039 = phi i32 [ %sub14, %while.body.while.body_crit_edge ], [ %sub14.peel, %while.body.peel.next ]
  %b.038 = phi ptr [ %add.ptr, %while.body.while.body_crit_edge ], [ %add.ptr.peel, %while.body.peel.next ]
  %9 = tail call i32 @llvm.umin.i32(i32 %len.addr.039, i32 256)
  %conv9 = trunc i64 %to.addr.040 to i32
  tail call fastcc void @stfsm_write(ptr noundef %3, ptr noundef %b.038, i32 noundef %9, i32 noundef %conv9)
  %add.ptr = getelementptr i8, ptr %b.038, i32 %9
  %sub14 = sub i32 %len.addr.039, %9
  %conv15 = zext i32 %9 to i64
  %add = add i64 %to.addr.040, %conv15
  %10 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %retlen, align 4
  %add16 = add i32 %11, %9
  store i32 %add16, ptr %retlen, align 4
  %tobool6.not = icmp eq i32 %sub14, 0
  br i1 %tobool6.not, label %while.body.out1_crit_edge, label %while.body.while.body_crit_edge, !llvm.loop !284

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.out1_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out1

out1:                                             ; preds = %while.body.out1_crit_edge, %while.body.preheader.out1_crit_edge, %do.end.out1_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stfsm_mtd_erase(ptr nocapture noundef readonly %mtd, ptr nocapture noundef readonly %instr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 56, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stfsm_mtd_erase.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stfsm_mtd_erase, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %instr, align 8
  %len6 = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %8 = ptrtoint ptr %len6 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %len6, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stfsm_mtd_erase.__UNIQUE_ID_ddebug254, ptr noundef %5, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.113, i64 noundef %7, i64 noundef %9) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %instr, align 8
  %conv = trunc i64 %11 to i32
  %len8 = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %12 = ptrtoint ptr %len8 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %len8, align 8
  %conv9 = trunc i64 %13 to i32
  %lock = getelementptr inbounds %struct.stfsm, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %conv10 = and i64 %13, 4294967295
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 2
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %conv10, i64 %15)
  %cmp = icmp eq i64 %conv10, %15
  br i1 %cmp, label %if.then12, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9)
  %tobool17.not46 = icmp eq i32 %conv9, 0
  br i1 %tobool17.not46, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  br label %while.body

if.then12:                                        ; preds = %do.end
  %call13 = tail call fastcc i32 @stfsm_erase_chip(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %if.then12.out1_crit_edge

if.then12.out1_crit_edge:                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %out1

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %while.body.lr.ph
  %len.048 = phi i32 [ %conv9, %while.body.lr.ph ], [ %sub, %if.end21.while.body_crit_edge ]
  %addr.047 = phi i32 [ %conv, %while.body.lr.ph ], [ %add, %if.end21.while.body_crit_edge ]
  %call18 = tail call fastcc i32 @stfsm_erase_sector(ptr noundef %3, i32 noundef %addr.047)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %while.body.out1_crit_edge

while.body.out1_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out1

if.end21:                                         ; preds = %while.body
  %16 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %erasesize, align 8
  %add = add i32 %17, %addr.047
  %sub = sub i32 %len.048, %17
  %tobool17.not = icmp eq i32 %sub, 0
  br i1 %tobool17.not, label %if.end21.cleanup_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out1:                                             ; preds = %while.body.out1_crit_edge, %if.then12.out1_crit_edge
  %ret.0 = phi i32 [ %call13, %if.then12.out1_crit_edge ], [ %call18, %while.body.out1_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %out1, %if.end21.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out1 ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %if.then12.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stfsm_clear_fifo(ptr nocapture noundef readonly %fsm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 324
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !274
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !286
  %shr.i = lshr i32 %3, 5
  %and.i = and i32 %shr.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.for.body15_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.body15_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body15

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.085 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 768
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !287
  %inc = add nuw nsw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, %and.i
  br i1 %exitcond.not, label %do.body, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stfsm_clear_fifo.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stfsm_clear_fifo, %if.then8)) #6
          to label %for.body15 [label %if.then8], !srcloc !272

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stfsm_clear_fifo.__UNIQUE_ID_ddebug239, ptr noundef %8, ptr noundef nonnull @.str.30, i32 noundef %and.i) #6
  br label %for.body15

for.body15:                                       ; preds = %stfsm_wait_seq.exit.for.body15_crit_edge, %if.then8, %do.body, %entry.for.body15_crit_edge
  %i.186 = phi i32 [ %inc18, %stfsm_wait_seq.exit.for.body15_crit_edge ], [ 0, %do.body ], [ 0, %if.then8 ], [ 0, %entry.for.body15_crit_edge ]
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 324
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %12 = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.body11.preheader.i, !prof !281

do.body11.preheader.i:                            ; preds = %for.body15
  %add.ptr.i73 = getelementptr i8, ptr %10, i32 256
  br label %do.body11.i

do.body4.i:                                       ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/devices/st_spi_fsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 719, 0\0A.popsection", ""() #6, !srcloc !282
  unreachable

do.body11.i:                                      ; preds = %do.body11.i.do.body11.i_crit_edge, %do.body11.preheader.i
  %words.020.i = phi i32 [ %dec.i, %do.body11.i.do.body11.i_crit_edge ], [ 17, %do.body11.preheader.i ]
  %src.019.i = phi ptr [ %incdec.ptr.i, %do.body11.i.do.body11.i_crit_edge ], [ @stfsm_seq_load_fifo_byte, %do.body11.preheader.i ]
  %dst.018.i = phi ptr [ %add.ptr14.i, %do.body11.i.do.body11.i_crit_edge ], [ %add.ptr.i73, %do.body11.preheader.i ]
  %dec.i = add nsw i32 %words.020.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !283
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %src.019.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %src.019.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.018.i, i32 %15) #6, !srcloc !270
  %incdec.ptr.i = getelementptr i32, ptr %src.019.i, i32 1
  %add.ptr14.i = getelementptr i8, ptr %dst.018.i, i32 4
  %tobool10.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool10.not.i, label %stfsm_load_seq.exit, label %do.body11.i.do.body11.i_crit_edge

do.body11.i.do.body11.i_crit_edge:                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

stfsm_load_seq.exit:                              ; preds = %do.body11.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -100, %16
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %stfsm_load_seq.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i74 = getelementptr i8, ptr %19, i32 324
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i74) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %21 = and i32 %20, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool2.not.i = icmp eq i32 %21, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %while.body.i.stfsm_wait_seq.exit_crit_edge

while.body.i.stfsm_wait_seq.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stfsm_wait_seq.exit

if.end4.i:                                        ; preds = %while.body.i
  %sub.i = add i32 %add.neg.i, %17
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 742, i32 noundef 0) #6
  %call.i.i = tail call i32 @__cond_resched() #6
  %tobool.not.i75 = icmp slt i32 %sub.i, 0
  br i1 %tobool.not.i75, label %if.end4.i.while.body.i_crit_edge, label %do.end.i

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.34) #9
  br label %stfsm_wait_seq.exit

stfsm_wait_seq.exit:                              ; preds = %do.end.i, %while.body.i.stfsm_wait_seq.exit_crit_edge
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %25, i32 324
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i77) #6, !srcloc !274
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !286
  %shr.i78 = lshr i32 %27, 5
  %and.i79 = and i32 %shr.i78, 127
  %inc18 = add nuw nsw i32 %i.186, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.186)
  %cmp11 = icmp ult i32 %i.186, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79)
  %tobool12.not = icmp eq i32 %and.i79, 0
  %or.cond = select i1 %cmp11, i1 %tobool12.not, i1 false
  br i1 %or.cond, label %stfsm_wait_seq.exit.for.body15_crit_edge, label %for.end19

stfsm_wait_seq.exit.for.body15_crit_edge:         ; preds = %stfsm_wait_seq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body15

for.end19:                                        ; preds = %stfsm_wait_seq.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i79)
  %cmp20.not = icmp eq i32 %and.i79, 1
  br i1 %cmp20.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %for.end19
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.31) #9
  br label %cleanup

if.end26:                                         ; preds = %for.end19
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr30 = getelementptr i8, ptr %31, i32 768
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !288
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stfsm_clear_fifo.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stfsm_clear_fifo, %if.then46)) #6
          to label %cleanup [label %if.then46], !srcloc !272

if.then46:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fsm, align 8
  %sub = sub nsw i32 3, %i.186
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stfsm_clear_fifo.__UNIQUE_ID_ddebug240, ptr noundef %34, ptr noundef nonnull @.str.32, i32 noundef %sub) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end26, %do.end24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stfsm_read_fifo(ptr nocapture noundef readonly %fsm, ptr noundef %buf, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %size, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stfsm_read_fifo.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stfsm_read_fifo, %if.then)) #6
          to label %do.body3 [label %if.then], !srcloc !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stfsm_read_fifo.__UNIQUE_ID_ddebug236, ptr noundef %1, ptr noundef nonnull @.str.49, i32 noundef %size) #6
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  %2 = ptrtoint ptr %buf to i32
  %3 = or i32 %2, %size
  %4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %while.cond.preheader, label %do.body14, !prof !289

while.cond.preheader:                             ; preds = %do.body3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %tobool23.not48 = icmp ult i32 %size, 4
  br i1 %tobool23.not48, label %while.cond.preheader.while.end_crit_edge, label %for.cond.preheader.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

for.cond.preheader.lr.ph:                         ; preds = %while.cond.preheader
  %base.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 1
  br label %for.cond.preheader

do.body14:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/devices/st_spi_fsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 756, 0\0A.popsection", ""() #6, !srcloc !290
  unreachable

for.cond.preheader:                               ; preds = %for.end.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %buf.addr.050 = phi ptr [ %buf, %for.cond.preheader.lr.ph ], [ %add.ptr29, %for.end.for.cond.preheader_crit_edge ]
  %remaining.049 = phi i32 [ %shr, %for.cond.preheader.lr.ph ], [ %sub, %for.end.for.cond.preheader_crit_edge ]
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %6, i32 324
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #6, !srcloc !274
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !286
  %shr.i45 = lshr i32 %8, 5
  %and.i46 = and i32 %shr.i45, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %tobool25.not47 = icmp eq i32 %and.i46, 0
  br i1 %tobool25.not47, label %for.cond.preheader.if.end27_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.if.end27_crit_edge:            ; preds = %for.cond.preheader
  br label %if.end27

if.end27:                                         ; preds = %if.end27.if.end27_crit_edge, %for.cond.preheader.if.end27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 324
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !274
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !286
  %shr.i = lshr i32 %13, 5
  %and.i = and i32 %shr.i, 127
  %tobool25.not = icmp eq i32 %and.i, 0
  br i1 %tobool25.not, label %if.end27.if.end27_crit_edge, label %if.end27.for.end_crit_edge

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end27.if.end27_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

for.end:                                          ; preds = %if.end27.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %and.i.lcssa = phi i32 [ %and.i46, %for.cond.preheader.for.end_crit_edge ], [ %and.i, %if.end27.for.end_crit_edge ]
  %14 = tail call i32 @llvm.umin.i32(i32 %and.i.lcssa, i32 %remaining.049)
  %sub = sub i32 %remaining.049, %14
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 768
  tail call void @__raw_readsl(ptr noundef %add.ptr, ptr noundef %buf.addr.050, i32 noundef %14) #6
  %add.ptr29 = getelementptr i32, ptr %buf.addr.050, i32 %14
  %tobool23.not = icmp eq i32 %sub, 0
  br i1 %tobool23.not, label %for.end.while.end_crit_edge, label %for.end.for.cond.preheader_crit_edge

for.end.for.cond.preheader_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stfsm_mx25_config(ptr nocapture noundef %fsm) #2 align 64 {
entry:
  %sta = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 4
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %flags1 = getelementptr inbounds %struct.flash_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sta) #6
  %4 = ptrtoint ptr %sta to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %sta, align 1, !annotation !268
  %stfsm_seq_read.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 11
  %call.i = tail call fastcc i32 @stfsm_search_prepare_rw_seq(ptr noundef %fsm, ptr noundef %stfsm_seq_read.i, ptr noundef nonnull @default_read_configs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.97, i32 noundef %3) #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %stfsm_seq_write.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 12
  %call2.i = tail call fastcc i32 @stfsm_search_prepare_rw_seq(ptr noundef %fsm, ptr noundef %stfsm_seq_write.i, ptr noundef nonnull @default_write_configs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.100, i32 noundef %3) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  %flags.i.i = getelementptr inbounds %struct.flash_info, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or3.i.i = select i1 %tobool.not.i.i, i32 17825800, i32 17825808
  store i32 %or3.i.i, ptr getelementptr inbounds ({ i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, i8, i8, [11 x i8] }>, i32 }, ptr @stfsm_seq_erase_sector, i32 0, i32 3), align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end11_crit_edge, label %if.then3

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then3:                                         ; preds = %if.end
  %seq_opc.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 13, i32 4
  %13 = ptrtoint ptr %seq_opc.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 67767, ptr %seq_opc.i, align 4
  %seq1.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 13, i32 8
  %14 = ptrtoint ptr %seq1.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 17, ptr %seq1.i, align 4
  %arrayidx4.i = getelementptr %struct.stfsm, ptr %fsm, i32 0, i32 13, i32 8, i32 1
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 7, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr %struct.stfsm, ptr %fsm, i32 0, i32 13, i32 8, i32 2
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 15, ptr %arrayidx6.i, align 2
  %seq_cfg.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 13, i32 9
  %17 = ptrtoint ptr %seq_cfg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 449, ptr %seq_cfg.i, align 4
  %reset_signal.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 9
  %18 = ptrtoint ptr %reset_signal.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %reset_signal.i, align 1, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i50 = icmp eq i8 %19, 0
  br i1 %tobool.not.i50, label %if.then3.stfsm_can_handle_soc_reset.exit_crit_edge, label %land.lhs.true.i

if.then3.stfsm_can_handle_soc_reset.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %stfsm_can_handle_soc_reset.exit

land.lhs.true.i:                                  ; preds = %if.then3
  %20 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info, align 4
  %flags.i = getelementptr inbounds %struct.flash_info, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.stfsm_can_handle_soc_reset.exit_crit_edge, label %land.lhs.true.i.if.then8_crit_edge

land.lhs.true.i.if.then8_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

land.lhs.true.i.stfsm_can_handle_soc_reset.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stfsm_can_handle_soc_reset.exit

stfsm_can_handle_soc_reset.exit:                  ; preds = %land.lhs.true.i.stfsm_can_handle_soc_reset.exit_crit_edge, %if.then3.stfsm_can_handle_soc_reset.exit_crit_edge
  %reset_por.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 10
  %24 = ptrtoint ptr %reset_por.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reset_por.i, align 2, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool2.not.i.not = icmp eq i8 %25, 0
  br i1 %tobool2.not.i.not, label %lor.lhs.false, label %stfsm_can_handle_soc_reset.exit.if.then8_crit_edge

stfsm_can_handle_soc_reset.exit.if.then8_crit_edge: ; preds = %stfsm_can_handle_soc_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

lor.lhs.false:                                    ; preds = %stfsm_can_handle_soc_reset.exit
  %booted_from_spi = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 8
  %26 = ptrtoint ptr %booted_from_spi to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %booted_from_spi, align 4, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool7.not = icmp eq i8 %27, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.then8_crit_edge, label %if.else

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %stfsm_can_handle_soc_reset.exit.if.then8_crit_edge, %land.lhs.true.i.if.then8_crit_edge
  tail call fastcc void @stfsm_enter_32bit_addr(ptr noundef %fsm, i32 noundef 1)
  br label %if.end11

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %configuration = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 6
  %28 = ptrtoint ptr %configuration to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 11, ptr %configuration, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8, %if.end.if.end11_crit_edge
  call fastcc void @stfsm_read_status(ptr noundef %fsm, i8 noundef zeroext 5, ptr noundef nonnull %sta)
  %seq_cfg = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 11, i32 9
  %29 = ptrtoint ptr %seq_cfg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %seq_cfg, align 8
  %31 = and i32 %30, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %31)
  %cmp = icmp eq i32 %31, 196608
  %32 = ptrtoint ptr %sta to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sta, align 1
  %34 = and i8 %33, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool16.not = icmp eq i8 %34, 0
  br i1 %cmp, label %if.then14, label %if.else23

if.then14:                                        ; preds = %if.end11
  br i1 %tobool16.not, label %if.then17, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i8 %33, 64
  %conv20 = zext i8 %or to i16
  tail call fastcc void @stfsm_write_status(ptr noundef %fsm, i8 noundef zeroext 1, i16 noundef zeroext %conv20, i32 noundef 1, i32 noundef 1)
  br label %cleanup

if.else23:                                        ; preds = %if.end11
  br i1 %tobool16.not, label %if.else23.cleanup_crit_edge, label %if.then27

if.else23.cleanup_crit_edge:                      ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #8
  %and29 = and i8 %33, -65
  %conv31 = zext i8 %and29 to i16
  tail call fastcc void @stfsm_write_status(ptr noundef %fsm, i8 noundef zeroext 1, i16 noundef zeroext %conv31, i32 noundef 1, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.else23.cleanup_crit_edge, %if.then17, %if.then14.cleanup_crit_edge, %do.end7.i, %do.end.i
  %retval.0 = phi i32 [ 0, %if.else23.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.then14.cleanup_crit_edge ], [ 0, %if.then17 ], [ %call2.i, %do.end7.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sta) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stfsm_n25q_config(ptr nocapture noundef %fsm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 4
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %flags1 = getelementptr inbounds %struct.flash_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %stfsm_seq_read2 = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 11
  %n25q_read3_configs.n25q_read4_configs = select i1 %tobool.not, ptr @n25q_read3_configs, ptr @n25q_read4_configs
  %call3 = tail call fastcc i32 @stfsm_search_prepare_rw_seq(ptr noundef %fsm, ptr noundef %stfsm_seq_read2, ptr noundef nonnull %n25q_read3_configs.n25q_read4_configs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.89, i32 noundef %3) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %stfsm_seq_write = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 12
  %call7 = tail call fastcc i32 @stfsm_search_prepare_rw_seq(ptr noundef %fsm, ptr noundef %stfsm_seq_write, ptr noundef nonnull @default_write_configs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.92, i32 noundef %3) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  %flags.i = getelementptr inbounds %struct.flash_info, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or3.i = select i1 %tobool.not.i, i32 17825800, i32 17825808
  store i32 %or3.i, ptr getelementptr inbounds ({ i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, i8, i8, [11 x i8] }>, i32 }, ptr @stfsm_seq_erase_sector, i32 0, i32 3), align 4
  br i1 %tobool.not, label %if.end14.if.end26_crit_edge, label %if.then17

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then17:                                        ; preds = %if.end14
  %seq_opc.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 13, i32 4
  %12 = ptrtoint ptr %seq_opc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2231, ptr %seq_opc.i, align 4
  %arrayidx2.i = getelementptr %struct.stfsm, ptr %fsm, i32 0, i32 13, i32 4, i32 1
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 67590, ptr %arrayidx2.i, align 4
  %seq3.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 13, i32 8
  %14 = ptrtoint ptr %seq3.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 33, ptr %seq3.i, align 4
  %arrayidx6.i = getelementptr %struct.stfsm, ptr %fsm, i32 0, i32 13, i32 8, i32 1
  %15 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 17, ptr %arrayidx6.i, align 1
  %arrayidx8.i = getelementptr %struct.stfsm, ptr %fsm, i32 0, i32 13, i32 8, i32 2
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 7, ptr %arrayidx8.i, align 2
  %arrayidx10.i = getelementptr %struct.stfsm, ptr %fsm, i32 0, i32 13, i32 8, i32 3
  %17 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 15, ptr %arrayidx10.i, align 1
  %seq_cfg.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 13, i32 9
  %18 = ptrtoint ptr %seq_cfg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 449, ptr %seq_cfg.i, align 4
  %reset_signal.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 9
  %19 = ptrtoint ptr %reset_signal.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %reset_signal.i, align 1, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i52 = icmp eq i8 %20, 0
  br i1 %tobool.not.i52, label %if.then17.stfsm_can_handle_soc_reset.exit_crit_edge, label %land.lhs.true.i

if.then17.stfsm_can_handle_soc_reset.exit_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %stfsm_can_handle_soc_reset.exit

land.lhs.true.i:                                  ; preds = %if.then17
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i55 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool1.not.i = icmp eq i32 %and.i55, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.stfsm_can_handle_soc_reset.exit_crit_edge, label %land.lhs.true.i.if.then22_crit_edge

land.lhs.true.i.if.then22_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

land.lhs.true.i.stfsm_can_handle_soc_reset.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stfsm_can_handle_soc_reset.exit

stfsm_can_handle_soc_reset.exit:                  ; preds = %land.lhs.true.i.stfsm_can_handle_soc_reset.exit_crit_edge, %if.then17.stfsm_can_handle_soc_reset.exit_crit_edge
  %reset_por.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 10
  %23 = ptrtoint ptr %reset_por.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %reset_por.i, align 2, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool2.not.i.not = icmp eq i8 %24, 0
  br i1 %tobool2.not.i.not, label %lor.lhs.false, label %stfsm_can_handle_soc_reset.exit.if.then22_crit_edge

stfsm_can_handle_soc_reset.exit.if.then22_crit_edge: ; preds = %stfsm_can_handle_soc_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

lor.lhs.false:                                    ; preds = %stfsm_can_handle_soc_reset.exit
  %booted_from_spi = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 8
  %25 = ptrtoint ptr %booted_from_spi to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %booted_from_spi, align 4, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool21.not = icmp eq i8 %26, 0
  br i1 %tobool21.not, label %lor.lhs.false.if.then22_crit_edge, label %if.else24

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %stfsm_can_handle_soc_reset.exit.if.then22_crit_edge, %land.lhs.true.i.if.then22_crit_edge
  tail call fastcc void @stfsm_enter_32bit_addr(ptr noundef %fsm, i32 noundef 1)
  br label %if.end26

if.else24:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %configuration = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 6
  %27 = ptrtoint ptr %configuration to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 10, ptr %configuration, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then22, %if.end14.if.end26_crit_edge
  tail call fastcc void @stfsm_write_status(ptr noundef %fsm, i8 noundef zeroext -127, i16 noundef zeroext 139, i32 noundef 1, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end12, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call7, %do.end12 ], [ 0, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stfsm_s25fl_config(ptr noundef %fsm) #2 align 64 {
entry:
  %seq.i113 = alloca %struct.stfsm_seq, align 4
  %tmp.i = alloca i32, align 4
  %seq.i = alloca %struct.stfsm_seq, align 4
  %sr1 = alloca i8, align 1
  %cr1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 4
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %flags2 = getelementptr inbounds %struct.flash_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags2, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sr1) #6
  %4 = ptrtoint ptr %sr1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %sr1, align 1, !annotation !268
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cr1) #6
  %5 = ptrtoint ptr %cr1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %cr1, align 1, !annotation !268
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %stfsm_seq_read.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 11
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @stfsm_search_prepare_rw_seq(ptr noundef %fsm, ptr noundef %stfsm_seq_read.i, ptr noundef nonnull @stfsm_s25fl_read4_configs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %stfsm_seq_write = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 12
  %call5 = tail call fastcc i32 @stfsm_search_prepare_rw_seq(ptr noundef %fsm, ptr noundef %stfsm_seq_write, ptr noundef nonnull @stfsm_s25fl_write4_configs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  store i32 2268, ptr getelementptr inbounds ({ i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, i8, i8, [11 x i8] }>, i32 }, ptr @stfsm_seq_erase_sector, i32 0, i32 4, i32 1), align 4
  br label %if.end13

if.else:                                          ; preds = %entry
  %call.i = tail call fastcc i32 @stfsm_search_prepare_rw_seq(ptr noundef %fsm, ptr noundef %stfsm_seq_read.i, ptr noundef nonnull @default_read_configs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.97, i32 noundef %3) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %stfsm_seq_write.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 12
  %call2.i = tail call fastcc i32 @stfsm_search_prepare_rw_seq(ptr noundef %fsm, ptr noundef %stfsm_seq_write.i, ptr noundef nonnull @default_write_configs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %stfsm_prepare_rwe_seqs_default.exit, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.100, i32 noundef %3) #9
  br label %cleanup

stfsm_prepare_rwe_seqs_default.exit:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info1, align 4
  %flags.i.i = getelementptr inbounds %struct.flash_info, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or3.i.i = select i1 %tobool.not.i.i, i32 17825800, i32 17825808
  br label %if.end13

if.end13:                                         ; preds = %stfsm_prepare_rwe_seqs_default.exit, %if.end8
  %storemerge = phi i32 [ 17825808, %if.end8 ], [ %or3.i.i, %stfsm_prepare_rwe_seqs_default.exit ]
  store i32 %storemerge, ptr getelementptr inbounds ({ i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, i8, i8, [11 x i8] }>, i32 }, ptr @stfsm_seq_erase_sector, i32 0, i32 3), align 4
  %and14 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end37_crit_edge, label %for.cond.preheader

if.end13.if.end37_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

for.cond.preheader:                               ; preds = %if.end13
  %sector_size = getelementptr inbounds %struct.flash_info, ptr %1, i32 0, i32 3
  %n_sectors = getelementptr inbounds %struct.flash_info, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sector_size, align 4
  %16 = ptrtoint ptr %n_sectors to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %n_sectors, align 4
  %conv151 = zext i16 %17 to i32
  %mul152 = mul i32 %15, %conv151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul152)
  %cmp153.not = icmp eq i32 %mul152, 0
  br i1 %cmp153.not, label %for.cond.preheader.if.end37_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end37_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %addr1.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i, i32 0, i32 1
  %addr2.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i, i32 0, i32 2
  %addr_cfg.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i, i32 0, i32 3
  %seq_opc.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i, i32 0, i32 4
  %18 = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i, i32 0, i32 4, i32 1
  %mode.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i, i32 0, i32 5
  %dummy.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i, i32 0, i32 6
  %status.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i, i32 0, i32 7
  %seq2.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i, i32 0, i32 8
  %arrayinit.element.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i, i32 0, i32 8, i32 1
  %arrayinit.element4.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i, i32 0, i32 8, i32 2
  %arrayinit.element5.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i, i32 0, i32 8, i32 3
  %arrayinit.element6.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i, i32 0, i32 8, i32 4
  %arrayinit.start.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i, i32 0, i32 8, i32 5
  %arrayinit.end.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i, i32 0, i32 9
  %base.i.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 1
  %addr1.i114 = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i113, i32 0, i32 1
  %addr2.i116 = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i113, i32 0, i32 2
  %addr_cfg.i118 = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i113, i32 0, i32 3
  %seq_opc.i119 = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i113, i32 0, i32 4
  %arrayinit.element.i120 = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i113, i32 0, i32 4, i32 1
  %arrayinit.start.i121 = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i113, i32 0, i32 4, i32 2
  %status.i122 = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i113, i32 0, i32 7
  %seq4.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i113, i32 0, i32 8
  %arrayinit.element6.i123 = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i113, i32 0, i32 8, i32 1
  %arrayinit.element7.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i113, i32 0, i32 8, i32 2
  %arrayinit.element8.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i113, i32 0, i32 8, i32 3
  %arrayinit.element9.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i113, i32 0, i32 8, i32 4
  %arrayinit.element10.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i113, i32 0, i32 8, i32 5
  %arrayinit.start11.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i113, i32 0, i32 8, i32 6
  %arrayinit.end12.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq.i113, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %if.end36.for.body_crit_edge, %for.body.lr.ph
  %offs.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %add35, %if.end36.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %19 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %tmp.i, align 4, !annotation !268
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %seq.i) #6
  %20 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 32, ptr %seq.i, align 4
  %shr.i = lshr i32 %offs.0154, 16
  %21 = ptrtoint ptr %addr1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr.i, ptr %addr1.i, align 4
  %and1.i = and i32 %offs.0154, 61440
  %22 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and1.i, ptr %addr2.i, align 4
  %23 = ptrtoint ptr %addr_cfg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1048592, ptr %addr_cfg.i, align 4
  %24 = call ptr @memset(ptr %18, i32 0, i32 16)
  %25 = ptrtoint ptr %seq_opc.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2272, ptr %seq_opc.i, align 4
  %26 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %mode.i, align 4
  %27 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %dummy.i, align 4
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %status.i, align 4
  %29 = ptrtoint ptr %seq2.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 17, ptr %seq2.i, align 4
  %30 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 18, ptr %arrayinit.element.i, align 1
  %31 = ptrtoint ptr %arrayinit.element4.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 34, ptr %arrayinit.element4.i, align 2
  %32 = ptrtoint ptr %arrayinit.element5.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 38, ptr %arrayinit.element5.i, align 1
  %33 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 15, ptr %arrayinit.element6.i, align 4
  %34 = call ptr @memset(ptr %arrayinit.start.i, i32 0, i32 11)
  %35 = ptrtoint ptr %arrayinit.end.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 193, ptr %arrayinit.end.i, align 4
  %36 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 324
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !274
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %39 = and i32 %38, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i112 = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i112, label %do.body4.i.i, label %do.body11.preheader.i.i, !prof !281

do.body11.preheader.i.i:                          ; preds = %for.body
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 256
  br label %do.body11.i.i

do.body4.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/devices/st_spi_fsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 719, 0\0A.popsection", ""() #6, !srcloc !282
  unreachable

do.body11.i.i:                                    ; preds = %do.body11.i.i.do.body11.i.i_crit_edge, %do.body11.preheader.i.i
  %words.020.i.i = phi i32 [ %dec.i.i, %do.body11.i.i.do.body11.i.i_crit_edge ], [ 17, %do.body11.preheader.i.i ]
  %src.019.i.i = phi ptr [ %incdec.ptr.i.i, %do.body11.i.i.do.body11.i.i_crit_edge ], [ %seq.i, %do.body11.preheader.i.i ]
  %dst.018.i.i = phi ptr [ %add.ptr14.i.i, %do.body11.i.i.do.body11.i.i_crit_edge ], [ %add.ptr.i.i, %do.body11.preheader.i.i ]
  %dec.i.i = add nsw i32 %words.020.i.i, -1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !283
  call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %src.019.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %src.019.i.i, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.018.i.i, i32 %42) #6, !srcloc !270
  %incdec.ptr.i.i = getelementptr i32, ptr %src.019.i.i, i32 1
  %add.ptr14.i.i = getelementptr i8, ptr %dst.018.i.i, i32 4
  %tobool10.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool10.not.i.i, label %stfsm_load_seq.exit.i, label %do.body11.i.i.do.body11.i.i_crit_edge

do.body11.i.i.do.body11.i.i_crit_edge:            ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i.i

stfsm_load_seq.exit.i:                            ; preds = %do.body11.i.i
  call fastcc void @stfsm_read_fifo(ptr noundef %fsm, ptr noundef nonnull %tmp.i, i32 noundef 4) #6
  %43 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tmp.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -100, %45
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end4.i.i.while.body.i.i_crit_edge, %stfsm_load_seq.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %47 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i12.i = getelementptr i8, ptr %48, i32 324
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12.i) #6, !srcloc !274
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %50 = and i32 %49, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool2.not.i.i = icmp eq i32 %50, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %while.body.i.i.stfsm_s25fl_read_dyb.exit_crit_edge

while.body.i.i.stfsm_s25fl_read_dyb.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stfsm_s25fl_read_dyb.exit

if.end4.i.i:                                      ; preds = %while.body.i.i
  %sub.i.i = add i32 %add.neg.i.i, %46
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 742, i32 noundef 0) #6
  %call.i.i.i = call i32 @__cond_resched() #6
  %tobool.not.i13.i = icmp slt i32 %sub.i.i, 0
  br i1 %tobool.not.i13.i, label %if.end4.i.i.while.body.i.i_crit_edge, label %do.end.i.i

if.end4.i.i.while.body.i.i_crit_edge:             ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

do.end.i.i:                                       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fsm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.34) #9
  br label %stfsm_s25fl_read_dyb.exit

stfsm_s25fl_read_dyb.exit:                        ; preds = %do.end.i.i, %while.body.i.i.stfsm_s25fl_read_dyb.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %seq.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %44)
  %cmp19 = icmp ult i32 %44, 16777216
  br i1 %cmp19, label %if.then21, label %stfsm_s25fl_read_dyb.exit.if.end22_crit_edge

stfsm_s25fl_read_dyb.exit.if.end22_crit_edge:     ; preds = %stfsm_s25fl_read_dyb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %stfsm_s25fl_read_dyb.exit
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %seq.i113) #6
  %53 = ptrtoint ptr %seq.i113 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %seq.i113, align 4
  %54 = ptrtoint ptr %addr1.i114 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shr.i, ptr %addr1.i114, align 4
  %55 = ptrtoint ptr %addr2.i116 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and1.i, ptr %addr2.i116, align 4
  %56 = ptrtoint ptr %addr_cfg.i118 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1048592, ptr %addr_cfg.i118, align 4
  %57 = ptrtoint ptr %seq_opc.i119 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 67590, ptr %seq_opc.i119, align 4
  %58 = ptrtoint ptr %arrayinit.element.i120 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2273, ptr %arrayinit.element.i120, align 4
  %59 = call ptr @memset(ptr %arrayinit.start.i121, i32 0, i32 20)
  %60 = ptrtoint ptr %status.i122 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1048831, ptr %status.i122, align 4
  %61 = ptrtoint ptr %seq4.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 17, ptr %seq4.i, align 4
  %62 = ptrtoint ptr %arrayinit.element6.i123 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 33, ptr %arrayinit.element6.i123, align 1
  %63 = ptrtoint ptr %arrayinit.element7.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 18, ptr %arrayinit.element7.i, align 2
  %64 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 34, ptr %arrayinit.element8.i, align 1
  %65 = ptrtoint ptr %arrayinit.element9.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 19, ptr %arrayinit.element9.i, align 4
  %66 = ptrtoint ptr %arrayinit.element10.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 15, ptr %arrayinit.element10.i, align 1
  %67 = call ptr @memset(ptr %arrayinit.start11.i, i32 0, i32 10)
  %68 = ptrtoint ptr %arrayinit.end12.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 193, ptr %arrayinit.end12.i, align 4
  %69 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.i125 = getelementptr i8, ptr %70, i32 324
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i125) #6, !srcloc !274
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %72 = and i32 %71, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i.i126 = icmp eq i32 %72, 0
  br i1 %tobool.not.i.i126, label %do.body4.i.i129, label %do.body11.preheader.i.i128, !prof !281

do.body11.preheader.i.i128:                       ; preds = %if.then21
  %add.ptr.i.i127 = getelementptr i8, ptr %70, i32 256
  br label %do.body11.i.i137

do.body4.i.i129:                                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/devices/st_spi_fsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 719, 0\0A.popsection", ""() #6, !srcloc !282
  unreachable

do.body11.i.i137:                                 ; preds = %do.body11.i.i137.do.body11.i.i137_crit_edge, %do.body11.preheader.i.i128
  %words.020.i.i130 = phi i32 [ %dec.i.i133, %do.body11.i.i137.do.body11.i.i137_crit_edge ], [ 17, %do.body11.preheader.i.i128 ]
  %src.019.i.i131 = phi ptr [ %incdec.ptr.i.i134, %do.body11.i.i137.do.body11.i.i137_crit_edge ], [ %seq.i113, %do.body11.preheader.i.i128 ]
  %dst.018.i.i132 = phi ptr [ %add.ptr14.i.i135, %do.body11.i.i137.do.body11.i.i137_crit_edge ], [ %add.ptr.i.i127, %do.body11.preheader.i.i128 ]
  %dec.i.i133 = add nsw i32 %words.020.i.i130, -1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !283
  call void @arm_heavy_mb() #6
  %73 = ptrtoint ptr %src.019.i.i131 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %src.019.i.i131, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.018.i.i132, i32 %75) #6, !srcloc !270
  %incdec.ptr.i.i134 = getelementptr i32, ptr %src.019.i.i131, i32 1
  %add.ptr14.i.i135 = getelementptr i8, ptr %dst.018.i.i132, i32 4
  %tobool10.not.i.i136 = icmp eq i32 %dec.i.i133, 0
  br i1 %tobool10.not.i.i136, label %stfsm_load_seq.exit.i139, label %do.body11.i.i137.do.body11.i.i137_crit_edge

do.body11.i.i137.do.body11.i.i137_crit_edge:      ; preds = %do.body11.i.i137
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i.i137

stfsm_load_seq.exit.i139:                         ; preds = %do.body11.i.i137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i138 = sub i32 -100, %76
  br label %while.body.i.i141

while.body.i.i141:                                ; preds = %if.end4.i.i144.while.body.i.i141_crit_edge, %stfsm_load_seq.exit.i139
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %78 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i1.i = getelementptr i8, ptr %79, i32 324
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i1.i) #6, !srcloc !274
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %81 = and i32 %80, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool2.not.i.i140 = icmp eq i32 %81, 0
  br i1 %tobool2.not.i.i140, label %if.end4.i.i144, label %while.body.i.i141.stfsm_s25fl_write_dyb.exit_crit_edge

while.body.i.i141.stfsm_s25fl_write_dyb.exit_crit_edge: ; preds = %while.body.i.i141
  call void @__sanitizer_cov_trace_pc() #8
  br label %stfsm_s25fl_write_dyb.exit

if.end4.i.i144:                                   ; preds = %while.body.i.i141
  %sub.i.i142 = add i32 %add.neg.i.i138, %77
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 742, i32 noundef 0) #6
  %call.i.i.i143 = call i32 @__cond_resched() #6
  %tobool.not.i2.i = icmp slt i32 %sub.i.i142, 0
  br i1 %tobool.not.i2.i, label %if.end4.i.i144.while.body.i.i141_crit_edge, label %do.end.i.i145

if.end4.i.i144.while.body.i.i141_crit_edge:       ; preds = %if.end4.i.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i141

do.end.i.i145:                                    ; preds = %if.end4.i.i144
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fsm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.34) #9
  br label %stfsm_s25fl_write_dyb.exit

stfsm_s25fl_write_dyb.exit:                       ; preds = %do.end.i.i145, %while.body.i.i141.stfsm_s25fl_write_dyb.exit_crit_edge
  %call.i146 = call fastcc zeroext i8 @stfsm_wait_busy(ptr noundef %fsm) #6
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %seq.i113) #6
  br label %if.end22

if.end22:                                         ; preds = %stfsm_s25fl_write_dyb.exit, %stfsm_s25fl_read_dyb.exit.if.end22_crit_edge
  %84 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sector_size, align 4
  %mul24 = shl i32 %85, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.0154, i32 %mul24)
  %cmp25 = icmp ult i32 %offs.0154, %mul24
  br i1 %cmp25, label %if.end22.if.end36_crit_edge, label %lor.lhs.false

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

lor.lhs.false:                                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %n_sectors to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %n_sectors, align 4
  %conv29 = zext i16 %87 to i32
  %mul30.neg = mul nsw i32 %conv29, -4
  %sub = add i32 %mul30.neg, %85
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.0154, i32 %sub)
  %cmp31.not = icmp ult i32 %offs.0154, %sub
  %spec.select = select i1 %cmp31.not, i32 65536, i32 4096
  br label %if.end36

if.end36:                                         ; preds = %lor.lhs.false, %if.end22.if.end36_crit_edge
  %.sink = phi i32 [ 4096, %if.end22.if.end36_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %add35 = add i32 %offs.0154, %.sink
  %88 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sector_size, align 4
  %90 = ptrtoint ptr %n_sectors to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %n_sectors, align 4
  %conv = zext i16 %91 to i32
  %mul = mul i32 %89, %conv
  %cmp = icmp ult i32 %add35, %mul
  br i1 %cmp, label %if.end36.for.body_crit_edge, label %if.end36.if.end37_crit_edge

if.end36.if.end37_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end37:                                         ; preds = %if.end36.if.end37_crit_edge, %for.cond.preheader.if.end37_crit_edge, %if.end13.if.end37_crit_edge
  call fastcc void @stfsm_read_status(ptr noundef %fsm, i8 noundef zeroext 53, ptr noundef nonnull %cr1)
  %seq_cfg = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 11, i32 9
  %92 = ptrtoint ptr %seq_cfg to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %seq_cfg, align 8
  %94 = and i32 %93, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %94)
  %cmp42 = icmp eq i32 %94, 196608
  %95 = ptrtoint ptr %cr1 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %cr1, align 1
  %97 = and i8 %96, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool47.not = icmp eq i8 %97, 0
  br i1 %cmp42, label %if.then44, label %if.else52

if.then44:                                        ; preds = %if.end37
  br i1 %tobool47.not, label %if.then48, label %if.then44.if.end71_crit_edge

if.then44.if.end71_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then48:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i8 %96, 2
  br label %if.then63

if.else52:                                        ; preds = %if.end37
  br i1 %tobool47.not, label %if.else52.if.end71_crit_edge, label %if.then56

if.else52.if.end71_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then56:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #8
  %and58 = and i8 %96, -3
  br label %if.then63

if.then63:                                        ; preds = %if.then56, %if.then48
  %storemerge149 = phi i8 [ %and58, %if.then56 ], [ %or, %if.then48 ]
  %98 = ptrtoint ptr %cr1 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %storemerge149, ptr %cr1, align 1
  call fastcc void @stfsm_read_status(ptr noundef %fsm, i8 noundef zeroext 5, ptr noundef nonnull %sr1)
  %conv66 = zext i8 %storemerge149 to i16
  %shl = shl nuw i16 %conv66, 8
  %99 = ptrtoint ptr %sr1 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %sr1, align 1
  %conv67 = zext i8 %100 to i16
  %or68 = or i16 %shl, %conv67
  call fastcc void @stfsm_write_status(ptr noundef %fsm, i8 noundef zeroext 1, i16 noundef zeroext %or68, i32 noundef 2, i32 noundef 1)
  br label %if.end71

if.end71:                                         ; preds = %if.then63, %if.else52.if.end71_crit_edge, %if.then44.if.end71_crit_edge
  %configuration = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 6
  %101 = ptrtoint ptr %configuration to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %configuration, align 4
  %or72 = or i32 %102, 16
  store i32 %or72, ptr %configuration, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %do.end7.i, %do.end.i, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end71 ], [ %call, %if.then.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call2.i, %do.end7.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cr1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sr1) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stfsm_w25q_config(ptr nocapture noundef %fsm) #2 align 64 {
entry:
  %sr1 = alloca i8, align 1
  %sr2 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sr1) #6
  %0 = ptrtoint ptr %sr1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %sr1, align 1, !annotation !268
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sr2) #6
  %1 = ptrtoint ptr %sr2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %sr2, align 1, !annotation !268
  %info.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 4
  %2 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info.i, align 4
  %flags1.i = getelementptr inbounds %struct.flash_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1.i, align 4
  %stfsm_seq_read.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 11
  %call.i = tail call fastcc i32 @stfsm_search_prepare_rw_seq(ptr noundef %fsm, ptr noundef %stfsm_seq_read.i, ptr noundef nonnull @default_read_configs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.97, i32 noundef %5) #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %stfsm_seq_write.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 12
  %call2.i = tail call fastcc i32 @stfsm_search_prepare_rw_seq(ptr noundef %fsm, ptr noundef %stfsm_seq_write.i, ptr noundef nonnull @default_write_configs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.100, i32 noundef %5) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %10 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info.i, align 4
  %flags.i.i = getelementptr inbounds %struct.flash_info, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or3.i.i = select i1 %tobool.not.i.i, i32 17825800, i32 17825808
  store i32 %or3.i.i, ptr getelementptr inbounds ({ i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, i8, i8, [11 x i8] }>, i32 }, ptr @stfsm_seq_erase_sector, i32 0, i32 3), align 4
  call fastcc void @stfsm_read_status(ptr noundef %fsm, i8 noundef zeroext 53, ptr noundef nonnull %sr2)
  %seq_cfg = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 11, i32 9
  %14 = ptrtoint ptr %seq_cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %seq_cfg, align 8
  %16 = and i32 %15, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %16)
  %cmp = icmp eq i32 %16, 196608
  %17 = ptrtoint ptr %sr2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sr2, align 1
  %19 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool4.not = icmp eq i8 %19, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  br i1 %tobool4.not, label %if.then5, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i8 %18, 2
  br label %if.then19

if.else:                                          ; preds = %if.end
  br i1 %tobool4.not, label %if.else.cleanup_crit_edge, label %if.then12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %and14 = and i8 %18, -3
  br label %if.then19

if.then19:                                        ; preds = %if.then12, %if.then5
  %storemerge = phi i8 [ %and14, %if.then12 ], [ %or, %if.then5 ]
  call fastcc void @stfsm_read_status(ptr noundef %fsm, i8 noundef zeroext 5, ptr noundef nonnull %sr1)
  %conv22 = zext i8 %storemerge to i16
  %shl = shl nuw i16 %conv22, 8
  %20 = ptrtoint ptr %sr1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sr1, align 1
  %conv23 = zext i8 %21 to i16
  %or24 = or i16 %shl, %conv23
  tail call fastcc void @stfsm_write_status(ptr noundef %fsm, i8 noundef zeroext 1, i16 noundef zeroext %or24, i32 noundef 2, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.else.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %do.end7.i, %do.end.i
  %retval.0 = phi i32 [ 0, %if.then2.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then19 ], [ %call2.i, %do.end7.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sr2) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sr1) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stfsm_enter_32bit_addr(ptr nocapture noundef %fsm, i32 noundef %enter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enter)
  %tobool.not = icmp eq i32 %enter, 0
  %or1 = select i1 %tobool.not, i32 67817, i32 67767
  %seq_opc = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 13, i32 4
  %0 = ptrtoint ptr %seq_opc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or1, ptr %seq_opc, align 4
  %base.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 1
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 324
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %4 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.body11.preheader.i, !prof !281

do.body11.preheader.i:                            ; preds = %entry
  %stfsm_seq_en_32bit_addr = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 13
  %add.ptr.i = getelementptr i8, ptr %2, i32 256
  br label %do.body11.i

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/devices/st_spi_fsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 719, 0\0A.popsection", ""() #6, !srcloc !282
  unreachable

do.body11.i:                                      ; preds = %do.body11.i.do.body11.i_crit_edge, %do.body11.preheader.i
  %words.020.i = phi i32 [ %dec.i, %do.body11.i.do.body11.i_crit_edge ], [ 17, %do.body11.preheader.i ]
  %src.019.i = phi ptr [ %incdec.ptr.i, %do.body11.i.do.body11.i_crit_edge ], [ %stfsm_seq_en_32bit_addr, %do.body11.preheader.i ]
  %dst.018.i = phi ptr [ %add.ptr14.i, %do.body11.i.do.body11.i_crit_edge ], [ %add.ptr.i, %do.body11.preheader.i ]
  %dec.i = add nsw i32 %words.020.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !283
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %src.019.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %src.019.i, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.018.i, i32 %7) #6, !srcloc !270
  %incdec.ptr.i = getelementptr i32, ptr %src.019.i, i32 1
  %add.ptr14.i = getelementptr i8, ptr %dst.018.i, i32 4
  %tobool10.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool10.not.i, label %stfsm_load_seq.exit, label %do.body11.i.do.body11.i_crit_edge

do.body11.i.do.body11.i_crit_edge:                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

stfsm_load_seq.exit:                              ; preds = %do.body11.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -100, %8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %stfsm_load_seq.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i1 = getelementptr i8, ptr %11, i32 324
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i1) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %13 = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not.i = icmp eq i32 %13, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %while.body.i.stfsm_wait_seq.exit_crit_edge

while.body.i.stfsm_wait_seq.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stfsm_wait_seq.exit

if.end4.i:                                        ; preds = %while.body.i
  %sub.i = add i32 %add.neg.i, %9
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 742, i32 noundef 0) #6
  %call.i.i = tail call i32 @__cond_resched() #6
  %tobool.not.i2 = icmp slt i32 %sub.i, 0
  br i1 %tobool.not.i2, label %if.end4.i.while.body.i_crit_edge, label %do.end.i

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.34) #9
  br label %stfsm_wait_seq.exit

stfsm_wait_seq.exit:                              ; preds = %do.end.i, %while.body.i.stfsm_wait_seq.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stfsm_read_status(ptr nocapture noundef readonly %fsm, i8 noundef zeroext %cmd, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !268
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stfsm_read_status.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stfsm_read_status, %if.then)) #6
          to label %do.end23 [label %if.then], !srcloc !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fsm, align 8
  %conv = zext i8 %cmd to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stfsm_read_status.__UNIQUE_ID_ddebug242, ptr noundef %2, ptr noundef nonnull @.str.80, i32 noundef %conv, i32 noundef 1) #6
  br label %do.end23

do.end23:                                         ; preds = %if.then, %entry
  %conv24 = zext i8 %cmd to i32
  %or = or i32 %conv24, 2048
  store i32 %or, ptr getelementptr inbounds ({ i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, [13 x i8] }>, i32 }, ptr @stfsm_seq_read_status_fifo, i32 0, i32 4), align 4
  %base.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 324
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %6 = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.body11.preheader.i, !prof !281

do.body11.preheader.i:                            ; preds = %do.end23
  %add.ptr.i = getelementptr i8, ptr %4, i32 256
  br label %do.body11.i

do.body4.i:                                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/devices/st_spi_fsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 719, 0\0A.popsection", ""() #6, !srcloc !282
  unreachable

do.body11.i:                                      ; preds = %do.body11.i.do.body11.i_crit_edge, %do.body11.preheader.i
  %words.020.i = phi i32 [ %dec.i, %do.body11.i.do.body11.i_crit_edge ], [ 17, %do.body11.preheader.i ]
  %src.019.i = phi ptr [ %incdec.ptr.i, %do.body11.i.do.body11.i_crit_edge ], [ @stfsm_seq_read_status_fifo, %do.body11.preheader.i ]
  %dst.018.i = phi ptr [ %add.ptr14.i, %do.body11.i.do.body11.i_crit_edge ], [ %add.ptr.i, %do.body11.preheader.i ]
  %dec.i = add nsw i32 %words.020.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !283
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %src.019.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %src.019.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.018.i, i32 %9) #6, !srcloc !270
  %incdec.ptr.i = getelementptr i32, ptr %src.019.i, i32 1
  %add.ptr14.i = getelementptr i8, ptr %dst.018.i, i32 4
  %tobool10.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool10.not.i, label %stfsm_load_seq.exit, label %do.body11.i.do.body11.i_crit_edge

do.body11.i.do.body11.i_crit_edge:                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

stfsm_load_seq.exit:                              ; preds = %do.body11.i
  call fastcc void @stfsm_read_fifo(ptr noundef %fsm, ptr noundef nonnull %tmp, i32 noundef 4)
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tmp, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %data, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -100, %13
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %stfsm_load_seq.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i1 = getelementptr i8, ptr %16, i32 324
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i1) #6, !srcloc !274
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %18 = and i32 %17, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not.i = icmp eq i32 %18, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %while.body.i.stfsm_wait_seq.exit_crit_edge

while.body.i.stfsm_wait_seq.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stfsm_wait_seq.exit

if.end4.i:                                        ; preds = %while.body.i
  %sub.i = add i32 %add.neg.i, %14
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 742, i32 noundef 0) #6
  %call.i.i = call i32 @__cond_resched() #6
  %tobool.not.i2 = icmp slt i32 %sub.i, 0
  br i1 %tobool.not.i2, label %if.end4.i.while.body.i_crit_edge, label %do.end.i

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fsm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.34) #9
  br label %stfsm_wait_seq.exit

stfsm_wait_seq.exit:                              ; preds = %do.end.i, %while.body.i.stfsm_wait_seq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stfsm_write_status(ptr nocapture noundef readonly %fsm, i8 noundef zeroext %cmd, i16 noundef zeroext %data, i32 noundef %bytes, i32 noundef %wait_busy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stfsm_write_status.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stfsm_write_status, %if.then)) #6
          to label %do.body5 [label %if.then], !srcloc !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsm, align 8
  %conv = zext i8 %cmd to i32
  %conv3 = zext i16 %data to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_busy)
  %tobool4.not = icmp eq i32 %wait_busy, 0
  %cond = select i1 %tobool4.not, ptr @.str.85, ptr @.str.84
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stfsm_write_status.__UNIQUE_ID_ddebug243, ptr noundef %1, ptr noundef nonnull @.str.83, i32 noundef %conv, i32 noundef %bytes, i32 noundef %conv3, ptr noundef nonnull %cond) #6
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %conv25 = zext i8 %cmd to i32
  %or = or i32 %conv25, 2048
  store i32 %or, ptr getelementptr inbounds ({ i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, i8, [12 x i8] }>, i32 }, ptr @stfsm_seq_write_status, i32 0, i32 4, i32 1), align 4
  %conv26 = zext i16 %data to i32
  %or28 = or i32 %conv26, 1048576
  store i32 %or28, ptr getelementptr inbounds ({ i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, i8, [12 x i8] }>, i32 }, ptr @stfsm_seq_write_status, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bytes)
  %cmp29 = icmp eq i32 %bytes, 1
  %conv32 = select i1 %cmp29, i8 19, i8 51
  store i8 %conv32, ptr getelementptr inbounds ({ i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, i8, [12 x i8] }>, i32 }, ptr @stfsm_seq_write_status, i32 0, i32 8, i32 2), align 2
  %base.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 324
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %5 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.body11.preheader.i, !prof !281

do.body11.preheader.i:                            ; preds = %do.body5
  %add.ptr.i = getelementptr i8, ptr %3, i32 256
  br label %do.body11.i

do.body4.i:                                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/devices/st_spi_fsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 719, 0\0A.popsection", ""() #6, !srcloc !282
  unreachable

do.body11.i:                                      ; preds = %do.body11.i.do.body11.i_crit_edge, %do.body11.preheader.i
  %words.020.i = phi i32 [ %dec.i, %do.body11.i.do.body11.i_crit_edge ], [ 17, %do.body11.preheader.i ]
  %src.019.i = phi ptr [ %incdec.ptr.i, %do.body11.i.do.body11.i_crit_edge ], [ @stfsm_seq_write_status, %do.body11.preheader.i ]
  %dst.018.i = phi ptr [ %add.ptr14.i, %do.body11.i.do.body11.i_crit_edge ], [ %add.ptr.i, %do.body11.preheader.i ]
  %dec.i = add nsw i32 %words.020.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !283
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %src.019.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src.019.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.018.i, i32 %8) #6, !srcloc !270
  %incdec.ptr.i = getelementptr i32, ptr %src.019.i, i32 1
  %add.ptr14.i = getelementptr i8, ptr %dst.018.i, i32 4
  %tobool10.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool10.not.i, label %stfsm_load_seq.exit, label %do.body11.i.do.body11.i_crit_edge

do.body11.i.do.body11.i_crit_edge:                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

stfsm_load_seq.exit:                              ; preds = %do.body11.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -100, %9
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %stfsm_load_seq.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i1 = getelementptr i8, ptr %12, i32 324
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i1) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %14 = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not.i = icmp eq i32 %14, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %while.body.i.stfsm_wait_seq.exit_crit_edge

while.body.i.stfsm_wait_seq.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stfsm_wait_seq.exit

if.end4.i:                                        ; preds = %while.body.i
  %sub.i = add i32 %add.neg.i, %10
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 742, i32 noundef 0) #6
  %call.i.i = tail call i32 @__cond_resched() #6
  %tobool.not.i2 = icmp slt i32 %sub.i, 0
  br i1 %tobool.not.i2, label %if.end4.i.while.body.i_crit_edge, label %do.end.i

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.34) #9
  br label %stfsm_wait_seq.exit

stfsm_wait_seq.exit:                              ; preds = %do.end.i, %while.body.i.stfsm_wait_seq.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_busy)
  %tobool35.not = icmp eq i32 %wait_busy, 0
  br i1 %tobool35.not, label %stfsm_wait_seq.exit.if.end38_crit_edge, label %if.then36

stfsm_wait_seq.exit.if.end38_crit_edge:           ; preds = %stfsm_wait_seq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then36:                                        ; preds = %stfsm_wait_seq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call fastcc zeroext i8 @stfsm_wait_busy(ptr noundef %fsm)
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %stfsm_wait_seq.exit.if.end38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @stfsm_wait_busy(ptr nocapture noundef readonly %fsm) unnamed_addr #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !268
  store i32 2053, ptr getelementptr inbounds ({ i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, [13 x i8] }>, i32 }, ptr @stfsm_seq_read_status_fifo, i32 0, i32 4), align 4
  %base.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 1
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 324
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %4 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.body11.preheader.i, !prof !281

do.body11.preheader.i:                            ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %2, i32 256
  br label %do.body11.i

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/devices/st_spi_fsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 719, 0\0A.popsection", ""() #6, !srcloc !282
  unreachable

do.body11.i:                                      ; preds = %do.body11.i.do.body11.i_crit_edge, %do.body11.preheader.i
  %words.020.i = phi i32 [ %dec.i, %do.body11.i.do.body11.i_crit_edge ], [ 17, %do.body11.preheader.i ]
  %src.019.i = phi ptr [ %incdec.ptr.i, %do.body11.i.do.body11.i_crit_edge ], [ @stfsm_seq_read_status_fifo, %do.body11.preheader.i ]
  %dst.018.i = phi ptr [ %add.ptr14.i, %do.body11.i.do.body11.i_crit_edge ], [ %add.ptr.i, %do.body11.preheader.i ]
  %dec.i = add nsw i32 %words.020.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !283
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %src.019.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %src.019.i, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.018.i, i32 %7) #6, !srcloc !270
  %incdec.ptr.i = getelementptr i32, ptr %src.019.i, i32 1
  %add.ptr14.i = getelementptr i8, ptr %dst.018.i, i32 4
  %tobool10.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool10.not.i, label %stfsm_load_seq.exit, label %do.body11.i.do.body11.i_crit_edge

do.body11.i.do.body11.i_crit_edge:                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

stfsm_load_seq.exit:                              ; preds = %do.body11.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -30000, %8
  %configuration = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %do.body, %stfsm_load_seq.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %9
  %10 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -100, %10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %13, i32 324
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30) #6, !srcloc !274
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %15 = and i32 %14, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not.i = icmp eq i32 %15, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %while.body.i.stfsm_wait_seq.exit_crit_edge

while.body.i.stfsm_wait_seq.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stfsm_wait_seq.exit

if.end4.i:                                        ; preds = %while.body.i
  %sub.i = add i32 %add.neg.i, %11
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 742, i32 noundef 0) #6
  %call.i.i = call i32 @__cond_resched() #6
  %tobool.not.i31 = icmp slt i32 %sub.i, 0
  br i1 %tobool.not.i31, label %if.end4.i.while.body.i_crit_edge, label %do.end.i

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fsm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.34) #9
  br label %stfsm_wait_seq.exit

stfsm_wait_seq.exit:                              ; preds = %do.end.i, %while.body.i.stfsm_wait_seq.exit_crit_edge
  call fastcc void @stfsm_read_fifo(ptr noundef %fsm, ptr noundef nonnull %status, i32 noundef 4)
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %stfsm_wait_seq.exit.cleanup_crit_edge, label %if.end3

stfsm_wait_seq.exit.cleanup_crit_edge:            ; preds = %stfsm_wait_seq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %stfsm_wait_seq.exit
  %20 = ptrtoint ptr %configuration to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %configuration, align 4
  %and4 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %22 = and i32 %19, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %23 = icmp eq i32 %22, 0
  %or.cond = select i1 %tobool5.not, i1 true, i1 %23
  br i1 %or.cond, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %19 to i8
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  %tobool13.not = icmp slt i32 %sub, 0
  br i1 %tobool13.not, label %do.body, label %do.end18.critedge

do.body:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !292
  call void @arm_heavy_mb() #6
  %24 = load i32, ptr getelementptr inbounds ({ i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, [13 x i8] }>, i32 }, ptr @stfsm_seq_read_status_fifo, i32 0, i32 9), align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 320
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %25) #6, !srcloc !270
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 905, i32 noundef 0) #6
  %call.i.c = call i32 @__cond_resched() #6
  br label %while.body

do.end18.critedge:                                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 905, i32 noundef 0) #6
  %call.i.c40 = call i32 @__cond_resched() #6
  %28 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fsm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.87) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end18.critedge, %if.then10, %stfsm_wait_seq.exit.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv, %if.then10 ], [ -1, %do.end18.critedge ], [ 0, %stfsm_wait_seq.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #6
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stfsm_search_prepare_rw_seq(ptr nocapture noundef readonly %fsm, ptr nocapture noundef writeonly %seq, ptr noundef readonly %cfgs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 4
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %flags1.i = getelementptr inbounds %struct.flash_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1.i, align 4
  %cmd12.i = getelementptr inbounds %struct.seq_rw_config, ptr %cfgs, i32 0, i32 1
  %4 = ptrtoint ptr %cmd12.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cmd12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not13.i = icmp eq i8 %5, 0
  br i1 %cmp.not13.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %config.014.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %cfgs, %entry.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %config.014.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %config.014.i, align 4
  %and.i = and i32 %7, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %7)
  %cmp5.i = icmp eq i32 %and.i, %7
  br i1 %cmp5.i, label %stfsm_search_seq_rw_configs.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.seq_rw_config, ptr %config.014.i, i32 1
  %cmd.i = getelementptr %struct.seq_rw_config, ptr %config.014.i, i32 1, i32 1
  %8 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmd.i, align 4
  %cmp.not.i = icmp eq i8 %9, 0
  br i1 %cmp.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

stfsm_search_seq_rw_configs.exit:                 ; preds = %for.body.i
  %tobool.not = icmp eq ptr %config.014.i, null
  br i1 %tobool.not, label %stfsm_search_seq_rw_configs.exit.do.end_crit_edge, label %if.end

stfsm_search_seq_rw_configs.exit.do.end_crit_edge: ; preds = %stfsm_search_seq_rw_configs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %stfsm_search_seq_rw_configs.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  %10 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.94) #9
  br label %cleanup

if.end:                                           ; preds = %stfsm_search_seq_rw_configs.exit
  %12 = call ptr @memset(ptr %seq, i32 0, i32 68)
  %cmd.i4 = getelementptr inbounds %struct.seq_rw_config, ptr %config.014.i, i32 0, i32 1
  %13 = ptrtoint ptr %cmd.i4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cmd.i4, align 4
  %conv.i = zext i8 %14 to i32
  %or.i = or i32 %conv.i, 2048
  %seq_opc.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq, i32 0, i32 4
  %15 = ptrtoint ptr %seq_opc.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %seq_opc.i, align 4
  %write.i = getelementptr inbounds %struct.seq_rw_config, ptr %config.014.i, i32 0, i32 2
  %16 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %write.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx3.i = getelementptr %struct.stfsm_seq, ptr %seq, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 67590, ptr %arrayidx3.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %19 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info.i, align 4
  %flags.i = getelementptr inbounds %struct.flash_info, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i6 = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6)
  %tobool4.not.i = icmp eq i32 %and.i6, 0
  %addr_pads.i = getelementptr inbounds %struct.seq_rw_config, ptr %config.014.i, i32 0, i32 3
  %23 = ptrtoint ptr %addr_pads.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %addr_pads.i, align 4
  %conv5.i = zext i8 %24 to i32
  %div.lhs.trunc.i = select i1 %tobool4.not.i, i8 8, i8 16
  %div135.i = udiv i8 %div.lhs.trunc.i, %24
  %div.zext.i = zext i8 %div135.i to i32
  %div8136.i = udiv i8 16, %24
  %div8.zext.i = zext i8 %div8136.i to i32
  %sub.i = add nsw i32 %conv5.i, -1
  %shl13.i = shl nsw i32 %sub.i, 6
  %or14.i = or i32 %shl13.i, %div.zext.i
  %shl16.i = shl nuw nsw i32 %div8.zext.i, 16
  %shl21.i = shl nsw i32 %sub.i, 22
  %or17.i = or i32 %shl16.i, %shl21.i
  %or22.i = or i32 %or17.i, %or14.i
  %addr_cfg.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq, i32 0, i32 3
  %25 = ptrtoint ptr %addr_cfg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or22.i, ptr %addr_cfg.i, align 4
  %data_pads.i = getelementptr inbounds %struct.seq_rw_config, ptr %config.014.i, i32 0, i32 4
  %26 = ptrtoint ptr %data_pads.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data_pads.i, align 1
  %conv23.i = zext i8 %27 to i32
  %sub24.i = shl nuw nsw i32 %conv23.i, 16
  %shl25.i = add nsw i32 %sub24.i, -65536
  %or27.i = or i32 %shl25.i, 65
  %seq_cfg.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq, i32 0, i32 9
  %28 = ptrtoint ptr %seq_cfg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or27.i, ptr %seq_cfg.i, align 4
  %29 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %write.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool29.not.i = icmp eq i32 %30, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %if.end.i.if.end33.i_crit_edge

if.end.i.if.end33.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then30.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %or32.i = or i32 %shl25.i, 193
  %31 = ptrtoint ptr %seq_cfg.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or32.i, ptr %seq_cfg.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %if.end.i.if.end33.i_crit_edge
  %mode_data.i = getelementptr inbounds %struct.seq_rw_config, ptr %config.014.i, i32 0, i32 5
  %32 = ptrtoint ptr %mode_data.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mode_data.i, align 2
  %conv34.i = zext i8 %33 to i32
  %mode_cycles.i = getelementptr inbounds %struct.seq_rw_config, ptr %config.014.i, i32 0, i32 6
  %34 = ptrtoint ptr %mode_cycles.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mode_cycles.i, align 1
  %36 = and i8 %35, 63
  %and38.i = zext i8 %36 to i32
  %shl39.i = shl nuw nsw i32 %and38.i, 16
  %or40.i = or i32 %shl39.i, %conv34.i
  %37 = ptrtoint ptr %addr_pads.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %addr_pads.i, align 4
  %conv42.i = zext i8 %38 to i32
  %sub43.i = shl nuw nsw i32 %conv42.i, 22
  %shl44.i = add nsw i32 %sub43.i, -4194304
  %or45.i = or i32 %or40.i, %shl44.i
  %mode.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq, i32 0, i32 5
  %39 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or45.i, ptr %mode.i, align 4
  %dummy_cycles.i = getelementptr inbounds %struct.seq_rw_config, ptr %config.014.i, i32 0, i32 7
  %40 = ptrtoint ptr %dummy_cycles.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dummy_cycles.i, align 4
  %42 = and i8 %41, 63
  %and47.i = zext i8 %42 to i32
  %shl48.i = shl nuw nsw i32 %and47.i, 16
  %43 = load i8, ptr %addr_pads.i, align 4
  %conv50.i = zext i8 %43 to i32
  %sub51.i = shl nuw nsw i32 %conv50.i, 22
  %shl52.i = add nsw i32 %sub51.i, -4194304
  %or53.i = or i32 %shl52.i, %shl48.i
  %dummy.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq, i32 0, i32 6
  %44 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or53.i, ptr %dummy.i, align 4
  %45 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %write.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool55.not.i = icmp eq i32 %46, 0
  br i1 %tobool55.not.i, label %if.end33.i.if.end60.i_crit_edge, label %if.then56.i

if.end33.i.if.end60.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60.i

if.then56.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  %seq57.i = getelementptr inbounds %struct.stfsm_seq, ptr %seq, i32 0, i32 8
  %47 = ptrtoint ptr %seq57.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 33, ptr %seq57.i, align 1
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then56.i, %if.end33.i.if.end60.i_crit_edge
  %i.0.i = phi i32 [ 1, %if.then56.i ], [ 0, %if.end33.i.if.end60.i_crit_edge ]
  %inc62.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx63.i = getelementptr %struct.stfsm_seq, ptr %seq, i32 0, i32 8, i32 %i.0.i
  %48 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 17, ptr %arrayidx63.i, align 1
  %inc65.i = or i32 %i.0.i, 2
  %arrayidx66.i = getelementptr %struct.stfsm_seq, ptr %seq, i32 0, i32 8, i32 %inc62.i
  %49 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 18, ptr %arrayidx66.i, align 1
  %inc68.i = add nuw nsw i32 %i.0.i, 3
  %arrayidx69.i = getelementptr %struct.stfsm_seq, ptr %seq, i32 0, i32 8, i32 %inc65.i
  %50 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 34, ptr %arrayidx69.i, align 1
  %51 = ptrtoint ptr %mode_cycles.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %mode_cycles.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool71.not.i = icmp eq i8 %52, 0
  br i1 %tobool71.not.i, label %if.end60.i.if.end76.i_crit_edge, label %if.then72.i

if.end60.i.if.end76.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76.i

if.then72.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc74.i = or i32 %i.0.i, 4
  %arrayidx75.i = getelementptr %struct.stfsm_seq, ptr %seq, i32 0, i32 8, i32 %inc68.i
  %53 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 4, ptr %arrayidx75.i, align 1
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then72.i, %if.end60.i.if.end76.i_crit_edge
  %i.1.i = phi i32 [ %inc74.i, %if.then72.i ], [ %inc68.i, %if.end60.i.if.end76.i_crit_edge ]
  %54 = ptrtoint ptr %dummy_cycles.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %dummy_cycles.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool78.not.i = icmp eq i8 %55, 0
  br i1 %tobool78.not.i, label %if.end76.i.stfsm_prepare_rw_seq.exit_crit_edge, label %if.then79.i

if.end76.i.stfsm_prepare_rw_seq.exit_crit_edge:   ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stfsm_prepare_rw_seq.exit

if.then79.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc81.i = add nsw i32 %i.1.i, 1
  %arrayidx82.i = getelementptr %struct.stfsm_seq, ptr %seq, i32 0, i32 8, i32 %i.1.i
  %56 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 5, ptr %arrayidx82.i, align 1
  br label %stfsm_prepare_rw_seq.exit

stfsm_prepare_rw_seq.exit:                        ; preds = %if.then79.i, %if.end76.i.stfsm_prepare_rw_seq.exit_crit_edge
  %i.2.i = phi i32 [ %inc81.i, %if.then79.i ], [ %i.1.i, %if.end76.i.stfsm_prepare_rw_seq.exit_crit_edge ]
  %57 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %write.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool85.not.i = icmp eq i32 %58, 0
  %conv87.i = select i1 %tobool85.not.i, i8 38, i8 22
  %inc89.i = add nsw i32 %i.2.i, 1
  %arrayidx90.i = getelementptr %struct.stfsm_seq, ptr %seq, i32 0, i32 8, i32 %i.2.i
  %59 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv87.i, ptr %arrayidx90.i, align 1
  %arrayidx93.i = getelementptr %struct.stfsm_seq, ptr %seq, i32 0, i32 8, i32 %inc89.i
  %60 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 15, ptr %arrayidx93.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %stfsm_prepare_rw_seq.exit, %do.end
  %retval.0 = phi i32 [ 0, %stfsm_prepare_rw_seq.exit ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stfsm_read(ptr nocapture noundef %fsm, ptr noundef %buf, i32 noundef %size, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca [4 x i32], align 4
  %page_buf = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stfsm_seq_read = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #6
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %page_buf) #6
  %1 = call ptr @memset(ptr %page_buf, i32 255, i32 256)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stfsm_read.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stfsm_read, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stfsm_read.__UNIQUE_ID_ddebug244, ptr noundef %3, ptr noundef nonnull @.str.106, i32 noundef %size, i32 noundef %offset) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %configuration = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 6
  %4 = ptrtoint ptr %configuration to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %configuration, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.if.end7_crit_edge, label %if.then5

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @stfsm_enter_32bit_addr(ptr noundef %fsm, i32 noundef 1)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  %seq_cfg = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 11, i32 9
  %6 = ptrtoint ptr %seq_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seq_cfg, align 4
  %8 = lshr i32 %7, 14
  %add = and i32 %8, 12
  %shl = add nuw nsw i32 %add, 4
  %sub = or i32 %add, 3
  %9 = ptrtoint ptr %buf to i32
  %and9 = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %buf.page_buf = select i1 %tobool10.not, ptr %buf, ptr %page_buf
  %add11 = add i32 %sub, %size
  %neg = xor i32 %add, -4
  %and12 = and i32 %add11, %neg
  %and14 = and i32 %neg, %size
  %and15 = and i32 %sub, %size
  %mul = shl i32 %and12, 3
  %10 = ptrtoint ptr %stfsm_seq_read to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %stfsm_seq_read, align 4
  %shr16 = lshr i32 %offset, 16
  %addr1 = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %addr1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr16, ptr %addr1, align 4
  %and18 = and i32 %offset, 65535
  %addr2 = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 11, i32 2
  %12 = ptrtoint ptr %addr2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and18, ptr %addr2, align 4
  %base.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 1
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 324
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %16 = and i32 %15, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.body11.preheader.i, !prof !281

do.body11.preheader.i:                            ; preds = %if.end7
  %add.ptr.i = getelementptr i8, ptr %14, i32 256
  br label %do.body11.i

do.body4.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/devices/st_spi_fsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 719, 0\0A.popsection", ""() #6, !srcloc !282
  unreachable

do.body11.i:                                      ; preds = %do.body11.i.do.body11.i_crit_edge, %do.body11.preheader.i
  %words.020.i = phi i32 [ %dec.i, %do.body11.i.do.body11.i_crit_edge ], [ 17, %do.body11.preheader.i ]
  %src.019.i = phi ptr [ %incdec.ptr.i, %do.body11.i.do.body11.i_crit_edge ], [ %stfsm_seq_read, %do.body11.preheader.i ]
  %dst.018.i = phi ptr [ %add.ptr14.i, %do.body11.i.do.body11.i_crit_edge ], [ %add.ptr.i, %do.body11.preheader.i ]
  %dec.i = add nsw i32 %words.020.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !283
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %src.019.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src.019.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.018.i, i32 %19) #6, !srcloc !270
  %incdec.ptr.i = getelementptr i32, ptr %src.019.i, i32 1
  %add.ptr14.i = getelementptr i8, ptr %dst.018.i, i32 4
  %tobool10.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool10.not.i, label %stfsm_load_seq.exit, label %do.body11.i.do.body11.i_crit_edge

do.body11.i.do.body11.i_crit_edge:                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

stfsm_load_seq.exit:                              ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool19.not = icmp eq i32 %and14, 0
  br i1 %tobool19.not, label %stfsm_load_seq.exit.if.end21_crit_edge, label %if.then20

stfsm_load_seq.exit.if.end21_crit_edge:           ; preds = %stfsm_load_seq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then20:                                        ; preds = %stfsm_load_seq.exit
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @stfsm_read_fifo(ptr noundef %fsm, ptr noundef %buf.page_buf, i32 noundef %and14)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %stfsm_load_seq.exit.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool22.not = icmp eq i32 %and15, 0
  br i1 %tobool22.not, label %if.end21.if.end26_crit_edge, label %if.then23

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @stfsm_read_fifo(ptr noundef %fsm, ptr noundef nonnull %tmp, i32 noundef %shl)
  %add.ptr = getelementptr i8, ptr %buf.page_buf, i32 %and14
  %20 = call ptr @memcpy(ptr %add.ptr, ptr %tmp, i32 %and15)
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end21.if.end26_crit_edge
  br i1 %tobool10.not, label %if.end26.if.end31_crit_edge, label %if.then29

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %21 = call ptr @memcpy(ptr %buf, ptr %page_buf, i32 %size)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26.if.end31_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -100, %22
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i1 = getelementptr i8, ptr %25, i32 324
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i1) #6, !srcloc !274
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %27 = and i32 %26, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool2.not.i = icmp eq i32 %27, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %while.body.i.stfsm_wait_seq.exit_crit_edge

while.body.i.stfsm_wait_seq.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stfsm_wait_seq.exit

if.end4.i:                                        ; preds = %while.body.i
  %sub.i = add i32 %add.neg.i, %23
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 742, i32 noundef 0) #6
  %call.i.i = call i32 @__cond_resched() #6
  %tobool.not.i2 = icmp slt i32 %sub.i, 0
  br i1 %tobool.not.i2, label %if.end4.i.while.body.i_crit_edge, label %do.end.i

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fsm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.34) #9
  br label %stfsm_wait_seq.exit

stfsm_wait_seq.exit:                              ; preds = %do.end.i, %while.body.i.stfsm_wait_seq.exit_crit_edge
  call fastcc void @stfsm_clear_fifo(ptr noundef %fsm)
  %30 = ptrtoint ptr %configuration to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %configuration, align 4
  %and33 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %stfsm_wait_seq.exit.if.end37_crit_edge, label %if.then35

stfsm_wait_seq.exit.if.end37_crit_edge:           ; preds = %stfsm_wait_seq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then35:                                        ; preds = %stfsm_wait_seq.exit
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @stfsm_enter_32bit_addr(ptr noundef %fsm, i32 noundef 0)
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %stfsm_wait_seq.exit.if.end37_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %page_buf) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stfsm_write(ptr nocapture noundef %fsm, ptr noundef %buf, i32 noundef %size, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca [4 x i32], align 4
  %page_buf = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stfsm_seq_write = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #6
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %page_buf) #6
  %1 = call ptr @memset(ptr %page_buf, i32 255, i32 256)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stfsm_write.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stfsm_write, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stfsm_write.__UNIQUE_ID_ddebug245, ptr noundef %3, ptr noundef nonnull @.str.110, i32 noundef %size, i32 noundef %offset) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %configuration = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 6
  %4 = ptrtoint ptr %configuration to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %configuration, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.if.end7_crit_edge, label %if.then5

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @stfsm_enter_32bit_addr(ptr noundef %fsm, i32 noundef 1)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  %seq_cfg = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 12, i32 9
  %6 = ptrtoint ptr %seq_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seq_cfg, align 4
  %8 = lshr i32 %7, 14
  %add = and i32 %8, 12
  %shl = add nuw nsw i32 %add, 4
  %sub = or i32 %add, 3
  %9 = ptrtoint ptr %buf to i32
  %and9 = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end13_crit_edge, label %if.then11

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %10 = call ptr @memcpy(ptr %page_buf, ptr %buf, i32 %size)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7.if.end13_crit_edge
  %p.0 = phi ptr [ %page_buf, %if.then11 ], [ %buf, %if.end7.if.end13_crit_edge ]
  %add14 = add i32 %sub, %size
  %neg = xor i32 %add, -4
  %and15 = and i32 %add14, %neg
  %and17 = and i32 %neg, %size
  %and18 = and i32 %sub, %size
  %mul = shl i32 %and15, 3
  %11 = ptrtoint ptr %stfsm_seq_write to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %stfsm_seq_write, align 4
  %shr19 = lshr i32 %offset, 16
  %addr1 = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %addr1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr19, ptr %addr1, align 4
  %and21 = and i32 %offset, 65535
  %addr2 = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 12, i32 2
  %13 = ptrtoint ptr %addr2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and21, ptr %addr2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !293
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 1
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1024) #6, !srcloc !270
  %fifo_dir_delay = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 7
  %16 = ptrtoint ptr %fifo_dir_delay to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fifo_dir_delay, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then25, label %cond.false38

if.then25:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr27 = getelementptr i8, ptr %19, i32 320
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !294
  br label %if.end41

cond.false38:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %17) #6
  br label %if.end41

if.end41:                                         ; preds = %cond.false38, %if.then25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool42.not = icmp eq i32 %and17, 0
  br i1 %tobool42.not, label %if.end41.if.end46_crit_edge, label %if.then43

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then43:                                        ; preds = %if.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stfsm_write_fifo.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stfsm_write, %if.then.i)) #6
          to label %do.body3.i [label %if.then.i], !srcloc !272

if.then.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stfsm_write_fifo.__UNIQUE_ID_ddebug241, ptr noundef %23, ptr noundef nonnull @.str.112, i32 noundef %and17) #6
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %if.then43
  %24 = ptrtoint ptr %p.0 to i32
  %25 = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %.not.i = icmp eq i32 %25, 0
  br i1 %.not.i, label %stfsm_write_fifo.exit, label %do.body14.i, !prof !289

do.body14.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/devices/st_spi_fsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 842, 0\0A.popsection", ""() #6, !srcloc !295
  unreachable

stfsm_write_fifo.exit:                            ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i = lshr exact i32 %and17, 2
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 768
  call void @__raw_writesl(ptr noundef %add.ptr.i, ptr noundef %p.0, i32 noundef %shr.i) #6
  %add.ptr45 = getelementptr i8, ptr %p.0, i32 %and17
  br label %if.end46

if.end46:                                         ; preds = %stfsm_write_fifo.exit, %if.end41.if.end46_crit_edge
  %p.1 = phi ptr [ %add.ptr45, %stfsm_write_fifo.exit ], [ %p.0, %if.end41.if.end46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool47.not = icmp eq i32 %and18, 0
  br i1 %tobool47.not, label %if.end46.if.end54_crit_edge, label %for.body.preheader

if.end46.if.end54_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

for.body.preheader:                               ; preds = %if.end46
  %28 = call ptr @memset(ptr %tmp, i32 255, i32 %shl)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %p.216 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %p.1, %for.body.preheader ]
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %incdec.ptr = getelementptr i8, ptr %p.216, i32 1
  %29 = ptrtoint ptr %p.216 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %p.216, align 1
  %arrayidx = getelementptr i8, ptr %tmp, i32 %i.015
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %and18
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stfsm_write_fifo.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stfsm_write, %if.then.i1)) #6
          to label %stfsm_write_fifo.exit8 [label %if.then.i1], !srcloc !272

if.then.i1:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fsm, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stfsm_write_fifo.__UNIQUE_ID_ddebug241, ptr noundef %33, ptr noundef nonnull @.str.112, i32 noundef %shl) #6
  br label %stfsm_write_fifo.exit8

stfsm_write_fifo.exit8:                           ; preds = %if.then.i1, %for.end
  %shr.i5 = lshr exact i32 %shl, 2
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr.i7 = getelementptr i8, ptr %35, i32 768
  call void @__raw_writesl(ptr noundef %add.ptr.i7, ptr noundef nonnull %tmp, i32 noundef %shr.i5) #6
  br label %if.end54

if.end54:                                         ; preds = %stfsm_write_fifo.exit8, %if.end46.if.end54_crit_edge
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 324
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !274
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %39 = and i32 %38, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.body11.preheader.i, !prof !281

do.body11.preheader.i:                            ; preds = %if.end54
  %add.ptr.i10 = getelementptr i8, ptr %37, i32 256
  br label %do.body11.i

do.body4.i:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/devices/st_spi_fsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 719, 0\0A.popsection", ""() #6, !srcloc !282
  unreachable

do.body11.i:                                      ; preds = %do.body11.i.do.body11.i_crit_edge, %do.body11.preheader.i
  %words.020.i = phi i32 [ %dec.i, %do.body11.i.do.body11.i_crit_edge ], [ 17, %do.body11.preheader.i ]
  %src.019.i = phi ptr [ %incdec.ptr.i, %do.body11.i.do.body11.i_crit_edge ], [ %stfsm_seq_write, %do.body11.preheader.i ]
  %dst.018.i = phi ptr [ %add.ptr14.i, %do.body11.i.do.body11.i_crit_edge ], [ %add.ptr.i10, %do.body11.preheader.i ]
  %dec.i = add nsw i32 %words.020.i, -1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !283
  call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %src.019.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %src.019.i, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.018.i, i32 %42) #6, !srcloc !270
  %incdec.ptr.i = getelementptr i32, ptr %src.019.i, i32 1
  %add.ptr14.i = getelementptr i8, ptr %dst.018.i, i32 4
  %tobool10.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool10.not.i, label %stfsm_load_seq.exit, label %do.body11.i.do.body11.i_crit_edge

do.body11.i.do.body11.i_crit_edge:                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

stfsm_load_seq.exit:                              ; preds = %do.body11.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -100, %43
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %stfsm_load_seq.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr.i.i11 = getelementptr i8, ptr %46, i32 324
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i11) #6, !srcloc !274
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %48 = and i32 %47, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool2.not.i = icmp eq i32 %48, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %while.body.i.stfsm_wait_seq.exit_crit_edge

while.body.i.stfsm_wait_seq.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stfsm_wait_seq.exit

if.end4.i:                                        ; preds = %while.body.i
  %sub.i = add i32 %add.neg.i, %44
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 742, i32 noundef 0) #6
  %call.i.i = call i32 @__cond_resched() #6
  %tobool.not.i12 = icmp slt i32 %sub.i, 0
  br i1 %tobool.not.i12, label %if.end4.i.while.body.i_crit_edge, label %do.end.i

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fsm, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.34) #9
  br label %stfsm_wait_seq.exit

stfsm_wait_seq.exit:                              ; preds = %do.end.i, %while.body.i.stfsm_wait_seq.exit_crit_edge
  %call55 = call fastcc zeroext i8 @stfsm_wait_busy(ptr noundef %fsm)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call55)
  %tobool56.not = icmp eq i8 %call55, 0
  br i1 %tobool56.not, label %stfsm_wait_seq.exit.if.end62_crit_edge, label %land.lhs.true

stfsm_wait_seq.exit.if.end62_crit_edge:           ; preds = %stfsm_wait_seq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

land.lhs.true:                                    ; preds = %stfsm_wait_seq.exit
  %51 = ptrtoint ptr %configuration to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %configuration, align 4
  %and58 = and i32 %52, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %land.lhs.true.if.end62_crit_edge, label %if.then60

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then60:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @stfsm_s25fl_clear_status_reg(ptr noundef %fsm)
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %land.lhs.true.if.end62_crit_edge, %stfsm_wait_seq.exit.if.end62_crit_edge
  %53 = ptrtoint ptr %configuration to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %configuration, align 4
  %and64 = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end62.if.end68_crit_edge, label %if.then66

if.end62.if.end68_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @stfsm_enter_32bit_addr(ptr noundef %fsm, i32 noundef 0)
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end62.if.end68_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %page_buf) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stfsm_s25fl_clear_status_reg(ptr nocapture noundef readonly %fsm) unnamed_addr #2 align 64 {
entry:
  %seq = alloca %struct.stfsm_seq, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %seq) #6
  %0 = call ptr @memcpy(ptr %seq, ptr @__const.stfsm_s25fl_clear_status_reg.seq, i32 68)
  %base.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 1
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 324
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %4 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.body11.preheader.i, !prof !281

do.body11.preheader.i:                            ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %2, i32 256
  br label %do.body11.i

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/devices/st_spi_fsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 719, 0\0A.popsection", ""() #6, !srcloc !282
  unreachable

do.body11.i:                                      ; preds = %do.body11.i.do.body11.i_crit_edge, %do.body11.preheader.i
  %words.020.i = phi i32 [ %dec.i, %do.body11.i.do.body11.i_crit_edge ], [ 17, %do.body11.preheader.i ]
  %src.019.i = phi ptr [ %incdec.ptr.i, %do.body11.i.do.body11.i_crit_edge ], [ %seq, %do.body11.preheader.i ]
  %dst.018.i = phi ptr [ %add.ptr14.i, %do.body11.i.do.body11.i_crit_edge ], [ %add.ptr.i, %do.body11.preheader.i ]
  %dec.i = add nsw i32 %words.020.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !283
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %src.019.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %src.019.i, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.018.i, i32 %7) #6, !srcloc !270
  %incdec.ptr.i = getelementptr i32, ptr %src.019.i, i32 1
  %add.ptr14.i = getelementptr i8, ptr %dst.018.i, i32 4
  %tobool10.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool10.not.i, label %stfsm_load_seq.exit, label %do.body11.i.do.body11.i_crit_edge

do.body11.i.do.body11.i_crit_edge:                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

stfsm_load_seq.exit:                              ; preds = %do.body11.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -100, %8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %stfsm_load_seq.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i1 = getelementptr i8, ptr %11, i32 324
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i1) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %13 = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not.i = icmp eq i32 %13, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %while.body.i.stfsm_wait_seq.exit_crit_edge

while.body.i.stfsm_wait_seq.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stfsm_wait_seq.exit

if.end4.i:                                        ; preds = %while.body.i
  %sub.i = add i32 %add.neg.i, %9
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 742, i32 noundef 0) #6
  %call.i.i = tail call i32 @__cond_resched() #6
  %tobool.not.i2 = icmp slt i32 %sub.i, 0
  br i1 %tobool.not.i2, label %if.end4.i.while.body.i_crit_edge, label %do.end.i

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.34) #9
  br label %stfsm_wait_seq.exit

stfsm_wait_seq.exit:                              ; preds = %do.end.i, %while.body.i.stfsm_wait_seq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %seq) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stfsm_erase_chip(ptr nocapture noundef readonly %fsm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stfsm_erase_chip.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stfsm_erase_chip, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stfsm_erase_chip.__UNIQUE_ID_ddebug250, ptr noundef %1, ptr noundef nonnull @.str.116) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %base.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 324
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %5 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.body11.preheader.i, !prof !281

do.body11.preheader.i:                            ; preds = %do.end
  %add.ptr.i = getelementptr i8, ptr %3, i32 256
  br label %do.body11.i

do.body4.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/devices/st_spi_fsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 719, 0\0A.popsection", ""() #6, !srcloc !282
  unreachable

do.body11.i:                                      ; preds = %do.body11.i.do.body11.i_crit_edge, %do.body11.preheader.i
  %words.020.i = phi i32 [ %dec.i, %do.body11.i.do.body11.i_crit_edge ], [ 17, %do.body11.preheader.i ]
  %src.019.i = phi ptr [ %incdec.ptr.i, %do.body11.i.do.body11.i_crit_edge ], [ @stfsm_seq_erase_chip, %do.body11.preheader.i ]
  %dst.018.i = phi ptr [ %add.ptr14.i, %do.body11.i.do.body11.i_crit_edge ], [ %add.ptr.i, %do.body11.preheader.i ]
  %dec.i = add nsw i32 %words.020.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !283
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %src.019.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src.019.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.018.i, i32 %8) #6, !srcloc !270
  %incdec.ptr.i = getelementptr i32, ptr %src.019.i, i32 1
  %add.ptr14.i = getelementptr i8, ptr %dst.018.i, i32 4
  %tobool10.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool10.not.i, label %stfsm_load_seq.exit, label %do.body11.i.do.body11.i_crit_edge

do.body11.i.do.body11.i_crit_edge:                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

stfsm_load_seq.exit:                              ; preds = %do.body11.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -100, %9
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %stfsm_load_seq.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %12, i32 324
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %14 = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not.i = icmp eq i32 %14, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %while.body.i.stfsm_wait_seq.exit_crit_edge

while.body.i.stfsm_wait_seq.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stfsm_wait_seq.exit

if.end4.i:                                        ; preds = %while.body.i
  %sub.i = add i32 %add.neg.i, %10
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 742, i32 noundef 0) #6
  %call.i.i = tail call i32 @__cond_resched() #6
  %tobool.not.i8 = icmp slt i32 %sub.i, 0
  br i1 %tobool.not.i8, label %if.end4.i.while.body.i_crit_edge, label %do.end.i

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.34) #9
  br label %stfsm_wait_seq.exit

stfsm_wait_seq.exit:                              ; preds = %do.end.i, %while.body.i.stfsm_wait_seq.exit_crit_edge
  %call3 = tail call fastcc zeroext i8 @stfsm_wait_busy(ptr noundef %fsm)
  %conv = zext i8 %call3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stfsm_erase_sector(ptr nocapture noundef %fsm, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stfsm_erase_sector.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stfsm_erase_sector, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stfsm_erase_sector.__UNIQUE_ID_ddebug249, ptr noundef %1, ptr noundef nonnull @.str.119, i32 noundef %offset) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %configuration = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 6
  %2 = ptrtoint ptr %configuration to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %configuration, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.end.if.end6_crit_edge, label %if.then4

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @stfsm_enter_32bit_addr(ptr noundef %fsm, i32 noundef 1)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  %shr = lshr i32 %offset, 16
  store i32 %shr, ptr getelementptr inbounds ({ i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, i8, i8, [11 x i8] }>, i32 }, ptr @stfsm_seq_erase_sector, i32 0, i32 1), align 4
  %and8 = and i32 %offset, 65535
  store i32 %and8, ptr getelementptr inbounds ({ i32, i32, i32, i32, [5 x i32], i32, i32, i32, <{ i8, i8, i8, i8, i8, [11 x i8] }>, i32 }, ptr @stfsm_seq_erase_sector, i32 0, i32 2), align 4
  %base.i = getelementptr inbounds %struct.stfsm, ptr %fsm, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 324
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %7 = and i32 %6, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.body11.preheader.i, !prof !281

do.body11.preheader.i:                            ; preds = %if.end6
  %add.ptr.i = getelementptr i8, ptr %5, i32 256
  br label %do.body11.i

do.body4.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/devices/st_spi_fsm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 719, 0\0A.popsection", ""() #6, !srcloc !282
  unreachable

do.body11.i:                                      ; preds = %do.body11.i.do.body11.i_crit_edge, %do.body11.preheader.i
  %words.020.i = phi i32 [ %dec.i, %do.body11.i.do.body11.i_crit_edge ], [ 17, %do.body11.preheader.i ]
  %src.019.i = phi ptr [ %incdec.ptr.i, %do.body11.i.do.body11.i_crit_edge ], [ @stfsm_seq_erase_sector, %do.body11.preheader.i ]
  %dst.018.i = phi ptr [ %add.ptr14.i, %do.body11.i.do.body11.i_crit_edge ], [ %add.ptr.i, %do.body11.preheader.i ]
  %dec.i = add nsw i32 %words.020.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !283
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %src.019.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src.019.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.018.i, i32 %10) #6, !srcloc !270
  %incdec.ptr.i = getelementptr i32, ptr %src.019.i, i32 1
  %add.ptr14.i = getelementptr i8, ptr %dst.018.i, i32 4
  %tobool10.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool10.not.i, label %stfsm_load_seq.exit, label %do.body11.i.do.body11.i_crit_edge

do.body11.i.do.body11.i_crit_edge:                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

stfsm_load_seq.exit:                              ; preds = %do.body11.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -100, %11
  br label %while.body.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %stfsm_load_seq.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %14, i32 324
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i37) #6, !srcloc !274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  %16 = and i32 %15, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool2.not.i = icmp eq i32 %16, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %while.body.i.stfsm_wait_seq.exit_crit_edge

while.body.i.stfsm_wait_seq.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stfsm_wait_seq.exit

if.end4.i:                                        ; preds = %while.body.i
  %sub.i = add i32 %add.neg.i, %12
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 742, i32 noundef 0) #6
  %call.i.i = tail call i32 @__cond_resched() #6
  %tobool.not.i38 = icmp slt i32 %sub.i, 0
  br i1 %tobool.not.i38, label %if.end4.i.while.body.i_crit_edge, label %do.end.i

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %fsm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fsm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.34) #9
  br label %stfsm_wait_seq.exit

stfsm_wait_seq.exit:                              ; preds = %do.end.i, %while.body.i.stfsm_wait_seq.exit_crit_edge
  %call9 = tail call fastcc zeroext i8 @stfsm_wait_busy(ptr noundef %fsm)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9)
  %tobool10.not = icmp eq i8 %call9, 0
  br i1 %tobool10.not, label %stfsm_wait_seq.exit.if.end16_crit_edge, label %land.lhs.true

stfsm_wait_seq.exit.if.end16_crit_edge:           ; preds = %stfsm_wait_seq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true:                                    ; preds = %stfsm_wait_seq.exit
  %19 = ptrtoint ptr %configuration to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %configuration, align 4
  %and12 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end16_crit_edge, label %if.then14

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @stfsm_s25fl_clear_status_reg(ptr noundef %fsm)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true.if.end16_crit_edge, %stfsm_wait_seq.exit.if.end16_crit_edge
  %21 = ptrtoint ptr %configuration to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %configuration, align 4
  %and18 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end22_crit_edge, label %if.then20

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @stfsm_enter_32bit_addr(ptr noundef %fsm, i32 noundef 0)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end16.if.end22_crit_edge
  %conv = zext i8 %call9 to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stfsmfsm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stfsm, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stfsmfsm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stfsm, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !68, !70, !71, !72, !73, !75, !77, !79, !81, !83, !85, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !166, !167, !169, !171, !172, !173, !174, !175, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !196, !198, !200, !202, !204, !206, !208, !210, !211, !212, !213, !215, !216, !217, !219, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !253, !254, !255, !257}
!llvm.module.flags = !{!259, !260, !261, !262, !263, !264, !265, !266}
!llvm.ident = !{!267}

!0 = !{ptr @__initcall__kmod_st_spi_fsm__257_2167_stfsm_driver_init6, !1, !"__initcall__kmod_st_spi_fsm__257_2167_stfsm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 2167, i32 1}
!2 = !{ptr @__exitcall_stfsm_driver_exit, !1, !"__exitcall_stfsm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author258, !4, !"__UNIQUE_ID_author258", i1 false, i1 false}
!4 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 2169, i32 1}
!5 = !{ptr @__UNIQUE_ID_description259, !6, !"__UNIQUE_ID_description259", i1 false, i1 false}
!6 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 2170, i32 1}
!7 = !{ptr @__UNIQUE_ID_file260, !8, !"__UNIQUE_ID_file260", i1 false, i1 false}
!8 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 2171, i32 1}
!9 = !{ptr @__UNIQUE_ID_license261, !8, !"__UNIQUE_ID_license261", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 2162, i32 11}
!12 = !{ptr @stfsm_driver, !13, !"stfsm_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 2158, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 2024, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @stfsm_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @stfsm_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 2038, i32 3}
!24 = !{ptr @stfsm_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @stfsm_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 2044, i32 3}
!28 = !{ptr @stfsm_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @stfsm_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 2051, i32 3}
!32 = !{ptr @stfsm_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @stfsm_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 2057, i32 3}
!36 = !{ptr @stfsm_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @stfsm_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @stfsm_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 2061, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 2065, i32 3}
!43 = !{ptr @stfsm_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @stfsm_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 2111, i32 2}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @stfsm_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @stfsm_probe._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1926, i32 2}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @stfsm_set_freq.__UNIQUE_ID_ddebug256, !51, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 809, i32 3}
!57 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @stfsm_clear_fifo.__UNIQUE_ID_ddebug239, !56, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 825, i32 3}
!61 = !{ptr @stfsm_clear_fifo._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @stfsm_clear_fifo._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 832, i32 2}
!65 = !{ptr @stfsm_clear_fifo.__UNIQUE_ID_ddebug240, !64, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!66 = !{ptr @stfsm_seq_load_fifo_byte, !67, !"stfsm_seq_load_fifo_byte", i1 false, i1 false}
!67 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 664, i32 31}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 745, i32 2}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @stfsm_wait_seq._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @stfsm_wait_seq._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1983, i32 47}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1987, i32 48}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1989, i32 45}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1992, i32 33}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1997, i32 33}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 2011, i32 2}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @stfsm_fetch_platform_configs._entry, !84, !"_entry", i1 false, i1 false}
!88 = !{ptr @stfsm_fetch_platform_configs._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1862, i32 2}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @stfsm_jedec_probe.__UNIQUE_ID_ddebug255, !90, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1871, i32 2}
!95 = !{ptr @stfsm_jedec_probe._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @stfsm_jedec_probe._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @stfsm_seq_read_jedec, !98, !"stfsm_seq_read_jedec", i1 false, i1 false}
!98 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 571, i32 25}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 754, i32 2}
!101 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @stfsm_read_fifo.__UNIQUE_ID_ddebug236, !100, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 323, i32 4}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 324, i32 4}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 325, i32 4}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 326, i32 4}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 327, i32 4}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 328, i32 4}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 334, i32 4}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 335, i32 4}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 348, i32 4}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 351, i32 4}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 354, i32 4}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 368, i32 4}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 370, i32 4}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 384, i32 4}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 386, i32 4}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 388, i32 4}
!135 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 403, i32 4}
!137 = !{ptr @.str.67, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 405, i32 4}
!139 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 407, i32 4}
!141 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 409, i32 4}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 417, i32 4}
!145 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 418, i32 4}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 419, i32 4}
!149 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 420, i32 4}
!151 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 421, i32 4}
!153 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 431, i32 4}
!155 = !{ptr @.str.76, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 433, i32 4}
!157 = !{ptr @.str.77, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 435, i32 4}
!159 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 437, i32 4}
!161 = !{ptr @flash_types, !162, !"flash_types", i1 false, i1 false}
!162 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 316, i32 26}
!163 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 921, i32 2}
!165 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @stfsm_read_status.__UNIQUE_ID_ddebug242, !164, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!167 = !{ptr @stfsm_seq_read_status_fifo, !168, !"stfsm_seq_read_status_fifo", i1 false, i1 false}
!168 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 587, i32 25}
!169 = !{ptr @.str.82, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 946, i32 2}
!171 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @stfsm_write_status.__UNIQUE_ID_ddebug243, !170, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!173 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.85, !170, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @stfsm_seq_write_status, !176, !"stfsm_seq_write_status", i1 false, i1 false}
!176 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 646, i32 25}
!177 = !{ptr @.str.87, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 908, i32 2}
!179 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @stfsm_wait_busy._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @stfsm_wait_busy._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1221, i32 3}
!184 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @stfsm_n25q_config._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @stfsm_n25q_config._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.92, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1231, i32 3}
!189 = !{ptr @stfsm_n25q_config._entry.91, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @stfsm_n25q_config._entry_ptr.93, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.94, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1107, i32 3}
!193 = !{ptr @.str.95, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @stfsm_search_prepare_rw_seq._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @stfsm_search_prepare_rw_seq._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @n25q_read4_configs, !197, !"n25q_read4_configs", i1 false, i1 false}
!197 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 504, i32 29}
!198 = !{ptr @n25q_read3_configs, !199, !"n25q_read3_configs", i1 false, i1 false}
!199 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 489, i32 29}
!200 = !{ptr @default_write_configs, !201, !"default_write_configs", i1 false, i1 false}
!201 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 462, i32 29}
!202 = !{ptr @stfsm_seq_erase_sector, !203, !"stfsm_seq_erase_sector", i1 false, i1 false}
!203 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 603, i32 25}
!204 = !{ptr @stfsm_s25fl_read4_configs, !205, !"stfsm_s25fl_read4_configs", i1 false, i1 false}
!205 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 550, i32 29}
!206 = !{ptr @stfsm_s25fl_write4_configs, !207, !"stfsm_s25fl_write4_configs", i1 false, i1 false}
!207 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 560, i32 29}
!208 = !{ptr @.str.97, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1126, i32 3}
!210 = !{ptr @.str.98, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @stfsm_prepare_rwe_seqs_default._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @stfsm_prepare_rwe_seqs_default._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.100, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1136, i32 3}
!215 = !{ptr @stfsm_prepare_rwe_seqs_default._entry.99, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @stfsm_prepare_rwe_seqs_default._entry_ptr.101, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @default_read_configs, !218, !"default_read_configs", i1 false, i1 false}
!218 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 451, i32 29}
!219 = !{ptr @.str.102, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!221 = !{ptr @.str.103, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1675, i32 2}
!223 = !{ptr @.str.104, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @stfsm_mtd_read.__UNIQUE_ID_ddebug246, !222, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!225 = !{ptr @.str.105, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1526, i32 2}
!227 = !{ptr @.str.106, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @stfsm_read.__UNIQUE_ID_ddebug244, !226, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!229 = !{ptr @.str.107, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1755, i32 2}
!231 = !{ptr @.str.108, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @stfsm_mtd_write.__UNIQUE_ID_ddebug251, !230, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!233 = !{ptr @.str.109, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1590, i32 2}
!235 = !{ptr @.str.110, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @stfsm_write.__UNIQUE_ID_ddebug245, !234, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!237 = !{ptr @.str.111, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 840, i32 2}
!239 = !{ptr @.str.112, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @stfsm_write_fifo.__UNIQUE_ID_ddebug241, !238, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!241 = !{ptr @.str.113, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1797, i32 2}
!243 = !{ptr @.str.114, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @stfsm_mtd_erase.__UNIQUE_ID_ddebug254, !242, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!245 = !{ptr @.str.115, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1731, i32 2}
!247 = !{ptr @.str.116, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @stfsm_erase_chip.__UNIQUE_ID_ddebug250, !246, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!249 = !{ptr @stfsm_seq_erase_chip, !250, !"stfsm_seq_erase_chip", i1 false, i1 false}
!250 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 625, i32 25}
!251 = !{ptr @.str.118, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 1702, i32 2}
!253 = !{ptr @.str.119, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @stfsm_erase_sector.__UNIQUE_ID_ddebug249, !252, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!255 = !{ptr @stfsm_match, !256, !"stfsm_match", i1 false, i1 false}
!256 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 2152, i32 34}
!257 = !{ptr @stfsm_pm_ops, !258, !"stfsm_pm_ops", i1 false, i1 false}
!258 = !{!"../drivers/mtd/devices/st_spi_fsm.c", i32 2150, i32 8}
!259 = !{i32 1, !"wchar_size", i32 2}
!260 = !{i32 1, !"min_enum_size", i32 4}
!261 = !{i32 8, !"branch-target-enforcement", i32 0}
!262 = !{i32 8, !"sign-return-address", i32 0}
!263 = !{i32 8, !"sign-return-address-all", i32 0}
!264 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!265 = !{i32 7, !"uwtable", i32 1}
!266 = !{i32 7, !"frame-pointer", i32 2}
!267 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!268 = !{!"auto-init"}
!269 = !{i64 2154731550}
!270 = !{i64 4665702}
!271 = !{i64 2154732497}
!272 = !{i64 2148748846, i64 2148748851, i64 2148748864, i64 2148748908, i64 2148748942, i64 2148748963}
!273 = !{i64 2154731126}
!274 = !{i64 4666120}
!275 = !{i64 2154727240}
!276 = !{i64 2154728002}
!277 = !{i64 2154733151}
!278 = !{i64 2154733876}
!279 = !{i64 2154734350}
!280 = !{i64 2154651232}
!281 = !{!"branch_weights", i32 1, i32 2000}
!282 = !{i64 2154656511, i64 2154657008, i64 2154656548, i64 2154656604, i64 2154656638, i64 2154656662, i64 2154656703, i64 2154656724, i64 2154656752, i64 2154656786}
!283 = !{i64 2154657969}
!284 = distinct !{!284, !285}
!285 = !{!"llvm.loop.peeled.count", i32 1}
!286 = !{i64 2154651898}
!287 = !{i64 2154666706}
!288 = !{i64 2154671279}
!289 = !{!"branch_weights", i32 2000, i32 1}
!290 = !{i64 2154663002, i64 2154663499, i64 2154663039, i64 2154663095, i64 2154663129, i64 2154663153, i64 2154663194, i64 2154663215, i64 2154663243, i64 2154663277}
!291 = !{i8 0, i8 2}
!292 = !{i64 2154678464}
!293 = !{i64 2154706201}
!294 = !{i64 2154706895}
!295 = !{i64 2154676410, i64 2154676907, i64 2154676447, i64 2154676503, i64 2154676537, i64 2154676561, i64 2154676602, i64 2154676623, i64 2154676651, i64 2154676685}
