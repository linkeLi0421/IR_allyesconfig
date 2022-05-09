; ModuleID = '/llk/IR_all_yes/drivers/media/pci/netup_unidvb/netup_unidvb_spi.c_pt.bc'
source_filename = "../drivers/media/pci/netup_unidvb/netup_unidvb_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spi_board_info = type { [32 x i8], ptr, ptr, ptr, i32, i32, i16, i16, i32 }
%struct.flash_platform_data = type { ptr, ptr, i32, ptr }
%struct.mtd_partition = type { ptr, ptr, i64, i64, i32, i32, ptr }
%struct.netup_spi = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.wait_queue_head, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.netup_spi_regs = type { [1024 x i8], i16, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.125, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.125 = type { ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.netup_unidvb_dev = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x %struct.vb2_dvb_frontends], [2 x %struct.netup_i2c], ptr, [2 x %struct.netup_dma], [2 x %struct.netup_ci_state], ptr, i32 }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.netup_i2c = type { %struct.spinlock, %struct.wait_queue_head, %struct.i2c_adapter, ptr, ptr, ptr, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.netup_dma = type { i8, %struct.spinlock, ptr, ptr, i32, ptr, i32, i64, i32, i32, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.netup_ci_state = type { %struct.dvb_ca_en50221, ptr, ptr, ptr, i32, i32 }
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@netup_spi_interrupt.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"netup_unidvb\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"netup_spi_interrupt\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/media/pci/netup_unidvb/netup_unidvb_spi.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): not mine interrupt\0A\00", [38 x i8] zeroinitializer }, align 32
@netup_spi_interrupt.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(): SPI interrupt handled\0A\00", [35 x i8] zeroinitializer }, align 32
@netup_spi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 182, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): unable to alloc SPI master\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"netup_spi_init\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@netup_spi_init._entry_ptr = internal global ptr @netup_spi_init._entry, section ".printk_index", align 4
@netup_spi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&nspi->lock\00", [20 x i8] zeroinitializer }, align 32
@netup_spi_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&nspi->waitq\00", [19 x i8] zeroinitializer }, align 32
@netup_spi_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.2, i32 201, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): unable to register SPI bus\0A\00", [62 x i8] zeroinitializer }, align 32
@netup_spi_init._entry_ptr.14 = internal global ptr @netup_spi_init._entry.12, section ".printk_index", align 4
@netup_spi_name = internal global { [64 x i8], [32 x i8] } { [64 x i8] c"fpga\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fpga_%02x:%02x.%01x\00", [44 x i8] zeroinitializer }, align 32
@netup_spi_board = internal global { %struct.spi_board_info, [36 x i8] } { %struct.spi_board_info { [32 x i8] c"m25p128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spi_flash_data, ptr null, ptr null, i32 0, i32 11000000, i16 0, i16 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@netup_spi_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 214, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(): unable to create SPI device\0A\00", [61 x i8] zeroinitializer }, align 32
@netup_spi_init._entry_ptr.18 = internal global ptr @netup_spi_init._entry.16, section ".printk_index", align 4
@netup_spi_init.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.19, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s(): SPI init OK\0A\00", [45 x i8] zeroinitializer }, align 32
@netup_spi_transfer.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"netup_spi_transfer\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): control_stat 0x%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@netup_spi_transfer.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(): transfer timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@netup_spi_transfer.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.23, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(): invalid state %d\0A\00", [40 x i8] zeroinitializer }, align 32
@spi_flash_data = internal global { %struct.flash_platform_data, [16 x i8] } { %struct.flash_platform_data { ptr @.str.24, ptr @netup_spi_flash_partitions, i32 1, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"netup0_m25p128\00", [17 x i8] zeroinitializer }, align 32
@netup_spi_flash_partitions = internal global { %struct.mtd_partition, [56 x i8] } { %struct.mtd_partition { ptr @netup_spi_name, ptr null, i64 16777216, i64 0, i32 0, i32 0, ptr null }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 26]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 81, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 91, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 181, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 191, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 192, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 200, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"netup_spi_name\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 46, i32 13 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 206, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [16 x i8] c"netup_spi_board\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 61, i32 30 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 213, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 217, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 134, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 147, i32 6 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 151, i32 6 }
@___asan_gen_.104 = private unnamed_addr constant [15 x i8] c"spi_flash_data\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 55, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 56, i32 10 }
@___asan_gen_.110 = private unnamed_addr constant [27 x i8] c"netup_spi_flash_partitions\00", align 1
@___asan_gen_.111 = private constant [53 x i8] c"../drivers/media/pci/netup_unidvb/netup_unidvb_spi.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 48, i32 29 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @netup_spi_init._entry, ptr @netup_spi_init._entry.12, ptr @netup_spi_init._entry.16, ptr @netup_spi_init._entry_ptr, ptr @netup_spi_init._entry_ptr.14, ptr @netup_spi_init._entry_ptr.18, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @netup_spi_init.__key, ptr @.str.9, ptr @netup_spi_init.__key.10, ptr @.str.11, ptr @.str.13, ptr @netup_spi_name, ptr @.str.15, ptr @netup_spi_board, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @spi_flash_data, ptr @.str.24, ptr @netup_spi_flash_partitions], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_spi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_spi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_spi_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_spi_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_spi_name to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_spi_board to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_spi_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_flash_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netup_spi_flash_partitions to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netup_spi_interrupt(ptr noundef %spi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %spi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.netup_spi, ptr %spi, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %regs = getelementptr inbounds %struct.netup_spi, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %control_stat = getelementptr inbounds %struct.netup_spi_regs, ptr %1, i32 0, i32 1
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %control_stat) #7, !srcloc !64
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  %4 = and i16 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool9.not = icmp eq i16 %4, 0
  br i1 %tobool9.not, label %if.then10, label %do.body23

if.then10:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_spi_interrupt.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_spi_interrupt, %if.then18)) #7
          to label %cleanup [label %if.then18], !srcloc !66

if.then18:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %master = getelementptr inbounds %struct.netup_spi, ptr %spi, i32 0, i32 1
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_spi_interrupt.__UNIQUE_ID_ddebug385, ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #7
  br label %cleanup

do.body23:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %or = or i16 %3, 4096
  %7 = tail call i16 @llvm.bswap.i16(i16 %or)
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %control_stat29 = getelementptr inbounds %struct.netup_spi_regs, ptr %9, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %control_stat29, i16 %7) #7, !srcloc !68
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %control_stat33 = getelementptr inbounds %struct.netup_spi_regs, ptr %11, i32 0, i32 1
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %control_stat33) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %13 = and i16 %12, -33
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %control_stat44 = getelementptr inbounds %struct.netup_spi_regs, ptr %15, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %control_stat44, i16 %13) #7, !srcloc !68
  %state = getelementptr inbounds %struct.netup_spi, ptr %spi, i32 0, i32 6
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %state, align 4
  %waitq = getelementptr inbounds %struct.netup_spi, ptr %spi, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_spi_interrupt.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_spi_interrupt, %if.then58)) #7
          to label %cleanup [label %if.then58], !srcloc !66

if.then58:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %master59 = getelementptr inbounds %struct.netup_spi, ptr %spi, i32 0, i32 1
  %17 = ptrtoint ptr %master59 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master59, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_spi_interrupt.__UNIQUE_ID_ddebug386, ptr noundef %18, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %do.body23, %if.then18, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then18 ], [ 1, %if.then58 ], [ 0, %if.then10 ], [ 1, %do.body23 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netup_spi_init(ptr nocapture noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev, i32 noundef 116, i1 noundef zeroext false) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 11, ptr %mode_bits, align 8
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %bus_num, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %num_chipselect, align 2
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 45
  %9 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @netup_spi_transfer, ptr %transfer_one_message, align 4
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %10 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @netup_spi_setup, ptr %setup, align 4
  %lock = getelementptr inbounds %struct.netup_spi, ptr %5, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @netup_spi_init.__key, i16 noundef signext 3) #7
  %waitq = getelementptr inbounds %struct.netup_spi, ptr %5, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.11, ptr noundef nonnull @netup_spi_init.__key.10) #7
  %master11 = getelementptr inbounds %struct.netup_spi, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %master11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %master11, align 4
  %bmmio0 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 7
  %12 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmmio0, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 16384
  %regs = getelementptr inbounds %struct.netup_spi, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %clock_divider = getelementptr inbounds %struct.netup_spi_regs, ptr %16, i32 0, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %clock_divider, i16 512) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %bmmio0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bmmio0, align 4
  %add.ptr20 = getelementptr i8, ptr %18, i32 18580
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20, i16 256) #7, !srcloc !68
  %spi = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 18
  %19 = ptrtoint ptr %spi to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %5, ptr %spi, align 8
  %call21 = tail call i32 @spi_register_controller(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end30, label %if.then23

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %spi to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %spi, align 8
  %21 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ndev, align 8
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %pci_bus = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 1
  %23 = ptrtoint ptr %pci_bus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pci_bus, align 4
  %pci_slot = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 2
  %25 = ptrtoint ptr %pci_slot to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pci_slot, align 8
  %pci_func = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 3
  %27 = ptrtoint ptr %pci_func to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pci_func, align 4
  %call31 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @netup_spi_name, i32 noundef 64, ptr noundef nonnull @.str.15, i32 noundef %24, i32 noundef %26, i32 noundef %28)
  %call32 = tail call ptr @spi_new_device(ptr noundef nonnull %call.i, ptr noundef nonnull @netup_spi_board) #7
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.then34, label %do.body42

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @spi_unregister_controller(ptr noundef nonnull %call.i) #7
  %29 = ptrtoint ptr %spi to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %spi, align 8
  %30 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ndev, align 8
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6) #10
  br label %cleanup

do.body42:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_spi_init.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_spi_init, %if.then47)) #7
          to label %cleanup [label %if.then47], !srcloc !66

if.then47:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_spi_init.__UNIQUE_ID_ddebug390, ptr noundef %dev49, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %do.body42, %if.then34, %if.then23, %do.end
  %retval.0 = phi i32 [ -22, %if.then23 ], [ -22, %if.then34 ], [ -22, %do.end ], [ 0, %if.then47 ], [ 0, %do.body42 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netup_spi_transfer(ptr noundef %master, ptr noundef %msg) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.netup_spi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %control_stat = getelementptr inbounds %struct.netup_spi_regs, ptr %3, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %control_stat, i16 64) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %control_stat5 = getelementptr inbounds %struct.netup_spi_regs, ptr %5, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %control_stat5, i16 0) #7, !srcloc !68
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn270 = load ptr, ptr %msg, align 4
  %cmp.not272 = icmp eq ptr %.pn270, %msg
  br i1 %cmp.not272, label %entry.done_crit_edge, label %for.body.lr.ph

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

for.body.lr.ph:                                   ; preds = %entry
  %state = getelementptr inbounds %struct.netup_spi, ptr %1, i32 0, i32 6
  %master41 = getelementptr inbounds %struct.netup_spi, ptr %1, i32 0, i32 1
  %waitq = getelementptr inbounds %struct.netup_spi, ptr %1, i32 0, i32 5
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 6
  br label %for.body

for.cond.loopexit:                                ; preds = %while.cond
  %7 = ptrtoint ptr %.pn274 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn274, align 4
  %cmp.not = icmp eq ptr %.pn, %msg
  br i1 %cmp.not, label %for.cond.loopexit.done_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.loopexit.done_crit_edge:                 ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %.pn274 = phi ptr [ %.pn270, %for.body.lr.ph ], [ %.pn, %for.cond.loopexit.for.body_crit_edge ]
  %result.0273 = phi i32 [ 0, %for.body.lr.ph ], [ %result.1, %for.cond.loopexit.for.body_crit_edge ]
  %t.0275 = getelementptr i8, ptr %.pn274, i32 -84
  %len = getelementptr i8, ptr %.pn274, i32 -76
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %rx_buf = getelementptr i8, ptr %.pn274, i32 -80
  br label %while.cond

while.cond:                                       ; preds = %cleanup167.while.cond_crit_edge, %for.body
  %tr_size.0 = phi i32 [ %9, %for.body ], [ %tr_size.1, %cleanup167.while.cond_crit_edge ]
  %result.1 = phi i32 [ %result.0273, %for.body ], [ %result.2, %cleanup167.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tr_size.0)
  %tobool.not = icmp eq i32 %tr_size.0, 0
  br i1 %tobool.not, label %for.cond.loopexit, label %while.body

while.body:                                       ; preds = %while.cond
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %sub = sub i32 %11, %tr_size.0
  %12 = call i32 @llvm.umin.i32(i32 %tr_size.0, i32 1024)
  %13 = ptrtoint ptr %.pn274 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn274, align 4
  %cmp.i.not = icmp eq ptr %14, %msg
  %add = add i32 %sub, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp14 = icmp eq i32 %add, %11
  %15 = select i1 %cmp.i.not, i1 %cmp14, i1 false
  %tobool28.not = select i1 %15, i32 16384, i32 0
  %16 = ptrtoint ptr %t.0275 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %t.0275, align 4
  %tobool15.not = icmp eq ptr %17, null
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr19 = getelementptr i8, ptr %17, i32 %sub
  call void @mmiocpy(ptr noundef %19, ptr noundef %add.ptr19, i32 noundef %12) #7
  br label %if.end23

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @mmioset(ptr noundef %19, i32 noundef 0, i32 noundef %12) #7
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then16
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %state, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  call void @arm_heavy_mb() #7
  %and = and i32 %12, 1023
  %or27 = or i32 %tobool28.not, %and
  %21 = trunc i32 %or27 to i16
  %conv = or i16 %21, -24576
  %22 = call i16 @llvm.bswap.i16(i16 %conv)
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %control_stat32 = getelementptr inbounds %struct.netup_spi_regs, ptr %24, i32 0, i32 1
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %control_stat32, i16 %22) #7, !srcloc !68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_spi_transfer.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_spi_transfer, %if.then40)) #7
          to label %do.end50 [label %if.then40], !srcloc !66

if.then40:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %master41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %master41, align 4
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %control_stat43 = getelementptr inbounds %struct.netup_spi_regs, ptr %28, i32 0, i32 1
  %29 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %control_stat43) #7, !srcloc !64
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %conv47 = zext i16 %30 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_spi_transfer.__UNIQUE_ID_ddebug387, ptr noundef %26, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %conv47) #7
  br label %do.end50

do.end50:                                         ; preds = %if.then40, %if.end23
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 139) #7
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp59.not = icmp eq i32 %32, 0
  br i1 %cmp59.not, label %if.then75, label %do.end50.if.end106_crit_edge

do.end50.if.end106_crit_edge:                     ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then75:                                        ; preds = %do.end50
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %33 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call79266 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp82.not267.not = icmp eq i32 %35, 0
  br i1 %cmp82.not267.not, label %if.then75.cleanup_crit_edge, label %if.then75.for.end_crit_edge

if.then75.for.end_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then75.cleanup_crit_edge
  %__ret76.1269 = phi i32 [ %__ret76.1, %cleanup.cleanup_crit_edge ], [ 600, %if.then75.cleanup_crit_edge ]
  %call103 = call i32 @schedule_timeout(i32 noundef %__ret76.1269) #7
  %call79 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp82.not = icmp eq i32 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool88.not = icmp eq i32 %call103, 0
  %spec.store.select182 = select i1 %tobool88.not, i32 1, i32 %call103
  %__ret76.1 = select i1 %cmp82.not, i32 %call103, i32 %spec.store.select182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret76.1)
  %tobool95.not = icmp eq i32 %__ret76.1, 0
  %not.cmp82.not = xor i1 %cmp82.not, true
  %38 = select i1 %not.cmp82.not, i1 true, i1 %tobool95.not
  br i1 %38, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then75.for.end_crit_edge
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr = load i32, ptr %state, align 4
  br label %if.end106

if.end106:                                        ; preds = %for.end, %do.end50.if.end106_crit_edge
  %40 = phi i32 [ %.pr, %for.end ], [ %32, %do.end50.if.end106_crit_edge ]
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %40, label %do.body144 [
    i32 1, label %if.then111
    i32 0, label %do.body125
  ]

if.then111:                                       ; preds = %if.end106
  %42 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_buf, align 4
  %tobool112.not = icmp eq ptr %43, null
  br i1 %tobool112.not, label %if.then111.if.end164_crit_edge, label %if.then113

if.then111.if.end164_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164

if.then113:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr115 = getelementptr i8, ptr %43, i32 %sub
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  call void @mmiocpy(ptr noundef %add.ptr115, ptr noundef %45, i32 noundef %12) #7
  br label %if.end164

do.body125:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_spi_transfer.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_spi_transfer, %if.then137)) #7
          to label %cleanup167 [label %if.then137], !srcloc !66

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %master41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %master41, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_spi_transfer.__UNIQUE_ID_ddebug388, ptr noundef %47, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20) #7
  br label %done

do.body144:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @netup_spi_transfer.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@netup_spi_transfer, %if.then156)) #7
          to label %cleanup167 [label %if.then156], !srcloc !66

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %master41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %master41, align 4
  %50 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %state, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @netup_spi_transfer.__UNIQUE_ID_ddebug389, ptr noundef %49, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.20, i32 noundef %51) #7
  br label %done

if.end164:                                        ; preds = %if.then113, %if.then111.if.end164_crit_edge
  %sub165 = sub i32 %tr_size.0, %12
  %52 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %actual_length, align 4
  %add166 = add i32 %53, %12
  store i32 %add166, ptr %actual_length, align 4
  br label %cleanup167

cleanup167:                                       ; preds = %if.end164, %do.body144, %do.body125
  %cleanup.dest.slot.1 = phi i32 [ 0, %if.end164 ], [ 26, %do.body125 ], [ 26, %do.body144 ]
  %tr_size.1 = phi i32 [ %sub165, %if.end164 ], [ %tr_size.0, %do.body125 ], [ %tr_size.0, %do.body144 ]
  %result.2 = phi i32 [ %result.1, %if.end164 ], [ -5, %do.body125 ], [ -5, %do.body144 ]
  %54 = zext i32 %cleanup.dest.slot.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %cleanup.dest.slot.1, label %cleanup167.cleanup178_crit_edge [
    i32 0, label %cleanup167.while.cond_crit_edge
    i32 26, label %cleanup167.done_crit_edge
  ]

cleanup167.done_crit_edge:                        ; preds = %cleanup167
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

cleanup167.while.cond_crit_edge:                  ; preds = %cleanup167
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

cleanup167.cleanup178_crit_edge:                  ; preds = %cleanup167
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup178

done:                                             ; preds = %cleanup167.done_crit_edge, %if.then156, %if.then137, %for.cond.loopexit.done_crit_edge, %entry.done_crit_edge
  %result.3 = phi i32 [ -5, %if.then156 ], [ -5, %if.then137 ], [ 0, %entry.done_crit_edge ], [ %result.2, %cleanup167.done_crit_edge ], [ %result.1, %for.cond.loopexit.done_crit_edge ]
  %status = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 7
  %55 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %result.3, ptr %status, align 4
  call void @spi_finalize_current_message(ptr noundef %master) #7
  br label %cleanup178

cleanup178:                                       ; preds = %done, %cleanup167.cleanup178_crit_edge
  %retval.0 = phi i32 [ %result.3, %done ], [ undef, %cleanup167.cleanup178_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netup_spi_setup(ptr nocapture noundef readnone %spi) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_new_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netup_spi_release(ptr nocapture noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.netup_unidvb_dev, ptr %ndev, i32 0, i32 18
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %master = getelementptr inbounds %struct.netup_spi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  tail call void @spi_unregister_controller(ptr noundef %3) #7
  %lock = getelementptr inbounds %struct.netup_spi, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %regs = getelementptr inbounds %struct.netup_spi, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %control_stat = getelementptr inbounds %struct.netup_spi_regs, ptr %5, i32 0, i32 1
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %control_stat) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %7 = or i16 %6, 16
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %control_stat15 = getelementptr inbounds %struct.netup_spi_regs, ptr %9, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %control_stat15, i16 %7) #7, !srcloc !68
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %control_stat19 = getelementptr inbounds %struct.netup_spi_regs, ptr %11, i32 0, i32 1
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %control_stat19) #7, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %13 = and i16 %12, -33
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %control_stat29 = getelementptr inbounds %struct.netup_spi_regs, ptr %15, i32 0, i32 1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %control_stat29, i16 %13) #7, !srcloc !68
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  %16 = ptrtoint ptr %spi1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %spi1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !14, !15, !16, !18, !19, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_spi.c", i32 81, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @netup_spi_interrupt.__UNIQUE_ID_ddebug385, !1, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_spi.c", i32 91, i32 2}
!8 = !{ptr @netup_spi_interrupt.__UNIQUE_ID_ddebug386, !7, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_spi.c", i32 181, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @netup_spi_init._entry, !10, !"_entry", i1 false, i1 false}
!15 = !{ptr @netup_spi_init._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @netup_spi_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_spi.c", i32 191, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @netup_spi_init.__key.10, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_spi.c", i32 192, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_spi.c", i32 200, i32 3}
!24 = !{ptr @netup_spi_init._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @netup_spi_init._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_spi.c", i32 206, i32 3}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_spi.c", i32 213, i32 3}
!30 = !{ptr @netup_spi_init._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @netup_spi_init._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_spi.c", i32 217, i32 2}
!34 = !{ptr @netup_spi_init.__UNIQUE_ID_ddebug390, !33, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_spi.c", i32 134, i32 4}
!37 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @netup_spi_transfer.__UNIQUE_ID_ddebug387, !36, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_spi.c", i32 147, i32 6}
!41 = !{ptr @netup_spi_transfer.__UNIQUE_ID_ddebug388, !40, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_spi.c", i32 151, i32 6}
!44 = !{ptr @netup_spi_transfer.__UNIQUE_ID_ddebug389, !43, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!45 = !{ptr @netup_spi_name, !46, !"netup_spi_name", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_spi.c", i32 46, i32 13}
!47 = !{ptr @netup_spi_board, !48, !"netup_spi_board", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_spi.c", i32 61, i32 30}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_spi.c", i32 56, i32 10}
!51 = !{ptr @spi_flash_data, !52, !"spi_flash_data", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_spi.c", i32 55, i32 35}
!53 = !{ptr @netup_spi_flash_partitions, !54, !"netup_spi_flash_partitions", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/netup_unidvb/netup_unidvb_spi.c", i32 48, i32 29}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 4987061}
!65 = !{i64 2158325098}
!66 = !{i64 2148492884, i64 2148492889, i64 2148492902, i64 2148492946, i64 2148492980, i64 2148493001}
!67 = !{i64 2158327708}
!68 = !{i64 4986861}
!69 = !{i64 2158328431}
!70 = !{i64 2158328670}
!71 = !{i64 2158349065}
!72 = !{i64 2158349482}
!73 = !{i64 2158331682}
!74 = !{i64 2158332092}
!75 = !{i64 2158336191}
!76 = !{i64 2158339590}
!77 = !{i64 2158356502}
!78 = !{i64 2158356739}
!79 = !{i64 2158357462}
!80 = !{i64 2158357701}
