; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-rockchip-sfc.c_pt.bc'
source_filename = "../drivers/spi/spi-rockchip-sfc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.rockchip_sfc = type { ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.completion, i8, i32, i16 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_mem_op = type { %struct.anon.71, %struct.anon.72, %struct.anon.73, %struct.anon.74 }
%struct.anon.71 = type { i8, i8, i8, i16 }
%struct.anon.72 = type { i8, i8, i8, i64 }
%struct.anon.73 = type { i8, i8, i8 }
%struct.anon.74 = type { i8, i8, i32, i32, %union.anon.75 }
%union.anon.75 = type { ptr }

@__initcall__kmod_spi_rockchip_sfc__250_688_rockchip_sfc_driver_init6 = internal global ptr @rockchip_sfc_driver_init, section ".initcall6.init", align 4
@rockchip_sfc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_sfc_probe, ptr @rockchip_sfc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_sfc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rockchip_sfc_driver_exit = internal global ptr @rockchip_sfc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file251 = internal constant [51 x i8] c"spi_rockchip_sfc.file=drivers/spi/spi-rockchip-sfc\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [32 x i8] c"spi_rockchip_sfc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [69 x i8] c"spi_rockchip_sfc.description=Rockchip Serial Flash Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [61 x i8] c"spi_rockchip_sfc.author=Shawn Lin <shawn.lin@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [63 x i8] c"spi_rockchip_sfc.author=Chris Morgan <macromorgan@hotmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [57 x i8] c"spi_rockchip_sfc.author=Jon Lin <Jon.lin@rock-chips.com>\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip-sfc\00", [19 x i8] zeroinitializer }, align 32
@rockchip_sfc_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,sfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rockchip_sfc_mem_ops = internal constant { %struct.spi_controller_mem_ops, [60 x i8] } { %struct.spi_controller_mem_ops { ptr @rockchip_sfc_adjust_op_size, ptr null, ptr @rockchip_sfc_exec_mem_op, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_sfc\00", [24 x i8] zeroinitializer }, align 32
@rockchip_sfc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 586, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get sfc interface clk\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rockchip_sfc_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/spi/spi-rockchip-sfc.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_sfc_probe._entry_ptr = internal global ptr @rockchip_sfc_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_sfc\00", [23 x i8] zeroinitializer }, align 32
@rockchip_sfc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 592, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get sfc ahb clk\0A\00", [37 x i8] zeroinitializer }, align 32
@rockchip_sfc_probe._entry_ptr.10 = internal global ptr @rockchip_sfc_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rockchip,sfc-no-dma\00", [44 x i8] zeroinitializer }, align 32
@rockchip_sfc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 602, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to set dma mask\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rockchip_sfc_probe._entry_ptr.15 = internal global ptr @rockchip_sfc_probe._entry.12, section ".printk_index", align 4
@rockchip_sfc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 615, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to enable ahb clk\0A\00", [38 x i8] zeroinitializer }, align 32
@rockchip_sfc_probe._entry_ptr.18 = internal global ptr @rockchip_sfc_probe._entry.16, section ".printk_index", align 4
@rockchip_sfc_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 621, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable interface clk\0A\00", [32 x i8] zeroinitializer }, align 32
@rockchip_sfc_probe._entry_ptr.21 = internal global ptr @rockchip_sfc_probe._entry.19, section ".printk_index", align 4
@rockchip_sfc_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 628, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to get the irq\0A\00", [41 x i8] zeroinitializer }, align 32
@rockchip_sfc_probe._entry_ptr.24 = internal global ptr @rockchip_sfc_probe._entry.22, section ".printk_index", align 4
@rockchip_sfc_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 635, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@rockchip_sfc_probe._entry_ptr.27 = internal global ptr @rockchip_sfc_probe._entry.25, section ".printk_index", align 4
@rockchip_sfc_exec_mem_op.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 0, i8 125, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spi_rockchip_sfc\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rockchip_sfc_exec_mem_op\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set_freq=%dHz real_freq=%ldHz\0A\00", [33 x i8] zeroinitializer }, align 32
@rockchip_sfc_exec_mem_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 515, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"xfer data failed ret %d dir %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rockchip_sfc_exec_mem_op._entry_ptr = internal global ptr @rockchip_sfc_exec_mem_op._entry, section ".printk_index", align 4
@rockchip_sfc_xfer_setup.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 0, i8 88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip_sfc_xfer_setup\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sfc addr.nbytes=%x(x%d) dummy.nbytes=%x(x%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@rockchip_sfc_xfer_setup.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.32, ptr @.str.4, ptr @.str.34, i8 0, i8 88, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sfc ctrl=%x cmd=%x addr=%llx len=%x\0A\00", [59 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@rockchip_sfc_xfer_data_dma.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.36, ptr @.str.4, ptr @.str.37, i8 0, i8 113, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rockchip_sfc_xfer_data_dma\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sfc xfer_dma len=%x\0A\00", [43 x i8] zeroinitializer }, align 32
@rockchip_sfc_xfer_data_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.4, i32 460, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DMA wait for transfer finish timeout\0A\00", [58 x i8] zeroinitializer }, align 32
@rockchip_sfc_xfer_data_dma._entry_ptr = internal global ptr @rockchip_sfc_xfer_data_dma._entry, section ".printk_index", align 4
@rockchip_sfc_xfer_data_poll.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.39, ptr @.str.4, ptr @.str.40, i8 0, i8 110, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rockchip_sfc_xfer_data_poll\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sfc xfer_poll len=%x\0A\00", [42 x i8] zeroinitializer }, align 32
@rockchip_sfc_wait_txfifo_ready.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 0, i8 64, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rockchip_sfc_wait_txfifo_ready\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sfc wait tx fifo timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@rockchip_sfc_wait_rxfifo_ready.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 0, i8 68, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rockchip_sfc_wait_rxfifo_ready\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sfc wait rx fifo timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@rockchip_sfc_xfer_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 479, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wait sfc idle timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip_sfc_xfer_done\00", [41 x i8] zeroinitializer }, align 32
@rockchip_sfc_xfer_done._entry_ptr = internal global ptr @rockchip_sfc_xfer_done._entry, section ".printk_index", align 4
@rockchip_sfc_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SFC reset never finished\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rockchip_sfc_reset\00", [45 x i8] zeroinitializer }, align 32
@rockchip_sfc_reset._entry_ptr = internal global ptr @rockchip_sfc_reset._entry, section ".printk_index", align 4
@rockchip_sfc_reset.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.48, ptr @.str.4, ptr @.str.49, i8 0, i8 50, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reset\0A\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"rockchip_sfc_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 680, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 682, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [20 x i8] c"rockchip_sfc_dt_ids\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 674, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"rockchip_sfc_mem_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 533, i32 44 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 584, i32 38 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 586, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 590, i32 39 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 592, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 597, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 602, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 615, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 621, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 628, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 635, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 499, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 515, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 351, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 354, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 87, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 453, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 460, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 440, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 258, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 275, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 479, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 198, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [34 x i8] c"../drivers/spi/spi-rockchip-sfc.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 203, i32 2 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_rockchip_sfc_driver_exit, ptr @__initcall__kmod_spi_rockchip_sfc__250_688_rockchip_sfc_driver_init6, ptr @rockchip_sfc_driver_exit, ptr @rockchip_sfc_exec_mem_op._entry, ptr @rockchip_sfc_exec_mem_op._entry_ptr, ptr @rockchip_sfc_probe._entry, ptr @rockchip_sfc_probe._entry.12, ptr @rockchip_sfc_probe._entry.16, ptr @rockchip_sfc_probe._entry.19, ptr @rockchip_sfc_probe._entry.22, ptr @rockchip_sfc_probe._entry.25, ptr @rockchip_sfc_probe._entry.8, ptr @rockchip_sfc_probe._entry_ptr, ptr @rockchip_sfc_probe._entry_ptr.10, ptr @rockchip_sfc_probe._entry_ptr.15, ptr @rockchip_sfc_probe._entry_ptr.18, ptr @rockchip_sfc_probe._entry_ptr.21, ptr @rockchip_sfc_probe._entry_ptr.24, ptr @rockchip_sfc_probe._entry_ptr.27, ptr @rockchip_sfc_reset._entry, ptr @rockchip_sfc_reset._entry_ptr, ptr @rockchip_sfc_xfer_data_dma._entry, ptr @rockchip_sfc_xfer_data_dma._entry_ptr, ptr @rockchip_sfc_xfer_done._entry, ptr @rockchip_sfc_xfer_done._entry_ptr, ptr @rockchip_sfc_driver, ptr @.str, ptr @rockchip_sfc_dt_ids, ptr @rockchip_sfc_mem_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @init_completion.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_sfc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_sfc_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_sfc_mem_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_sfc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_sfc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_sfc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_sfc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_sfc_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_sfc_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_sfc_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_sfc_exec_mem_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_sfc_xfer_data_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_sfc_xfer_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_sfc_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_sfc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_sfc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_sfc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_sfc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_sfc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev1, i32 noundef 96, i1 noundef zeroext false) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %flags, align 4
  %mem_ops = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 53
  %1 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @rockchip_sfc_mem_ops, ptr %mem_ops, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %of_node5 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %4 = ptrtoint ptr %of_node5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %of_node5, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3840, ptr %mode_bits, align 8
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %6 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 150000000, ptr %max_speed_hz, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4, ptr %num_chipselect, align 2
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev1, ptr %9, align 4
  %call8 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call9 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call8) #7
  %regbase = getelementptr inbounds %struct.rockchip_sfc, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %regbase to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9, ptr %regbase, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call17 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  %clk = getelementptr inbounds %struct.rockchip_sfc, ptr %9, i32 0, i32 3
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call17, ptr %clk, align 4
  %cmp.i164 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164, label %do.end, label %if.end24

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %call26 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #7
  %hclk = getelementptr inbounds %struct.rockchip_sfc, ptr %9, i32 0, i32 2
  %17 = ptrtoint ptr %hclk to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call26, ptr %hclk, align 4
  %cmp.i165 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %do.end32, label %if.end36

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #10
  %18 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hclk, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end24
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %9, align 4
  %of_node38 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %of_node38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node38, align 8
  %call.i166 = tail call ptr @of_find_property(ptr noundef %24, ptr noundef nonnull @.str.11, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i166, null
  %use_dma = getelementptr inbounds %struct.rockchip_sfc, ptr %9, i32 0, i32 8
  %frombool = zext i1 %tobool.i.not to i8
  %25 = ptrtoint ptr %use_dma to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %use_dma, align 4
  br i1 %tobool.i.not, label %if.then42, label %if.end36.if.end55_crit_edge

if.end36.if.end55_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then42:                                        ; preds = %if.end36
  %call.i167 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %cmp.i168 = icmp eq i32 %call.i167, 0
  br i1 %cmp.i168, label %if.end49, label %do.end48

do.end48:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end49:                                         ; preds = %if.then42
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #7
  %dma_buffer = getelementptr inbounds %struct.rockchip_sfc, ptr %9, i32 0, i32 6
  %call.i169 = tail call ptr @dmam_alloc_attrs(ptr noundef %dev1, i32 noundef 15872, ptr noundef %dma_buffer, i32 noundef 3264, i32 noundef 0) #7
  %buffer = getelementptr inbounds %struct.rockchip_sfc, ptr %9, i32 0, i32 5
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i169, ptr %buffer, align 4
  %tobool52.not = icmp eq ptr %call.i169, null
  br i1 %tobool52.not, label %if.end49.cleanup_crit_edge, label %if.end49.if.end55_crit_edge

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end55:                                         ; preds = %if.end49.if.end55_crit_edge, %if.end36.if.end55_crit_edge
  %27 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hclk, align 4
  %call.i170 = tail call i32 @clk_prepare(ptr noundef %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %tobool.not.i = icmp eq i32 %call.i170, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end55.do.end62_crit_edge

if.end55.do.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

if.end.i:                                         ; preds = %if.end55
  %call1.i171 = tail call i32 @clk_enable(ptr noundef %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i171)
  %tobool2.not.i = icmp eq i32 %call1.i171, 0
  br i1 %tobool2.not.i, label %if.end64, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %28) #7
  br label %do.end62

do.end62:                                         ; preds = %if.then3.i, %if.end55.do.end62_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i171, %if.then3.i ], [ %call.i170, %if.end55.do.end62_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end64:                                         ; preds = %if.end.i
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk, align 4
  %call.i172 = tail call i32 @clk_prepare(ptr noundef %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %tobool.not.i173 = icmp eq i32 %call.i172, 0
  br i1 %tobool.not.i173, label %if.end.i176, label %if.end64.do.end71_crit_edge

if.end64.do.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

if.end.i176:                                      ; preds = %if.end64
  %call1.i174 = tail call i32 @clk_enable(ptr noundef %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i174)
  %tobool2.not.i175 = icmp eq i32 %call1.i174, 0
  br i1 %tobool2.not.i175, label %if.end73, label %if.then3.i177

if.then3.i177:                                    ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %30) #7
  br label %do.end71

do.end71:                                         ; preds = %if.then3.i177, %if.end64.do.end71_crit_edge
  %retval.0.i178.ph = phi i32 [ %call1.i174, %if.then3.i177 ], [ %call.i172, %if.end64.do.end71_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #10
  br label %err_clk

if.end73:                                         ; preds = %if.end.i176
  %call74 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp = icmp slt i32 %call74, 0
  br i1 %cmp, label %do.end78, label %if.end79

do.end78:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #10
  br label %err_irq

if.end79:                                         ; preds = %if.end73
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 8
  %call.i180 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call74, ptr noundef nonnull @rockchip_sfc_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %32, ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i180)
  %tobool81.not = icmp eq i32 %call.i180, 0
  br i1 %tobool81.not, label %if.end86, label %do.end85

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #10
  br label %cleanup

if.end86:                                         ; preds = %if.end79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regbase, align 4
  %add.ptr4.i = getelementptr i8, ptr %36, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -1) #7, !srcloc !123
  %37 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regbase, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regbase, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 -1) #7, !srcloc !123
  %42 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regbase, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %43, i32 44
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  %45 = and i32 %44, -50397184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.not.i = icmp eq i32 %45, 0
  br i1 %cmp.not.i, label %if.end86.rockchip_sfc_init.exit_crit_edge, label %do.body6.i

if.end86.rockchip_sfc_init.exit_crit_edge:        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %rockchip_sfc_init.exit

do.body6.i:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regbase, align 4
  %add.ptr9.i = getelementptr i8, ptr %47, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 16777216) #7, !srcloc !123
  br label %rockchip_sfc_init.exit

rockchip_sfc_init.exit:                           ; preds = %do.body6.i, %if.end86.rockchip_sfc_init.exit_crit_edge
  %max_iosize = getelementptr inbounds %struct.rockchip_sfc, ptr %9, i32 0, i32 9
  %48 = ptrtoint ptr %max_iosize to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 15872, ptr %max_iosize, align 4
  %49 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regbase, align 4
  %add.ptr.i = getelementptr i8, ptr %50, i32 44
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  %52 = and i32 %51, -65536
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  %conv.i = trunc i32 %53 to i16
  %version = getelementptr inbounds %struct.rockchip_sfc, ptr %9, i32 0, i32 10
  %54 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i, ptr %version, align 4
  %call93 = tail call i32 @spi_register_controller(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %rockchip_sfc_init.exit.cleanup_crit_edge, label %rockchip_sfc_init.exit.err_irq_crit_edge

rockchip_sfc_init.exit.err_irq_crit_edge:         ; preds = %rockchip_sfc_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

rockchip_sfc_init.exit.cleanup_crit_edge:         ; preds = %rockchip_sfc_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_irq:                                          ; preds = %rockchip_sfc_init.exit.err_irq_crit_edge, %do.end78
  %ret.0 = phi i32 [ %call74, %do.end78 ], [ %call93, %rockchip_sfc_init.exit.err_irq_crit_edge ]
  %55 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %56) #7
  tail call void @clk_unprepare(ptr noundef %56) #7
  br label %err_clk

err_clk:                                          ; preds = %err_irq, %do.end71
  %ret.1 = phi i32 [ %retval.0.i178.ph, %do.end71 ], [ %ret.0, %err_irq ]
  %57 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hclk, align 4
  tail call void @clk_disable(ptr noundef %58) #7
  tail call void @clk_unprepare(ptr noundef %58) #7
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %rockchip_sfc_init.exit.cleanup_crit_edge, %do.end85, %do.end62, %if.end49.cleanup_crit_edge, %do.end48, %do.end32, %do.end, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then12 ], [ %16, %do.end ], [ %20, %do.end32 ], [ %call.i167, %do.end48 ], [ %call.i180, %do.end85 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end49.cleanup_crit_edge ], [ 0, %rockchip_sfc_init.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %do.end62 ], [ %ret.1, %err_clk ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_sfc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @spi_unregister_controller(ptr noundef %1) #7
  %clk = getelementptr inbounds %struct.rockchip_sfc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %hclk = getelementptr inbounds %struct.rockchip_sfc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hclk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_sfc_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regbase = getelementptr inbounds %struct.rockchip_sfc, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regbase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  %3 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regbase, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #7, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cp = getelementptr inbounds %struct.rockchip_sfc, ptr %dev_id, i32 0, i32 7
  tail call void @complete(ptr noundef %cp) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rockchip_sfc_adjust_op_size(ptr nocapture noundef readonly %mem, ptr nocapture noundef %op) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %nbytes = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbytes, align 4
  %max_iosize = getelementptr inbounds %struct.rockchip_sfc, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %max_iosize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_iosize, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %7, i32 %9)
  %11 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %nbytes, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_sfc_exec_mem_op(ptr nocapture noundef readonly %mem, ptr nocapture noundef %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %nbytes = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbytes, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_speed_hz, align 8
  %frequency = getelementptr inbounds %struct.rockchip_sfc, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frequency, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  br i1 %cmp.not, label %entry.if.end26_crit_edge, label %if.then, !prof !131

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.rockchip_sfc, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %call5 = tail call i32 @clk_set_rate(ptr noundef %13, i32 noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem, align 4
  %max_speed_hz9 = getelementptr inbounds %struct.spi_device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %max_speed_hz9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_speed_hz9, align 8
  %18 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %frequency, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_sfc_exec_mem_op.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_sfc_exec_mem_op, %if.end26)) #7
          to label %if.then21 [label %if.end26], !srcloc !132

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %21 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %frequency, align 4
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 4
  %call24 = tail call i32 @clk_get_rate(ptr noundef %24) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_sfc_exec_mem_op.__UNIQUE_ID_ddebug247, ptr noundef %20, ptr noundef nonnull @.str.30, i32 noundef %22, i32 noundef %call24) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end, %entry.if.end26_crit_edge
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %25 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dummy.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %if.end26.rockchip_sfc_adjust_op_work.exit_crit_edge, label %land.rhs.i

if.end26.rockchip_sfc_adjust_op_work.exit_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %rockchip_sfc_adjust_op_work.exit

land.rhs.i:                                       ; preds = %if.end26
  %addr.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %27 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool2.not.i = icmp eq i8 %28, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.rhs.i.rockchip_sfc_adjust_op_work.exit_crit_edge, !prof !133

land.rhs.i.rockchip_sfc_adjust_op_work.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rockchip_sfc_adjust_op_work.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %26, ptr %addr.i, align 8
  %buswidth.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %buswidth.i, align 1
  %buswidth12.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %buswidth12.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %buswidth12.i, align 1
  %val.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 68719476735, ptr %val.i, align 8
  %34 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %dummy.i, align 8
  br label %rockchip_sfc_adjust_op_work.exit

rockchip_sfc_adjust_op_work.exit:                 ; preds = %if.then.i, %land.rhs.i.rockchip_sfc_adjust_op_work.exit_crit_edge, %if.end26.rockchip_sfc_adjust_op_work.exit_crit_edge
  tail call fastcc void @rockchip_sfc_xfer_setup(ptr noundef %5, ptr noundef %mem, ptr noundef %op, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool28.not = icmp eq i32 %7, 0
  br i1 %tobool28.not, label %rockchip_sfc_adjust_op_work.exit.if.end50_crit_edge, label %if.then29

rockchip_sfc_adjust_op_work.exit.if.end50_crit_edge: ; preds = %rockchip_sfc_adjust_op_work.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then29:                                        ; preds = %rockchip_sfc_adjust_op_work.exit
  %use_dma = getelementptr inbounds %struct.rockchip_sfc, ptr %5, i32 0, i32 8
  %35 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %use_dma, align 4, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool30.not = icmp ne i8 %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %7)
  %cmp37 = icmp ugt i32 %7, 63
  %or.cond = select i1 %tobool30.not, i1 %cmp37, i1 false
  br i1 %or.cond, label %if.then38, label %if.else, !prof !135

if.then38:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %cp = getelementptr inbounds %struct.rockchip_sfc, ptr %5, i32 0, i32 7
  %37 = ptrtoint ptr %cp to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %cp, align 4
  %wait.i = getelementptr inbounds %struct.rockchip_sfc, ptr %5, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #7
  %regbase.i = getelementptr inbounds %struct.rockchip_sfc, ptr %5, i32 0, i32 1
  %38 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %41 = and i32 %40, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regbase.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %41) #7, !srcloc !123
  %call39 = tail call fastcc i32 @rockchip_sfc_xfer_data_dma(ptr noundef %5, ptr noundef %op, i32 noundef %7)
  br label %if.end41

if.else:                                          ; preds = %if.then29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_sfc_xfer_data_poll.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_sfc_exec_mem_op, %do.end.i)) #7
          to label %if.then.i85 [label %do.end.i], !srcloc !132

if.then.i85:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_sfc_xfer_data_poll.__UNIQUE_ID_ddebug245, ptr noundef %45, ptr noundef nonnull @.str.40, i32 noundef %7) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i85, %if.else
  %dir.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %46 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp.i = icmp eq i32 %47, 2
  %buf.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %48 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buf.i, align 4
  br i1 %cmp.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call fastcc i32 @rockchip_sfc_write_fifo(ptr noundef %5, ptr noundef %49, i32 noundef %7) #7
  br label %if.end41

if.else.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = tail call fastcc i32 @rockchip_sfc_read_fifo(ptr noundef %5, ptr noundef %49, i32 noundef %7) #7
  br label %if.end41

if.end41:                                         ; preds = %if.else.i, %if.then4.i, %if.then38
  %ret.0 = phi i32 [ %call39, %if.then38 ], [ %call6.i, %if.then4.i ], [ %call9.i, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0, i32 %7)
  %cmp42.not = icmp eq i32 %ret.0, %7
  br i1 %cmp42.not, label %if.end41.if.end50_crit_edge, label %do.end46

if.end41.if.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

do.end46:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %5, align 4
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %52 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dir, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.31, i32 noundef %ret.0, i32 noundef %53) #10
  br label %cleanup

if.end50:                                         ; preds = %if.end41.if.end50_crit_edge, %rockchip_sfc_adjust_op_work.exit.if.end50_crit_edge
  %call.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 477) #7
  %regbase.i87 = getelementptr inbounds %struct.rockchip_sfc, ptr %5, i32 0, i32 1
  %54 = ptrtoint ptr %regbase.i87 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regbase.i87, align 4
  %add.ptr3.i88 = getelementptr i8, ptr %55, i32 36
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i88) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %57 = and i32 %56, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not5.i = icmp eq i32 %57, 0
  br i1 %tobool.not5.i, label %if.end50.cleanup_crit_edge, label %if.end50.land.lhs.true.i_crit_edge

if.end50.land.lhs.true.i_crit_edge:               ; preds = %if.end50
  br label %land.lhs.true.i

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then28.i.land.lhs.true.i_crit_edge, %if.end50.land.lhs.true.i_crit_edge
  %call14.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call14.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call14.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then28.i

if.then28.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #7
  %58 = ptrtoint ptr %regbase.i87 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regbase.i87, align 4
  %add.ptr.i89 = getelementptr i8, ptr %59, i32 36
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %61 = and i32 %60, 16777216
  %tobool.not.i90 = icmp eq i32 %61, 0
  br i1 %tobool.not.i90, label %if.then28.i.cleanup_crit_edge, label %if.then28.i.land.lhs.true.i_crit_edge

if.then28.i.land.lhs.true.i_crit_edge:            ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.then28.i.cleanup_crit_edge:                    ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.i:                                        ; preds = %land.lhs.true.i
  %62 = ptrtoint ptr %regbase.i87 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regbase.i87, align 4
  %add.ptr22.i = getelementptr i8, ptr %63, i32 36
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %65 = and i32 %64, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool32.not.i = icmp eq i32 %65, 0
  br i1 %tobool32.not.i, label %for.end.i.cleanup_crit_edge, label %do.end37.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end37.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.45) #10
  tail call fastcc void @rockchip_sfc_reset(ptr noundef %5) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end37.i, %for.end.i.cleanup_crit_edge, %if.then28.i.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %do.end46, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end46 ], [ %call5, %if.then.cleanup_crit_edge ], [ -5, %do.end37.i ], [ 0, %for.end.i.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ], [ 0, %if.then28.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rockchip_sfc_xfer_setup(ptr nocapture noundef readonly %sfc, ptr nocapture noundef readonly %mem, ptr nocapture noundef readonly %op, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %0 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %opcode, align 4
  %conv = zext i16 %1 to i32
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %2 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buswidth, align 1
  %4 = lshr i8 %3, 1
  %5 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 %5, 8
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %addr, align 8
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %if.else17 [
    i8 0, label %entry.if.end29_crit_edge
    i8 4, label %if.then8
    i8 3, label %if.then15
  ]

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or9 = or i32 %conv, 32768
  br label %if.end22

if.then15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or16 = or i32 %conv, 16384
  br label %if.end22

if.else17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or18 = or i32 %conv, 49152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %addr, align 8
  %conv21 = zext i8 %10 to i32
  %mul = shl nuw nsw i32 %conv21, 3
  %sub = add nsw i32 %mul, -1
  %11 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %regbase = getelementptr inbounds %struct.rockchip_sfc, ptr %sfc, i32 0, i32 1
  %12 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regbase, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #7, !srcloc !123
  br label %if.end22

if.end22:                                         ; preds = %if.else17, %if.then15, %if.then8
  %cmd.0 = phi i32 [ %or9, %if.then8 ], [ %or16, %if.then15 ], [ %or18, %if.else17 ]
  %buswidth24 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %buswidth24 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buswidth24, align 1
  %16 = lshr i8 %15, 1
  %17 = zext i8 %16 to i32
  %shl27 = shl nuw nsw i32 %17, 10
  %or28 = or i32 %shl27, %shl
  br label %if.end29

if.end29:                                         ; preds = %if.end22, %entry.if.end29_crit_edge
  %cmd.1 = phi i32 [ %cmd.0, %if.end22 ], [ %conv, %entry.if.end29_crit_edge ]
  %ctrl.0 = phi i32 [ %or28, %if.end22 ], [ %shl, %entry.if.end29_crit_edge ]
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %18 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dummy, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool31.not = icmp eq i8 %19, 0
  br i1 %tobool31.not, label %if.end29.if.end67_crit_edge, label %if.then32

if.end29.if.end67_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then32:                                        ; preds = %if.end29
  %buswidth34 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %buswidth34 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buswidth34, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %21, label %if.else58 [
    i8 4, label %if.then38
    i8 2, label %if.then51
  ]

if.then38:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %conv41 = zext i8 %19 to i32
  %mul42 = shl nuw nsw i32 %conv41, 9
  %or44 = or i32 %mul42, %cmd.1
  br label %if.end67

if.then51:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %conv54 = zext i8 %19 to i32
  %mul55 = shl nuw nsw i32 %conv54, 10
  %or57 = or i32 %mul55, %cmd.1
  br label %if.end67

if.else58:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %conv61 = zext i8 %19 to i32
  %mul62 = shl nuw nsw i32 %conv61, 11
  %or64 = or i32 %mul62, %cmd.1
  br label %if.end67

if.end67:                                         ; preds = %if.else58, %if.then51, %if.then38, %if.end29.if.end67_crit_edge
  %cmd.2 = phi i32 [ %or44, %if.then38 ], [ %or57, %if.then51 ], [ %or64, %if.else58 ], [ %cmd.1, %if.end29.if.end67_crit_edge ]
  %version = getelementptr inbounds %struct.rockchip_sfc, ptr %sfc, i32 0, i32 10
  %23 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %24)
  %cmp69 = icmp ugt i16 %24, 3
  br i1 %cmp69, label %do.body72, label %if.else77

do.body72:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %len)
  %regbase75 = getelementptr inbounds %struct.rockchip_sfc, ptr %sfc, i32 0, i32 1
  %26 = ptrtoint ptr %regbase75 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regbase75, align 4
  %add.ptr76 = getelementptr i8, ptr %27, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %25) #7, !srcloc !123
  br label %if.end80

if.else77:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %shl78 = shl i32 %len, 16
  %or79 = or i32 %cmd.2, %shl78
  br label %if.end80

if.end80:                                         ; preds = %if.else77, %do.body72
  %cmd.3 = phi i32 [ %cmd.2, %do.body72 ], [ %or79, %if.else77 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool81.not = icmp eq i32 %len, 0
  br i1 %tobool81.not, label %land.lhs.true, label %if.end94

if.end94:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp83 = icmp eq i32 %29, 2
  %or86 = or i32 %cmd.3, 4096
  %spec.select = select i1 %cmp83, i32 %or86, i32 %cmd.3
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %data, align 4
  %32 = lshr i8 %31, 1
  %33 = zext i8 %32 to i32
  %shl92 = shl nuw nsw i32 %33, 12
  %or93 = or i32 %shl92, %ctrl.0
  br label %if.end102

land.lhs.true:                                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool99.not = icmp eq i8 %35, 0
  %or101 = or i32 %cmd.3, 4096
  %spec.select1 = select i1 %tobool99.not, i32 %cmd.3, i32 %or101
  br label %if.end102

if.end102:                                        ; preds = %land.lhs.true, %if.end94
  %ctrl.18 = phi i32 [ %or93, %if.end94 ], [ %ctrl.0, %land.lhs.true ]
  %cmd.6 = phi i32 [ %spec.select, %if.end94 ], [ %spec.select1, %land.lhs.true ]
  %or103 = or i32 %ctrl.18, 2
  %36 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mem, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %chip_select, align 4
  %conv104 = zext i8 %39 to i32
  %shl105 = shl i32 %conv104, 30
  %or106 = or i32 %shl105, %cmd.6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_sfc_xfer_setup.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_sfc_xfer_setup, %do.body128)) #7
          to label %if.then112 [label %do.body128], !srcloc !132

if.then112:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %sfc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sfc, align 4
  %42 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %addr, align 8
  %conv115 = zext i8 %43 to i32
  %buswidth117 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %buswidth117 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %buswidth117, align 1
  %conv118 = zext i8 %45 to i32
  %46 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dummy, align 8
  %conv121 = zext i8 %47 to i32
  %buswidth123 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %buswidth123 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %buswidth123, align 1
  %conv124 = zext i8 %49 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_sfc_xfer_setup.__UNIQUE_ID_ddebug239, ptr noundef %41, ptr noundef nonnull @.str.33, i32 noundef %conv115, i32 noundef %conv118, i32 noundef %conv121, i32 noundef %conv124) #7
  br label %do.body128

do.body128:                                       ; preds = %if.then112, %if.end102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_sfc_xfer_setup.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_sfc_xfer_setup, %do.body148)) #7
          to label %if.then142 [label %do.body148], !srcloc !132

if.then142:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %sfc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sfc, align 4
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %52 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %val, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_sfc_xfer_setup.__UNIQUE_ID_ddebug240, ptr noundef %51, ptr noundef nonnull @.str.34, i32 noundef %or103, i32 noundef %or106, i64 noundef %53, i32 noundef %len) #7
  br label %do.body148

do.body148:                                       ; preds = %if.then142, %do.body128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  %54 = tail call i32 @llvm.bswap.i32(i32 %or103)
  %regbase151 = getelementptr inbounds %struct.rockchip_sfc, ptr %sfc, i32 0, i32 1
  %55 = ptrtoint ptr %regbase151 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regbase151, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %or106)
  %58 = ptrtoint ptr %regbase151 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regbase151, align 4
  %add.ptr157 = getelementptr i8, ptr %59, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr157, i32 %57) #7, !srcloc !123
  %60 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool160.not = icmp eq i8 %61, 0
  br i1 %tobool160.not, label %do.body148.if.end170_crit_edge, label %do.body162

do.body148.if.end170_crit_edge:                   ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end170

do.body162:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  %val166 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %62 = ptrtoint ptr %val166 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %val166, align 8
  %conv167 = trunc i64 %63 to i32
  %64 = tail call i32 @llvm.bswap.i32(i32 %conv167)
  %65 = ptrtoint ptr %regbase151 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regbase151, align 4
  %add.ptr169 = getelementptr i8, ptr %66, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169, i32 %64) #7, !srcloc !123
  br label %if.end170

if.end170:                                        ; preds = %do.body162, %do.body148.if.end170_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_sfc_xfer_data_dma(ptr noundef %sfc, ptr nocapture noundef readonly %op, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_sfc_xfer_data_dma.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_sfc_xfer_data_dma, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !132

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %sfc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sfc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_sfc_xfer_data_dma.__UNIQUE_ID_ddebug246, ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %len) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then4, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %buffer = getelementptr inbounds %struct.rockchip_sfc, ptr %sfc, i32 0, i32 5
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %8 = call ptr @memcpy(ptr %5, ptr %7, i32 %len)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  %dma_buffer = getelementptr inbounds %struct.rockchip_sfc, ptr %sfc, i32 0, i32 6
  %9 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_buffer, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %regbase.i = getelementptr inbounds %struct.rockchip_sfc, ptr %sfc, i32 0, i32 1
  %11 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %14 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regbase.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %15, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %13) #7, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regbase.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %17, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 16777216) #7, !srcloc !123
  %cp = getelementptr inbounds %struct.rockchip_sfc, ptr %sfc, i32 0, i32 7
  %call9 = tail call i32 @wait_for_completion_timeout(ptr noundef %cp, i32 noundef 200) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.end14, label %if.end6.if.end16_crit_edge

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %sfc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sfc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.38) #10
  br label %if.end16

if.end16:                                         ; preds = %do.end14, %if.end6.if.end16_crit_edge
  %ret.0 = phi i32 [ %len, %if.end6.if.end16_crit_edge ], [ -110, %do.end14 ]
  %20 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %23 = or i32 %22, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regbase.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %23) #7, !srcloc !123
  %26 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp19 = icmp eq i32 %27, 1
  br i1 %cmp19, label %if.then20, label %if.end16.if.end24_crit_edge

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %buf22 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %buf22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf22, align 4
  %buffer23 = getelementptr inbounds %struct.rockchip_sfc, ptr %sfc, i32 0, i32 5
  %30 = ptrtoint ptr %buffer23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer23, align 4
  %32 = call ptr @memcpy(ptr %29, ptr %31, i32 %len)
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end16.if.end24_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_sfc_write_fifo(ptr nocapture noundef readonly %sfc, ptr noundef %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %len to i8
  %conv = and i8 %0, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp)
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %tobool.not76 = icmp ult i32 %len, 4
  br i1 %tobool.not76, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %shr = ashr i32 %len, 2
  %regbase.i = getelementptr inbounds %struct.rockchip_sfc, ptr %sfc, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %dwords.078 = phi i32 [ %shr, %while.body.lr.ph ], [ %sub, %if.end.while.body_crit_edge ]
  %buf.addr.077 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr5, %if.end.while.body_crit_edge ]
  %call.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i, 1000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %while.body
  %2 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !125
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %and.i = and i32 %5, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call14.i = tail call i64 @ktime_get() #7
  %cmp3.i.i = icmp sgt i64 %call14.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then18.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regbase.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %7, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #7, !srcloc !125
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  br label %for.end.i

for.end.i:                                        ; preds = %if.then18.i, %for.cond.i.for.end.i_crit_edge
  %status.0.i = phi i32 [ %9, %if.then18.i ], [ %5, %for.cond.i.for.end.i_crit_edge ]
  %and31.i = and i32 %status.0.i, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %do.body35.i, label %if.end

do.body35.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_sfc_wait_txfifo_ready.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_sfc_write_fifo, %cleanup)) #7
          to label %rockchip_sfc_wait_txfifo_ready.exit.thread [label %cleanup], !srcloc !132

rockchip_sfc_wait_txfifo_ready.exit.thread:       ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %sfc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sfc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_sfc_wait_txfifo_ready.__UNIQUE_ID_ddebug237, ptr noundef %11, ptr noundef nonnull @.str.42) #7
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  %shr48.i = lshr exact i32 %and31.i, 8
  %12 = tail call i32 @llvm.umin.i32(i32 %shr48.i, i32 %dwords.078)
  %13 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regbase.i, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 264
  tail call void @__raw_writesl(ptr noundef %add.ptr, ptr noundef %buf.addr.077, i32 noundef %12) #7
  %shl = shl nuw nsw i32 %12, 2
  %add.ptr5 = getelementptr i8, ptr %buf.addr.077, i32 %shl
  %sub = sub i32 %dwords.078, %12
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %buf.addr.0.lcssa = phi ptr [ %buf, %entry.while.end_crit_edge ], [ %add.ptr5, %if.end.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool6.not = icmp eq i8 %conv, 0
  br i1 %tobool6.not, label %while.end.cleanup_crit_edge, label %if.then7

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %while.end
  %call.i39 = tail call i64 @ktime_get() #7
  %add.i.i40 = add i64 %call.i39, 1000000
  %regbase.i41 = getelementptr inbounds %struct.rockchip_sfc, ptr %sfc, i32 0, i32 1
  br label %for.cond.i45

for.cond.i45:                                     ; preds = %land.lhs.true.i48.for.cond.i45_crit_edge, %if.then7
  %15 = ptrtoint ptr %regbase.i41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regbase.i41, align 4
  %add.ptr.i42 = getelementptr i8, ptr %16, i32 32
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #7, !srcloc !125
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %and.i43 = and i32 %18, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %tobool.not.i44 = icmp eq i32 %and.i43, 0
  br i1 %tobool.not.i44, label %land.lhs.true.i48, label %for.cond.i45.for.end.i54_crit_edge

for.cond.i45.for.end.i54_crit_edge:               ; preds = %for.cond.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i54

land.lhs.true.i48:                                ; preds = %for.cond.i45
  %call14.i46 = tail call i64 @ktime_get() #7
  %cmp3.i.i47 = icmp sgt i64 %call14.i46, %add.i.i40
  br i1 %cmp3.i.i47, label %if.then18.i50, label %land.lhs.true.i48.for.cond.i45_crit_edge

land.lhs.true.i48.for.cond.i45_crit_edge:         ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i45

if.then18.i50:                                    ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %regbase.i41 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regbase.i41, align 4
  %add.ptr22.i49 = getelementptr i8, ptr %20, i32 32
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i49) #7, !srcloc !125
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  br label %for.end.i54

for.end.i54:                                      ; preds = %if.then18.i50, %for.cond.i45.for.end.i54_crit_edge
  %status.0.i51 = phi i32 [ %22, %if.then18.i50 ], [ %18, %for.cond.i45.for.end.i54_crit_edge ]
  %and31.i52 = and i32 %status.0.i51, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i52)
  %tobool32.not.i53 = icmp eq i32 %and31.i52, 0
  br i1 %tobool32.not.i53, label %do.body35.i55, label %if.end12

do.body35.i55:                                    ; preds = %for.end.i54
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_sfc_wait_txfifo_ready.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_sfc_write_fifo, %cleanup)) #7
          to label %rockchip_sfc_wait_txfifo_ready.exit60.thread [label %cleanup], !srcloc !132

rockchip_sfc_wait_txfifo_ready.exit60.thread:     ; preds = %do.body35.i55
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %sfc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sfc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_sfc_wait_txfifo_ready.__UNIQUE_ID_ddebug237, ptr noundef %24, ptr noundef nonnull @.str.42) #7
  br label %cleanup

if.end12:                                         ; preds = %for.end.i54
  call void @__sanitizer_cov_trace_pc() #9
  %conv13 = zext i8 %conv to i32
  %25 = call ptr @memcpy(ptr %tmp, ptr %buf.addr.0.lcssa, i32 %conv13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %26)
  %tmp.0.tmp.0.tmp.0. = load i32, ptr %tmp, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %tmp.0.tmp.0.tmp.0.)
  %28 = ptrtoint ptr %regbase.i41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regbase.i41, align 4
  %add.ptr15 = getelementptr i8, ptr %29, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %27) #7, !srcloc !123
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %rockchip_sfc_wait_txfifo_ready.exit60.thread, %do.body35.i55, %while.end.cleanup_crit_edge, %rockchip_sfc_wait_txfifo_ready.exit.thread, %do.body35.i
  %retval.0 = phi i32 [ %len, %if.end12 ], [ %len, %while.end.cleanup_crit_edge ], [ -110, %rockchip_sfc_wait_txfifo_ready.exit.thread ], [ -110, %do.body35.i ], [ -110, %rockchip_sfc_wait_txfifo_ready.exit60.thread ], [ -110, %do.body35.i55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_sfc_read_fifo(ptr nocapture noundef readonly %sfc, ptr noundef %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %len to i8
  %conv = and i8 %0, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %tobool.not83 = icmp ult i32 %len, 4
  br i1 %tobool.not83, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %shr = ashr i32 %len, 2
  %regbase.i = getelementptr inbounds %struct.rockchip_sfc, ptr %sfc, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.085 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr8, %if.end.while.body_crit_edge ]
  %dwords.084 = phi i32 [ %shr, %while.body.lr.ph ], [ %sub, %if.end.while.body_crit_edge ]
  %call.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i, 1000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %while.body
  %1 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 32
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !125
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  %and.i = and i32 %4, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call14.i = tail call i64 @ktime_get() #7
  %cmp3.i.i = icmp sgt i64 %call14.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then18.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regbase.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %6, i32 32
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #7, !srcloc !125
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  br label %for.end.i

for.end.i:                                        ; preds = %if.then18.i, %for.cond.i.for.end.i_crit_edge
  %status.0.i = phi i32 [ %8, %if.then18.i ], [ %4, %for.cond.i.for.end.i_crit_edge ]
  %and31.i = and i32 %status.0.i, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %do.body35.i, label %if.end

do.body35.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_sfc_wait_rxfifo_ready.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_sfc_read_fifo, %cleanup)) #7
          to label %rockchip_sfc_wait_rxfifo_ready.exit.thread [label %cleanup], !srcloc !132

rockchip_sfc_wait_rxfifo_ready.exit.thread:       ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %sfc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sfc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_sfc_wait_rxfifo_ready.__UNIQUE_ID_ddebug238, ptr noundef %10, ptr noundef nonnull @.str.44) #7
  br label %cleanup

if.end:                                           ; preds = %for.end.i
  %shr48.i = lshr exact i32 %and31.i, 16
  %11 = tail call i32 @llvm.umin.i32(i32 %shr48.i, i32 %dwords.084)
  %12 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regbase.i, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 264
  tail call void @__raw_readsl(ptr noundef %add.ptr, ptr noundef %buf.addr.085, i32 noundef %11) #7
  %shl = shl nuw nsw i32 %11, 2
  %add.ptr8 = getelementptr i8, ptr %buf.addr.085, i32 %shl
  %sub = sub i32 %dwords.084, %11
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %buf.addr.0.lcssa = phi ptr [ %buf, %entry.while.end_crit_edge ], [ %add.ptr8, %if.end.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool10.not = icmp eq i8 %conv, 0
  br i1 %tobool10.not, label %while.end.cleanup_crit_edge, label %if.then11

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %while.end
  %call.i46 = tail call i64 @ktime_get() #7
  %add.i.i47 = add i64 %call.i46, 1000000
  %regbase.i48 = getelementptr inbounds %struct.rockchip_sfc, ptr %sfc, i32 0, i32 1
  br label %for.cond.i52

for.cond.i52:                                     ; preds = %land.lhs.true.i55.for.cond.i52_crit_edge, %if.then11
  %14 = ptrtoint ptr %regbase.i48 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regbase.i48, align 4
  %add.ptr.i49 = getelementptr i8, ptr %15, i32 32
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #7, !srcloc !125
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  %and.i50 = and i32 %17, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %tobool.not.i51 = icmp eq i32 %and.i50, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i55, label %for.cond.i52.for.end.i61_crit_edge

for.cond.i52.for.end.i61_crit_edge:               ; preds = %for.cond.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i61

land.lhs.true.i55:                                ; preds = %for.cond.i52
  %call14.i53 = tail call i64 @ktime_get() #7
  %cmp3.i.i54 = icmp sgt i64 %call14.i53, %add.i.i47
  br i1 %cmp3.i.i54, label %if.then18.i57, label %land.lhs.true.i55.for.cond.i52_crit_edge

land.lhs.true.i55.for.cond.i52_crit_edge:         ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i52

if.then18.i57:                                    ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %regbase.i48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regbase.i48, align 4
  %add.ptr22.i56 = getelementptr i8, ptr %19, i32 32
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i56) #7, !srcloc !125
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  br label %for.end.i61

for.end.i61:                                      ; preds = %if.then18.i57, %for.cond.i52.for.end.i61_crit_edge
  %status.0.i58 = phi i32 [ %21, %if.then18.i57 ], [ %17, %for.cond.i52.for.end.i61_crit_edge ]
  %and31.i59 = and i32 %status.0.i58, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i59)
  %tobool32.not.i60 = icmp eq i32 %and31.i59, 0
  br i1 %tobool32.not.i60, label %do.body35.i62, label %if.end16

do.body35.i62:                                    ; preds = %for.end.i61
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_sfc_wait_rxfifo_ready.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_sfc_read_fifo, %cleanup)) #7
          to label %rockchip_sfc_wait_rxfifo_ready.exit67.thread [label %cleanup], !srcloc !132

rockchip_sfc_wait_rxfifo_ready.exit67.thread:     ; preds = %do.body35.i62
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %sfc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sfc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_sfc_wait_rxfifo_ready.__UNIQUE_ID_ddebug238, ptr noundef %23, ptr noundef nonnull @.str.44) #7
  br label %cleanup

if.end16:                                         ; preds = %for.end.i61
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %regbase.i48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regbase.i48, align 4
  %add.ptr18 = getelementptr i8, ptr %25, i32 264
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #7, !srcloc !125
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  %28 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tmp, align 4
  %conv22 = zext i8 %conv to i32
  %29 = call ptr @memcpy(ptr %buf.addr.0.lcssa, ptr %tmp, i32 %conv22)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %rockchip_sfc_wait_rxfifo_ready.exit67.thread, %do.body35.i62, %while.end.cleanup_crit_edge, %rockchip_sfc_wait_rxfifo_ready.exit.thread, %do.body35.i
  %retval.0 = phi i32 [ %len, %if.end16 ], [ %len, %while.end.cleanup_crit_edge ], [ -110, %rockchip_sfc_wait_rxfifo_ready.exit.thread ], [ -110, %do.body35.i ], [ -110, %rockchip_sfc_wait_rxfifo_ready.exit67.thread ], [ -110, %do.body35.i62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rockchip_sfc_reset(ptr nocapture noundef readonly %sfc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regbase = getelementptr inbounds %struct.rockchip_sfc, ptr %sfc, i32 0, i32 1
  %0 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regbase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #7, !srcloc !123
  %call = tail call i32 @jiffies_to_usecs(i32 noundef 100) #7
  %conv = zext i32 %call to i64
  %call1 = tail call i64 @ktime_get() #7
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %mul.i, %call1
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 196) #7
  %2 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regbase, align 4
  %add.ptr114 = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not6 = icmp eq i32 %5, 0
  br i1 %tobool.not6, label %entry.if.end41_crit_edge, label %if.end15.lr.ph

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end15.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br label %if.end15

if.end15:                                         ; preds = %if.then31.if.end15_crit_edge, %if.end15.lr.ph
  br i1 %tobool16.not, label %if.end15.if.then31_crit_edge, label %land.lhs.true

if.end15.if.then31_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

land.lhs.true:                                    ; preds = %if.end15
  %call17 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.then31_crit_edge

land.lhs.true.if.then31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.then31:                                        ; preds = %land.lhs.true.if.then31_crit_edge, %if.end15.if.then31_crit_edge
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #7
  %6 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regbase, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %9 = and i32 %8, 16777216
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then31.if.end41_crit_edge, label %if.then31.if.end15_crit_edge

if.then31.if.end15_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then31.if.end41_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

for.end:                                          ; preds = %land.lhs.true
  %10 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regbase, align 4
  %add.ptr25 = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #7, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool35.not = icmp eq i32 %13, 0
  br i1 %tobool35.not, label %for.end.if.end41_crit_edge, label %do.end40

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.end40:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %sfc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sfc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.47) #10
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %for.end.if.end41_crit_edge, %if.then31.if.end41_crit_edge, %entry.if.end41_crit_edge
  %16 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regbase, align 4
  %add.ptr43 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 -1) #7, !srcloc !123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_sfc_reset.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rockchip_sfc_reset, %do.end56)) #7
          to label %if.then52 [label %do.end56], !srcloc !132

if.then52:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %sfc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sfc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_sfc_reset.__UNIQUE_ID_ddebug236, ptr noundef %19, ptr noundef nonnull @.str.49) #7
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %if.end41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__initcall__kmod_spi_rockchip_sfc__250_688_rockchip_sfc_driver_init6, !1, !"__initcall__kmod_spi_rockchip_sfc__250_688_rockchip_sfc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 688, i32 1}
!2 = !{ptr @__exitcall_rockchip_sfc_driver_exit, !1, !"__exitcall_rockchip_sfc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file251, !4, !"__UNIQUE_ID_file251", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 690, i32 1}
!5 = !{ptr @__UNIQUE_ID_license252, !4, !"__UNIQUE_ID_license252", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description253, !7, !"__UNIQUE_ID_description253", i1 false, i1 false}
!7 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 691, i32 1}
!8 = !{ptr @__UNIQUE_ID_author254, !9, !"__UNIQUE_ID_author254", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 692, i32 1}
!10 = !{ptr @__UNIQUE_ID_author255, !11, !"__UNIQUE_ID_author255", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 693, i32 1}
!12 = !{ptr @__UNIQUE_ID_author256, !13, !"__UNIQUE_ID_author256", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 694, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 682, i32 11}
!16 = !{ptr @rockchip_sfc_driver, !17, !"rockchip_sfc_driver", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 680, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 584, i32 38}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 586, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rockchip_sfc_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @rockchip_sfc_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 590, i32 39}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 592, i32 3}
!32 = !{ptr @rockchip_sfc_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rockchip_sfc_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 597, i32 12}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 602, i32 4}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @rockchip_sfc_probe._entry.12, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @rockchip_sfc_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 615, i32 3}
!43 = !{ptr @rockchip_sfc_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rockchip_sfc_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 621, i32 3}
!47 = !{ptr @rockchip_sfc_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @rockchip_sfc_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 628, i32 3}
!51 = !{ptr @rockchip_sfc_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @rockchip_sfc_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 635, i32 3}
!55 = !{ptr @rockchip_sfc_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @rockchip_sfc_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @rockchip_sfc_mem_ops, !58, !"rockchip_sfc_mem_ops", i1 false, i1 false}
!58 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 533, i32 44}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 499, i32 3}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rockchip_sfc_exec_mem_op.__UNIQUE_ID_ddebug247, !60, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 515, i32 4}
!66 = !{ptr @rockchip_sfc_exec_mem_op._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rockchip_sfc_exec_mem_op._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 351, i32 2}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @rockchip_sfc_xfer_setup.__UNIQUE_ID_ddebug239, !69, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 354, i32 2}
!74 = !{ptr @rockchip_sfc_xfer_setup.__UNIQUE_ID_ddebug240, !73, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!75 = !{ptr @init_completion.__key, !76, !"__key", i1 false, i1 false}
!76 = !{!"../include/linux/completion.h", i32 87, i32 2}
!77 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 453, i32 2}
!80 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @rockchip_sfc_xfer_data_dma.__UNIQUE_ID_ddebug246, !79, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 460, i32 3}
!84 = !{ptr @rockchip_sfc_xfer_data_dma._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @rockchip_sfc_xfer_data_dma._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 440, i32 2}
!88 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @rockchip_sfc_xfer_data_poll.__UNIQUE_ID_ddebug245, !87, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 258, i32 3}
!92 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @rockchip_sfc_wait_txfifo_ready.__UNIQUE_ID_ddebug237, !91, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 275, i32 3}
!96 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @rockchip_sfc_wait_rxfifo_ready.__UNIQUE_ID_ddebug238, !95, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 479, i32 3}
!100 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @rockchip_sfc_xfer_done._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @rockchip_sfc_xfer_done._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 198, i32 3}
!105 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @rockchip_sfc_reset._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @rockchip_sfc_reset._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 203, i32 2}
!110 = !{ptr @rockchip_sfc_reset.__UNIQUE_ID_ddebug236, !109, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!111 = !{ptr @rockchip_sfc_dt_ids, !112, !"rockchip_sfc_dt_ids", i1 false, i1 false}
!112 = !{!"../drivers/spi/spi-rockchip-sfc.c", i32 674, i32 34}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{i64 2154384850}
!123 = !{i64 6263863}
!124 = !{i64 2154385246}
!125 = !{i64 6264281}
!126 = !{i64 2154384238}
!127 = !{i64 2154384457}
!128 = !{i64 2154382844}
!129 = !{i64 2154385668}
!130 = !{i64 2154429371}
!131 = !{!"branch_weights", i32 2000, i32 1}
!132 = !{i64 2148737463, i64 2148737468, i64 2148737481, i64 2148737525, i64 2148737559, i64 2148737580}
!133 = !{!"branch_weights", i32 1, i32 2000}
!134 = !{i8 0, i8 2}
!135 = !{!"branch_weights", i32 2000, i32 2002}
!136 = !{i64 2154383349}
!137 = !{i64 2154383568}
!138 = !{i64 2154420724}
!139 = !{i64 2154421218}
!140 = !{i64 2154399998}
!141 = !{i64 2154400469}
!142 = !{i64 2154406248}
!143 = !{i64 2154406650}
!144 = !{i64 2154407060}
!145 = !{i64 2154411727}
!146 = !{i64 2154412154}
!147 = !{i64 2154412579}
!148 = !{i64 2154389266}
!149 = !{i64 2154389760}
!150 = !{i64 2154409154}
!151 = !{i64 2154396190}
!152 = !{i64 2154396684}
!153 = !{i64 2154411501}
!154 = !{i64 2154377916}
!155 = !{i64 2154378410}
