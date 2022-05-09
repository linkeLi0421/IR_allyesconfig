; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-synquacer.c_pt.bc'
source_filename = "../drivers/spi/spi-synquacer.c"
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.synquacer_spi = type { ptr, %struct.completion, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, [32 x i8], [32 x i8] }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_synquacer__239_825_synquacer_spi_driver_init6 = internal global ptr @synquacer_spi_driver_init, section ".initcall6.init", align 4
@synquacer_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @synquacer_spi_probe, ptr @synquacer_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @synquacer_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @synquacer_spi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_synquacer_spi_driver_exit = internal global ptr @synquacer_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description240 = internal constant [71 x i8] c"spi_synquacer.description=Socionext Synquacer HS-SPI controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [66 x i8] c"spi_synquacer.author=Masahisa Kojima <masahisa.kojima@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [61 x i8] c"spi_synquacer.author=Jassi Brar <jaswinder.singh@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [45 x i8] c"spi_synquacer.file=drivers/spi/spi-synquacer\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [29 x i8] c"spi_synquacer.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"synquacer-spi\00", [18 x i8] zeroinitializer }, align 32
@synquacer_spi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,synquacer-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@synquacer_spi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @synquacer_spi_suspend, ptr @synquacer_spi_resume, ptr @synquacer_spi_suspend, ptr @synquacer_spi_resume, ptr @synquacer_spi_suspend, ptr @synquacer_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"socionext,ihclk-rate\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iHCLK\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iPCLK\00", [26 x i8] zeroinitializer }, align 32
@synquacer_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 641, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"specified wrong clock source\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"synquacer_spi_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/spi/spi-synquacer.c\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@synquacer_spi_probe._entry_ptr = internal global ptr @synquacer_spi_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clock not found\0A\00", [47 x i8] zeroinitializer }, align 32
@synquacer_spi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 655, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable clock (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@synquacer_spi_probe._entry_ptr.13 = internal global ptr @synquacer_spi_probe._entry.11, section ".printk_index", align 4
@synquacer_spi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 663, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"missing clock source\0A\00", [42 x i8] zeroinitializer }, align 32
@synquacer_spi_probe._entry_ptr.16 = internal global ptr @synquacer_spi_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"socionext,set-aces\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"socionext,use-rtm\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-rx\00", [26 x i8] zeroinitializer }, align 32
@synquacer_spi_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.6, ptr @.str.7, i32 685, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"request rx_irq failed (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@synquacer_spi_probe._entry_ptr.22 = internal global ptr @synquacer_spi_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-tx\00", [26 x i8] zeroinitializer }, align 32
@synquacer_spi_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.6, ptr @.str.7, i32 699, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"request tx_irq failed (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@synquacer_spi_probe._entry_ptr.26 = internal global ptr @synquacer_spi_probe._entry.24, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@synquacer_spi_transfer_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.7, i32 407, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unsupported bpw: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"synquacer_spi_transfer_one\00", [37 x i8] zeroinitializer }, align 32
@synquacer_spi_transfer_one._entry_ptr = internal global ptr @synquacer_spi_transfer_one._entry, section ".printk_index", align 4
@synquacer_spi_transfer_one._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.7, i32 425, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed write_fifo. status: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@synquacer_spi_transfer_one._entry_ptr.32 = internal global ptr @synquacer_spi_transfer_one._entry.30, section ".printk_index", align 4
@synquacer_spi_transfer_one._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.7, i32 477, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to transfer. status: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@synquacer_spi_transfer_one._entry_ptr.35 = internal global ptr @synquacer_spi_transfer_one._entry.33, section ".printk_index", align 4
@synquacer_spi_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.7, i32 240, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"RX and TX bus widths must be 1-bit for Full-Duplex!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"synquacer_spi_config\00", [43 x i8] zeroinitializer }, align 32
@synquacer_spi_config._entry_ptr = internal global ptr @synquacer_spi_config._entry, section ".printk_index", align 4
@synquacer_spi_config._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.7, i32 271, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Requested rate too low (%u)\0A\00", [35 x i8] zeroinitializer }, align 32
@synquacer_spi_config._entry_ptr.40 = internal global ptr @synquacer_spi_config._entry.38, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@synquacer_spi_wait_status_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.7, i32 517, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"timeout occurs in updating Module Enable Status\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"synquacer_spi_wait_status_update\00", [63 x i8] zeroinitializer }, align 32
@synquacer_spi_wait_status_update._entry_ptr = internal global ptr @synquacer_spi_wait_status_update._entry, section ".printk_index", align 4
@synquacer_spi_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.7, i32 780, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable clk (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"synquacer_spi_resume\00", [43 x i8] zeroinitializer }, align 32
@synquacer_spi_resume._entry_ptr = internal global ptr @synquacer_spi_resume._entry, section ".printk_index", align 4
@synquacer_spi_resume._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.7, i32 786, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable spi (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@synquacer_spi_resume._entry_ptr.47 = internal global ptr @synquacer_spi_resume._entry.45, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"synquacer_spi_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 815, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 817, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [23 x i8] c"synquacer_spi_of_match\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 801, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant [21 x i8] c"synquacer_spi_pm_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 798, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 628, i32 39 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 633, i32 7 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 633, i32 22 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 637, i32 22 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 641, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 648, i32 10 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 654, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 663, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 670, i32 13 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 671, i32 52 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 680, i32 60 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 685, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 694, i32 60 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 699, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 87, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 407, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 424, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 476, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 239, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 270, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 517, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 779, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [31 x i8] c"../drivers/spi/spi-synquacer.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 786, i32 4 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_synquacer_spi_driver_exit, ptr @__initcall__kmod_spi_synquacer__239_825_synquacer_spi_driver_init6, ptr @synquacer_spi_config._entry, ptr @synquacer_spi_config._entry.38, ptr @synquacer_spi_config._entry_ptr, ptr @synquacer_spi_config._entry_ptr.40, ptr @synquacer_spi_driver_exit, ptr @synquacer_spi_probe._entry, ptr @synquacer_spi_probe._entry.11, ptr @synquacer_spi_probe._entry.14, ptr @synquacer_spi_probe._entry.20, ptr @synquacer_spi_probe._entry.24, ptr @synquacer_spi_probe._entry_ptr, ptr @synquacer_spi_probe._entry_ptr.13, ptr @synquacer_spi_probe._entry_ptr.16, ptr @synquacer_spi_probe._entry_ptr.22, ptr @synquacer_spi_probe._entry_ptr.26, ptr @synquacer_spi_resume._entry, ptr @synquacer_spi_resume._entry.45, ptr @synquacer_spi_resume._entry_ptr, ptr @synquacer_spi_resume._entry_ptr.47, ptr @synquacer_spi_transfer_one._entry, ptr @synquacer_spi_transfer_one._entry.30, ptr @synquacer_spi_transfer_one._entry.33, ptr @synquacer_spi_transfer_one._entry_ptr, ptr @synquacer_spi_transfer_one._entry_ptr.32, ptr @synquacer_spi_transfer_one._entry_ptr.35, ptr @synquacer_spi_wait_status_update._entry, ptr @synquacer_spi_wait_status_update._entry_ptr, ptr @synquacer_spi_driver, ptr @.str, ptr @synquacer_spi_of_match, ptr @synquacer_spi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @init_completion.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_spi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_spi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_spi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_spi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_spi_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_spi_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_spi_transfer_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_spi_transfer_one._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_spi_transfer_one._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_spi_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_spi_config._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_spi_wait_status_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_spi_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synquacer_spi_resume._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @synquacer_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @synquacer_spi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @synquacer_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @synquacer_spi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synquacer_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 180, i1 noundef zeroext false) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i215 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i215 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i215, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %4, align 4
  %transfer_done = getelementptr inbounds %struct.synquacer_spi, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %transfer_done to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %transfer_done, align 4
  %wait.i = getelementptr inbounds %struct.synquacer_spi, ptr %4, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #7
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %regs = getelementptr inbounds %struct.synquacer_spi, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call5 to i32
  br label %spi_controller_put.exit

if.end11:                                         ; preds = %if.end
  %clk_src_type = getelementptr inbounds %struct.synquacer_spi, ptr %4, i32 0, i32 11
  %9 = ptrtoint ptr %clk_src_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %clk_src_type, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %call.i216 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %max_speed_hz, i32 noundef 1) #7
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.end11.if.end56thread-pre-split_crit_edge, label %dev_of_node.exit

if.end11.if.end56thread-pre-split_crit_edge:      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56thread-pre-split

dev_of_node.exit:                                 ; preds = %if.end11
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %tobool16.not = icmp eq ptr %11, null
  br i1 %tobool16.not, label %dev_of_node.exit.if.end56thread-pre-split_crit_edge, label %if.then17

dev_of_node.exit.if.end56thread-pre-split_crit_edge: ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56thread-pre-split

if.then17:                                        ; preds = %dev_of_node.exit
  %call19 = tail call i32 @device_property_match_string(ptr noundef nonnull %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19)
  %cmp = icmp sgt i32 %call19, -1
  br i1 %cmp, label %if.then17.if.end35_crit_edge, label %if.else

if.then17.if.end35_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.else:                                          ; preds = %if.then17
  %call25 = tail call i32 @device_property_match_string(ptr noundef nonnull %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call25)
  %cmp26 = icmp sgt i32 %call25, -1
  br i1 %cmp26, label %if.else.if.end35_crit_edge, label %do.end

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.5) #10
  br label %spi_controller_put.exit

if.end35:                                         ; preds = %if.else.if.end35_crit_edge, %if.then17.if.end35_crit_edge
  %.sink = phi i32 [ 0, %if.then17.if.end35_crit_edge ], [ 1, %if.else.if.end35_crit_edge ]
  %.str.4.sink = phi ptr [ @.str.3, %if.then17.if.end35_crit_edge ], [ @.str.4, %if.else.if.end35_crit_edge ]
  %12 = ptrtoint ptr %clk_src_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %clk_src_type, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 4
  %call30 = tail call ptr @devm_clk_get(ptr noundef %14, ptr noundef nonnull %.str.4.sink) #7
  %clk31 = getelementptr inbounds %struct.synquacer_spi, ptr %4, i32 0, i32 10
  %15 = ptrtoint ptr %clk31 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call30, ptr %clk31, align 4
  %clk36 = getelementptr inbounds %struct.synquacer_spi, ptr %4, i32 0, i32 10
  %cmp.i217 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i217, label %if.then38, label %if.end43

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call30 to i32
  %call42 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef nonnull %dev, i32 noundef %16, ptr noundef nonnull @.str.10) #7
  br label %spi_controller_put.exit

if.end43:                                         ; preds = %if.end35
  %call.i218 = tail call i32 @clk_prepare(ptr noundef %call30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %tobool.not.i219 = icmp eq i32 %call.i218, 0
  br i1 %tobool.not.i219, label %if.end.i220, label %if.end43.do.end50_crit_edge

if.end43.do.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

if.end.i220:                                      ; preds = %if.end43
  %call1.i = tail call i32 @clk_enable(ptr noundef %call30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end52, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i220
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call30) #7
  br label %do.end50

do.end50:                                         ; preds = %if.then3.i, %if.end43.do.end50_crit_edge
  %retval.0.i221.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i218, %if.end43.do.end50_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i221.ph) #10
  br label %spi_controller_put.exit

if.end52:                                         ; preds = %if.end.i220
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %clk36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk36, align 4
  %call54 = tail call i32 @clk_get_rate(ptr noundef %18) #7
  %19 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call54, ptr %max_speed_hz, align 8
  br label %if.end56

if.end56thread-pre-split:                         ; preds = %dev_of_node.exit.if.end56thread-pre-split_crit_edge, %if.end11.if.end56thread-pre-split_crit_edge
  %20 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %max_speed_hz, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.end56thread-pre-split, %if.end52
  %21 = phi i32 [ %.pr, %if.end56thread-pre-split ], [ %call54, %if.end52 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool58.not = icmp eq i32 %21, 0
  br i1 %tobool58.not, label %do.end62, label %if.end64

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  br label %disable_clk

if.end64:                                         ; preds = %if.end56
  %div = udiv i32 %21, 254
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div, ptr %min_speed_hz, align 4
  %call.i222 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.17) #7
  %aces = getelementptr inbounds %struct.synquacer_spi, ptr %4, i32 0, i32 6
  %frombool = zext i1 %call.i222 to i8
  %23 = ptrtoint ptr %aces to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool, ptr %aces, align 4
  %call.i223 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.18) #7
  %rtm = getelementptr inbounds %struct.synquacer_spi, ptr %4, i32 0, i32 7
  %frombool70 = zext i1 %call.i223 to i8
  %24 = ptrtoint ptr %rtm to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool70, ptr %rtm, align 1
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 4, ptr %num_chipselect, align 2
  %call71 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 1
  br i1 %cmp72, label %if.end64.disable_clk_crit_edge, label %if.end74

if.end64.disable_clk_crit_edge:                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk

if.end74:                                         ; preds = %if.end64
  %rx_irq_name = getelementptr inbounds %struct.synquacer_spi, ptr %4, i32 0, i32 17
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i224 = icmp eq ptr %27, null
  br i1 %tobool.not.i224, label %if.end.i225, label %if.end74.dev_name.exit_crit_edge

if.end74.dev_name.exit_crit_edge:                 ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i225:                                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i225, %if.end74.dev_name.exit_crit_edge
  %retval.0.i226 = phi ptr [ %29, %if.end.i225 ], [ %27, %if.end74.dev_name.exit_crit_edge ]
  %call77 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %rx_irq_name, i32 noundef 32, ptr noundef nonnull @.str.19, ptr noundef %retval.0.i226)
  %call.i227 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call71, ptr noundef nonnull @sq_spi_rx_handler, ptr noundef null, i32 noundef 0, ptr noundef %rx_irq_name, ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %tobool82.not = icmp eq i32 %call.i227, 0
  br i1 %tobool82.not, label %if.end88, label %do.end86

do.end86:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call.i227) #10
  br label %disable_clk

if.end88:                                         ; preds = %dev_name.exit
  %call89 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 1
  br i1 %cmp90, label %if.end88.disable_clk_crit_edge, label %if.end92

if.end88.disable_clk_crit_edge:                   ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk

if.end92:                                         ; preds = %if.end88
  %tx_irq_name = getelementptr inbounds %struct.synquacer_spi, ptr %4, i32 0, i32 18
  %30 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i229 = icmp eq ptr %31, null
  br i1 %tobool.not.i229, label %if.end.i230, label %if.end92.dev_name.exit232_crit_edge

if.end92.dev_name.exit232_crit_edge:              ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit232

if.end.i230:                                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  br label %dev_name.exit232

dev_name.exit232:                                 ; preds = %if.end.i230, %if.end92.dev_name.exit232_crit_edge
  %retval.0.i231 = phi ptr [ %33, %if.end.i230 ], [ %31, %if.end92.dev_name.exit232_crit_edge ]
  %call96 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %tx_irq_name, i32 noundef 32, ptr noundef nonnull @.str.23, ptr noundef %retval.0.i231)
  %call.i233 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call89, ptr noundef nonnull @sq_spi_tx_handler, ptr noundef null, i32 noundef 0, ptr noundef %tx_irq_name, ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233)
  %tobool101.not = icmp eq i32 %call.i233, 0
  br i1 %tobool101.not, label %if.end107, label %do.end105

do.end105:                                        ; preds = %dev_name.exit232
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call.i233) #10
  br label %disable_clk

if.end107:                                        ; preds = %dev_name.exit232
  %of_node109 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %34 = ptrtoint ptr %of_node109 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %1, ptr %of_node109, align 8
  %fwnode = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 28
  %35 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fwnode, align 4
  %fwnode112 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 28
  %37 = ptrtoint ptr %fwnode112 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %fwnode112, align 4
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %38 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %auto_runtime_pm, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id, align 4
  %conv = trunc i32 %40 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %41 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv, ptr %bus_num, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %42 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3843, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %43 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -2139062144, ptr %bits_per_word_mask, align 8
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 50
  %44 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @synquacer_spi_set_cs, ptr %set_cs, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %45 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @synquacer_spi_transfer_one, ptr %transfer_one, align 4
  %call113 = tail call fastcc i32 @synquacer_spi_enable(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %if.end107.disable_clk_crit_edge

if.end107.disable_clk_crit_edge:                  ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk

if.end116:                                        ; preds = %if.end107
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %4, align 4
  %call.i234 = tail call i32 @__pm_runtime_set_status(ptr noundef %47, i32 noundef 0) #7
  %48 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %4, align 4
  tail call void @pm_runtime_enable(ptr noundef %49) #7
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %4, align 4
  %call121 = tail call i32 @devm_spi_register_controller(ptr noundef %51, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end116.cleanup_crit_edge, label %disable_pm

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

disable_pm:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %4, align 4
  tail call void @__pm_runtime_disable(ptr noundef %53, i1 noundef zeroext true) #7
  br label %disable_clk

disable_clk:                                      ; preds = %disable_pm, %if.end107.disable_clk_crit_edge, %do.end105, %if.end88.disable_clk_crit_edge, %do.end86, %if.end64.disable_clk_crit_edge, %do.end62
  %ret.0 = phi i32 [ %call.i227, %do.end86 ], [ %call.i233, %do.end105 ], [ %call113, %if.end107.disable_clk_crit_edge ], [ %call121, %disable_pm ], [ -22, %do.end62 ], [ %call71, %if.end64.disable_clk_crit_edge ], [ %call89, %if.end88.disable_clk_crit_edge ]
  %clk126 = getelementptr inbounds %struct.synquacer_spi, ptr %4, i32 0, i32 10
  %54 = ptrtoint ptr %clk126 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clk126, align 4
  tail call void @clk_disable(ptr noundef %55) #7
  tail call void @clk_unprepare(ptr noundef %55) #7
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %disable_clk, %do.end50, %if.then38, %do.end, %if.then8
  %ret.1 = phi i32 [ %8, %if.then8 ], [ %call42, %if.then38 ], [ %retval.0.i221.ph, %do.end50 ], [ %ret.0, %disable_clk ], [ -22, %do.end ]
  tail call void @put_device(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end116.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %spi_controller_put.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end116.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synquacer_spi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i3, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #7
  %clk = getelementptr inbounds %struct.synquacer_spi, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sq_spi_rx_handler(i32 noundef %irq, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.synquacer_spi, ptr %priv, i32 0, i32 12
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %3 = and i32 %2, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call fastcc void @read_fifo(ptr noundef %priv)
  %rx_words = getelementptr inbounds %struct.synquacer_spi, ptr %priv, i32 0, i32 14
  %5 = ptrtoint ptr %rx_words to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_words, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %do.body, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #7, !srcloc !113
  %transfer_done = getelementptr inbounds %struct.synquacer_spi, ptr %priv, i32 0, i32 1
  tail call void @complete(ptr noundef %transfer_done) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 1, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sq_spi_tx_handler(i32 noundef %irq, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.synquacer_spi, ptr %priv, i32 0, i32 12
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  %3 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %tx_words = getelementptr inbounds %struct.synquacer_spi, ptr %priv, i32 0, i32 13
  %4 = ptrtoint ptr %tx_words to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_words, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #7, !srcloc !113
  %transfer_done = getelementptr inbounds %struct.synquacer_spi, ptr %priv, i32 0, i32 1
  tail call void @complete(ptr noundef %transfer_done) #7
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call fastcc i32 @write_fifo(ptr noundef %priv)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.else ], [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @synquacer_spi_set_cs(ptr nocapture noundef readonly %spi, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regs = getelementptr inbounds %struct.synquacer_spi, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 56
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %7 = and i32 %6, -769
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %9 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %or = or i32 %shl, %8
  %or3 = or i32 %or, 256
  %spec.select = select i1 %enable, i32 %or, i32 %or3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %13, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %11) #7, !srcloc !113
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synquacer_spi_transfer_one(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %spi, ptr nocapture noundef %xfer) #2 align 64 {
entry:
  %buf = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs = getelementptr inbounds %struct.synquacer_spi, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 56
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %5 = and i32 %4, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #7, !srcloc !113
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 76
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  %11 = or i32 %10, 1572864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr17 = getelementptr i8, ptr %13, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %11) #7, !srcloc !113
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %14 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %15)
  %cmp = icmp eq i8 %15, 8
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %rem = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %land.lhs.true19, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 8
  %and20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.then, label %land.lhs.true19.if.end_crit_edge

land.lhs.true19.if.end_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 32, ptr %bits_per_word, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true19.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %23 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_buf.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.lhs.true.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %25 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xfer, align 4
  %tobool1.not.i = icmp eq ptr %26, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %rx_nbits.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 7
  %27 = ptrtoint ptr %rx_nbits.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %rx_nbits.i, align 4
  %28 = and i8 %bf.load.i, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %28)
  %29 = icmp eq i8 %28, 9
  br i1 %29, label %land.lhs.true2.i.if.end.i_crit_edge, label %do.end.i

land.lhs.true2.i.if.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.36) #10
  br label %synquacer_spi_config.exit

if.end.i:                                         ; preds = %land.lhs.true2.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %32 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr.i = load ptr, ptr %xfer, align 4
  %tobool8.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool8.not.i, label %if.end.i.if.else.i_crit_edge, label %if.then9.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %tx_nbits10.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 7
  %33 = ptrtoint ptr %tx_nbits10.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load11.i = load i8, ptr %tx_nbits10.i, align 4
  %bf.lshr12.i = lshr i8 %bf.load11.i, 3
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge
  %rx_nbits15.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 7
  %34 = ptrtoint ptr %rx_nbits15.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load16.i = load i8, ptr %rx_nbits15.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.then9.i
  %transfer_mode.0.i = phi i32 [ 2, %if.then9.i ], [ 4, %if.else.i ]
  %bus_width.0.in.in.i = phi i8 [ %bf.lshr12.i, %if.then9.i ], [ %bf.load16.i, %if.else.i ]
  %bus_width.0.in.i = and i8 %bus_width.0.in.in.i, 7
  %bus_width.0.i = zext i8 %bus_width.0.in.i to i32
  %mode20.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %35 = ptrtoint ptr %mode20.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mode20.i, align 8
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %37 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %chip_select.i, align 4
  %conv.i = zext i8 %38 to i32
  %speed_hz.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %39 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %speed_hz.i, align 4
  %41 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bits_per_word, align 1
  %conv21.i = zext i8 %42 to i32
  %speed22.i = getelementptr inbounds %struct.synquacer_spi, ptr %22, i32 0, i32 5
  %43 = ptrtoint ptr %speed22.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %speed22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %44)
  %cmp23.i = icmp eq i32 %40, %44
  br i1 %cmp23.i, label %land.lhs.true25.i, label %if.end19.i.if.end46.i_crit_edge

if.end19.i.if.end46.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

land.lhs.true25.i:                                ; preds = %if.end19.i
  %bus_width26.i = getelementptr inbounds %struct.synquacer_spi, ptr %22, i32 0, i32 15
  %45 = ptrtoint ptr %bus_width26.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bus_width26.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %bus_width.0.i)
  %cmp27.i = icmp eq i32 %46, %bus_width.0.i
  br i1 %cmp27.i, label %land.lhs.true29.i, label %land.lhs.true25.i.if.end46.i_crit_edge

land.lhs.true25.i.if.end46.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

land.lhs.true29.i:                                ; preds = %land.lhs.true25.i
  %bpw30.i = getelementptr inbounds %struct.synquacer_spi, ptr %22, i32 0, i32 3
  %47 = ptrtoint ptr %bpw30.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bpw30.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %conv21.i)
  %cmp31.i = icmp eq i32 %48, %conv21.i
  br i1 %cmp31.i, label %land.lhs.true33.i, label %land.lhs.true29.i.if.end46.i_crit_edge

land.lhs.true29.i.if.end46.i_crit_edge:           ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

land.lhs.true33.i:                                ; preds = %land.lhs.true29.i
  %mode34.i = getelementptr inbounds %struct.synquacer_spi, ptr %22, i32 0, i32 4
  %49 = ptrtoint ptr %mode34.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mode34.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %50)
  %cmp35.i = icmp eq i32 %36, %50
  br i1 %cmp35.i, label %land.lhs.true37.i, label %land.lhs.true33.i.if.end46.i_crit_edge

land.lhs.true33.i.if.end46.i_crit_edge:           ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

land.lhs.true37.i:                                ; preds = %land.lhs.true33.i
  %cs38.i = getelementptr inbounds %struct.synquacer_spi, ptr %22, i32 0, i32 2
  %51 = ptrtoint ptr %cs38.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cs38.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %conv.i)
  %cmp39.i = icmp eq i32 %52, %conv.i
  br i1 %cmp39.i, label %land.lhs.true41.i, label %land.lhs.true37.i.if.end46.i_crit_edge

land.lhs.true37.i.if.end46.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

land.lhs.true41.i:                                ; preds = %land.lhs.true37.i
  %transfer_mode42.i = getelementptr inbounds %struct.synquacer_spi, ptr %22, i32 0, i32 16
  %53 = ptrtoint ptr %transfer_mode42.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %transfer_mode42.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %transfer_mode.0.i, i32 %54)
  %cmp43.i = icmp eq i32 %transfer_mode.0.i, %54
  br i1 %cmp43.i, label %land.lhs.true41.i.if.end27_crit_edge, label %land.lhs.true41.i.if.end46.i_crit_edge

land.lhs.true41.i.if.end46.i_crit_edge:           ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

land.lhs.true41.i.if.end27_crit_edge:             ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end46.i:                                       ; preds = %land.lhs.true41.i.if.end46.i_crit_edge, %land.lhs.true37.i.if.end46.i_crit_edge, %land.lhs.true33.i.if.end46.i_crit_edge, %land.lhs.true29.i.if.end46.i_crit_edge, %land.lhs.true25.i.if.end46.i_crit_edge, %if.end19.i.if.end46.i_crit_edge
  %transfer_mode47.i = getelementptr inbounds %struct.synquacer_spi, ptr %22, i32 0, i32 16
  %55 = ptrtoint ptr %transfer_mode47.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %transfer_mode.0.i, ptr %transfer_mode47.i, align 4
  %max_speed_hz.i = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 9
  %56 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_speed_hz.i, align 8
  %add.i = add i32 %40, -1
  %sub.i = add i32 %add.i, %57
  %div48.i = udiv i32 %sub.i, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %div48.i)
  %cmp49.i = icmp ugt i32 %div48.i, 254
  br i1 %cmp49.i, label %do.end54.i, label %if.end57.i

do.end54.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.39, i32 noundef %44) #10
  br label %synquacer_spi_config.exit

if.end57.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i = getelementptr inbounds %struct.synquacer_spi, ptr %22, i32 0, i32 12
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 4
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add58.i = add nuw nsw i32 %mul.i, 4
  %add.ptr.i = getelementptr i8, ptr %61, i32 %add58.i
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %63 = and i32 %62, -257
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %42)
  %cmp61.i = icmp ne i8 %42, 8
  %and64.i = and i32 %36, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp ne i32 %and64.i, 0
  %not.cmp61.i = xor i1 %cmp61.i, true
  %or.cond290.i = select i1 %not.cmp61.i, i1 %tobool65.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div48.i)
  %cmp67.i = icmp ult i32 %div48.i, 3
  %or.cond291.i = select i1 %or.cond290.i, i1 %cmp67.i, i1 false
  %or.i = or i32 %64, 65536
  %and74.i = and i32 %36, 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %tobool75.not.i = icmp eq i32 %and74.i, 0
  %or.cond293.i = select i1 %cmp61.i, i1 true, i1 %tobool75.not.i
  %or.cond293.not.i = xor i1 %or.cond293.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %div48.i)
  %cmp77.i = icmp ult i32 %div48.i, 6
  %or.cond294.i = select i1 %or.cond293.not.i, i1 %cmp77.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %42)
  %cmp82.i = icmp ne i8 %42, 16
  %or.cond295.i = select i1 %cmp82.i, i1 true, i1 %tobool75.not.i
  %or.cond295.not.i = xor i1 %or.cond295.i, true
  %or.cond296.i = select i1 %or.cond295.not.i, i1 %cmp67.i, i1 false
  %65 = select i1 %or.cond296.i, i1 true, i1 %or.cond294.i
  %66 = select i1 %65, i1 true, i1 %or.cond291.i
  %val.2.i = select i1 %66, i32 %or.i, i32 %64
  %and98.i = and i32 %val.2.i, -65536
  %and107.i = shl i32 %36, 2
  %67 = and i32 %and107.i, 16
  %and114.i = shl i32 %36, 4
  %68 = and i32 %and114.i, 128
  %aces.i = getelementptr inbounds %struct.synquacer_spi, ptr %22, i32 0, i32 6
  %69 = ptrtoint ptr %aces.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %aces.i, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool121.not.i = icmp eq i8 %70, 0
  %masksel.i = select i1 %tobool121.not.i, i32 0, i32 4
  %rtm.i = getelementptr inbounds %struct.synquacer_spi, ptr %22, i32 0, i32 7
  %71 = ptrtoint ptr %rtm.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %rtm.i, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool127.not.i = icmp eq i8 %72, 0
  %masksel298.i = select i1 %tobool127.not.i, i32 0, i32 8
  %73 = shl nuw nsw i32 %div48.i, 8
  %val.3.i = and i32 %36, 3
  %val.4.i = or i32 %67, %val.3.i
  %val.5.i = or i32 %val.4.i, %68
  %val.6.i = or i32 %val.5.i, %73
  %and131.masked.i = or i32 %val.6.i, %masksel.i
  %or134.i = or i32 %and98.i, %and131.masked.i
  %and135.i = or i32 %or134.i, %masksel298.i
  %or136.i = or i32 %and135.i, 352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %74 = tail call i32 @llvm.bswap.i32(i32 %or136.i) #7
  %75 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i, align 4
  %add.ptr143.i = getelementptr i8, ptr %76, i32 %add58.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143.i, i32 %74) #7, !srcloc !113
  %77 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i, align 4
  %add.ptr147.i = getelementptr i8, ptr %78, i32 76
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr147.i) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %80 = and i32 %79, -196609
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #7
  %82 = shl nuw nsw i32 %conv21.i, 5
  %sub153.i = and i32 %82, 7936
  %shl154.i = add nsw i32 %sub153.i, -256
  %or155.i = or i32 %81, %shl154.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %83 = tail call i32 @llvm.bswap.i32(i32 %or155.i) #7
  %84 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i, align 4
  %add.ptr160.i = getelementptr i8, ptr %85, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160.i, i32 %83) #7, !srcloc !113
  %86 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i, align 4
  %add.ptr164.i = getelementptr i8, ptr %87, i32 56
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr164.i) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %89 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rx_buf.i, align 4
  %tobool170.not.i = icmp eq ptr %90, null
  %val.9.v.i = select i1 %tobool170.not.i, i32 134217728, i32 67108864
  %91 = and i32 %88, -16
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #7
  %93 = shl nuw nsw i32 %bus_width.0.i, 23
  %shl178.i = and i32 %93, 50331648
  %and176.i = or i32 %92, %shl178.i
  %or179.i = or i32 %and176.i, %val.9.v.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %94 = tail call i32 @llvm.bswap.i32(i32 %or179.i) #7
  %95 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i, align 4
  %add.ptr184.i = getelementptr i8, ptr %96, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr184.i, i32 %94) #7, !srcloc !113
  %bpw185.i = getelementptr inbounds %struct.synquacer_spi, ptr %22, i32 0, i32 3
  %97 = ptrtoint ptr %bpw185.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv21.i, ptr %bpw185.i, align 4
  %mode186.i = getelementptr inbounds %struct.synquacer_spi, ptr %22, i32 0, i32 4
  %98 = ptrtoint ptr %mode186.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %36, ptr %mode186.i, align 4
  %99 = ptrtoint ptr %speed22.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %40, ptr %speed22.i, align 4
  %100 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %chip_select.i, align 4
  %conv189.i = zext i8 %101 to i32
  %cs190.i = getelementptr inbounds %struct.synquacer_spi, ptr %22, i32 0, i32 2
  %102 = ptrtoint ptr %cs190.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv189.i, ptr %cs190.i, align 4
  %bus_width191.i = getelementptr inbounds %struct.synquacer_spi, ptr %22, i32 0, i32 15
  %103 = ptrtoint ptr %bus_width191.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %bus_width.0.i, ptr %bus_width191.i, align 4
  br label %if.end27

synquacer_spi_config.exit:                        ; preds = %do.end54.i, %do.end.i
  %104 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %15, ptr %bits_per_word, align 1
  br label %cleanup

if.end27:                                         ; preds = %if.end57.i, %land.lhs.true41.i.if.end27_crit_edge
  %105 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %15, ptr %bits_per_word, align 1
  %transfer_done = getelementptr inbounds %struct.synquacer_spi, ptr %1, i32 0, i32 1
  %106 = ptrtoint ptr %transfer_done to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %transfer_done, align 4
  %107 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %xfer, align 4
  %tx_buf28 = getelementptr inbounds %struct.synquacer_spi, ptr %1, i32 0, i32 9
  %109 = ptrtoint ptr %tx_buf28 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %tx_buf28, align 4
  %110 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rx_buf.i, align 4
  %rx_buf29 = getelementptr inbounds %struct.synquacer_spi, ptr %1, i32 0, i32 8
  %112 = ptrtoint ptr %rx_buf29 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %rx_buf29, align 4
  %bpw30 = getelementptr inbounds %struct.synquacer_spi, ptr %1, i32 0, i32 3
  %113 = ptrtoint ptr %bpw30 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %bpw30, align 4
  %115 = add i32 %114, -8
  %116 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 29)
  %117 = zext i32 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values)
  switch i32 %116, label %do.end39 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb32
    i32 2, label %if.end27.sw.bb34_crit_edge
    i32 3, label %if.end27.sw.bb34_crit_edge252
  ]

if.end27.sw.bb34_crit_edge252:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb34

if.end27.sw.bb34_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb34

sw.bb:                                            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %len31 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %118 = ptrtoint ptr %len31 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %len31, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %len33 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %120 = ptrtoint ptr %len33 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %len33, align 4
  %div247 = lshr i32 %121, 1
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end27.sw.bb34_crit_edge, %if.end27.sw.bb34_crit_edge252
  %len35 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %122 = ptrtoint ptr %len35 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %len35, align 4
  %div36246 = lshr i32 %123, 2
  br label %sw.epilog

do.end39:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.28, i32 noundef %114) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb34, %sw.bb32, %sw.bb
  %words.0 = phi i32 [ %div36246, %sw.bb34 ], [ %div247, %sw.bb32 ], [ %119, %sw.bb ]
  %126 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %xfer, align 4
  %tobool42.not = icmp eq ptr %127, null
  %spec.select251 = select i1 %tobool42.not, i32 0, i32 %words.0
  %128 = getelementptr inbounds %struct.synquacer_spi, ptr %1, i32 0, i32 13
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %spec.select251, ptr %128, align 4
  %130 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rx_buf.i, align 4
  %tobool47.not = icmp eq ptr %131, null
  %words.0.sink250 = select i1 %tobool47.not, i32 0, i32 %words.0
  %132 = getelementptr inbounds %struct.synquacer_spi, ptr %1, i32 0, i32 14
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %words.0.sink250, ptr %132, align 4
  %134 = load ptr, ptr %xfer, align 4
  %tobool53.not = icmp eq ptr %134, null
  br i1 %tobool53.not, label %sw.epilog.if.end64_crit_edge, label %if.then54

sw.epilog.if.end64_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then54:                                        ; preds = %sw.epilog
  %call55 = tail call fastcc i32 @write_fifo(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %do.end61, label %if.then54.if.end64_crit_edge

if.then54.if.end64_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

do.end61:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.31, i32 noundef %call55) #10
  br label %cleanup

if.end64:                                         ; preds = %if.then54.if.end64_crit_edge, %sw.epilog.if.end64_crit_edge
  %137 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rx_buf.i, align 4
  %tobool66.not = icmp eq ptr %138, null
  br i1 %tobool66.not, label %if.end64.do.body87_crit_edge, label %if.then67

if.end64.do.body87_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body87

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %139 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regs, align 4
  %add.ptr71 = getelementptr i8, ptr %140, i32 76
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %142 = and i32 %141, -251658241
  %143 = tail call i32 @llvm.bswap.i32(i32 %142)
  %144 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %145)
  %cmp77 = icmp ugt i32 %145, 16
  %spec.select = select i1 %cmp77, i32 12, i32 %145
  %or80 = or i32 %spec.select, %143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %146 = tail call i32 @llvm.bswap.i32(i32 %or80)
  %147 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regs, align 4
  %add.ptr85 = getelementptr i8, ptr %148, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %146) #7, !srcloc !113
  br label %do.body87

do.body87:                                        ; preds = %if.then67, %if.end64.do.body87_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %149 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regs, align 4
  %add.ptr91 = getelementptr i8, ptr %150, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 -1) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %151 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs, align 4
  %add.ptr96 = getelementptr i8, ptr %152, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 -1) #7, !srcloc !113
  %153 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs, align 4
  %add.ptr100 = getelementptr i8, ptr %154, i32 56
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %156 = or i32 %155, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  %157 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs, align 4
  %add.ptr109 = getelementptr i8, ptr %158, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %156) #7, !srcloc !113
  %159 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %xfer, align 4
  %tobool111.not = icmp eq ptr %160, null
  br i1 %tobool111.not, label %do.body87.if.end126_crit_edge, label %if.then112

do.body87.if.end126_crit_edge:                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.then112:                                       ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %161 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regs, align 4
  %add.ptr117 = getelementptr i8, ptr %162, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 33554432) #7, !srcloc !113
  %call120 = tail call i32 @wait_for_completion_timeout(ptr noundef %transfer_done, i32 noundef 200) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %163 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regs, align 4
  %add.ptr125 = getelementptr i8, ptr %164, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 0) #7, !srcloc !113
  br label %if.end126

if.end126:                                        ; preds = %if.then112, %do.body87.if.end126_crit_edge
  %status.1 = phi i32 [ %call120, %if.then112 ], [ 0, %do.body87.if.end126_crit_edge ]
  %165 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %rx_buf.i, align 4
  %tobool128.not = icmp eq ptr %166, null
  br i1 %tobool128.not, label %if.end126.if.end159_crit_edge, label %if.then129

if.end126.if.end159_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

if.then129:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #7
  %167 = call ptr @memset(ptr %buf, i32 255, i32 64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %168 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regs, align 4
  %add.ptr134 = getelementptr i8, ptr %169, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 1610612736) #7, !srcloc !113
  %call137 = tail call i32 @wait_for_completion_timeout(ptr noundef %transfer_done, i32 noundef 200) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  tail call void @arm_heavy_mb() #7
  %170 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regs, align 4
  %add.ptr142 = getelementptr i8, ptr %171, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 0) #7, !srcloc !113
  %172 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs, align 4
  %add.ptr146 = getelementptr i8, ptr %173, i32 56
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %175 = or i32 %174, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  tail call void @arm_heavy_mb() #7
  %176 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regs, align 4
  %add.ptr155 = getelementptr i8, ptr %177, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155, i32 %175) #7, !srcloc !113
  %178 = ptrtoint ptr %rx_buf29 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %buf, ptr %rx_buf29, align 4
  %179 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 16, ptr %132, align 4
  call fastcc void @read_fifo(ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #7
  br label %if.end159

if.end159:                                        ; preds = %if.then129, %if.end126.if.end159_crit_edge
  %status.2 = phi i32 [ %call137, %if.then129 ], [ %status.1, %if.end126.if.end159_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2)
  %cmp160 = icmp slt i32 %status.2, 0
  br i1 %cmp160, label %do.end165, label %if.end159.cleanup_crit_edge

if.end159.cleanup_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end165:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #9
  %180 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.34, i32 noundef %status.2) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end165, %if.end159.cleanup_crit_edge, %do.end61, %do.end39, %synquacer_spi_config.exit
  %retval.0 = phi i32 [ -22, %do.end39 ], [ %call55, %do.end61 ], [ %status.2, %do.end165 ], [ -22, %synquacer_spi_config.exit ], [ 0, %if.end159.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @synquacer_spi_enable(ptr nocapture noundef readonly %master) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.synquacer_spi, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #7, !srcloc !113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -100, %4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  %8 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i, label %do.body2, label %do.cond.i

do.cond.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %9
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.cleanup.sink.split_crit_edge

do.cond.i.cleanup.sink.split_crit_edge:           ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body2:                                         ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr11 = getelementptr i8, ptr %13, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr16 = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 -1) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr21 = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 -1) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr26 = getelementptr i8, ptr %19, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 -1) #7, !srcloc !113
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr28 = getelementptr i8, ptr %21, i32 52
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %23 = and i32 %22, -100663297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr36 = getelementptr i8, ptr %25, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %23) #7, !srcloc !113
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %clk_src_type = getelementptr inbounds %struct.synquacer_spi, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %clk_src_type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %clk_src_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp44 = icmp eq i32 %30, 1
  %31 = and i32 %28, -134217729
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %masksel = select i1 %cmp44, i32 8, i32 1
  %val.0 = or i32 %masksel, %32
  %and48 = and i32 %val.0, -36
  %or50 = or i32 %and48, 33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  %33 = tail call i32 @llvm.bswap.i32(i32 %or50)
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #7, !srcloc !113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i86 = sub i32 -100, %36
  br label %do.body.i88

do.body.i88:                                      ; preds = %do.cond.i91.do.body.i88_crit_edge, %do.body2
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  %40 = and i32 %39, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool3.not.i87.not = icmp eq i32 %40, 0
  br i1 %tobool3.not.i87.not, label %do.cond.i91, label %do.body.i88.cleanup_crit_edge

do.body.i88.cleanup_crit_edge:                    ; preds = %do.body.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond.i91:                                      ; preds = %do.body.i88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub.i89 = add i32 %add.neg.i86, %41
  %cmp.i90 = icmp slt i32 %sub.i89, 0
  br i1 %cmp.i90, label %do.cond.i91.do.body.i88_crit_edge, label %do.cond.i91.cleanup.sink.split_crit_edge

do.cond.i91.cleanup.sink.split_crit_edge:         ; preds = %do.cond.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.cond.i91.do.body.i88_crit_edge:                ; preds = %do.cond.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i88

cleanup.sink.split:                               ; preds = %do.cond.i91.cleanup.sink.split_crit_edge, %do.cond.i.cleanup.sink.split_crit_edge
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.41) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body.i88.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %cleanup.sink.split ], [ 0, %do.body.i88.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_fifo(ptr nocapture noundef %sspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.synquacer_spi, ptr %sspi, i32 0, i32 12
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !110
  %3 = lshr i32 %2, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  %and = and i32 %3, 31
  %rx_words = getelementptr inbounds %struct.synquacer_spi, ptr %sspi, i32 0, i32 14
  %4 = ptrtoint ptr %rx_words to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_words, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %and, i32 %5)
  %bpw = getelementptr inbounds %struct.synquacer_spi, ptr %sspi, i32 0, i32 3
  %7 = ptrtoint ptr %bpw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bpw, align 4
  %9 = add i32 %8, -8
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 29)
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %10, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %entry.sw.bb14_crit_edge
    i32 3, label %entry.sw.bb14_crit_edge1
  ]

entry.sw.bb14_crit_edge1:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_buf = getelementptr inbounds %struct.synquacer_spi, ptr %sspi, i32 0, i32 8
  %12 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_buf, align 4
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %15, i32 144
  tail call void @__raw_readsb(ptr noundef %add.ptr4, ptr noundef %13, i32 noundef %6) #7
  %add.ptr5 = getelementptr i8, ptr %13, i32 %6
  %16 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr5, ptr %rx_buf, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_buf9 = getelementptr inbounds %struct.synquacer_spi, ptr %sspi, i32 0, i32 8
  %17 = ptrtoint ptr %rx_buf9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_buf9, align 4
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr11 = getelementptr i8, ptr %20, i32 144
  tail call void @__raw_readsw(ptr noundef %add.ptr11, ptr noundef %18, i32 noundef %6) #7
  %add.ptr12 = getelementptr i16, ptr %18, i32 %6
  %21 = ptrtoint ptr %rx_buf9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr12, ptr %rx_buf9, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry.sw.bb14_crit_edge, %entry.sw.bb14_crit_edge1
  %rx_buf16 = getelementptr inbounds %struct.synquacer_spi, ptr %sspi, i32 0, i32 8
  %22 = ptrtoint ptr %rx_buf16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_buf16, align 4
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %25, i32 144
  tail call void @__raw_readsl(ptr noundef %add.ptr18, ptr noundef %23, i32 noundef %6) #7
  %add.ptr19 = getelementptr i32, ptr %23, i32 %6
  %26 = ptrtoint ptr %rx_buf16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr19, ptr %rx_buf16, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb7, %sw.bb
  %27 = ptrtoint ptr %rx_words to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_words, align 4
  %sub = sub i32 %28, %6
  store i32 %sub, ptr %rx_words, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_fifo(ptr nocapture noundef %sspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.synquacer_spi, ptr %sspi, i32 0, i32 12
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  %3 = lshr i32 %2, 8
  %and = and i32 %3, 31
  %sub = sub nsw i32 16, %and
  %tx_words = getelementptr inbounds %struct.synquacer_spi, ptr %sspi, i32 0, i32 13
  %4 = ptrtoint ptr %tx_words to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_words, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %5)
  %bpw = getelementptr inbounds %struct.synquacer_spi, ptr %sspi, i32 0, i32 3
  %7 = ptrtoint ptr %bpw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bpw, align 4
  %9 = add i32 %8, -8
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 29)
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %10, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %entry.sw.bb14_crit_edge
    i32 3, label %entry.sw.bb14_crit_edge48
  ]

entry.sw.bb14_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tx_buf = getelementptr inbounds %struct.synquacer_spi, ptr %sspi, i32 0, i32 9
  %12 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_buf, align 4
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %15, i32 80
  tail call void @__raw_writesb(ptr noundef %add.ptr4, ptr noundef %13, i32 noundef %6) #7
  %add.ptr5 = getelementptr i8, ptr %13, i32 %6
  %16 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr5, ptr %tx_buf, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tx_buf9 = getelementptr inbounds %struct.synquacer_spi, ptr %sspi, i32 0, i32 9
  %17 = ptrtoint ptr %tx_buf9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_buf9, align 4
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr11 = getelementptr i8, ptr %20, i32 80
  tail call void @__raw_writesw(ptr noundef %add.ptr11, ptr noundef %18, i32 noundef %6) #7
  %add.ptr12 = getelementptr i16, ptr %18, i32 %6
  %21 = ptrtoint ptr %tx_buf9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr12, ptr %tx_buf9, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry.sw.bb14_crit_edge, %entry.sw.bb14_crit_edge48
  %tx_buf16 = getelementptr inbounds %struct.synquacer_spi, ptr %sspi, i32 0, i32 9
  %22 = ptrtoint ptr %tx_buf16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_buf16, align 4
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %25, i32 80
  tail call void @__raw_writesl(ptr noundef %add.ptr18, ptr noundef %23, i32 noundef %6) #7
  %add.ptr19 = getelementptr i32, ptr %23, i32 %6
  %26 = ptrtoint ptr %tx_buf16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr19, ptr %tx_buf16, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb7, %sw.bb
  %27 = ptrtoint ptr %tx_words to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_words, align 4
  %sub22 = sub i32 %28, %6
  store i32 %sub22, ptr %tx_words, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synquacer_spi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @spi_controller_suspend(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

pm_runtime_suspended.exit:                        ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.then4_crit_edge

pm_runtime_suspended.exit.if.then4_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %pm_runtime_suspended.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %clk = getelementptr inbounds %struct.synquacer_spi, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @clk_unprepare(ptr noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %pm_runtime_suspended.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synquacer_spi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end11_crit_edge, label %pm_runtime_suspended.exit.if.then_crit_edge

pm_runtime_suspended.exit.if.then_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

pm_runtime_suspended.exit.if.end11_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %speed = getelementptr inbounds %struct.synquacer_spi, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %speed, align 4
  %clk = getelementptr inbounds %struct.synquacer_spi, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i33 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i33, label %if.end.i, label %if.then.clk_prepare_enable.exit_crit_edge

if.then.clk_prepare_enable.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.then.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %retval.0.i) #10
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %call5 = tail call fastcc i32 @synquacer_spi_enable(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %do.end9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %call5) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %pm_runtime_suspended.exit.if.end11_crit_edge
  %call12 = tail call i32 @spi_controller_resume(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %clk15 = getelementptr inbounds %struct.synquacer_spi, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %clk15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk15, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end11.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ %call5, %do.end9 ], [ %call12, %if.then14 ], [ %call12, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !51, !52, !54, !56, !57, !58, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !92, !94, !95, !96, !97, !99, !100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_spi_synquacer__239_825_synquacer_spi_driver_init6, !1, !"__initcall__kmod_spi_synquacer__239_825_synquacer_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-synquacer.c", i32 825, i32 1}
!2 = !{ptr @__exitcall_synquacer_spi_driver_exit, !1, !"__exitcall_synquacer_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description240, !4, !"__UNIQUE_ID_description240", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-synquacer.c", i32 827, i32 1}
!5 = !{ptr @__UNIQUE_ID_author241, !6, !"__UNIQUE_ID_author241", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-synquacer.c", i32 828, i32 1}
!7 = !{ptr @__UNIQUE_ID_author242, !8, !"__UNIQUE_ID_author242", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-synquacer.c", i32 829, i32 1}
!9 = !{ptr @__UNIQUE_ID_file243, !10, !"__UNIQUE_ID_file243", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-synquacer.c", i32 830, i32 1}
!11 = !{ptr @__UNIQUE_ID_license244, !10, !"__UNIQUE_ID_license244", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-synquacer.c", i32 817, i32 11}
!14 = !{ptr @synquacer_spi_driver, !15, !"synquacer_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-synquacer.c", i32 815, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-synquacer.c", i32 628, i32 39}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-synquacer.c", i32 633, i32 7}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-synquacer.c", i32 633, i32 22}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-synquacer.c", i32 637, i32 22}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-synquacer.c", i32 641, i32 4}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @synquacer_spi_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @synquacer_spi_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-synquacer.c", i32 648, i32 10}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-synquacer.c", i32 654, i32 4}
!36 = !{ptr @synquacer_spi_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @synquacer_spi_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-synquacer.c", i32 663, i32 3}
!40 = !{ptr @synquacer_spi_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @synquacer_spi_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-synquacer.c", i32 670, i32 13}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/spi/spi-synquacer.c", i32 671, i32 52}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/spi/spi-synquacer.c", i32 680, i32 60}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-synquacer.c", i32 685, i32 3}
!50 = !{ptr @synquacer_spi_probe._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @synquacer_spi_probe._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/spi/spi-synquacer.c", i32 694, i32 60}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-synquacer.c", i32 699, i32 3}
!56 = !{ptr @synquacer_spi_probe._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @synquacer_spi_probe._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @init_completion.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../include/linux/completion.h", i32 87, i32 2}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/spi/spi-synquacer.c", i32 407, i32 3}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @synquacer_spi_transfer_one._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @synquacer_spi_transfer_one._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/spi/spi-synquacer.c", i32 424, i32 4}
!68 = !{ptr @synquacer_spi_transfer_one._entry.30, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @synquacer_spi_transfer_one._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/spi/spi-synquacer.c", i32 476, i32 3}
!72 = !{ptr @synquacer_spi_transfer_one._entry.33, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @synquacer_spi_transfer_one._entry_ptr.35, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/spi/spi-synquacer.c", i32 239, i32 3}
!76 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @synquacer_spi_config._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @synquacer_spi_config._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/spi/spi-synquacer.c", i32 270, i32 3}
!81 = !{ptr @synquacer_spi_config._entry.38, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @synquacer_spi_config._entry_ptr.40, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/spi/spi-synquacer.c", i32 517, i32 2}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @synquacer_spi_wait_status_update._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @synquacer_spi_wait_status_update._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @synquacer_spi_of_match, !89, !"synquacer_spi_of_match", i1 false, i1 false}
!89 = !{!"../drivers/spi/spi-synquacer.c", i32 801, i32 34}
!90 = !{ptr @synquacer_spi_pm_ops, !91, !"synquacer_spi_pm_ops", i1 false, i1 false}
!91 = !{!"../drivers/spi/spi-synquacer.c", i32 798, i32 8}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/spi/spi-synquacer.c", i32 779, i32 4}
!94 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @synquacer_spi_resume._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @synquacer_spi_resume._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/spi/spi-synquacer.c", i32 786, i32 4}
!99 = !{ptr @synquacer_spi_resume._entry.45, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @synquacer_spi_resume._entry_ptr.47, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{i64 5897450}
!111 = !{i64 2154896926}
!112 = !{i64 2154897307}
!113 = !{i64 5897032}
!114 = !{i64 2154897967}
!115 = !{i64 2154898266}
!116 = !{i64 2154888439}
!117 = !{i64 2154888752}
!118 = !{i64 2154875814}
!119 = !{i64 2154876115}
!120 = !{i64 2154876781}
!121 = !{i64 2154877168}
!122 = !{i64 2154866770}
!123 = !{i8 0, i8 2}
!124 = !{i64 2154873268}
!125 = !{i64 2154873950}
!126 = !{i64 2154874179}
!127 = !{i64 2154874845}
!128 = !{i64 2154875092}
!129 = !{i64 2154881185}
!130 = !{i64 2154881490}
!131 = !{i64 2154881883}
!132 = !{i64 2154882273}
!133 = !{i64 2154882936}
!134 = !{i64 2154883237}
!135 = !{i64 2154883713}
!136 = !{i64 2154884111}
!137 = !{i64 2154884667}
!138 = !{i64 2154885065}
!139 = !{i64 2154885725}
!140 = !{i64 2154886026}
!141 = !{i64 2154891978}
!142 = !{i64 2154889424}
!143 = !{i64 2154892364}
!144 = !{i64 2154892750}
!145 = !{i64 2154893137}
!146 = !{i64 2154893527}
!147 = !{i64 2154893917}
!148 = !{i64 2154894580}
!149 = !{i64 2154894963}
!150 = !{i64 2154895629}
!151 = !{i64 2154896260}
!152 = !{i64 2154858871}
!153 = !{i64 2154860823}
