; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/s626.c_pt.bc'
source_filename = "../drivers/comedi/drivers/s626.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.s626_private = type { i8, i32, i32, i32, i16, i8, %struct.s626_buffer_dma, %struct.s626_buffer_dma, ptr, i16, [12 x i8], i32 }
%struct.s626_buffer_dma = type { i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_s626__236_2600_s626_driver_init6 = internal global ptr @s626_driver_init, section ".initcall6.init", align 4
@s626_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @s626_detach, ptr @s626_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@s626_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @s626_pci_table, ptr @s626_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_s626_driver_exit = internal global ptr @s626_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [50 x i8] c"s626.author=Gianluca Palli <gpalli@deis.unibo.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [51 x i8] c"s626.description=Sensoray 626 Comedi driver module\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [38 x i8] c"s626.file=drivers/comedi/drivers/s626\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [17 x i8] c"s626.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"s626\00", [27 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@s626_debi_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 163, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Timeout while uploading to DEBI control register\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s626_debi_transfer\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/comedi/drivers/s626.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s626_debi_transfer._entry_ptr = internal global ptr @s626_debi_transfer._entry, section ".printk_index", align 4
@s626_debi_transfer._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 172, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DEBI transfer timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@s626_debi_transfer._entry_ptr.8 = internal global ptr @s626_debi_transfer._entry.6, section ".printk_index", align 4
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@range_unknown = external dso_local constant %struct.comedi_lrange, align 4
@s626_range_table = internal constant { { i32, [2 x %struct.comedi_krange] }, [36 x i8] } { { i32, [2 x %struct.comedi_krange] } { i32 2, [2 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }] }, [36 x i8] zeroinitializer }, align 32
@s626_ai_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 1700, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Another ai_cmd is running\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s626_ai_cmd\00", [20 x i8] zeroinitializer }, align 32
@s626_ai_cmd._entry_ptr = internal global ptr @s626_ai_cmd._entry, section ".printk_index", align 4
@s626_send_dac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 408, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DMA transfer timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s626_send_dac\00", [18 x i8] zeroinitializer }, align 32
@s626_send_dac._entry_ptr = internal global ptr @s626_send_dac._entry, section ".printk_index", align 4
@s626_send_dac._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 434, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"TSL timeout waiting for slot 1 to execute\0A\00", [53 x i8] zeroinitializer }, align 32
@s626_send_dac._entry_ptr.16 = internal global ptr @s626_send_dac._entry.14, section ".printk_index", align 4
@s626_send_dac._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.3, i32 480, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"TSL timeout waiting for slot 0 to execute\0A\00", [53 x i8] zeroinitializer }, align 32
@s626_send_dac._entry_ptr.19 = internal global ptr @s626_send_dac._entry.17, section ".printk_index", align 4
@s626_send_dac._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.3, i32 505, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@s626_send_dac._entry_ptr.21 = internal global ptr @s626_send_dac._entry.20, section ".printk_index", align 4
@s626_trimadrs = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"@ABPQRS`abc", [21 x i8] zeroinitializer }, align 32
@s626_trimchan = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\0A\09\08\03\02\07\06\01\00\05\04", [21 x i8] zeroinitializer }, align 32
@s626_pci_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4401, i32 28998, i32 24576, i32 626, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 64, i64 268435456]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 64]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 64]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 64, i64 128]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 64, i64 128]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"s626_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 2569, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"s626_pci_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 2594, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 2570, i32 17 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 162, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 172, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"s626_range_table\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 134, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1699, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 408, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 433, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 479, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 504, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"s626_trimadrs\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 306, i32 17 }
@___asan_gen_.104 = private unnamed_addr constant [14 x i8] c"s626_trimchan\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 303, i32 17 }
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"s626_pci_table\00", align 1
@___asan_gen_.108 = private constant [33 x i8] c"../drivers/comedi/drivers/s626.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 2587, i32 35 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_s626_driver_exit, ptr @__initcall__kmod_s626__236_2600_s626_driver_init6, ptr @s626_ai_cmd._entry, ptr @s626_ai_cmd._entry_ptr, ptr @s626_debi_transfer._entry, ptr @s626_debi_transfer._entry.6, ptr @s626_debi_transfer._entry_ptr, ptr @s626_debi_transfer._entry_ptr.8, ptr @s626_driver_exit, ptr @s626_send_dac._entry, ptr @s626_send_dac._entry.14, ptr @s626_send_dac._entry.17, ptr @s626_send_dac._entry.20, ptr @s626_send_dac._entry_ptr, ptr @s626_send_dac._entry_ptr.16, ptr @s626_send_dac._entry_ptr.19, ptr @s626_send_dac._entry_ptr.21, ptr @s626_driver, ptr @s626_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @s626_range_table, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @s626_trimadrs, ptr @s626_trimchan, ptr @s626_pci_table], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s626_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s626_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s626_debi_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s626_debi_transfer._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s626_range_table to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s626_ai_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s626_send_dac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s626_send_dac._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s626_send_dac._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s626_send_dac._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s626_trimadrs to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s626_trimchan to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s626_pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s626_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @s626_driver, ptr noundef nonnull @s626_pci_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s626_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @s626_driver, ptr noundef nonnull @s626_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s626_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 4
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.then.if.end19_crit_edge, label %do.body

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 1073741840) #7, !srcloc !69
  tail call fastcc void @s626_write_misc2(ptr noundef %dev, i16 noundef zeroext 0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 4
  %add.ptr13 = getelementptr i8, ptr %10, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 65343) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add.ptr18 = getelementptr i8, ptr %12, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 -1718025952) #7, !srcloc !69
  br label %if.end19

if.end19:                                         ; preds = %do.body, %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  tail call void @comedi_pci_detach(ptr noundef %dev) #7
  %call.i = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #7
  %13 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end19.s626_free_dma_buffers.exit_crit_edge, label %if.end.i

if.end19.s626_free_dma_buffers.exit_crit_edge:    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_free_dma_buffers.exit

if.end.i:                                         ; preds = %if.end19
  %logical_base.i = getelementptr inbounds %struct.s626_private, ptr %14, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %logical_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %logical_base.i, align 4
  %tobool1.not.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then2.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %rps_buf.i = getelementptr inbounds %struct.s626_private, ptr %14, i32 0, i32 6
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 44
  %17 = ptrtoint ptr %rps_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rps_buf.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev3.i, i32 noundef 4096, ptr noundef nonnull %16, i32 noundef %18, i32 noundef 0) #7
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then2.i, %if.end.i.if.end7.i_crit_edge
  %logical_base8.i = getelementptr inbounds %struct.s626_private, ptr %14, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %logical_base8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %logical_base8.i, align 4
  %tobool9.not.i = icmp eq ptr %20, null
  br i1 %tobool9.not.i, label %if.end7.i.s626_free_dma_buffers.exit_crit_edge, label %if.then10.i

if.end7.i.s626_free_dma_buffers.exit_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_free_dma_buffers.exit

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %ana_buf.i = getelementptr inbounds %struct.s626_private, ptr %14, i32 0, i32 7
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 44
  %21 = ptrtoint ptr %ana_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ana_buf.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev11.i, i32 noundef 4096, ptr noundef nonnull %20, i32 noundef %22, i32 noundef 0) #7
  br label %s626_free_dma_buffers.exit

s626_free_dma_buffers.exit:                       ; preds = %if.then10.i, %if.end7.i.s626_free_dma_buffers.exit_crit_edge, %if.end19.s626_free_dma_buffers.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s626_auto_attach(ptr noundef %dev, i32 noundef %context_unused) #2 align 64 {
entry:
  %appdma.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #7
  %call1 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 60) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @pci_ioremap_bar(ptr noundef %call, i32 noundef 0) #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call6, ptr %mmio, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %do.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @arm_heavy_mb() #7
  %1 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio, align 4
  %add.ptr16 = getelementptr i8, ptr %4, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 128) #7, !srcloc !69
  %call.i = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #7
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %appdma.i) #7
  %7 = ptrtoint ptr %appdma.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %appdma.i, align 4, !annotation !75
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %call.i, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i, i32 noundef 4096, ptr noundef nonnull %appdma.i, i32 noundef 3264, i32 noundef 0) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.body.s626_allocate_dma_buffers.exit.thread_crit_edge, label %if.end.i

do.body.s626_allocate_dma_buffers.exit.thread_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_allocate_dma_buffers.exit.thread

if.end.i:                                         ; preds = %do.body
  %ana_buf.i = getelementptr inbounds %struct.s626_private, ptr %6, i32 0, i32 7
  %logical_base.i = getelementptr inbounds %struct.s626_private, ptr %6, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %logical_base.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %logical_base.i, align 4
  %9 = ptrtoint ptr %appdma.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %appdma.i, align 4
  %11 = ptrtoint ptr %ana_buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ana_buf.i, align 4
  %call.i23.i = call ptr @dma_alloc_attrs(ptr noundef %dev1.i, i32 noundef 4096, ptr noundef nonnull %appdma.i, i32 noundef 3264, i32 noundef 0) #7
  %tobool6.not.i = icmp eq ptr %call.i23.i, null
  br i1 %tobool6.not.i, label %if.end.i.s626_allocate_dma_buffers.exit.thread_crit_edge, label %if.end20

if.end.i.s626_allocate_dma_buffers.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_allocate_dma_buffers.exit.thread

s626_allocate_dma_buffers.exit.thread:            ; preds = %if.end.i.s626_allocate_dma_buffers.exit.thread_crit_edge, %do.body.s626_allocate_dma_buffers.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %appdma.i) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end.i
  %rps_buf.i = getelementptr inbounds %struct.s626_private, ptr %6, i32 0, i32 6
  %logical_base9.i = getelementptr inbounds %struct.s626_private, ptr %6, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %logical_base9.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i23.i, ptr %logical_base9.i, align 4
  %13 = ptrtoint ptr %appdma.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %appdma.i, align 4
  %15 = ptrtoint ptr %rps_buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rps_buf.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %appdma.i) #7
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not = icmp eq i32 %17, 0
  br i1 %tobool21.not, label %if.end20.if.end29_crit_edge, label %if.then22

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then22:                                        ; preds = %if.end20
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %18 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %board_name, align 4
  %call.i177 = call i32 @request_threaded_irq(i32 noundef %17, ptr noundef nonnull @s626_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %19, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %cmp = icmp eq i32 %call.i177, 0
  br i1 %cmp, label %if.then25, label %if.then22.if.end29_crit_edge

if.then22.if.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  %irq27 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %22 = ptrtoint ptr %irq27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %irq27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.then22.if.end29_crit_edge, %if.end20.if.end29_crit_edge
  %call30 = call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %23 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 4
  %26 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4259840, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 13
  %28 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16383, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 15
  %29 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @s626_range_table, ptr %range_table, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 5
  %30 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16, ptr %len_chanlist, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 18
  %31 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @s626_ai_insn_read, ptr %insn_read, align 4
  %irq34 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %32 = ptrtoint ptr %irq34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool35.not = icmp eq i32 %33, 0
  br i1 %tobool35.not, label %if.end33.if.end38_crit_edge, label %if.then36

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %34 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %24, ptr %read_subdev, align 4
  %35 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %subdev_flags, align 4
  %or = or i32 %36, 32768
  store i32 %or, ptr %subdev_flags, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 22
  %37 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @s626_ai_cmd, ptr %do_cmd, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 23
  %38 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @s626_ai_cmdtest, ptr %do_cmdtest, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %24, i32 0, i32 25
  %39 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @s626_ai_cancel, ptr %cancel, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end33.if.end38_crit_edge
  %40 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %subdevices, align 4
  %arrayidx40 = getelementptr %struct.comedi_subdevice, ptr %41, i32 1
  %type41 = getelementptr %struct.comedi_subdevice, ptr %41, i32 1, i32 2
  %42 = ptrtoint ptr %type41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %type41, align 4
  %subdev_flags42 = getelementptr %struct.comedi_subdevice, ptr %41, i32 1, i32 4
  %43 = ptrtoint ptr %subdev_flags42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 196608, ptr %subdev_flags42, align 4
  %n_chan43 = getelementptr %struct.comedi_subdevice, ptr %41, i32 1, i32 3
  %44 = ptrtoint ptr %n_chan43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %n_chan43, align 4
  %maxdata44 = getelementptr %struct.comedi_subdevice, ptr %41, i32 1, i32 13
  %45 = ptrtoint ptr %maxdata44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 16383, ptr %maxdata44, align 4
  %range_table45 = getelementptr %struct.comedi_subdevice, ptr %41, i32 1, i32 15
  %46 = ptrtoint ptr %range_table45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @range_bipolar10, ptr %range_table45, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %41, i32 1, i32 19
  %47 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @s626_ao_insn_write, ptr %insn_write, align 4
  %call46 = call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %subdevices, align 4
  %type52 = getelementptr %struct.comedi_subdevice, ptr %49, i32 2, i32 2
  %50 = ptrtoint ptr %type52 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 5, ptr %type52, align 4
  %subdev_flags53 = getelementptr %struct.comedi_subdevice, ptr %49, i32 2, i32 4
  %51 = ptrtoint ptr %subdev_flags53 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 196608, ptr %subdev_flags53, align 4
  %n_chan54 = getelementptr %struct.comedi_subdevice, ptr %49, i32 2, i32 3
  %52 = ptrtoint ptr %n_chan54 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 16, ptr %n_chan54, align 4
  %maxdata55 = getelementptr %struct.comedi_subdevice, ptr %49, i32 2, i32 13
  %53 = ptrtoint ptr %maxdata55 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %maxdata55, align 4
  %io_bits = getelementptr %struct.comedi_subdevice, ptr %49, i32 2, i32 12
  %54 = ptrtoint ptr %io_bits to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 65535, ptr %io_bits, align 4
  %private = getelementptr %struct.comedi_subdevice, ptr %49, i32 2, i32 6
  %55 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %private, align 4
  %range_table56 = getelementptr %struct.comedi_subdevice, ptr %49, i32 2, i32 15
  %56 = ptrtoint ptr %range_table56 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @range_unipolar5, ptr %range_table56, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %49, i32 2, i32 21
  %57 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @s626_dio_insn_config, ptr %insn_config, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %49, i32 2, i32 20
  %58 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @s626_dio_insn_bits, ptr %insn_bits, align 4
  %59 = load ptr, ptr %subdevices, align 4
  %type59 = getelementptr %struct.comedi_subdevice, ptr %59, i32 3, i32 2
  %60 = ptrtoint ptr %type59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 5, ptr %type59, align 4
  %subdev_flags60 = getelementptr %struct.comedi_subdevice, ptr %59, i32 3, i32 4
  %61 = ptrtoint ptr %subdev_flags60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 196608, ptr %subdev_flags60, align 4
  %n_chan61 = getelementptr %struct.comedi_subdevice, ptr %59, i32 3, i32 3
  %62 = ptrtoint ptr %n_chan61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 16, ptr %n_chan61, align 4
  %maxdata62 = getelementptr %struct.comedi_subdevice, ptr %59, i32 3, i32 13
  %63 = ptrtoint ptr %maxdata62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %maxdata62, align 4
  %io_bits63 = getelementptr %struct.comedi_subdevice, ptr %59, i32 3, i32 12
  %64 = ptrtoint ptr %io_bits63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 65535, ptr %io_bits63, align 4
  %private64 = getelementptr %struct.comedi_subdevice, ptr %59, i32 3, i32 6
  %65 = ptrtoint ptr %private64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 1 to ptr), ptr %private64, align 4
  %range_table65 = getelementptr %struct.comedi_subdevice, ptr %59, i32 3, i32 15
  %66 = ptrtoint ptr %range_table65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @range_unipolar5, ptr %range_table65, align 4
  %insn_config66 = getelementptr %struct.comedi_subdevice, ptr %59, i32 3, i32 21
  %67 = ptrtoint ptr %insn_config66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @s626_dio_insn_config, ptr %insn_config66, align 4
  %insn_bits67 = getelementptr %struct.comedi_subdevice, ptr %59, i32 3, i32 20
  %68 = ptrtoint ptr %insn_bits67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @s626_dio_insn_bits, ptr %insn_bits67, align 4
  %69 = load ptr, ptr %subdevices, align 4
  %type70 = getelementptr %struct.comedi_subdevice, ptr %69, i32 4, i32 2
  %70 = ptrtoint ptr %type70 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 5, ptr %type70, align 4
  %subdev_flags71 = getelementptr %struct.comedi_subdevice, ptr %69, i32 4, i32 4
  %71 = ptrtoint ptr %subdev_flags71 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 196608, ptr %subdev_flags71, align 4
  %n_chan72 = getelementptr %struct.comedi_subdevice, ptr %69, i32 4, i32 3
  %72 = ptrtoint ptr %n_chan72 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 16, ptr %n_chan72, align 4
  %maxdata73 = getelementptr %struct.comedi_subdevice, ptr %69, i32 4, i32 13
  %73 = ptrtoint ptr %maxdata73 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %maxdata73, align 4
  %io_bits74 = getelementptr %struct.comedi_subdevice, ptr %69, i32 4, i32 12
  %74 = ptrtoint ptr %io_bits74 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 65535, ptr %io_bits74, align 4
  %private75 = getelementptr %struct.comedi_subdevice, ptr %69, i32 4, i32 6
  %75 = ptrtoint ptr %private75 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 2 to ptr), ptr %private75, align 4
  %range_table76 = getelementptr %struct.comedi_subdevice, ptr %69, i32 4, i32 15
  %76 = ptrtoint ptr %range_table76 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @range_unipolar5, ptr %range_table76, align 4
  %insn_config77 = getelementptr %struct.comedi_subdevice, ptr %69, i32 4, i32 21
  %77 = ptrtoint ptr %insn_config77 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @s626_dio_insn_config, ptr %insn_config77, align 4
  %insn_bits78 = getelementptr %struct.comedi_subdevice, ptr %69, i32 4, i32 20
  %78 = ptrtoint ptr %insn_bits78 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @s626_dio_insn_bits, ptr %insn_bits78, align 4
  %79 = load ptr, ptr %subdevices, align 4
  %type81 = getelementptr %struct.comedi_subdevice, ptr %79, i32 5, i32 2
  %80 = ptrtoint ptr %type81 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 6, ptr %type81, align 4
  %subdev_flags82 = getelementptr %struct.comedi_subdevice, ptr %79, i32 5, i32 4
  %81 = ptrtoint ptr %subdev_flags82 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 268632064, ptr %subdev_flags82, align 4
  %n_chan83 = getelementptr %struct.comedi_subdevice, ptr %79, i32 5, i32 3
  %82 = ptrtoint ptr %n_chan83 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 6, ptr %n_chan83, align 4
  %maxdata84 = getelementptr %struct.comedi_subdevice, ptr %79, i32 5, i32 13
  %83 = ptrtoint ptr %maxdata84 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 16777215, ptr %maxdata84, align 4
  %range_table85 = getelementptr %struct.comedi_subdevice, ptr %79, i32 5, i32 15
  %84 = ptrtoint ptr %range_table85 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @range_unknown, ptr %range_table85, align 4
  %insn_config86 = getelementptr %struct.comedi_subdevice, ptr %79, i32 5, i32 21
  %85 = ptrtoint ptr %insn_config86 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @s626_enc_insn_config, ptr %insn_config86, align 4
  %insn_read87 = getelementptr %struct.comedi_subdevice, ptr %79, i32 5, i32 18
  %86 = ptrtoint ptr %insn_read87 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @s626_enc_insn_read, ptr %insn_read87, align 4
  %insn_write88 = getelementptr %struct.comedi_subdevice, ptr %79, i32 5, i32 19
  %87 = ptrtoint ptr %insn_write88 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @s626_enc_insn_write, ptr %insn_write88, align 4
  %call89 = call fastcc i32 @s626_initialize(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end38.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %s626_allocate_dma_buffers.exit.thread, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call89, %if.end49 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call46, %if.end38.cleanup_crit_edge ], [ -12, %s626_allocate_dma_buffers.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s626_write_misc2(ptr nocapture noundef readonly %dev, i16 noundef zeroext %new_image) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -2013264896) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %3, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 8388608) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %5, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 -1879047168) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %conv3.i = zext i16 %new_image to i32
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #7
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i5 = getelementptr i8, ptr %8, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i5, i32 %6) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %10, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 -2013264896) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i8 = getelementptr i8, ptr %12, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i8, i32 0) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s626_debi_transfer(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554944) #7, !srcloc !69
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.036 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %3, i32 256
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %5 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %if.end, label %for.body.for.body6.preheader_crit_edge

for.body.for.body6.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.preheader

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #7
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, 10000
  br i1 %exitcond.not, label %do.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %7 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.1) #10
  br label %for.body6.preheader

for.body6.preheader:                              ; preds = %do.end, %for.body.for.body6.preheader_crit_edge
  br label %for.body6

for.body6:                                        ; preds = %if.end10.for.body6_crit_edge, %for.body6.preheader
  %i.137 = phi i32 [ %inc12, %if.end10.for.body6_crit_edge ], [ 0, %for.body6.preheader ]
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 272
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  %12 = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %for.body6.if.end20_crit_edge, label %if.end10

for.body6.if.end20_crit_edge:                     ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end10:                                         ; preds = %for.body6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #7
  %inc12 = add nuw nsw i32 %i.137, 1
  %exitcond38.not = icmp eq i32 %inc12, 10000
  br i1 %exitcond38.not, label %do.end18, label %if.end10.for.body6_crit_edge

if.end10.for.body6_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev19 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %class_dev19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.7) #10
  br label %if.end20

if.end20:                                         ; preds = %do.end18, %for.body6.if.end20_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s626_irq_handler(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %tempdata.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %0 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1:                                         ; preds = %entry
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 17
  %1 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 220
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !79
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio, align 4
  %add.ptr11 = getelementptr i8, ptr %6, i32 268
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !79
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 4
  %add.ptr19 = getelementptr i8, ptr %10, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add.ptr24 = getelementptr i8, ptr %12, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %7) #7, !srcloc !69
  %13 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.body1.do.body29_crit_edge [
    i32 268435456, label %sw.bb
    i32 64, label %sw.bb28
  ]

do.body1.do.body29_crit_edge:                     ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

sw.bb:                                            ; preds = %do.body1
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %14 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private.i, align 4
  %read_subdev.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %16 = ptrtoint ptr %read_subdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_subdev.i, align 4
  %async1.i = getelementptr inbounds %struct.comedi_subdevice, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %async1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %async1.i, align 4
  %chanlist_len.i = getelementptr inbounds %struct.comedi_async, ptr %19, i32 0, i32 17, i32 13
  %20 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chanlist_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp41.not.i = icmp eq i32 %21, 0
  br i1 %cmp41.not.i, label %sw.bb.for.end.i_crit_edge, label %for.body.preheader.i

sw.bb.for.end.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.preheader.i:                             ; preds = %sw.bb
  %logical_base.i = getelementptr inbounds %struct.s626_private, ptr %15, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %logical_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %logical_base.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.043.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %.pn42.i = phi ptr [ %readaddr.0.i, %for.body.i.for.body.i_crit_edge ], [ %23, %for.body.preheader.i ]
  %readaddr.0.i = getelementptr i32, ptr %.pn42.i, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tempdata.i) #7
  %24 = ptrtoint ptr %readaddr.0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %readaddr.0.i, align 4
  %shr.i.i = lshr i32 %25, 18
  %26 = trunc i32 %shr.i.i to i16
  %conv.i = xor i16 %26, 8192
  %27 = ptrtoint ptr %tempdata.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i, ptr %tempdata.i, align 2
  %call3.i = call i32 @comedi_buf_write_samples(ptr noundef %17, ptr noundef nonnull %tempdata.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tempdata.i) #7
  %inc.i = add nuw i32 %i.043.i, 1
  %28 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chanlist_len.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %29
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb.for.end.i_crit_edge
  %stop_src.i = getelementptr inbounds %struct.comedi_async, ptr %19, i32 0, i32 17, i32 10
  %30 = ptrtoint ptr %stop_src.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stop_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %31)
  %cmp4.i = icmp eq i32 %31, 32
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.end.i.if.end.i_crit_edge

for.end.i.if.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %scans_done.i = getelementptr inbounds %struct.comedi_async, ptr %19, i32 0, i32 11
  %32 = ptrtoint ptr %scans_done.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %scans_done.i, align 4
  %stop_arg.i = getelementptr inbounds %struct.comedi_async, ptr %19, i32 0, i32 17, i32 11
  %34 = ptrtoint ptr %stop_arg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %stop_arg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp6.not.i = icmp ult i32 %33, %35
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %events.i = getelementptr inbounds %struct.comedi_async, ptr %19, i32 0, i32 16
  %36 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %events.i, align 4
  %or.i = or i32 %37, 2
  store i32 %or.i, ptr %events.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %for.end.i.if.end.i_crit_edge
  %events8.i = getelementptr inbounds %struct.comedi_async, ptr %19, i32 0, i32 16
  %38 = ptrtoint ptr %events8.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %events8.i, align 4
  %and.i = and i32 %39, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end10.i, label %if.end10.thread.i

if.end10.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %15, align 4
  br label %s626_handle_eos_interrupt.exit

if.end10.i:                                       ; preds = %if.end.i
  %41 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %41)
  %.pr.i = load i8, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool13.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool13.not.i, label %if.end10.i.s626_handle_eos_interrupt.exit_crit_edge, label %land.lhs.true14.i

if.end10.i.s626_handle_eos_interrupt.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_handle_eos_interrupt.exit

land.lhs.true14.i:                                ; preds = %if.end10.i
  %scan_begin_src.i = getelementptr inbounds %struct.comedi_async, ptr %19, i32 0, i32 17, i32 4
  %42 = ptrtoint ptr %scan_begin_src.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %scan_begin_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %43)
  %cmp15.i = icmp eq i32 %43, 64
  br i1 %cmp15.i, label %if.then17.i, label %land.lhs.true14.i.s626_handle_eos_interrupt.exit_crit_edge

land.lhs.true14.i.s626_handle_eos_interrupt.exit_crit_edge: ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_handle_eos_interrupt.exit

if.then17.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #9
  %scan_begin_arg.i = getelementptr inbounds %struct.comedi_async, ptr %19, i32 0, i32 17, i32 5
  %44 = ptrtoint ptr %scan_begin_arg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %scan_begin_arg.i, align 4
  call fastcc void @s626_dio_set_irq(ptr noundef %d, i32 noundef %45) #7
  br label %s626_handle_eos_interrupt.exit

s626_handle_eos_interrupt.exit:                   ; preds = %if.then17.i, %land.lhs.true14.i.s626_handle_eos_interrupt.exit_crit_edge, %if.end10.i.s626_handle_eos_interrupt.exit_crit_edge, %if.end10.thread.i
  %call20.i = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %17) #7
  %46 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool22.not.i = icmp eq i8 %47, 0
  %spec.select = select i1 %tobool22.not.i, i32 0, i32 %4
  br label %do.body29

sw.bb28:                                          ; preds = %do.body1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1207960832) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  %50 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %51, i32 136
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #7, !srcloc !79
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %conv4.i.i = trunc i32 %53 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv4.i.i)
  %tobool.not.i49 = icmp eq i16 %conv4.i.i, 0
  br i1 %tobool.not.i49, label %for.inc.i, label %sw.bb28.if.then.i50_crit_edge

sw.bb28.if.then.i50_crit_edge:                    ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i50

if.then.i50:                                      ; preds = %for.inc.1.i.if.then.i50_crit_edge, %for.inc.i.if.then.i50_crit_edge, %sw.bb28.if.then.i50_crit_edge
  %group.012.lcssa.wide.i = phi i32 [ 0, %sw.bb28.if.then.i50_crit_edge ], [ 16, %for.inc.i.if.then.i50_crit_edge ], [ 32, %for.inc.1.i.if.then.i50_crit_edge ]
  %.lcssa.i = phi i32 [ %53, %sw.bb28.if.then.i50_crit_edge ], [ %125, %for.inc.i.if.then.i50_crit_edge ], [ %131, %for.inc.1.i.if.then.i50_crit_edge ]
  %private.i.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %54 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %private.i.i, align 4
  %read_subdev.i.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %56 = ptrtoint ptr %read_subdev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read_subdev.i.i, align 4
  %async.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %async.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %async.i.i, align 4
  %conv2.i.i = and i32 %.lcssa.i, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %61, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 -2013264896) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %62 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio, align 4
  %add.ptr5.i.i.i.i = getelementptr i8, ptr %63, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i.i, i32 0) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %or.i.i.i.i = or i32 %group.012.lcssa.wide.i, 262214
  %64 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i) #7
  %65 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio, align 4
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %66, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i, i32 %64) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %67 = tail call i32 @llvm.bswap.i32(i32 %conv2.i.i) #7
  %68 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio, align 4
  %add.ptr5.i3.i.i.i = getelementptr i8, ptr %69, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i3.i.i.i, i32 %67) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  %70 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %55, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i.i = icmp eq i8 %71, 0
  br i1 %tobool.not.i.i, label %if.then.i50.s626_check_dio_interrupts.exit_crit_edge, label %if.then.i.i

if.then.i50.s626_check_dio_interrupts.exit_crit_edge: ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_check_dio_interrupts.exit

if.then.i.i:                                      ; preds = %if.then.i50
  %start_arg.i.i = getelementptr inbounds %struct.comedi_async, ptr %59, i32 0, i32 17, i32 3
  %72 = ptrtoint ptr %start_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %start_arg.i.i, align 4
  %sub.i.i = sub i32 %73, %group.012.lcssa.wide.i
  %shr.i.i51 = lshr i32 %conv2.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i.i51)
  %cmp.i.i = icmp eq i32 %shr.i.i51, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then.i.i.if.end13.i.i_crit_edge

if.then.i.i.if.end13.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %start_src.i.i = getelementptr inbounds %struct.comedi_async, ptr %59, i32 0, i32 17, i32 2
  %74 = ptrtoint ptr %start_src.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %start_src.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %75)
  %cmp6.i.i = icmp eq i32 %75, 64
  br i1 %cmp6.i.i, label %if.then8.i.i, label %land.lhs.true.i.i.if.end13.i.i_crit_edge

land.lhs.true.i.i.if.end13.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i.i

if.then8.i.i:                                     ; preds = %land.lhs.true.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %76 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %77, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 2097184) #7, !srcloc !69
  %scan_begin_src.i.i = getelementptr inbounds %struct.comedi_async, ptr %59, i32 0, i32 17, i32 4
  %78 = ptrtoint ptr %scan_begin_src.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %scan_begin_src.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %79)
  %cmp9.i.i = icmp eq i32 %79, 64
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.then8.i.i.if.end13.i.i_crit_edge

if.then8.i.i.if.end13.i.i_crit_edge:              ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i.i

if.then11.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %scan_begin_arg.i.i = getelementptr inbounds %struct.comedi_async, ptr %59, i32 0, i32 17, i32 5
  %80 = ptrtoint ptr %scan_begin_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %scan_begin_arg.i.i, align 4
  tail call fastcc void @s626_dio_set_irq(ptr noundef %d, i32 noundef %81) #7
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then11.i.i, %if.then8.i.i.if.end13.i.i_crit_edge, %land.lhs.true.i.i.if.end13.i.i_crit_edge, %if.then.i.i.if.end13.i.i_crit_edge
  %scan_begin_arg15.i.i = getelementptr inbounds %struct.comedi_async, ptr %59, i32 0, i32 17, i32 5
  %82 = ptrtoint ptr %scan_begin_arg15.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %scan_begin_arg15.i.i, align 4
  %sub18.i.i = sub i32 %83, %group.012.lcssa.wide.i
  %shr19.i.i = lshr i32 %conv2.i.i, %sub18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr19.i.i)
  %cmp20.i.i = icmp eq i32 %shr19.i.i, 1
  br i1 %cmp20.i.i, label %land.lhs.true22.i.i, label %if.end13.i.i.if.end39.i.i_crit_edge

if.end13.i.i.if.end39.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i

land.lhs.true22.i.i:                              ; preds = %if.end13.i.i
  %scan_begin_src23.i.i = getelementptr inbounds %struct.comedi_async, ptr %59, i32 0, i32 17, i32 4
  %84 = ptrtoint ptr %scan_begin_src23.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %scan_begin_src23.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %85)
  %cmp24.i.i = icmp eq i32 %85, 64
  br i1 %cmp24.i.i, label %if.then26.i.i, label %land.lhs.true22.i.i.if.end39.i.i_crit_edge

land.lhs.true22.i.i.if.end39.i.i_crit_edge:       ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i

if.then26.i.i:                                    ; preds = %land.lhs.true22.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %86 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio, align 4
  %add.ptr.i96.i.i = getelementptr i8, ptr %87, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96.i.i, i32 524296) #7, !srcloc !69
  %convert_src.i.i = getelementptr inbounds %struct.comedi_async, ptr %59, i32 0, i32 17, i32 6
  %88 = ptrtoint ptr %convert_src.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %convert_src.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %89)
  %cmp27.i.i = icmp eq i32 %89, 64
  br i1 %cmp27.i.i, label %if.then29.i.i, label %if.then26.i.i.if.end31.i.i_crit_edge

if.then26.i.i.if.end31.i.i_crit_edge:             ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i.i

if.then29.i.i:                                    ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %chanlist_len.i.i = getelementptr inbounds %struct.comedi_async, ptr %59, i32 0, i32 17, i32 13
  %90 = ptrtoint ptr %chanlist_len.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %chanlist_len.i.i, align 4
  %ai_convert_count.i.i = getelementptr inbounds %struct.s626_private, ptr %55, i32 0, i32 2
  %92 = ptrtoint ptr %ai_convert_count.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %ai_convert_count.i.i, align 4
  %convert_arg.i.i = getelementptr inbounds %struct.comedi_async, ptr %59, i32 0, i32 17, i32 7
  %93 = ptrtoint ptr %convert_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %convert_arg.i.i, align 4
  tail call fastcc void @s626_dio_set_irq(ptr noundef %d, i32 noundef %94) #7
  %95 = ptrtoint ptr %convert_src.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pr.i.i = load i32, ptr %convert_src.i.i, align 4
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then29.i.i, %if.then26.i.i.if.end31.i.i_crit_edge
  %96 = phi i32 [ %.pr.i.i, %if.then29.i.i ], [ %89, %if.then26.i.i.if.end31.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %96)
  %cmp33.i.i = icmp eq i32 %96, 16
  br i1 %cmp33.i.i, label %if.then35.i.i, label %if.end31.i.i.if.end39.i.i_crit_edge

if.end31.i.i.if.end39.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i

if.then35.i.i:                                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %chanlist_len36.i.i = getelementptr inbounds %struct.comedi_async, ptr %59, i32 0, i32 17, i32 13
  %97 = ptrtoint ptr %chanlist_len36.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %chanlist_len36.i.i, align 4
  %ai_convert_count37.i.i = getelementptr inbounds %struct.s626_private, ptr %55, i32 0, i32 2
  %99 = ptrtoint ptr %ai_convert_count37.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %ai_convert_count37.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %100 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i98.i.i = getelementptr i8, ptr %101, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i98.i.i, i32 167773440) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %102 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmio, align 4
  %add.ptr6.i.i.i.i = getelementptr i8, ptr %103, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i.i.i, i32 167773184) #7, !srcloc !69
  %104 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio, align 4
  %add.ptr8.i.i.i.i = getelementptr i8, ptr %105, i32 136
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i.i.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %107 = and i32 %106, -81854464
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %108 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio, align 4
  %add.ptr17.i.i.i.i = getelementptr i8, ptr %109, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i.i.i, i32 %107) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then35.i.i, %if.end31.i.i.if.end39.i.i_crit_edge, %land.lhs.true22.i.i.if.end39.i.i_crit_edge, %if.end13.i.i.if.end39.i.i_crit_edge
  %convert_arg41.i.i = getelementptr inbounds %struct.comedi_async, ptr %59, i32 0, i32 17, i32 7
  %110 = ptrtoint ptr %convert_arg41.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %convert_arg41.i.i, align 4
  %sub44.i.i = sub i32 %111, %group.012.lcssa.wide.i
  %shr45.i.i = lshr i32 %conv2.i.i, %sub44.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr45.i.i)
  %cmp46.i.i = icmp eq i32 %shr45.i.i, 1
  br i1 %cmp46.i.i, label %land.lhs.true48.i.i, label %if.end39.i.i.s626_check_dio_interrupts.exit_crit_edge

if.end39.i.i.s626_check_dio_interrupts.exit_crit_edge: ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_check_dio_interrupts.exit

land.lhs.true48.i.i:                              ; preds = %if.end39.i.i
  %convert_src49.i.i = getelementptr inbounds %struct.comedi_async, ptr %59, i32 0, i32 17, i32 6
  %112 = ptrtoint ptr %convert_src49.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %convert_src49.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %113)
  %cmp50.i.i = icmp eq i32 %113, 64
  br i1 %cmp50.i.i, label %if.then52.i.i, label %land.lhs.true48.i.i.s626_check_dio_interrupts.exit_crit_edge

land.lhs.true48.i.i.s626_check_dio_interrupts.exit_crit_edge: ; preds = %land.lhs.true48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_check_dio_interrupts.exit

if.then52.i.i:                                    ; preds = %land.lhs.true48.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %114 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mmio, align 4
  %add.ptr.i100.i.i = getelementptr i8, ptr %115, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100.i.i, i32 524296) #7, !srcloc !69
  %ai_convert_count53.i.i = getelementptr inbounds %struct.s626_private, ptr %55, i32 0, i32 2
  %116 = ptrtoint ptr %ai_convert_count53.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ai_convert_count53.i.i, align 4
  %dec.i.i = add i32 %117, -1
  store i32 %dec.i.i, ptr %ai_convert_count53.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp55.i.i = icmp sgt i32 %dec.i.i, 0
  br i1 %cmp55.i.i, label %if.then57.i.i, label %if.then52.i.i.s626_check_dio_interrupts.exit_crit_edge

if.then52.i.i.s626_check_dio_interrupts.exit_crit_edge: ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_check_dio_interrupts.exit

if.then57.i.i:                                    ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %convert_arg41.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %convert_arg41.i.i, align 4
  tail call fastcc void @s626_dio_set_irq(ptr noundef %d, i32 noundef %119) #7
  br label %s626_check_dio_interrupts.exit

for.inc.i:                                        ; preds = %sw.bb28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %120 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mmio, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %121, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 1476396288) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  %122 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mmio, align 4
  %add.ptr2.i.1.i = getelementptr i8, ptr %123, i32 136
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.1.i) #7, !srcloc !79
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %conv4.i.1.i = trunc i32 %125 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv4.i.1.i)
  %tobool.not.1.i = icmp eq i16 %conv4.i.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.1.i, label %for.inc.i.if.then.i50_crit_edge

for.inc.i.if.then.i50_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i50

for.inc.1.i:                                      ; preds = %for.inc.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %126 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mmio, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %127, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i, i32 1744831744) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  %128 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmio, align 4
  %add.ptr2.i.2.i = getelementptr i8, ptr %129, i32 136
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.2.i) #7, !srcloc !79
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %conv4.i.2.i = trunc i32 %131 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv4.i.2.i)
  %tobool.not.2.i = icmp eq i16 %conv4.i.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.s626_check_dio_interrupts.exit_crit_edge, label %for.inc.1.i.if.then.i50_crit_edge

for.inc.1.i.if.then.i50_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i50

for.inc.1.i.s626_check_dio_interrupts.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_check_dio_interrupts.exit

s626_check_dio_interrupts.exit:                   ; preds = %for.inc.1.i.s626_check_dio_interrupts.exit_crit_edge, %if.then57.i.i, %if.then52.i.i.s626_check_dio_interrupts.exit_crit_edge, %land.lhs.true48.i.i.s626_check_dio_interrupts.exit_crit_edge, %if.end39.i.i.s626_check_dio_interrupts.exit_crit_edge, %if.then.i50.s626_check_dio_interrupts.exit_crit_edge
  %private.i52 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %132 = ptrtoint ptr %private.i52 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %private.i52, align 4
  %read_subdev.i53 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %134 = ptrtoint ptr %read_subdev.i53 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %read_subdev.i53, align 4
  %async1.i54 = getelementptr inbounds %struct.comedi_subdevice, ptr %135, i32 0, i32 7
  %136 = ptrtoint ptr %async1.i54 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %async1.i54, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %138 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i56 = getelementptr i8, ptr %139, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i56, i32 -2113927936) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  %140 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mmio, align 4
  %add.ptr2.i.i57 = getelementptr i8, ptr %141, i32 136
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i57) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %143 = and i32 %142, -65536
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #7
  %and.i58 = and i32 %144, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58)
  %tobool.not.i59 = icmp eq i32 %and.i58, 0
  br i1 %tobool.not.i59, label %s626_check_dio_interrupts.exit.if.end.i62_crit_edge, label %if.then.i61

s626_check_dio_interrupts.exit.if.end.i62_crit_edge: ; preds = %s626_check_dio_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i62

if.then.i61:                                      ; preds = %s626_check_dio_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %145 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i.i60 = getelementptr i8, ptr %146, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i60, i32 33555712) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %147 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mmio, align 4
  %add.ptr6.i.i.i = getelementptr i8, ptr %148, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i.i, i32 33555456) #7, !srcloc !69
  %149 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %mmio, align 4
  %add.ptr8.i.i.i = getelementptr i8, ptr %150, i32 136
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %152 = and i32 %151, -14745600
  %153 = or i32 %152, 10485760
  %154 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mmio, align 4
  %add.ptr17.i.i.i = getelementptr i8, ptr %155, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i.i, i32 %153) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  br label %if.end.i62

if.end.i62:                                       ; preds = %if.then.i61, %s626_check_dio_interrupts.exit.if.end.i62_crit_edge
  %and4.i = and i32 %144, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i62.if.end7.i_crit_edge, label %if.then6.i

if.end.i62.if.end7.i_crit_edge:                   ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %156 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i75.i = getelementptr i8, ptr %157, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i75.i, i32 100664576) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %158 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mmio, align 4
  %add.ptr6.i.i76.i = getelementptr i8, ptr %159, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i76.i, i32 100664320) #7, !srcloc !69
  %160 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mmio, align 4
  %add.ptr8.i.i77.i = getelementptr i8, ptr %161, i32 136
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i77.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %163 = and i32 %162, -14745600
  %164 = or i32 %163, 10485760
  %165 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mmio, align 4
  %add.ptr17.i.i79.i = getelementptr i8, ptr %166, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i79.i, i32 %164) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i62.if.end7.i_crit_edge
  %and9.i = and i32 %144, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end7.i.if.end12.i_crit_edge, label %if.then11.i

if.end7.i.if.end12.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %167 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i81.i = getelementptr i8, ptr %168, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i81.i, i32 167773440) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %169 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %mmio, align 4
  %add.ptr6.i.i82.i = getelementptr i8, ptr %170, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i82.i, i32 167773184) #7, !srcloc !69
  %171 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %mmio, align 4
  %add.ptr8.i.i83.i = getelementptr i8, ptr %172, i32 136
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i83.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %174 = and i32 %173, -14745600
  %175 = or i32 %174, 10485760
  %176 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %mmio, align 4
  %add.ptr17.i.i85.i = getelementptr i8, ptr %177, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i85.i, i32 %175) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end7.i.if.end12.i_crit_edge
  %and14.i = and i32 %144, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end12.i.if.end17.i_crit_edge, label %if.then16.i

if.end12.i.if.end17.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %178 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i87.i = getelementptr i8, ptr %179, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i87.i, i32 33555712) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %180 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mmio, align 4
  %add.ptr6.i.i88.i = getelementptr i8, ptr %181, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i88.i, i32 33555456) #7, !srcloc !69
  %182 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mmio, align 4
  %add.ptr8.i.i89.i = getelementptr i8, ptr %183, i32 136
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i89.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %185 = and i32 %184, -14745600
  %186 = or i32 %185, 12582912
  %187 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %mmio, align 4
  %add.ptr17.i.i91.i = getelementptr i8, ptr %188, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i91.i, i32 %186) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %if.end12.i.if.end17.i_crit_edge
  %and19.i = and i32 %144, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end17.i.if.end35.i_crit_edge, label %if.then21.i

if.end17.i.if.end35.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.then21.i:                                      ; preds = %if.end17.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %189 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i93.i = getelementptr i8, ptr %190, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i93.i, i32 100664576) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %191 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %mmio, align 4
  %add.ptr6.i.i94.i = getelementptr i8, ptr %192, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i94.i, i32 100664320) #7, !srcloc !69
  %193 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mmio, align 4
  %add.ptr8.i.i95.i = getelementptr i8, ptr %194, i32 136
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i95.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %196 = and i32 %195, -14745600
  %197 = or i32 %196, 12582912
  %198 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %mmio, align 4
  %add.ptr17.i.i97.i = getelementptr i8, ptr %199, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i97.i, i32 %197) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  %ai_convert_count.i = getelementptr inbounds %struct.s626_private, ptr %133, i32 0, i32 2
  %200 = ptrtoint ptr %ai_convert_count.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %ai_convert_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %cmp.i63 = icmp sgt i32 %201, 0
  br i1 %cmp.i63, label %if.then23.i, label %if.then21.i.if.end35.i_crit_edge

if.then21.i.if.end35.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.then23.i:                                      ; preds = %if.then21.i
  %dec.i = add nsw i32 %201, -1
  %202 = ptrtoint ptr %ai_convert_count.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %dec.i, ptr %ai_convert_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp26.i = icmp eq i32 %dec.i, 0
  br i1 %cmp26.i, label %if.then28.i, label %if.then23.i.if.end29.i_crit_edge

if.then23.i.if.end29.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then28.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %203 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i99.i = getelementptr i8, ptr %204, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i99.i, i32 100664576) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %205 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %mmio, align 4
  %add.ptr6.i.i100.i = getelementptr i8, ptr %206, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i100.i, i32 100664320) #7, !srcloc !69
  %207 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %mmio, align 4
  %add.ptr8.i.i101.i = getelementptr i8, ptr %208, i32 136
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i101.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %210 = and i32 %209, -81854464
  %211 = or i32 %210, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %212 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %mmio, align 4
  %add.ptr17.i.i102.i = getelementptr i8, ptr %213, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i102.i, i32 %211) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then28.i, %if.then23.i.if.end29.i_crit_edge
  %convert_src.i = getelementptr inbounds %struct.comedi_async, ptr %137, i32 0, i32 17, i32 6
  %214 = ptrtoint ptr %convert_src.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %convert_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %215)
  %cmp30.i = icmp eq i32 %215, 16
  br i1 %cmp30.i, label %if.then32.i, label %if.end29.i.if.end35.i_crit_edge

if.end29.i.if.end35.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %216 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %mmio, align 4
  %add.ptr.i104.i = getelementptr i8, ptr %217, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104.i, i32 524296) #7, !srcloc !69
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then32.i, %if.end29.i.if.end35.i_crit_edge, %if.then21.i.if.end35.i_crit_edge, %if.end17.i.if.end35.i_crit_edge
  %and37.i = and i32 %144, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end35.i.do.body29_crit_edge, label %if.then39.i

if.end35.i.do.body29_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.then39.i:                                      ; preds = %if.end35.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %218 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i106.i = getelementptr i8, ptr %219, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i106.i, i32 167773440) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %220 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mmio, align 4
  %add.ptr6.i.i107.i = getelementptr i8, ptr %221, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i107.i, i32 167773184) #7, !srcloc !69
  %222 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %mmio, align 4
  %add.ptr8.i.i108.i = getelementptr i8, ptr %223, i32 136
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i108.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %225 = and i32 %224, -14745600
  %226 = or i32 %225, 12582912
  %227 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %mmio, align 4
  %add.ptr17.i.i110.i = getelementptr i8, ptr %228, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i110.i, i32 %226) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  %scan_begin_src.i64 = getelementptr inbounds %struct.comedi_async, ptr %137, i32 0, i32 17, i32 4
  %229 = ptrtoint ptr %scan_begin_src.i64 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %scan_begin_src.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %230)
  %cmp40.i = icmp eq i32 %230, 16
  br i1 %cmp40.i, label %if.then42.i, label %if.then39.i.if.end43.i_crit_edge

if.then39.i.if.end43.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.then42.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %231 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %mmio, align 4
  %add.ptr.i112.i = getelementptr i8, ptr %232, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112.i, i32 524296) #7, !srcloc !69
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then42.i, %if.then39.i.if.end43.i_crit_edge
  %convert_src44.i = getelementptr inbounds %struct.comedi_async, ptr %137, i32 0, i32 17, i32 6
  %233 = ptrtoint ptr %convert_src44.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %convert_src44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %234)
  %cmp45.i = icmp eq i32 %234, 16
  br i1 %cmp45.i, label %if.then47.i, label %if.end43.i.do.body29_crit_edge

if.end43.i.do.body29_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.then47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  %chanlist_len.i65 = getelementptr inbounds %struct.comedi_async, ptr %137, i32 0, i32 17, i32 13
  %235 = ptrtoint ptr %chanlist_len.i65 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %chanlist_len.i65, align 4
  %ai_convert_count48.i = getelementptr inbounds %struct.s626_private, ptr %133, i32 0, i32 2
  %237 = ptrtoint ptr %ai_convert_count48.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %ai_convert_count48.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %238 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i114.i = getelementptr i8, ptr %239, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i114.i, i32 100664576) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %240 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %mmio, align 4
  %add.ptr6.i.i115.i = getelementptr i8, ptr %241, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i115.i, i32 100664320) #7, !srcloc !69
  %242 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %mmio, align 4
  %add.ptr8.i.i116.i = getelementptr i8, ptr %243, i32 136
  %244 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i116.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %245 = and i32 %244, -81854464
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %246 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %mmio, align 4
  %add.ptr17.i.i118.i = getelementptr i8, ptr %247, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i118.i, i32 %245) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %d) #7
  br label %do.body29

do.body29:                                        ; preds = %if.then47.i, %if.end43.i.do.body29_crit_edge, %if.end35.i.do.body29_crit_edge, %s626_handle_eos_interrupt.exit, %do.body1.do.body29_crit_edge
  %irqstatus.0 = phi i32 [ %4, %do.body1.do.body29_crit_edge ], [ %spec.select, %s626_handle_eos_interrupt.exit ], [ %4, %if.end35.i.do.body29_crit_edge ], [ %4, %if.end43.i.do.body29_crit_edge ], [ %4, %if.then47.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  call void @arm_heavy_mb() #7
  %248 = call i32 @llvm.bswap.i32(i32 %irqstatus.0)
  %249 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %mmio, align 4
  %add.ptr33 = getelementptr i8, ptr %250, i32 220
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %248) #7, !srcloc !69
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body29 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s626_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %2 = and i32 %1, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  %3 = shl i32 %1, 8
  %adc_spec.0.v = select i1 %cmp, i32 240, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -2080373760) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %.masked = and i32 %3, 65280
  %conv3.i = or i32 %adc_spec.0.v, %.masked
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #7
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %6) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i150 = getelementptr i8, ptr %10, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 -2046819328) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i152 = getelementptr i8, ptr %12, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i152, i32 %6) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %n12 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %13 = ptrtoint ptr %n12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp13156.not = icmp eq i32 %14, 0
  br i1 %cmp13156.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end52.for.body_crit_edge, %entry.for.body_crit_edge
  %n.0157 = phi i32 [ %inc, %if.end52.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 224
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !79
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %and17 = and i32 %18, -4097
  %19 = tail call i32 @llvm.bswap.i32(i32 %and17)
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %add.ptr19 = getelementptr i8, ptr %21, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %19) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 4
  %add.ptr25 = getelementptr i8, ptr %23, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %19) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 4
  %add.ptr31 = getelementptr i8, ptr %25, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %19) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %or35 = or i32 %18, 4096
  %26 = tail call i32 @llvm.bswap.i32(i32 %or35)
  %27 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i, align 4
  %add.ptr37 = getelementptr i8, ptr %28, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %26) #7, !srcloc !69
  %call38 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @s626_ai_eoc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool.not = icmp eq i32 %call38, 0
  br i1 %tobool.not, label %if.end40, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0157)
  %cmp41.not = icmp eq i32 %n.0157, 0
  br i1 %cmp41.not, label %if.end40.if.end52_crit_edge, label %if.then43

if.end40.if.end52_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i, align 4
  %add.ptr47 = getelementptr i8, ptr %30, i32 324
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #7, !srcloc !79
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %shr.i = lshr i32 %32, 18
  %xor.i = xor i32 %shr.i, 8192
  %sub = add i32 %n.0157, -1
  %arrayidx = getelementptr i32, ptr %data, i32 %sub
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %xor.i, ptr %arrayidx, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then43, %if.end40.if.end52_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 858992) #7
  %inc = add nuw i32 %n.0157, 1
  %35 = ptrtoint ptr %n12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n12, align 4
  %cmp13 = icmp ult i32 %inc, %36
  br i1 %cmp13, label %if.end52.for.body_crit_edge, label %if.end52.for.end_crit_edge

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end52.for.end_crit_edge, %entry.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %if.end52.for.end_crit_edge ]
  %37 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio.i, align 4
  %add.ptr56 = getelementptr i8, ptr %38, i32 224
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #7, !srcloc !79
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %and63 = and i32 %40, -4097
  %41 = tail call i32 @llvm.bswap.i32(i32 %and63)
  %42 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i, align 4
  %add.ptr65 = getelementptr i8, ptr %43, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %41) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i, align 4
  %add.ptr71 = getelementptr i8, ptr %45, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %41) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i, align 4
  %add.ptr77 = getelementptr i8, ptr %47, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %41) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %or81 = or i32 %40, 4096
  %48 = tail call i32 @llvm.bswap.i32(i32 %or81)
  %49 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio.i, align 4
  %add.ptr83 = getelementptr i8, ptr %50, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %48) #7, !srcloc !69
  %call84 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @s626_ai_eoc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end87:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0.lcssa)
  %cmp88.not = icmp eq i32 %n.0.lcssa, 0
  br i1 %cmp88.not, label %if.end87.cleanup_crit_edge, label %if.then90

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio.i, align 4
  %add.ptr94 = getelementptr i8, ptr %52, i32 324
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr94) #7, !srcloc !79
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %shr.i153 = lshr i32 %54, 18
  %xor.i154 = xor i32 %shr.i153, 8192
  %sub99 = add i32 %n.0.lcssa, -1
  %arrayidx100 = getelementptr i32, ptr %data, i32 %sub99
  %55 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %xor.i154, ptr %arrayidx100, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %if.end87.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call84, %for.end.cleanup_crit_edge ], [ %n.0.lcssa, %if.then90 ], [ 0, %if.end87.cleanup_crit_edge ], [ %call38, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s626_ai_cmd(ptr noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  %ppl = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ppl) #7
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = call ptr @memset(ptr %ppl, i32 255, i32 16)
  %3 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %async, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.body2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %7 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #10
  br label %cleanup

do.body2:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 4
  %add.ptr9 = getelementptr i8, ptr %12, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 1073741840) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -2013264896) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %16, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 0) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %18, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 1174406144) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio, align 4
  %add.ptr5.i3.i = getelementptr i8, ptr %20, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i3.i, i32 -65536) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio, align 4
  %add.ptr.i2.1.i = getelementptr i8, ptr %22, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.1.i, i32 1442841600) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio, align 4
  %add.ptr5.i3.1.i = getelementptr i8, ptr %24, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i3.1.i, i32 -65536) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio, align 4
  %add.ptr.i2.2.i = getelementptr i8, ptr %26, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.2.i, i32 1711277056) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio, align 4
  %add.ptr5.i3.2.i = getelementptr i8, ptr %28, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i3.2.i, i32 -65536) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %1, align 4
  %chanlist_len.i = getelementptr inbounds %struct.comedi_async, ptr %4, i32 0, i32 17, i32 13
  %30 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chanlist_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp2.not.i = icmp eq i32 %31, 0
  br i1 %cmp2.not.i, label %do.body2.s626_ai_load_polllist.exit_crit_edge, label %for.body.lr.ph.i

do.body2.s626_ai_load_polllist.exit_crit_edge:    ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_ai_load_polllist.exit

for.body.lr.ph.i:                                 ; preds = %do.body2
  %chanlist.i = getelementptr inbounds %struct.comedi_async, ptr %4, i32 0, i32 17, i32 12
  %32 = ptrtoint ptr %chanlist.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chanlist.i, align 4
  %34 = ptrtoint ptr %chanlist_len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chanlist_len.i, align 4
  %umax = call i32 @llvm.umax.i32(i32 %35, i32 1)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %33, i32 %n.03.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i, align 4
  %38 = and i32 %37, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp1.i = icmp eq i32 %38, 0
  %39 = trunc i32 %37 to i8
  %conv.i = or i8 %39, 16
  %conv10.sink.i = select i1 %cmp1.i, i8 %conv.i, i8 %39
  %40 = getelementptr i8, ptr %ppl, i32 %n.03.i
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv10.sink.i, ptr %40, align 1
  %inc.i = add nuw i32 %n.03.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %umax
  br i1 %exitcond.not, label %if.then14.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.then14.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = getelementptr i8, ptr %ppl, i32 %n.03.i
  %43 = or i8 %conv10.sink.i, -128
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %42, align 1
  br label %s626_ai_load_polllist.exit

s626_ai_load_polllist.exit:                       ; preds = %if.then14.i, %do.body2.s626_ai_load_polllist.exit_crit_edge
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %1, align 4
  %ai_convert_count = getelementptr inbounds %struct.s626_private, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %ai_convert_count to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %ai_convert_count, align 4
  %scan_begin_src = getelementptr inbounds %struct.comedi_async, ptr %4, i32 0, i32 17, i32 4
  %47 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %scan_begin_src, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %48, label %s626_ai_load_polllist.exit.sw.epilog_crit_edge [
    i32 64, label %sw.bb14
    i32 16, label %sw.bb
  ]

s626_ai_load_polllist.exit.sw.epilog_crit_edge:   ; preds = %s626_ai_load_polllist.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %s626_ai_load_polllist.exit
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %4, i32 0, i32 17, i32 5
  %flags = getelementptr inbounds %struct.comedi_async, ptr %4, i32 0, i32 17, i32 1
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 4
  %and.i = and i32 %51, 196608
  %52 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %and.i, label %sw.default.i [
    i32 131072, label %sw.bb4.i
    i32 65536, label %sw.bb2.i
  ]

sw.default.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %scan_begin_arg, align 4
  %add.i = add i32 %54, 250
  br label %s626_ns_to_timer.exit

sw.bb2.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %scan_begin_arg, align 4
  br label %s626_ns_to_timer.exit

sw.bb4.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %scan_begin_arg, align 4
  %sub.i = add i32 %58, 499
  br label %s626_ns_to_timer.exit

s626_ns_to_timer.exit:                            ; preds = %sw.bb4.i, %sw.bb2.i, %sw.default.i
  %divider.0.in.i = phi i32 [ %add.i, %sw.default.i ], [ %56, %sw.bb2.i ], [ %sub.i, %sw.bb4.i ]
  %divider.0.i = udiv i32 %divider.0.in.i, 500
  %mul.i = mul nuw i32 %divider.0.i, 500
  %59 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mul.i, ptr %scan_begin_arg, align 4
  %sub7.i = add nsw i32 %divider.0.i, -1
  tail call fastcc void @s626_timer_load(ptr noundef %dev, i32 noundef 5, i32 noundef %sub7.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i87 = getelementptr i8, ptr %61, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i87, i32 167773440) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %62 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %63, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 167773184) #7, !srcloc !69
  %64 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %65, i32 136
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %67 = and i32 %66, -81854464
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %68 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %69, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i, i32 %67) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  br label %sw.epilog

sw.bb14:                                          ; preds = %s626_ai_load_polllist.exit
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %4, i32 0, i32 17, i32 2
  %70 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %71)
  %cmp.not = icmp eq i32 %71, 64
  br i1 %cmp.not, label %sw.bb14.sw.epilog_crit_edge, label %if.then15

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then15:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  %scan_begin_arg16 = getelementptr inbounds %struct.comedi_async, ptr %4, i32 0, i32 17, i32 5
  %72 = ptrtoint ptr %scan_begin_arg16 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %scan_begin_arg16, align 4
  tail call fastcc void @s626_dio_set_irq(ptr noundef %dev, i32 noundef %73)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then15, %sw.bb14.sw.epilog_crit_edge, %s626_ns_to_timer.exit, %s626_ai_load_polllist.exit.sw.epilog_crit_edge
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %4, i32 0, i32 17, i32 6
  %74 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %convert_src, align 4
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %75, label %sw.epilog.sw.epilog31_crit_edge [
    i32 64, label %sw.bb22
    i32 16, label %sw.bb19
  ]

sw.epilog.sw.epilog31_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog31

sw.bb19:                                          ; preds = %sw.epilog
  %convert_arg = getelementptr inbounds %struct.comedi_async, ptr %4, i32 0, i32 17, i32 7
  %flags20 = getelementptr inbounds %struct.comedi_async, ptr %4, i32 0, i32 17, i32 1
  %77 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags20, align 4
  %and.i88 = and i32 %78, 196608
  %79 = zext i32 %and.i88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %and.i88, label %sw.default.i90 [
    i32 131072, label %sw.bb4.i93
    i32 65536, label %sw.bb2.i91
  ]

sw.default.i90:                                   ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %convert_arg, align 4
  %add.i89 = add i32 %81, 250
  br label %s626_ns_to_timer.exit98

sw.bb2.i91:                                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %convert_arg, align 4
  br label %s626_ns_to_timer.exit98

sw.bb4.i93:                                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %convert_arg, align 4
  %sub.i92 = add i32 %85, 499
  br label %s626_ns_to_timer.exit98

s626_ns_to_timer.exit98:                          ; preds = %sw.bb4.i93, %sw.bb2.i91, %sw.default.i90
  %divider.0.in.i94 = phi i32 [ %add.i89, %sw.default.i90 ], [ %83, %sw.bb2.i91 ], [ %sub.i92, %sw.bb4.i93 ]
  %divider.0.i95 = udiv i32 %divider.0.in.i94, 500
  %mul.i96 = mul nuw i32 %divider.0.i95, 500
  %86 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %mul.i96, ptr %convert_arg, align 4
  %sub7.i97 = add nsw i32 %divider.0.i95, -1
  tail call fastcc void @s626_timer_load(ptr noundef %dev, i32 noundef 4, i32 noundef %sub7.i97)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %87 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i100 = getelementptr i8, ptr %88, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i100, i32 100664576) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %89 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mmio, align 4
  %add.ptr6.i.i101 = getelementptr i8, ptr %90, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i101, i32 100664320) #7, !srcloc !69
  %91 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio, align 4
  %add.ptr8.i.i102 = getelementptr i8, ptr %92, i32 136
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i102) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %94 = and i32 %93, -81854464
  %95 = or i32 %94, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %96 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mmio, align 4
  %add.ptr17.i.i104 = getelementptr i8, ptr %97, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i104, i32 %95) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  br label %sw.epilog31

sw.bb22:                                          ; preds = %sw.epilog
  %98 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %99)
  %cmp24.not = icmp eq i32 %99, 64
  br i1 %cmp24.not, label %sw.bb22.sw.epilog31_crit_edge, label %land.lhs.true

sw.bb22.sw.epilog31_crit_edge:                    ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog31

land.lhs.true:                                    ; preds = %sw.bb22
  %start_src25 = getelementptr inbounds %struct.comedi_async, ptr %4, i32 0, i32 17, i32 2
  %100 = ptrtoint ptr %start_src25 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %start_src25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %101)
  %cmp26 = icmp eq i32 %101, 64
  br i1 %cmp26, label %if.then27, label %land.lhs.true.sw.epilog31_crit_edge

land.lhs.true.sw.epilog31_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog31

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %convert_arg28 = getelementptr inbounds %struct.comedi_async, ptr %4, i32 0, i32 17, i32 7
  %102 = ptrtoint ptr %convert_arg28 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %convert_arg28, align 4
  tail call fastcc void @s626_dio_set_irq(ptr noundef %dev, i32 noundef %103)
  br label %sw.epilog31

sw.epilog31:                                      ; preds = %if.then27, %land.lhs.true.sw.epilog31_crit_edge, %sw.bb22.sw.epilog31_crit_edge, %s626_ns_to_timer.exit98, %sw.epilog.sw.epilog31_crit_edge
  %104 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %private, align 4
  %read_subdev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %106 = ptrtoint ptr %read_subdev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %read_subdev.i, align 4
  %async.i = getelementptr inbounds %struct.comedi_subdevice, ptr %107, i32 0, i32 7
  %108 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %async.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  tail call void @arm_heavy_mb() #7
  %110 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mmio, align 4
  %add.ptr.i.i106 = getelementptr i8, ptr %111, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i106, i32 32) #7, !srcloc !69
  %rps_buf.i = getelementptr inbounds %struct.s626_private, ptr %105, i32 0, i32 6
  %logical_base.i = getelementptr inbounds %struct.s626_private, ptr %105, i32 0, i32 6, i32 1
  %112 = ptrtoint ptr %logical_base.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %logical_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  %114 = ptrtoint ptr %rps_buf.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rps_buf.i, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #7
  %117 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mmio, align 4
  %add.ptr.i = getelementptr i8, ptr %118, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %116) #7, !srcloc !69
  %scan_begin_src.i = getelementptr inbounds %struct.comedi_async, ptr %109, i32 0, i32 17, i32 4
  %119 = ptrtoint ptr %scan_begin_src.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %scan_begin_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %120)
  %cmp.not.i = icmp eq i32 %120, 4
  br i1 %cmp.not.i, label %sw.epilog31.if.end.i_crit_edge, label %if.then.i

sw.epilog31.if.end.i_crit_edge:                   ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i = getelementptr i32, ptr %113, i32 1
  %121 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 538968064, ptr %113, align 4
  %incdec.ptr3.i = getelementptr i32, ptr %113, i32 2
  %122 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 2097152, ptr %incdec.ptr.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.epilog31.if.end.i_crit_edge
  %rps.0.i = phi ptr [ %incdec.ptr3.i, %if.then.i ], [ %113, %sw.epilog31.if.end.i_crit_edge ]
  %incdec.ptr4.i = getelementptr i32, ptr %rps.0.i, i32 1
  %123 = ptrtoint ptr %rps.0.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 -1879047904, ptr %rps.0.i, align 4
  %incdec.ptr5.i = getelementptr i32, ptr %rps.0.i, i32 2
  %124 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 262276, ptr %incdec.ptr4.i, align 4
  %incdec.ptr6.i = getelementptr i32, ptr %rps.0.i, i32 3
  %125 = ptrtoint ptr %incdec.ptr5.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -1879047902, ptr %incdec.ptr5.i, align 4
  %incdec.ptr7.i = getelementptr i32, ptr %rps.0.i, i32 4
  %126 = ptrtoint ptr %incdec.ptr6.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 240, ptr %incdec.ptr6.i, align 4
  %incdec.ptr8.i = getelementptr i32, ptr %rps.0.i, i32 5
  %127 = ptrtoint ptr %incdec.ptr7.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 2, ptr %incdec.ptr7.i, align 4
  %incdec.ptr9.i = getelementptr i32, ptr %rps.0.i, i32 6
  %128 = ptrtoint ptr %incdec.ptr8.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1073741826, ptr %incdec.ptr8.i, align 4
  %incdec.ptr10.i = getelementptr i32, ptr %rps.0.i, i32 7
  %129 = ptrtoint ptr %incdec.ptr9.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 536870914, ptr %incdec.ptr9.i, align 4
  %adc_items.i = getelementptr inbounds %struct.s626_private, ptr %105, i32 0, i32 5
  %convert_src.i = getelementptr inbounds %struct.comedi_async, ptr %109, i32 0, i32 17, i32 6
  %ana_buf.i = getelementptr inbounds %struct.s626_private, ptr %105, i32 0, i32 7
  %130 = ptrtoint ptr %adc_items.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %adc_items.i, align 2
  br label %for.body.i110

for.body.i110:                                    ; preds = %for.inc69.i.for.body.i110_crit_edge, %if.end.i
  %rps.1181.i = phi ptr [ %incdec.ptr10.i, %if.end.i ], [ %incdec.ptr60.i, %for.inc69.i.for.body.i110_crit_edge ]
  %ppl.addr.0180.i = phi ptr [ %ppl, %if.end.i ], [ %incdec.ptr61.i, %for.inc69.i.for.body.i110_crit_edge ]
  %131 = ptrtoint ptr %ppl.addr.0180.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %ppl.addr.0180.i, align 1
  %conv14.i = zext i8 %132 to i32
  %shl.i = shl nuw nsw i32 %conv14.i, 8
  %and.i107 = and i32 %conv14.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i107)
  %tobool.not.i = icmp eq i32 %and.i107, 0
  %cond.i = select i1 %tobool.not.i, i32 160, i32 240
  %or.i = or i32 %cond.i, %shl.i
  %incdec.ptr16.i = getelementptr i32, ptr %rps.1181.i, i32 1
  %133 = ptrtoint ptr %rps.1181.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1879047904, ptr %rps.1181.i, align 4
  %incdec.ptr17.i = getelementptr i32, ptr %rps.1181.i, i32 2
  %134 = ptrtoint ptr %incdec.ptr16.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 262276, ptr %incdec.ptr16.i, align 4
  %incdec.ptr18.i = getelementptr i32, ptr %rps.1181.i, i32 3
  %135 = ptrtoint ptr %incdec.ptr17.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 -1879047902, ptr %incdec.ptr17.i, align 4
  %incdec.ptr19.i = getelementptr i32, ptr %rps.1181.i, i32 4
  %136 = ptrtoint ptr %incdec.ptr18.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %or.i, ptr %incdec.ptr18.i, align 4
  %incdec.ptr20.i = getelementptr i32, ptr %rps.1181.i, i32 5
  %137 = ptrtoint ptr %incdec.ptr19.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 2, ptr %incdec.ptr19.i, align 4
  %incdec.ptr21.i = getelementptr i32, ptr %rps.1181.i, i32 6
  %138 = ptrtoint ptr %incdec.ptr20.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1073741826, ptr %incdec.ptr20.i, align 4
  %incdec.ptr22.i = getelementptr i32, ptr %rps.1181.i, i32 7
  %139 = ptrtoint ptr %incdec.ptr21.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 536870914, ptr %incdec.ptr21.i, align 4
  %incdec.ptr23.i = getelementptr i32, ptr %rps.1181.i, i32 8
  %140 = ptrtoint ptr %incdec.ptr22.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -1879047904, ptr %incdec.ptr22.i, align 4
  %incdec.ptr24.i = getelementptr i32, ptr %rps.1181.i, i32 9
  %141 = ptrtoint ptr %incdec.ptr23.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 262278, ptr %incdec.ptr23.i, align 4
  %incdec.ptr25.i = getelementptr i32, ptr %rps.1181.i, i32 10
  %142 = ptrtoint ptr %incdec.ptr24.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -1879047902, ptr %incdec.ptr24.i, align 4
  %incdec.ptr26.i = getelementptr i32, ptr %rps.1181.i, i32 11
  %143 = ptrtoint ptr %incdec.ptr25.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %or.i, ptr %incdec.ptr25.i, align 4
  %incdec.ptr27.i = getelementptr i32, ptr %rps.1181.i, i32 12
  %144 = ptrtoint ptr %incdec.ptr26.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 2, ptr %incdec.ptr26.i, align 4
  %incdec.ptr28.i = getelementptr i32, ptr %rps.1181.i, i32 13
  %145 = ptrtoint ptr %incdec.ptr27.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1073741826, ptr %incdec.ptr27.i, align 4
  %incdec.ptr29.i = getelementptr i32, ptr %rps.1181.i, i32 14
  %146 = ptrtoint ptr %incdec.ptr28.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 536870914, ptr %incdec.ptr28.i, align 4
  %147 = ptrtoint ptr %rps_buf.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %rps_buf.i, align 4
  %149 = ptrtoint ptr %incdec.ptr29.i to i32
  %150 = ptrtoint ptr %logical_base.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %logical_base.i, align 4
  %152 = ptrtoint ptr %151 to i32
  %sub.i108 = add i32 %148, %149
  %add.i109 = sub i32 %sub.i108, %152
  %add39.i = add i32 %add.i109, 8
  %incdec.ptr40.i = getelementptr i32, ptr %rps.1181.i, i32 15
  %153 = ptrtoint ptr %incdec.ptr29.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 -2147483648, ptr %incdec.ptr29.i, align 4
  %incdec.ptr41.i = getelementptr i32, ptr %rps.1181.i, i32 16
  %154 = ptrtoint ptr %incdec.ptr40.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %add39.i, ptr %incdec.ptr40.i, align 4
  %add39.1.i = add i32 %add.i109, 16
  %incdec.ptr40.1.i = getelementptr i32, ptr %rps.1181.i, i32 17
  %155 = ptrtoint ptr %incdec.ptr41.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 -2147483648, ptr %incdec.ptr41.i, align 4
  %incdec.ptr41.1.i = getelementptr i32, ptr %rps.1181.i, i32 18
  %156 = ptrtoint ptr %incdec.ptr40.1.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %add39.1.i, ptr %incdec.ptr40.1.i, align 4
  %add39.2.i = add i32 %add.i109, 24
  %incdec.ptr40.2.i = getelementptr i32, ptr %rps.1181.i, i32 19
  %157 = ptrtoint ptr %incdec.ptr41.1.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 -2147483648, ptr %incdec.ptr41.1.i, align 4
  %incdec.ptr41.2.i = getelementptr i32, ptr %rps.1181.i, i32 20
  %158 = ptrtoint ptr %incdec.ptr40.2.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %add39.2.i, ptr %incdec.ptr40.2.i, align 4
  %add39.3.i = add i32 %add.i109, 32
  %incdec.ptr40.3.i = getelementptr i32, ptr %rps.1181.i, i32 21
  %159 = ptrtoint ptr %incdec.ptr41.2.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 -2147483648, ptr %incdec.ptr41.2.i, align 4
  %incdec.ptr41.3.i = getelementptr i32, ptr %rps.1181.i, i32 22
  %160 = ptrtoint ptr %incdec.ptr40.3.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %add39.3.i, ptr %incdec.ptr40.3.i, align 4
  %add39.4.i = add i32 %add.i109, 40
  %incdec.ptr40.4.i = getelementptr i32, ptr %rps.1181.i, i32 23
  %161 = ptrtoint ptr %incdec.ptr41.3.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 -2147483648, ptr %incdec.ptr41.3.i, align 4
  %incdec.ptr41.4.i = getelementptr i32, ptr %rps.1181.i, i32 24
  %162 = ptrtoint ptr %incdec.ptr40.4.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %add39.4.i, ptr %incdec.ptr40.4.i, align 4
  %add39.5.i = add i32 %add.i109, 48
  %incdec.ptr40.5.i = getelementptr i32, ptr %rps.1181.i, i32 25
  %163 = ptrtoint ptr %incdec.ptr41.4.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 -2147483648, ptr %incdec.ptr41.4.i, align 4
  %incdec.ptr41.5.i = getelementptr i32, ptr %rps.1181.i, i32 26
  %164 = ptrtoint ptr %incdec.ptr40.5.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %add39.5.i, ptr %incdec.ptr40.5.i, align 4
  %add39.6.i = add i32 %add.i109, 56
  %incdec.ptr40.6.i = getelementptr i32, ptr %rps.1181.i, i32 27
  %165 = ptrtoint ptr %incdec.ptr41.5.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 -2147483648, ptr %incdec.ptr41.5.i, align 4
  %incdec.ptr41.6.i = getelementptr i32, ptr %rps.1181.i, i32 28
  %166 = ptrtoint ptr %incdec.ptr40.6.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %add39.6.i, ptr %incdec.ptr40.6.i, align 4
  %add39.7.i = add i32 %add.i109, 64
  %incdec.ptr40.7.i = getelementptr i32, ptr %rps.1181.i, i32 29
  %167 = ptrtoint ptr %incdec.ptr41.6.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 -2147483648, ptr %incdec.ptr41.6.i, align 4
  %incdec.ptr41.7.i = getelementptr i32, ptr %rps.1181.i, i32 30
  %168 = ptrtoint ptr %incdec.ptr40.7.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %add39.7.i, ptr %incdec.ptr40.7.i, align 4
  %add39.8.i = add i32 %add.i109, 72
  %incdec.ptr40.8.i = getelementptr i32, ptr %rps.1181.i, i32 31
  %169 = ptrtoint ptr %incdec.ptr41.7.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 -2147483648, ptr %incdec.ptr41.7.i, align 4
  %incdec.ptr41.8.i = getelementptr i32, ptr %rps.1181.i, i32 32
  %170 = ptrtoint ptr %incdec.ptr40.8.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %add39.8.i, ptr %incdec.ptr40.8.i, align 4
  %add39.9.i = add i32 %add.i109, 80
  %incdec.ptr40.9.i = getelementptr i32, ptr %rps.1181.i, i32 33
  %171 = ptrtoint ptr %incdec.ptr41.8.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 -2147483648, ptr %incdec.ptr41.8.i, align 4
  %incdec.ptr41.9.i = getelementptr i32, ptr %rps.1181.i, i32 34
  %172 = ptrtoint ptr %incdec.ptr40.9.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %add39.9.i, ptr %incdec.ptr40.9.i, align 4
  %add39.10.i = add i32 %add.i109, 88
  %incdec.ptr40.10.i = getelementptr i32, ptr %rps.1181.i, i32 35
  %173 = ptrtoint ptr %incdec.ptr41.9.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 -2147483648, ptr %incdec.ptr41.9.i, align 4
  %incdec.ptr41.10.i = getelementptr i32, ptr %rps.1181.i, i32 36
  %174 = ptrtoint ptr %incdec.ptr40.10.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %add39.10.i, ptr %incdec.ptr40.10.i, align 4
  %add39.11.i = add i32 %add.i109, 96
  %incdec.ptr40.11.i = getelementptr i32, ptr %rps.1181.i, i32 37
  %175 = ptrtoint ptr %incdec.ptr41.10.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 -2147483648, ptr %incdec.ptr41.10.i, align 4
  %incdec.ptr41.11.i = getelementptr i32, ptr %rps.1181.i, i32 38
  %176 = ptrtoint ptr %incdec.ptr40.11.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %add39.11.i, ptr %incdec.ptr40.11.i, align 4
  %add39.12.i = add i32 %add.i109, 104
  %incdec.ptr40.12.i = getelementptr i32, ptr %rps.1181.i, i32 39
  %177 = ptrtoint ptr %incdec.ptr41.11.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 -2147483648, ptr %incdec.ptr41.11.i, align 4
  %incdec.ptr41.12.i = getelementptr i32, ptr %rps.1181.i, i32 40
  %178 = ptrtoint ptr %incdec.ptr40.12.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %add39.12.i, ptr %incdec.ptr40.12.i, align 4
  %add39.13.i = add i32 %add.i109, 112
  %incdec.ptr40.13.i = getelementptr i32, ptr %rps.1181.i, i32 41
  %179 = ptrtoint ptr %incdec.ptr41.12.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 -2147483648, ptr %incdec.ptr41.12.i, align 4
  %incdec.ptr41.13.i = getelementptr i32, ptr %rps.1181.i, i32 42
  %180 = ptrtoint ptr %incdec.ptr40.13.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %add39.13.i, ptr %incdec.ptr40.13.i, align 4
  %add39.14.i = add i32 %add.i109, 120
  %incdec.ptr40.14.i = getelementptr i32, ptr %rps.1181.i, i32 43
  %181 = ptrtoint ptr %incdec.ptr41.13.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 -2147483648, ptr %incdec.ptr41.13.i, align 4
  %incdec.ptr41.14.i = getelementptr i32, ptr %rps.1181.i, i32 44
  %182 = ptrtoint ptr %incdec.ptr40.14.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %add39.14.i, ptr %incdec.ptr40.14.i, align 4
  %add39.15.i = add i32 %add.i109, 128
  %incdec.ptr40.15.i = getelementptr i32, ptr %rps.1181.i, i32 45
  %183 = ptrtoint ptr %incdec.ptr41.14.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 -2147483648, ptr %incdec.ptr41.14.i, align 4
  %incdec.ptr41.15.i = getelementptr i32, ptr %rps.1181.i, i32 46
  %184 = ptrtoint ptr %incdec.ptr40.15.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %add39.15.i, ptr %incdec.ptr40.15.i, align 4
  %add39.16.i = add i32 %add.i109, 136
  %incdec.ptr40.16.i = getelementptr i32, ptr %rps.1181.i, i32 47
  %185 = ptrtoint ptr %incdec.ptr41.15.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 -2147483648, ptr %incdec.ptr41.15.i, align 4
  %incdec.ptr41.16.i = getelementptr i32, ptr %rps.1181.i, i32 48
  %186 = ptrtoint ptr %incdec.ptr40.16.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %add39.16.i, ptr %incdec.ptr40.16.i, align 4
  %add39.17.i = add i32 %add.i109, 144
  %incdec.ptr40.17.i = getelementptr i32, ptr %rps.1181.i, i32 49
  %187 = ptrtoint ptr %incdec.ptr41.16.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 -2147483648, ptr %incdec.ptr41.16.i, align 4
  %incdec.ptr41.17.i = getelementptr i32, ptr %rps.1181.i, i32 50
  %188 = ptrtoint ptr %incdec.ptr40.17.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %add39.17.i, ptr %incdec.ptr40.17.i, align 4
  %add39.18.i = add i32 %add.i109, 152
  %incdec.ptr40.18.i = getelementptr i32, ptr %rps.1181.i, i32 51
  %189 = ptrtoint ptr %incdec.ptr41.17.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 -2147483648, ptr %incdec.ptr41.17.i, align 4
  %incdec.ptr41.18.i = getelementptr i32, ptr %rps.1181.i, i32 52
  %190 = ptrtoint ptr %incdec.ptr40.18.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %add39.18.i, ptr %incdec.ptr40.18.i, align 4
  %add39.19.i = add i32 %add.i109, 160
  %incdec.ptr40.19.i = getelementptr i32, ptr %rps.1181.i, i32 53
  %191 = ptrtoint ptr %incdec.ptr41.18.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 -2147483648, ptr %incdec.ptr41.18.i, align 4
  %incdec.ptr41.19.i = getelementptr i32, ptr %rps.1181.i, i32 54
  %192 = ptrtoint ptr %incdec.ptr40.19.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %add39.19.i, ptr %incdec.ptr40.19.i, align 4
  %193 = ptrtoint ptr %convert_src.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %convert_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %194)
  %cmp42.not.i = icmp eq i32 %194, 2
  br i1 %cmp42.not.i, label %for.body.i110.if.end47.i_crit_edge, label %if.then44.i

for.body.i110.if.end47.i_crit_edge:               ; preds = %for.body.i110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i

if.then44.i:                                      ; preds = %for.body.i110
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr45.i = getelementptr i32, ptr %rps.1181.i, i32 55
  %195 = ptrtoint ptr %incdec.ptr41.19.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 538968064, ptr %incdec.ptr41.19.i, align 4
  %incdec.ptr46.i = getelementptr i32, ptr %rps.1181.i, i32 56
  %196 = ptrtoint ptr %incdec.ptr45.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 2097152, ptr %incdec.ptr45.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then44.i, %for.body.i110.if.end47.i_crit_edge
  %rps.3.i = phi ptr [ %incdec.ptr46.i, %if.then44.i ], [ %incdec.ptr41.19.i, %for.body.i110.if.end47.i_crit_edge ]
  %incdec.ptr48.i = getelementptr i32, ptr %rps.3.i, i32 1
  %197 = ptrtoint ptr %rps.3.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 -1879047880, ptr %rps.3.i, align 4
  %incdec.ptr49.i = getelementptr i32, ptr %rps.3.i, i32 2
  %198 = ptrtoint ptr %incdec.ptr48.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 268451840, ptr %incdec.ptr48.i, align 4
  %incdec.ptr50.i = getelementptr i32, ptr %rps.3.i, i32 3
  %199 = ptrtoint ptr %incdec.ptr49.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %incdec.ptr49.i, align 4
  %incdec.ptr51.i = getelementptr i32, ptr %rps.3.i, i32 4
  %200 = ptrtoint ptr %incdec.ptr50.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 -1879047880, ptr %incdec.ptr50.i, align 4
  %incdec.ptr52.i = getelementptr i32, ptr %rps.3.i, i32 5
  %201 = ptrtoint ptr %incdec.ptr51.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 268455936, ptr %incdec.ptr51.i, align 4
  %incdec.ptr53.i = getelementptr i32, ptr %rps.3.i, i32 6
  %202 = ptrtoint ptr %incdec.ptr52.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 537395200, ptr %incdec.ptr52.i, align 4
  %incdec.ptr54.i = getelementptr i32, ptr %rps.3.i, i32 7
  %203 = ptrtoint ptr %incdec.ptr53.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 -1610612400, ptr %incdec.ptr53.i, align 4
  %204 = ptrtoint ptr %ana_buf.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %ana_buf.i, align 4
  %206 = ptrtoint ptr %adc_items.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %adc_items.i, align 2
  %conv57.i = zext i8 %207 to i32
  %shl58.i = shl nuw nsw i32 %conv57.i, 2
  %add59.i = add i32 %shl58.i, %205
  %incdec.ptr60.i = getelementptr i32, ptr %rps.3.i, i32 8
  %208 = ptrtoint ptr %incdec.ptr54.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %add59.i, ptr %incdec.ptr54.i, align 4
  %209 = ptrtoint ptr %ppl.addr.0180.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %ppl.addr.0180.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %210)
  %tobool64.not.i = icmp sgt i8 %210, -1
  br i1 %tobool64.not.i, label %for.inc69.i, label %if.then65.i

if.then65.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  %211 = ptrtoint ptr %adc_items.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %adc_items.i, align 2
  %inc67.i = add i8 %212, 1
  store i8 %inc67.i, ptr %adc_items.i, align 2
  br label %for.end72.i

for.inc69.i:                                      ; preds = %if.end47.i
  %incdec.ptr61.i = getelementptr i8, ptr %ppl.addr.0180.i, i32 1
  %213 = ptrtoint ptr %adc_items.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %adc_items.i, align 2
  %inc71.i = add i8 %214, 1
  store i8 %inc71.i, ptr %adc_items.i, align 2
  %cmp12.i = icmp ult i8 %inc71.i, 16
  br i1 %cmp12.i, label %for.inc69.i.for.body.i110_crit_edge, label %for.inc69.i.for.end72.i_crit_edge

for.inc69.i.for.end72.i_crit_edge:                ; preds = %for.inc69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end72.i

for.inc69.i.for.body.i110_crit_edge:              ; preds = %for.inc69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i110

for.end72.i:                                      ; preds = %for.inc69.i.for.end72.i_crit_edge, %if.then65.i
  %215 = call ptr @memset(ptr %incdec.ptr60.i, i32 0, i32 32)
  %uglygep186.i = getelementptr i32, ptr %rps.3.i, i32 16
  %incdec.ptr82.i = getelementptr i32, ptr %rps.3.i, i32 17
  %216 = ptrtoint ptr %uglygep186.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 -1879047880, ptr %uglygep186.i, align 4
  %incdec.ptr83.i = getelementptr i32, ptr %rps.3.i, i32 18
  %217 = ptrtoint ptr %incdec.ptr82.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 268451840, ptr %incdec.ptr82.i, align 4
  %incdec.ptr84.i = getelementptr i32, ptr %rps.3.i, i32 19
  %218 = ptrtoint ptr %incdec.ptr83.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 0, ptr %incdec.ptr83.i, align 4
  %incdec.ptr85.i = getelementptr i32, ptr %rps.3.i, i32 20
  %219 = ptrtoint ptr %incdec.ptr84.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 -1879047880, ptr %incdec.ptr84.i, align 4
  %incdec.ptr86.i = getelementptr i32, ptr %rps.3.i, i32 21
  %220 = ptrtoint ptr %incdec.ptr85.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 268455936, ptr %incdec.ptr85.i, align 4
  %incdec.ptr87.i = getelementptr i32, ptr %rps.3.i, i32 22
  %221 = ptrtoint ptr %incdec.ptr86.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 537395200, ptr %incdec.ptr86.i, align 4
  %incdec.ptr88.i = getelementptr i32, ptr %rps.3.i, i32 23
  %222 = ptrtoint ptr %incdec.ptr87.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 -1610612400, ptr %incdec.ptr87.i, align 4
  %223 = ptrtoint ptr %ana_buf.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %ana_buf.i, align 4
  %225 = ptrtoint ptr %adc_items.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %adc_items.i, align 2
  %conv92.i = zext i8 %226 to i32
  %shl93.i = shl nuw nsw i32 %conv92.i, 2
  %add94.i = add i32 %shl93.i, %224
  %incdec.ptr95.i = getelementptr i32, ptr %rps.3.i, i32 24
  %227 = ptrtoint ptr %incdec.ptr88.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %add94.i, ptr %incdec.ptr88.i, align 4
  %228 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %105, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %229)
  %cmp97.i = icmp eq i8 %229, 1
  br i1 %cmp97.i, label %if.then99.i, label %for.end72.i.s626_reset_adc.exit_crit_edge

for.end72.i.s626_reset_adc.exit_crit_edge:        ; preds = %for.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_reset_adc.exit

if.then99.i:                                      ; preds = %for.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr100.i = getelementptr i32, ptr %rps.3.i, i32 25
  %230 = ptrtoint ptr %incdec.ptr95.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 1610612736, ptr %incdec.ptr95.i, align 4
  br label %s626_reset_adc.exit

s626_reset_adc.exit:                              ; preds = %if.then99.i, %for.end72.i.s626_reset_adc.exit_crit_edge
  %rps.6.i = phi ptr [ %incdec.ptr100.i, %if.then99.i ], [ %incdec.ptr95.i, %for.end72.i.s626_reset_adc.exit_crit_edge ]
  %incdec.ptr102.i = getelementptr i32, ptr %rps.6.i, i32 1
  %231 = ptrtoint ptr %rps.6.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 -2147483648, ptr %rps.6.i, align 4
  %232 = ptrtoint ptr %rps_buf.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %rps_buf.i, align 4
  %234 = ptrtoint ptr %incdec.ptr102.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %incdec.ptr102.i, align 4
  %start_src33 = getelementptr inbounds %struct.comedi_async, ptr %4, i32 0, i32 17, i32 2
  %235 = ptrtoint ptr %start_src33 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %start_src33, align 4
  %237 = zext i32 %236 to i64
  call void @__sanitizer_cov_trace_switch(i64 %237, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %236, label %s626_reset_adc.exit.do.body44_crit_edge [
    i32 2, label %sw.bb34
    i32 64, label %sw.bb36
    i32 128, label %s626_reset_adc.exit.do.body44.sink.split_crit_edge
  ]

s626_reset_adc.exit.do.body44.sink.split_crit_edge: ; preds = %s626_reset_adc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body44.sink.split

s626_reset_adc.exit.do.body44_crit_edge:          ; preds = %s626_reset_adc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body44

sw.bb34:                                          ; preds = %s626_reset_adc.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %238 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %mmio, align 4
  %add.ptr.i111 = getelementptr i8, ptr %239, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 2097184) #7, !srcloc !69
  br label %do.body44.sink.split

sw.bb36:                                          ; preds = %s626_reset_adc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %start_arg = getelementptr inbounds %struct.comedi_async, ptr %4, i32 0, i32 17, i32 3
  %240 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %start_arg, align 4
  tail call fastcc void @s626_dio_set_irq(ptr noundef %dev, i32 noundef %241)
  br label %do.body44.sink.split

do.body44.sink.split:                             ; preds = %sw.bb36, %sw.bb34, %s626_reset_adc.exit.do.body44.sink.split_crit_edge
  %.sink = phi ptr [ null, %sw.bb34 ], [ null, %sw.bb36 ], [ @s626_ai_inttrig, %s626_reset_adc.exit.do.body44.sink.split_crit_edge ]
  %242 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %243, i32 0, i32 20
  %244 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %.sink, ptr %inttrig, align 4
  br label %do.body44

do.body44:                                        ; preds = %do.body44.sink.split, %s626_reset_adc.exit.do.body44_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void @arm_heavy_mb() #7
  %245 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %mmio, align 4
  %add.ptr48 = getelementptr i8, ptr %246, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 1073741840) #7, !srcloc !69
  br label %cleanup

cleanup:                                          ; preds = %do.body44, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %do.body44 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ppl) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s626_ai_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 194
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %1)
  %cmp1.not.i = icmp eq i32 %and.i, %1
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_begin_src, align 4
  %and.i174 = and i32 %3, 84
  store i32 %and.i174, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i174)
  %cmp.i175 = icmp ne i32 %and.i174, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i174, i32 %3)
  %cmp1.not.i176 = icmp eq i32 %and.i174, %3
  %or.cond.i177 = and i1 %cmp.i175, %cmp1.not.i176
  %4 = select i1 %or.cond.i, i1 %or.cond.i177, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i179 = and i32 %6, 82
  store i32 %and.i179, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i179)
  %cmp.i180 = icmp ne i32 %and.i179, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i179, i32 %6)
  %cmp1.not.i181 = icmp eq i32 %and.i179, %6
  %or.cond.i182 = and i1 %cmp.i180, %cmp1.not.i181
  %7 = select i1 %4, i1 %or.cond.i182, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i184 = and i32 %9, 32
  store i32 %and.i184, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i184)
  %cmp.i185 = icmp ne i32 %and.i184, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i184, i32 %9)
  %cmp1.not.i186 = icmp eq i32 %and.i184, %9
  %or.cond.i187 = and i1 %cmp.i185, %cmp1.not.i186
  %10 = select i1 %7, i1 %or.cond.i187, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i189 = and i32 %12, 33
  store i32 %and.i189, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i189)
  %cmp.i190 = icmp ne i32 %and.i189, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i189, i32 %12)
  %cmp1.not.i191 = icmp eq i32 %and.i189, %12
  %or.cond.i192 = and i1 %cmp.i190, %cmp1.not.i191
  %13 = select i1 %10, i1 %or.cond.i192, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %1) #7, !range !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  %15 = tail call i32 @llvm.ctpop.i32(i32 %3) #7, !range !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i194 = icmp ult i32 %15, 2
  %16 = select i1 %cmp.not.i, i1 %cmp.not.i194, i1 false
  %17 = tail call i32 @llvm.ctpop.i32(i32 %6) #7, !range !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i196 = icmp ult i32 %17, 2
  %18 = select i1 %16, i1 %cmp.not.i196, i1 false
  %19 = tail call i32 @llvm.ctpop.i32(i32 %12) #7, !range !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.not.i198 = icmp ult i32 %19, 2
  %20 = select i1 %18, i1 %cmp.not.i198, i1 false
  br i1 %20, label %if.end23, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %trunc = trunc i32 %1 to i8
  %21 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %trunc, label %if.end23.sw.epilog_crit_edge [
    i8 2, label %if.end23.sw.bb_crit_edge
    i8 -128, label %if.end23.sw.bb_crit_edge279
    i8 64, label %sw.bb27
  ]

if.end23.sw.bb_crit_edge279:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end23.sw.bb_crit_edge:                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end23.sw.bb_crit_edge, %if.end23.sw.bb_crit_edge279
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %22 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i200 = icmp eq i32 %23, 0
  br i1 %cmp.not.i200, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %start_arg, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end23
  %start_arg28 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %25 = ptrtoint ptr %start_arg28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %start_arg28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %26)
  %cmp.i202 = icmp ugt i32 %26, 39
  br i1 %cmp.i202, label %if.then.i203, label %sw.bb27.sw.epilog_crit_edge

sw.bb27.sw.epilog_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i203:                                     ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %start_arg28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 39, ptr %start_arg28, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i203, %sw.bb27.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge, %if.end23.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %if.end23.sw.epilog_crit_edge ], [ -22, %if.then.i ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ -22, %if.then.i203 ], [ 0, %sw.bb27.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp = icmp eq i32 %3, 64
  br i1 %cmp, label %if.then32, label %sw.epilog.if.end35_crit_edge

sw.epilog.if.end35_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then32:                                        ; preds = %sw.epilog
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %28 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %29)
  %cmp.i205 = icmp ugt i32 %29, 39
  br i1 %cmp.i205, label %if.then.i206, label %if.then32.comedi_check_trigger_arg_max.exit208_crit_edge

if.then32.comedi_check_trigger_arg_max.exit208_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_max.exit208

if.then.i206:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 39, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_max.exit208

comedi_check_trigger_arg_max.exit208:             ; preds = %if.then.i206, %if.then32.comedi_check_trigger_arg_max.exit208_crit_edge
  %retval.0.i207 = phi i32 [ -22, %if.then.i206 ], [ 0, %if.then32.comedi_check_trigger_arg_max.exit208_crit_edge ]
  %or34 = or i32 %retval.0.i207, %err.0
  br label %if.end35

if.end35:                                         ; preds = %comedi_check_trigger_arg_max.exit208, %sw.epilog.if.end35_crit_edge
  %err.1 = phi i32 [ %or34, %comedi_check_trigger_arg_max.exit208 ], [ %err.0, %sw.epilog.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp37 = icmp eq i32 %6, 64
  br i1 %cmp37, label %if.then38, label %if.end35.if.end41_crit_edge

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then38:                                        ; preds = %if.end35
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %31 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %32)
  %cmp.i209 = icmp ugt i32 %32, 39
  br i1 %cmp.i209, label %if.then.i210, label %if.then38.comedi_check_trigger_arg_max.exit212_crit_edge

if.then38.comedi_check_trigger_arg_max.exit212_crit_edge: ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_max.exit212

if.then.i210:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 39, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_max.exit212

comedi_check_trigger_arg_max.exit212:             ; preds = %if.then.i210, %if.then38.comedi_check_trigger_arg_max.exit212_crit_edge
  %retval.0.i211 = phi i32 [ -22, %if.then.i210 ], [ 0, %if.then38.comedi_check_trigger_arg_max.exit212_crit_edge ]
  %or40 = or i32 %retval.0.i211, %err.1
  br label %if.end41

if.end41:                                         ; preds = %comedi_check_trigger_arg_max.exit212, %if.end35.if.end41_crit_edge
  %err.2 = phi i32 [ %or40, %comedi_check_trigger_arg_max.exit212 ], [ %err.1, %if.end35.if.end41_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp43 = icmp eq i32 %3, 16
  br i1 %cmp43, label %if.then44, label %if.end41.if.end51_crit_edge

if.end41.if.end51_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then44:                                        ; preds = %if.end41
  %scan_begin_arg45 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %34 = ptrtoint ptr %scan_begin_arg45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scan_begin_arg45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %35)
  %cmp.i213 = icmp ult i32 %35, 200000
  br i1 %cmp.i213, label %comedi_check_trigger_arg_min.exit.thread, label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit.thread:         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %scan_begin_arg45 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 200000, ptr %scan_begin_arg45, align 4
  %or47272 = or i32 %err.2, -22
  br label %comedi_check_trigger_arg_max.exit219

comedi_check_trigger_arg_min.exit:                ; preds = %if.then44
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000000, i32 %35)
  %cmp.i216 = icmp ugt i32 %35, 2000000000
  br i1 %cmp.i216, label %if.then.i217, label %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_max.exit219_crit_edge

comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_max.exit219_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_max.exit219

if.then.i217:                                     ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %scan_begin_arg45 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2000000000, ptr %scan_begin_arg45, align 4
  br label %comedi_check_trigger_arg_max.exit219

comedi_check_trigger_arg_max.exit219:             ; preds = %if.then.i217, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_max.exit219_crit_edge, %comedi_check_trigger_arg_min.exit.thread
  %or47274 = phi i32 [ %err.2, %if.then.i217 ], [ %err.2, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_max.exit219_crit_edge ], [ %or47272, %comedi_check_trigger_arg_min.exit.thread ]
  %retval.0.i218 = phi i32 [ -22, %if.then.i217 ], [ 0, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_max.exit219_crit_edge ], [ 0, %comedi_check_trigger_arg_min.exit.thread ]
  %or50 = or i32 %retval.0.i218, %or47274
  br label %if.end51

if.end51:                                         ; preds = %comedi_check_trigger_arg_max.exit219, %if.end41.if.end51_crit_edge
  %err.3 = phi i32 [ %or50, %comedi_check_trigger_arg_max.exit219 ], [ %err.2, %if.end41.if.end51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp53 = icmp eq i32 %6, 16
  br i1 %cmp53, label %if.then54, label %if.end51.if.end62_crit_edge

if.end51.if.end62_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then54:                                        ; preds = %if.end51
  %convert_arg55 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %38 = ptrtoint ptr %convert_arg55 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %convert_arg55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %39)
  %cmp.i220 = icmp ult i32 %39, 200000
  br i1 %cmp.i220, label %comedi_check_trigger_arg_min.exit223.thread, label %comedi_check_trigger_arg_min.exit223

comedi_check_trigger_arg_min.exit223.thread:      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %convert_arg55 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 200000, ptr %convert_arg55, align 4
  %or57276 = or i32 %err.3, -22
  br label %comedi_check_trigger_arg_max.exit227

comedi_check_trigger_arg_min.exit223:             ; preds = %if.then54
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000000, i32 %39)
  %cmp.i224 = icmp ugt i32 %39, 2000000000
  br i1 %cmp.i224, label %if.then.i225, label %comedi_check_trigger_arg_min.exit223.comedi_check_trigger_arg_max.exit227_crit_edge

comedi_check_trigger_arg_min.exit223.comedi_check_trigger_arg_max.exit227_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit223
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_max.exit227

if.then.i225:                                     ; preds = %comedi_check_trigger_arg_min.exit223
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %convert_arg55 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2000000000, ptr %convert_arg55, align 4
  br label %comedi_check_trigger_arg_max.exit227

comedi_check_trigger_arg_max.exit227:             ; preds = %if.then.i225, %comedi_check_trigger_arg_min.exit223.comedi_check_trigger_arg_max.exit227_crit_edge, %comedi_check_trigger_arg_min.exit223.thread
  %or57278 = phi i32 [ %err.3, %if.then.i225 ], [ %err.3, %comedi_check_trigger_arg_min.exit223.comedi_check_trigger_arg_max.exit227_crit_edge ], [ %or57276, %comedi_check_trigger_arg_min.exit223.thread ]
  %retval.0.i226 = phi i32 [ -22, %if.then.i225 ], [ 0, %comedi_check_trigger_arg_min.exit223.comedi_check_trigger_arg_max.exit227_crit_edge ], [ 0, %comedi_check_trigger_arg_min.exit223.thread ]
  %or60 = or i32 %retval.0.i226, %or57278
  br label %if.end62

if.end62:                                         ; preds = %comedi_check_trigger_arg_max.exit227, %if.end51.if.end62_crit_edge
  %err.4 = phi i32 [ %or60, %comedi_check_trigger_arg_max.exit227 ], [ %err.3, %if.end51.if.end62_crit_edge ]
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %42 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %chanlist_len, align 4
  %44 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %43)
  %cmp.not.i228 = icmp eq i32 %45, %43
  br i1 %cmp.not.i228, label %if.end62.comedi_check_trigger_arg_is.exit231_crit_edge, label %if.then.i229

if.end62.comedi_check_trigger_arg_is.exit231_crit_edge: ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit231

if.then.i229:                                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit231

comedi_check_trigger_arg_is.exit231:              ; preds = %if.then.i229, %if.end62.comedi_check_trigger_arg_is.exit231_crit_edge
  %retval.0.i230 = phi i32 [ -22, %if.then.i229 ], [ 0, %if.end62.comedi_check_trigger_arg_is.exit231_crit_edge ]
  %or64 = or i32 %retval.0.i230, %err.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp66 = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %47 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i232 = icmp eq i32 %48, 0
  br i1 %cmp66, label %if.then67, label %if.else70

if.then67:                                        ; preds = %comedi_check_trigger_arg_is.exit231
  br i1 %cmp.i232, label %if.then67.if.end74.sink.split_crit_edge, label %if.then67.if.end74_crit_edge

if.then67.if.end74_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then67.if.end74.sink.split_crit_edge:          ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.sink.split

if.else70:                                        ; preds = %comedi_check_trigger_arg_is.exit231
  br i1 %cmp.i232, label %if.else70.if.end74_crit_edge, label %if.else70.if.end74.sink.split_crit_edge

if.else70.if.end74.sink.split_crit_edge:          ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.sink.split

if.else70.if.end74_crit_edge:                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.end74.sink.split:                              ; preds = %if.else70.if.end74.sink.split_crit_edge, %if.then67.if.end74.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then67.if.end74.sink.split_crit_edge ], [ 0, %if.else70.if.end74.sink.split_crit_edge ]
  %49 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.end74.sink.split, %if.else70.if.end74_crit_edge, %if.then67.if.end74_crit_edge
  %call68.pn = phi i32 [ 0, %if.then67.if.end74_crit_edge ], [ 0, %if.else70.if.end74_crit_edge ], [ -22, %if.end74.sink.split ]
  %err.5 = or i32 %or64, %call68.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5)
  %tobool75.not = icmp eq i32 %err.5, 0
  br i1 %tobool75.not, label %if.end77, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end77:                                         ; preds = %if.end74
  br i1 %cmp43, label %if.then80, label %if.end77.if.end86_crit_edge

if.end77.if.end86_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then80:                                        ; preds = %if.end77
  %scan_begin_arg81 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %50 = ptrtoint ptr %scan_begin_arg81 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %scan_begin_arg81, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  %and.i240 = and i32 %53, 196608
  %54 = zext i32 %and.i240 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %and.i240, label %sw.default.i [
    i32 131072, label %sw.bb4.i
    i32 65536, label %if.then80.s626_ns_to_timer.exit_crit_edge
  ]

if.then80.s626_ns_to_timer.exit_crit_edge:        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_ns_to_timer.exit

sw.default.i:                                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i32 %51, 250
  br label %s626_ns_to_timer.exit

sw.bb4.i:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %51, 499
  br label %s626_ns_to_timer.exit

s626_ns_to_timer.exit:                            ; preds = %sw.bb4.i, %sw.default.i, %if.then80.s626_ns_to_timer.exit_crit_edge
  %divider.0.in.i = phi i32 [ %add.i, %sw.default.i ], [ %sub.i, %sw.bb4.i ], [ %51, %if.then80.s626_ns_to_timer.exit_crit_edge ]
  %55 = urem i32 %divider.0.in.i, 500
  %mul.i = sub i32 %divider.0.in.i, %55
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %mul.i)
  %cmp.not.i241 = icmp eq i32 %51, %mul.i
  br i1 %cmp.not.i241, label %s626_ns_to_timer.exit.if.end86_crit_edge, label %if.then.i242

s626_ns_to_timer.exit.if.end86_crit_edge:         ; preds = %s626_ns_to_timer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then.i242:                                     ; preds = %s626_ns_to_timer.exit
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %scan_begin_arg81 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %mul.i, ptr %scan_begin_arg81, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then.i242, %s626_ns_to_timer.exit.if.end86_crit_edge, %if.end77.if.end86_crit_edge
  %err.6 = phi i32 [ 0, %if.end77.if.end86_crit_edge ], [ -22, %if.then.i242 ], [ 0, %s626_ns_to_timer.exit.if.end86_crit_edge ]
  br i1 %cmp53, label %if.then89, label %if.end86.if.end105_crit_edge

if.end86.if.end105_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then89:                                        ; preds = %if.end86
  %convert_arg90 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %57 = ptrtoint ptr %convert_arg90 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %convert_arg90, align 4
  %flags91 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %59 = ptrtoint ptr %flags91 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags91, align 4
  %and.i245 = and i32 %60, 196608
  %61 = zext i32 %and.i245 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %and.i245, label %sw.default.i247 [
    i32 131072, label %sw.bb4.i250
    i32 65536, label %if.then89.s626_ns_to_timer.exit255_crit_edge
  ]

if.then89.s626_ns_to_timer.exit255_crit_edge:     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_ns_to_timer.exit255

sw.default.i247:                                  ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  %add.i246 = add i32 %58, 250
  br label %s626_ns_to_timer.exit255

sw.bb4.i250:                                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i249 = add i32 %58, 499
  br label %s626_ns_to_timer.exit255

s626_ns_to_timer.exit255:                         ; preds = %sw.bb4.i250, %sw.default.i247, %if.then89.s626_ns_to_timer.exit255_crit_edge
  %divider.0.in.i251 = phi i32 [ %add.i246, %sw.default.i247 ], [ %sub.i249, %sw.bb4.i250 ], [ %58, %if.then89.s626_ns_to_timer.exit255_crit_edge ]
  %62 = urem i32 %divider.0.in.i251, 500
  %mul.i253 = sub i32 %divider.0.in.i251, %62
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %mul.i253)
  %cmp.not.i256 = icmp eq i32 %58, %mul.i253
  br i1 %cmp.not.i256, label %s626_ns_to_timer.exit255.comedi_check_trigger_arg_is.exit259_crit_edge, label %if.then.i257

s626_ns_to_timer.exit255.comedi_check_trigger_arg_is.exit259_crit_edge: ; preds = %s626_ns_to_timer.exit255
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit259

if.then.i257:                                     ; preds = %s626_ns_to_timer.exit255
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %convert_arg90 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %mul.i253, ptr %convert_arg90, align 4
  br label %comedi_check_trigger_arg_is.exit259

comedi_check_trigger_arg_is.exit259:              ; preds = %if.then.i257, %s626_ns_to_timer.exit255.comedi_check_trigger_arg_is.exit259_crit_edge
  %retval.0.i258 = phi i32 [ -22, %if.then.i257 ], [ 0, %s626_ns_to_timer.exit255.comedi_check_trigger_arg_is.exit259_crit_edge ]
  %or95 = or i32 %retval.0.i258, %err.6
  br i1 %cmp43, label %if.then98, label %comedi_check_trigger_arg_is.exit259.if.end105_crit_edge

comedi_check_trigger_arg_is.exit259.if.end105_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit259
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then98:                                        ; preds = %comedi_check_trigger_arg_is.exit259
  %64 = ptrtoint ptr %convert_arg90 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %convert_arg90, align 4
  %66 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %scan_end_arg, align 4
  %mul = mul i32 %67, %65
  %scan_begin_arg101 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %68 = ptrtoint ptr %scan_begin_arg101 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %scan_begin_arg101, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %mul)
  %cmp.i260 = icmp ult i32 %69, %mul
  br i1 %cmp.i260, label %if.then.i261, label %if.then98.comedi_check_trigger_arg_min.exit263_crit_edge

if.then98.comedi_check_trigger_arg_min.exit263_crit_edge: ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit263

if.then.i261:                                     ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %scan_begin_arg101 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %mul, ptr %scan_begin_arg101, align 4
  br label %comedi_check_trigger_arg_min.exit263

comedi_check_trigger_arg_min.exit263:             ; preds = %if.then.i261, %if.then98.comedi_check_trigger_arg_min.exit263_crit_edge
  %retval.0.i262 = phi i32 [ -22, %if.then.i261 ], [ 0, %if.then98.comedi_check_trigger_arg_min.exit263_crit_edge ]
  %or103 = or i32 %retval.0.i262, %or95
  br label %if.end105

if.end105:                                        ; preds = %comedi_check_trigger_arg_min.exit263, %comedi_check_trigger_arg_is.exit259.if.end105_crit_edge, %if.end86.if.end105_crit_edge
  %err.7 = phi i32 [ %or103, %comedi_check_trigger_arg_min.exit263 ], [ %or95, %comedi_check_trigger_arg_is.exit259.if.end105_crit_edge ], [ %err.6, %if.end86.if.end105_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.7)
  %tobool106.not = icmp eq i32 %err.7, 0
  %. = select i1 %tobool106.not, i32 0, i32 4
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %if.end74.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end74.cleanup_crit_edge ], [ %., %if.end105 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s626_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  tail call void @arm_heavy_mb() #7
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 32) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !69
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s626_ao_insn_write(ptr noundef %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp21.not = icmp eq i32 %3, 0
  br i1 %cmp21.not, label %entry.cleanup8_crit_edge, label %for.body.lr.ph

entry.cleanup8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup8

for.body.lr.ph:                                   ; preds = %entry
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %shl.i = shl nuw i32 1, %and
  %4 = trunc i32 %shl.i to i16
  %5 = xor i16 %4, -1
  %and19.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool.not.i = icmp eq i32 %and19.i, 0
  %cond.i = select i1 %tobool.not.i, i32 536870912, i32 1073741824
  %or20.i = or i32 %cond.i, 24
  %6 = tail call i32 @llvm.bswap.i32(i32 %or20.i) #7
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %or24.i = or i32 %cond.i, 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %or24.i) #7
  %and39.i = shl nuw nsw i32 %and, 15
  %shl40.i = and i32 %and39.i, 32768
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.022
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = trunc i32 %9 to i16
  %conv2 = add i16 %10, -8191
  %11 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv2)
  %cmp.i = icmp slt i16 %conv2, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i16 8191, %10
  %dacpol.i = getelementptr inbounds %struct.s626_private, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %dacpol.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dacpol.i, align 4
  %conv8.i = or i16 %14, %4
  store i16 %conv8.i, ptr %dacpol.i, align 4
  br label %s626_set_dac.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %dacpol10.i = getelementptr inbounds %struct.s626_private, ptr %12, i32 0, i32 9
  %15 = ptrtoint ptr %dacpol10.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %dacpol10.i, align 4
  %conv12.i = and i16 %16, %5
  store i16 %conv12.i, ptr %dacpol10.i, align 4
  br label %s626_set_dac.exit

s626_set_dac.exit:                                ; preds = %if.else.i, %if.then.i
  %dacdata.addr.0.i = phi i16 [ %sub.i, %if.then.i ], [ %conv2, %if.else.i ]
  %17 = tail call i16 @llvm.umin.i16(i16 %dacdata.addr.0.i, i16 8191) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %21, i32 460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %7) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %23, i32 464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 939524112) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %25, i32 468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 687865872) #7, !srcloc !69
  %conv42.i = zext i16 %17 to i32
  %or41.i = or i32 %shl40.i, %conv42.i
  %or43.i = or i32 %or41.i, 251674624
  %call.i = tail call fastcc i32 @s626_send_dac(ptr noundef %dev, i32 noundef %or43.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.inc, label %s626_set_dac.exit.cleanup8_crit_edge

s626_set_dac.exit.cleanup8_crit_edge:             ; preds = %s626_set_dac.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup8

for.inc:                                          ; preds = %s626_set_dac.exit
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %28 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %readback, align 4
  %arrayidx5 = getelementptr i32, ptr %29, i32 %and
  %30 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %arrayidx5, align 4
  %inc = add nuw i32 %i.022, 1
  %31 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup8_crit_edge

for.inc.cleanup8_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup8

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup8:                                         ; preds = %for.inc.cleanup8_crit_edge, %s626_set_dac.exit.cleanup8_crit_edge, %entry.cleanup8_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup8_crit_edge ], [ %call.i, %s626_set_dac.exit.cleanup8_crit_edge ], [ %32, %for.inc.cleanup8_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s626_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  %3 = shl i32 %2, 4
  %conv = add i32 %3, 72
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %4 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_bits, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %conv.i = and i32 %conv, 65528
  %or.i = or i32 %conv.i, 262144
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %conv3.i = and i32 %5, 65535
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #7
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %11, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %9) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s626_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %.pre = shl i32 %2, 4
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = add i32 %.pre, 72
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %conv.i = and i32 %conv, 65528
  %or.i = or i32 %conv.i, 262144
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %conv3.i = and i32 %4, 65535
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #7
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %10, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %8) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv4 = add i32 %.pre, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %conv.i13 = and i32 %conv4, 65520
  %or.i14 = or i32 %conv.i13, 327680
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i14) #7
  %mmio.i15 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %12 = ptrtoint ptr %mmio.i15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i15, align 4
  %add.ptr.i16 = getelementptr i8, ptr %13, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %11) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %14 = ptrtoint ptr %mmio.i15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i15, align 4
  %add.ptr2.i = getelementptr i8, ptr %15, i32 136
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %17 = and i32 %16, -65536
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %20 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n, align 4
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s626_enc_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  tail call fastcc void @s626_set_mode(ptr noundef %dev, i32 noundef %and, i16 noundef zeroext 261, i16 noundef zeroext 1)
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp.i = icmp ult i32 %and, 3
  %add.i = select i1 %cmp.i, i32 12, i32 16
  %rem.i.lhs.trunc = trunc i32 %1 to i16
  %rem.i27 = urem i16 %rem.i.lhs.trunc, 3
  %rem.i.zext = zext i16 %rem.i27 to i32
  %mul.i = shl nuw nsw i32 %rem.i.zext, 3
  %add1.i = add nuw nsw i32 %mul.i, %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %or.i.i = or i32 %add1.i, 262144
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %mmio.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %5 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %conv3.i.i = and i32 %3, 65535
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #7
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %9, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %7) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %or.i19.i = or i32 %add1.i, 262146
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i19.i) #7
  %11 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %12, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %10) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  %14 = shl i32 %13, 16
  %15 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr5.i23.i = getelementptr i8, ptr %16, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i23.i, i32 %14) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call fastcc void @s626_pulse_index(ptr noundef %dev, i32 noundef %and)
  %mul.i13 = shl nuw nsw i32 %rem.i.zext, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %or.i.i14 = or i32 %mul.i13, 327682
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i.i14) #7
  %18 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %19, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i16, i32 %17) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %or4.i.i = or i32 %mul.i13, 262146
  %20 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #7
  %21 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %22, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %20) #7, !srcloc !69
  %23 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %24, i32 136
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %26 = and i32 %25, -14942208
  %27 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %28, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i, i32 %26) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %mask.0.i = select i1 %cmp.i, i32 4095, i32 8187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i22 = getelementptr i8, ptr %30, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i22, i32 %17) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr6.i.i24 = getelementptr i8, ptr %32, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i24, i32 %20) #7, !srcloc !69
  %33 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr8.i.i25 = getelementptr i8, ptr %34, i32 136
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i25) #7, !srcloc !79
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %and10.i.i = and i32 %36, %mask.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %and10.i.i) #7
  %38 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr17.i.i26 = getelementptr i8, ptr %39, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i26, i32 %37) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %40 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n, align 4
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s626_enc_insn_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp226.not = icmp eq i32 %1, 0
  br i1 %cmp226.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp ult i32 %and, 3
  %add = select i1 %cmp, i16 12, i16 16
  %rem.lhs.trunc = trunc i32 %3 to i16
  %rem25 = urem i16 %rem.lhs.trunc, 3
  %4 = shl nuw nsw i16 %rem25, 3
  %add1 = add nuw nsw i16 %add, %4
  %conv.i = zext i16 %add1 to i32
  %or.i = or i32 %conv.i, 327680
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %or.i20 = or i32 %conv.i, 327682
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i20) #7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %10, i32 136
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %12 = and i32 %11, -65536
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %15, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %6) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i23 = getelementptr i8, ptr %17, i32 136
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i23) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %19 = and i32 %18, -65536
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %shl = shl nuw i32 %20, 16
  %or = or i32 %shl, %13
  %arrayidx = getelementptr i32, ptr %data, i32 %i.027
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.027, 1
  %22 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n, align 4
  %cmp2 = icmp ult i32 %inc, %23
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %23, %for.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s626_enc_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp.i = icmp ult i32 %and, 3
  %add.i = select i1 %cmp.i, i32 12, i32 16
  %rem.i.lhs.trunc = trunc i32 %1 to i16
  %rem.i7 = urem i16 %rem.i.lhs.trunc, 3
  %4 = shl nuw nsw i16 %rem.i7, 3
  %mul.i = zext i16 %4 to i32
  %add1.i = add nuw nsw i32 %add.i, %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %or.i.i = or i32 %add1.i, 262144
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %mmio.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %5) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %conv3.i.i = and i32 %3, 65535
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #7
  %9 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %10, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %8) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %or.i19.i = or i32 %add1.i, 262146
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i19.i) #7
  %12 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %13, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %11) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  %15 = shl i32 %14, 16
  %16 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr5.i23.i = getelementptr i8, ptr %17, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i23.i, i32 %15) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call fastcc void @s626_set_load_trig(ptr noundef %dev, i32 noundef %and, i16 noundef zeroext 0)
  tail call fastcc void @s626_pulse_index(ptr noundef %dev, i32 noundef %and)
  tail call fastcc void @s626_set_load_trig(ptr noundef %dev, i32 noundef %and, i16 noundef zeroext 2)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s626_initialize(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 720907) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 51713) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr10 = getelementptr i8, ptr %9, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 5242896) #7, !srcloc !69
  %i2c_adrs = getelementptr inbounds %struct.s626_private, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %i2c_adrs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 160, ptr %i2c_adrs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 4
  %add.ptr15 = getelementptr i8, ptr %12, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 -2147221504) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i170 = getelementptr i8, ptr %14, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 16777472) #7, !srcloc !69
  %call = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @s626_i2c_handshake_eoc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body16.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body16.preheader:                              ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 4
  %add.ptr20 = getelementptr i8, ptr %16, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 262144) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i172 = getelementptr i8, ptr %18, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 16777472) #7, !srcloc !69
  %call21 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @s626_i2c_handshake_eoc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.cond, label %do.body16.preheader.cleanup_crit_edge

do.body16.preheader.cleanup_crit_edge:            ; preds = %do.body16.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %do.body16.preheader
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 4
  %add.ptr20.1 = getelementptr i8, ptr %20, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.1, i32 262144) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i172.1 = getelementptr i8, ptr %22, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172.1, i32 16777472) #7, !srcloc !69
  %call21.1 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @s626_i2c_handshake_eoc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.1)
  %tobool22.not.1 = icmp eq i32 %call21.1, 0
  br i1 %tobool22.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 4
  %add.ptr29 = getelementptr i8, ptr %24, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 55296) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i, align 4
  %add.ptr34 = getelementptr i8, ptr %26, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 16385) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i, align 4
  %add.ptr40 = getelementptr i8, ptr %28, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 16793601) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i, align 4
  %add.ptr45 = getelementptr i8, ptr %30, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 -1718025952) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @arm_heavy_mb() #7
  %rps_buf = getelementptr inbounds %struct.s626_private, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %rps_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rps_buf, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i, align 4
  %add.ptr50 = getelementptr i8, ptr %35, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %33) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i, align 4
  %add.ptr55 = getelementptr i8, ptr %37, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 0) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i, align 4
  %add.ptr60 = getelementptr i8, ptr %39, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 0) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i, align 4
  %add.ptr65 = getelementptr i8, ptr %41, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 0) #7, !srcloc !69
  %ana_buf = getelementptr inbounds %struct.s626_private, ptr %1, i32 0, i32 7
  %42 = ptrtoint ptr %ana_buf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ana_buf, align 4
  %add = add i32 %43, 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %44 = tail call i32 @llvm.bswap.i32(i32 %add)
  %45 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio.i, align 4
  %add.ptr71 = getelementptr i8, ptr %46, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %44) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %add75 = add i32 %43, 164
  %47 = tail call i32 @llvm.bswap.i32(i32 %add75)
  %48 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio.i, align 4
  %add.ptr77 = getelementptr i8, ptr %49, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %47) #7, !srcloc !69
  %logical_base = getelementptr inbounds %struct.s626_private, ptr %1, i32 0, i32 7, i32 1
  %50 = ptrtoint ptr %logical_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %logical_base, align 4
  %add.ptr79 = getelementptr i32, ptr %51, i32 40
  %dac_wbuf = getelementptr inbounds %struct.s626_private, ptr %1, i32 0, i32 8
  %52 = ptrtoint ptr %dac_wbuf to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr79, ptr %dac_wbuf, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %53 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio.i, align 4
  %add.ptr84 = getelementptr i8, ptr %54, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 134217728) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %55 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio.i, align 4
  %add.ptr89 = getelementptr i8, ptr %56, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 152698880) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %57 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio.i, align 4
  %add.ptr94 = getelementptr i8, ptr %58, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 -2147483648) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  %59 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio.i, align 4
  %add.ptr99 = getelementptr i8, ptr %60, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 -1718025888) #7, !srcloc !69
  %call100 = tail call fastcc i32 @s626_load_trim_dacs(ptr noundef %dev)
  %call101 = tail call fastcc i32 @s626_load_trim_dacs(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %for.cond.1.for.body108_crit_edge, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1.for.body108_crit_edge:                 ; preds = %for.cond.1
  br label %for.body108

for.cond105:                                      ; preds = %for.body108
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.cond105.for.body.i_crit_edge, label %for.cond105.for.body108_crit_edge

for.cond105.for.body108_crit_edge:                ; preds = %for.cond105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body108

for.cond105.for.body.i_crit_edge:                 ; preds = %for.cond105
  br label %for.body.i

for.body108:                                      ; preds = %for.cond105.for.body108_crit_edge, %for.cond.1.for.body108_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.cond105.for.body108_crit_edge ], [ 0, %for.cond.1.for.body108_crit_edge ]
  %61 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %private, align 4
  %shl.i = shl nuw nsw i32 1, %indvars.iv
  %dacpol10.i = getelementptr inbounds %struct.s626_private, ptr %62, i32 0, i32 9
  %63 = ptrtoint ptr %dacpol10.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %dacpol10.i, align 4
  %65 = trunc i32 %shl.i to i16
  %66 = xor i16 %65, -1
  %conv12.i = and i16 %64, %66
  store i16 %conv12.i, ptr %dacpol10.i, align 4
  %and19.i = and i32 %indvars.iv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool.not.i = icmp eq i32 %and19.i, 0
  %cond.i = select i1 %tobool.not.i, i32 536870912, i32 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %or20.i = or i32 %cond.i, 24
  %67 = tail call i32 @llvm.bswap.i32(i32 %or20.i) #7
  %68 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i174 = getelementptr i8, ptr %69, i32 456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 %67) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %or24.i = or i32 %cond.i, 8
  %70 = tail call i32 @llvm.bswap.i32(i32 %or24.i) #7
  %71 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %72, i32 460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %70) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %73 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %74, i32 464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 939524112) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %75 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %76, i32 468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 687865872) #7, !srcloc !69
  %and39.i = shl nuw nsw i32 %indvars.iv, 15
  %shl40.i = and i32 %and39.i, 32768
  %or43.i = or i32 %shl40.i, 251674624
  %call.i = tail call fastcc i32 @s626_send_dac(ptr noundef %dev, i32 noundef %or43.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool110.not = icmp eq i32 %call.i, 0
  br i1 %tobool110.not, label %for.cond105, label %for.body108.cleanup_crit_edge

for.body108.cleanup_crit_edge:                    ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond105.for.body.i_crit_edge
  %chan.019.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond105.for.body.i_crit_edge ]
  tail call fastcc void @s626_set_mode(ptr noundef %dev, i32 noundef %chan.019.i, i16 noundef zeroext 261, i16 noundef zeroext 1) #7
  tail call fastcc void @s626_set_int_src(ptr noundef %dev, i32 noundef %chan.019.i, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %chan.019.i)
  %cmp.i.i = icmp ult i32 %chan.019.i, 3
  %..i.i = select i1 %cmp.i.i, i32 40960, i32 49152
  %rem.i.i = urem i32 %chan.019.i, 3
  %mul.i.i = shl nuw nsw i32 %rem.i.i, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %or.i.i.i = or i32 %mul.i.i, 327682
  %77 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #7
  %78 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %79, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %77) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %or4.i.i.i = or i32 %mul.i.i, 262146
  %80 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i.i) #7
  %81 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio.i, align 4
  %add.ptr6.i.i.i = getelementptr i8, ptr %82, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i.i, i32 %80) #7, !srcloc !69
  %83 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.i.i.i = getelementptr i8, ptr %84, i32 136
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %86 = and i32 %85, -14745600
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #7
  %and15.i.i.i = or i32 %87, %..i.i
  %88 = tail call i32 @llvm.bswap.i32(i32 %and15.i.i.i) #7
  %89 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mmio.i, align 4
  %add.ptr17.i.i.i = getelementptr i8, ptr %90, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i.i, i32 %88) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %mask.0.i.i = select i1 %cmp.i.i, i32 4095, i32 8187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %91 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i14.i = getelementptr i8, ptr %92, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14.i, i32 %77) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %93 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmio.i, align 4
  %add.ptr6.i.i16.i = getelementptr i8, ptr %94, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i16.i, i32 %80) #7, !srcloc !69
  %95 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.i.i17.i = getelementptr i8, ptr %96, i32 136
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i17.i) #7, !srcloc !79
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %and10.i.i.i = and i32 %98, %mask.0.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %99 = tail call i32 @llvm.bswap.i32(i32 %and10.i.i.i) #7
  %100 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmio.i, align 4
  %add.ptr17.i.i18.i = getelementptr i8, ptr %101, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i18.i, i32 %99) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %inc.i = add nuw nsw i32 %chan.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %s626_counters_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

s626_counters_init.exit:                          ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %102 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i176 = getelementptr i8, ptr %103, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176, i32 -2113927936) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %104 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %105, i32 136
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !79
  %107 = lshr i32 %106, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %conv4.i = trunc i32 %107 to i16
  %108 = and i16 %conv4.i, 8
  tail call fastcc void @s626_write_misc2(ptr noundef %dev, i16 noundef zeroext %108)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %109 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %110, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -2013264896) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %111 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %112, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 0) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  br label %for.body.i178

for.body.i178:                                    ; preds = %for.body.i178.for.body.i178_crit_edge, %s626_counters_init.exit
  %indvars.iv.i = phi i32 [ 0, %s626_counters_init.exit ], [ %indvars.iv.next.i, %for.body.i178.for.body.i178_crit_edge ]
  %113 = shl i32 %indvars.iv.i, 4
  %114 = add nuw nsw i32 %113, 66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %or.i.i = or i32 %114, 262144
  %115 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %116 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %117, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %115) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %118 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i27.i = getelementptr i8, ptr %119, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i27.i, i32 0) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %120 = add nuw nsw i32 %113, 70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %or.i29.i = or i32 %120, 262144
  %121 = tail call i32 @llvm.bswap.i32(i32 %or.i29.i) #7
  %122 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %123, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 %121) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %124 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i32.i = getelementptr i8, ptr %125, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i32.i, i32 -65536) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %126 = add nuw nsw i32 %113, 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %or.i34.i = or i32 %126, 262144
  %127 = tail call i32 @llvm.bswap.i32(i32 %or.i34.i) #7
  %128 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %129, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 %127) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %130 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i37.i = getelementptr i8, ptr %131, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i37.i, i32 0) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %132 = add nuw nsw i32 %113, 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %or.i39.i = or i32 %132, 262144
  %133 = tail call i32 @llvm.bswap.i32(i32 %or.i39.i) #7
  %134 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %135, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i, i32 %133) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %136 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i42.i = getelementptr i8, ptr %137, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i42.i, i32 0) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i177 = icmp eq i32 %indvars.iv.next.i, 3
  br i1 %exitcond.not.i177, label %for.body.i178.cleanup_crit_edge, label %for.body.i178.for.body.i178_crit_edge

for.body.i178.for.body.i178_crit_edge:            ; preds = %for.body.i178
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i178

for.body.i178.cleanup_crit_edge:                  ; preds = %for.body.i178
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.i178.cleanup_crit_edge, %for.body108.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %do.body16.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call101, %for.cond.1.cleanup_crit_edge ], [ %call21, %do.body16.preheader.cleanup_crit_edge ], [ %call21.1, %for.cond.cleanup_crit_edge ], [ 0, %for.body.i178.cleanup_crit_edge ], [ %call.i, %for.body108.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s626_dio_set_irq(ptr nocapture noundef readonly %dev, i32 noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = and i32 %chan, 15
  %shl = shl nuw nsw i32 1, %sub
  %0 = trunc i32 %chan to i16
  %1 = and i16 %0, -16
  %conv = add i16 %1, 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %conv.i = zext i16 %conv to i32
  %or.i = or i32 %conv.i, 327680
  %2 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %5 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %6, i32 136
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %conv5 = add i16 %1, 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %conv.i2 = zext i16 %conv5 to i32
  %or.i3 = or i32 %conv.i2, 262144
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i3) #7
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %10, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %8) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %11 = and i32 %7, -65536
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %conv3.i = or i32 %12, %shl
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #7
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %15, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %13) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %conv9 = add i16 %1, 74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %conv.i6 = zext i16 %conv9 to i32
  %or.i7 = or i32 %conv.i6, 327680
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i7) #7
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %18, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %16) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i10 = getelementptr i8, ptr %20, i32 136
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i10) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %conv14 = add i16 %1, 66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %conv.i12 = zext i16 %conv14 to i32
  %or.i13 = or i32 %conv.i12, 262144
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i13) #7
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %24, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %22) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %25 = and i32 %21, -65536
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %conv3.i16 = or i32 %26, %shl
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv3.i16) #7
  %28 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i17 = getelementptr i8, ptr %29, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i17, i32 %27) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %31, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 -2013264896) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i20 = getelementptr i8, ptr %33, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i20, i32 1048576) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %conv19 = add i16 %1, 78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %conv.i21 = zext i16 %conv19 to i32
  %or.i22 = or i32 %conv.i21, 327680
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i22) #7
  %35 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %36, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %34) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %37 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i25 = getelementptr i8, ptr %38, i32 136
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i25) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %conv24 = add i16 %1, 70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %conv.i27 = zext i16 %conv24 to i32
  %or.i28 = or i32 %conv.i27, 262144
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i28) #7
  %41 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %42, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %40) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %43 = and i32 %39, -65536
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %conv3.i31 = or i32 %44, %shl
  %45 = tail call i32 @llvm.bswap.i32(i32 %conv3.i31) #7
  %46 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i32 = getelementptr i8, ptr %47, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i32, i32 %45) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s626_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 272
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %3 = and i32 %2, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s626_timer_load(ptr nocapture noundef readonly %dev, i32 noundef %chan, i32 noundef %tick) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @s626_set_mode(ptr noundef %dev, i32 noundef %chan, i16 noundef zeroext 301, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %chan)
  %cmp.i = icmp ult i32 %chan, 3
  %add.i = select i1 %cmp.i, i32 12, i32 16
  %rem.i = urem i32 %chan, 3
  %mul.i = shl nuw nsw i32 %rem.i, 3
  %add1.i = add nuw nsw i32 %add.i, %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %or.i.i = or i32 %add1.i, 262144
  %0 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %mmio.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %0) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %conv3.i.i = and i32 %tick, 65535
  %3 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #7
  %4 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %5, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %3) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %or.i19.i = or i32 %add1.i, 262146
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i19.i) #7
  %7 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %8, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %6) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %tick) #7
  %10 = shl i32 %9, 16
  %11 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr5.i23.i = getelementptr i8, ptr %12, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i23.i, i32 %10) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call fastcc void @s626_set_load_trig(ptr noundef %dev, i32 noundef %chan, i16 noundef zeroext 0)
  tail call fastcc void @s626_pulse_index(ptr noundef %dev, i32 noundef %chan)
  tail call fastcc void @s626_set_load_trig(ptr noundef %dev, i32 noundef %chan, i16 noundef zeroext 1)
  tail call fastcc void @s626_set_int_src(ptr noundef %dev, i32 noundef %chan, i16 noundef zeroext 1)
  %mul.i14 = shl nuw nsw i32 %rem.i, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %or.i.i15 = or i32 %mul.i14, 327682
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i.i15) #7
  %14 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %15, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i17, i32 %13) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %or4.i.i = or i32 %mul.i14, 262146
  %16 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #7
  %17 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %18, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %16) #7, !srcloc !69
  %19 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %20, i32 136
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %22 = and i32 %21, -14942208
  %23 = or i32 %22, 65536
  %24 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %25, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i, i32 %23) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s626_ai_inttrig(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, i32 noundef %trig_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async, align 4
  %start_arg = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 3
  %2 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %trig_num)
  %cmp.not = icmp eq i32 %3, %trig_num
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2097184) #7, !srcloc !69
  %6 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %inttrig, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s626_set_mode(ptr nocapture noundef readonly %dev, i32 noundef %chan, i16 noundef zeroext %setup, i16 noundef zeroext %disable_int_src) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %chan)
  %cmp = icmp ult i32 %chan, 3
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %conv.i = zext i16 %setup to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %disable_int_src)
  %tobool.not.i = icmp eq i16 %disable_int_src, 0
  %2 = lshr i32 %conv.i, 3
  %and28.i = and i32 %2, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %switch.not.i = icmp eq i32 %3, 0
  br i1 %switch.not.i, label %sw.default.i, label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %or32.i = or i32 %and28.i, 2
  br label %if.end64.i

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = lshr i32 %conv.i, 1
  %and35.i = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and35.i)
  %cmp.i = icmp eq i32 %and35.i, 3
  %phi.bo.i = shl nuw nsw i32 %and28.i, 4
  %and35.op.i = shl nuw nsw i32 %and35.i, 7
  %phi.bo121.i = select i1 %cmp.i, i32 256, i32 %and35.op.i
  br label %if.end64.i

if.end64.i:                                       ; preds = %sw.default.i, %sw.bb.i
  %cntsrc.0.i = phi i32 [ 0, %sw.default.i ], [ %or32.i, %sw.bb.i ]
  %clkmult.0.i = phi i32 [ %phi.bo121.i, %sw.default.i ], [ 256, %sw.bb.i ]
  %clkpol.0.i = phi i32 [ %phi.bo.i, %sw.default.i ], [ 16, %sw.bb.i ]
  br i1 %tobool.not.i, label %if.end64.i.s626_set_mode_a.exit_crit_edge, label %cond.end.i

if.end64.i.s626_set_mode_a.exit_crit_edge:        ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_set_mode_a.exit

cond.end.i:                                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul69.i = shl nuw nsw i32 %chan, 1
  %or82.i = shl nuw nsw i32 1040, %mul69.i
  %counter_int_enabs.i = getelementptr inbounds %struct.s626_private, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %counter_int_enabs.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %counter_int_enabs.i, align 4
  %7 = trunc i32 %or82.i to i16
  %8 = xor i16 %7, -1
  %conv85.i = and i16 %6, %8
  store i16 %conv85.i, ptr %counter_int_enabs.i, align 4
  br label %s626_set_mode_a.exit

s626_set_mode_a.exit:                             ; preds = %cond.end.i, %if.end64.i.s626_set_mode_a.exit_crit_edge
  %or43.i = or i32 %clkmult.0.i, %cntsrc.0.i
  %or46.i = or i32 %or43.i, %clkpol.0.i
  %and12.i = shl i16 %setup, 12
  %or16.i = or i16 %and12.i, -24576
  %rem.i.lhs.trunc = trunc i32 %chan to i8
  %rem.i30 = urem i8 %rem.i.lhs.trunc, 3
  %9 = shl nuw nsw i8 %rem.i30, 2
  %mul87.i = zext i8 %9 to i32
  %conv49.i = and i32 %or46.i, 65527
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %or.i.i = or i32 %mul87.i, 327680
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %mmio.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %11 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %or4.i.i = or i32 %mul87.i, 262144
  %13 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #7
  %14 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %15, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %13) #7, !srcloc !69
  %16 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %17, i32 136
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #7, !srcloc !79
  %19 = lshr i32 %18, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %and10.i.i = and i32 %19, 61440
  %conv89.i = or i32 %conv49.i, %and10.i.i
  %or11.i.i = or i32 %conv89.i, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i) #7
  %21 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %22, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i, i32 %20) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %conv93.i = zext i16 %or16.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %or.i123.i = or i32 %mul87.i, 327682
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i123.i) #7
  %24 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i125.i = getelementptr i8, ptr %25, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125.i, i32 %23) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %or4.i126.i = or i32 %mul87.i, 262146
  %26 = tail call i32 @llvm.bswap.i32(i32 %or4.i126.i) #7
  %27 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr6.i127.i = getelementptr i8, ptr %28, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i127.i, i32 %26) #7, !srcloc !69
  %29 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr8.i128.i = getelementptr i8, ptr %30, i32 136
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i128.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %32 = and i32 %31, -15728641
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  %or11.i130.i = or i32 %33, %conv93.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %and15.i.i = and i32 %or11.i130.i, 49151
  %34 = tail call i32 @llvm.bswap.i32(i32 %and15.i.i) #7
  %35 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr17.i131.i = getelementptr i8, ptr %36, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i131.i, i32 %34) #7, !srcloc !69
  br label %if.end

if.else:                                          ; preds = %entry
  %37 = lshr i32 %conv.i, 4
  %and31.i = and i32 %37, 3
  %38 = zext i32 %and31.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %and31.i, label %sw.default.i14 [
    i32 2, label %sw.bb.i11
    i32 3, label %sw.bb33.i
  ]

sw.bb.i11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %or32.i10 = or i32 %and28.i, 2
  br label %if.end68.i

sw.bb33.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %or34.i = or i32 %and28.i, 2
  br label %if.end68.i

sw.default.i14:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %39 = lshr i32 %conv.i, 1
  %and37.i = and i32 %39, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and37.i)
  %cmp.i12 = icmp eq i32 %and37.i, 3
  %and37.op.i = shl nuw nsw i32 %and37.i, 3
  %phi.bo.i13 = select i1 %cmp.i12, i32 16, i32 %and37.op.i
  br label %if.end68.i

if.end68.i:                                       ; preds = %sw.default.i14, %sw.bb33.i, %sw.bb.i11
  %cntsrc.0.i15 = phi i32 [ 0, %sw.default.i14 ], [ %or34.i, %sw.bb33.i ], [ %or32.i10, %sw.bb.i11 ]
  %clkmult.0.i16 = phi i32 [ %phi.bo.i13, %sw.default.i14 ], [ 24, %sw.bb33.i ], [ 16, %sw.bb.i11 ]
  %clkpol.0.i17 = phi i32 [ %and28.i, %sw.default.i14 ], [ 1, %sw.bb33.i ], [ 1, %sw.bb.i11 ]
  br i1 %tobool.not.i, label %if.end68.i.s626_set_mode_b.exit_crit_edge, label %if.then70.i

if.end68.i.s626_set_mode_b.exit_crit_edge:        ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_set_mode_b.exit

if.then70.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = shl i32 %chan, 1
  %cond.i = add i32 %mul.i, 5
  %shl75.i = shl nuw i32 1, %cond.i
  %cond84.i = add i32 %mul.i, -1
  %shl85.i = shl nuw i32 1, %cond84.i
  %or86.i = or i32 %shl75.i, %shl85.i
  %counter_int_enabs.i18 = getelementptr inbounds %struct.s626_private, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %counter_int_enabs.i18 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %counter_int_enabs.i18, align 4
  %42 = trunc i32 %or86.i to i16
  %43 = xor i16 %42, -1
  %conv89.i19 = and i16 %41, %43
  store i16 %conv89.i19, ptr %counter_int_enabs.i18, align 4
  br label %s626_set_mode_b.exit

s626_set_mode_b.exit:                             ; preds = %if.then70.i, %if.end68.i.s626_set_mode_b.exit_crit_edge
  %and5.i = shl i16 %setup, 2
  %shl7.i = and i16 %and5.i, 4
  %or50.i = or i32 %clkpol.0.i17, %clkmult.0.i16
  %44 = trunc i32 %or50.i to i16
  %or.i = or i16 %shl7.i, %44
  %conv53.i = or i16 %or.i, -16384
  %45 = shl nsw i32 %cntsrc.0.i15, 12
  %rem.i20 = urem i32 %chan, 3
  %mul91.i = shl nuw nsw i32 %rem.i20, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %or.i.i21 = or i32 %mul91.i, 327680
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i.i21) #7
  %mmio.i.i22 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %47 = ptrtoint ptr %mmio.i.i22 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio.i.i22, align 4
  %add.ptr.i.i23 = getelementptr i8, ptr %48, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23, i32 %46) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %or4.i.i24 = or i32 %mul91.i, 262144
  %49 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i24) #7
  %50 = ptrtoint ptr %mmio.i.i22 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i.i22, align 4
  %add.ptr6.i.i25 = getelementptr i8, ptr %51, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i25, i32 %49) #7, !srcloc !69
  %52 = ptrtoint ptr %mmio.i.i22 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i.i22, align 4
  %add.ptr8.i.i26 = getelementptr i8, ptr %53, i32 136
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i26) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %55 = and i32 %54, -15728641
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #7
  %conv45.i = or i32 %56, %45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %or11.i.i27 = and i32 %conv45.i, 16383
  %and15.i.i28 = or i32 %or11.i.i27, 32768
  %57 = tail call i32 @llvm.bswap.i32(i32 %and15.i.i28) #7
  %58 = ptrtoint ptr %mmio.i.i22 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i.i22, align 4
  %add.ptr17.i.i29 = getelementptr i8, ptr %59, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i29, i32 %57) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %conv97.i = zext i16 %conv53.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %or.i128.i = or i32 %mul91.i, 327682
  %60 = tail call i32 @llvm.bswap.i32(i32 %or.i128.i) #7
  %61 = ptrtoint ptr %mmio.i.i22 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio.i.i22, align 4
  %add.ptr.i130.i = getelementptr i8, ptr %62, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130.i, i32 %60) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %or4.i131.i = or i32 %mul91.i, 262146
  %63 = tail call i32 @llvm.bswap.i32(i32 %or4.i131.i) #7
  %64 = ptrtoint ptr %mmio.i.i22 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i.i22, align 4
  %add.ptr6.i132.i = getelementptr i8, ptr %65, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i132.i, i32 %63) #7, !srcloc !69
  %66 = ptrtoint ptr %mmio.i.i22 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio.i.i22, align 4
  %add.ptr8.i133.i = getelementptr i8, ptr %67, i32 136
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i133.i) #7, !srcloc !79
  %69 = lshr i32 %68, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %and10.i134.i = and i32 %69, 4864
  %or11.i135.i = or i32 %and10.i134.i, %conv97.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %70 = tail call i32 @llvm.bswap.i32(i32 %or11.i135.i) #7
  %71 = ptrtoint ptr %mmio.i.i22 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio.i.i22, align 4
  %add.ptr17.i137.i = getelementptr i8, ptr %72, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i137.i, i32 %70) #7, !srcloc !69
  br label %if.end

if.end:                                           ; preds = %s626_set_mode_b.exit, %s626_set_mode_a.exit
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s626_set_load_trig(ptr nocapture noundef readonly %dev, i32 noundef %chan, i16 noundef zeroext %trig) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %chan)
  %cmp = icmp ult i32 %chan, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rem.lhs.trunc = trunc i32 %chan to i8
  %rem17 = urem i8 %rem.lhs.trunc, 3
  %0 = shl nuw nsw i8 %rem17, 2
  %mul = zext i8 %0 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rem3 = urem i32 %chan, 3
  %1 = shl nuw nsw i32 %rem3, 2
  %conv6 = or i32 %1, 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink19 = phi i16 [ 6, %if.else ], [ 9, %if.then ]
  %.sink18 = phi i16 [ 192, %if.else ], [ 1536, %if.then ]
  %reg.0 = phi i32 [ %conv6, %if.else ], [ %mul, %if.then ]
  %mask.0 = phi i32 [ 7999, %if.else ], [ 63999, %if.then ]
  %2 = shl i16 %trig, %.sink19
  %3 = and i16 %2, %.sink18
  %conv11 = and i32 %reg.0, 65535
  %conv13 = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %or.i = or i32 %conv11, 327680
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %5 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %or4.i = or i32 %conv11, 262144
  %7 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #7
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %9, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %7) #7, !srcloc !69
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %11, i32 136
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #7, !srcloc !79
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %and10.i.masked = and i32 %mask.0, %13
  %and15.i = or i32 %and10.i.masked, %conv13
  %14 = tail call i32 @llvm.bswap.i32(i32 %and15.i) #7
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %16, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %14) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s626_pulse_index(ptr nocapture noundef readonly %dev, i32 noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %chan)
  %cmp = icmp ult i32 %chan, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rem.lhs.trunc = trunc i32 %chan to i8
  %rem71 = urem i8 %rem.lhs.trunc, 3
  %0 = shl nuw nsw i8 %rem71, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %conv.i = zext i8 %0 to i32
  %or.i = or i32 %conv.i, 327680
  %1 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 136
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %or.i44 = or i32 %conv.i, 262144
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i44) #7
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %9, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %7) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %10 = and i32 %6, -65536
  %11 = xor i32 %10, 524288
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %13, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %11) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %15, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %7) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i52 = getelementptr i8, ptr %17, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i52, i32 %10) #7, !srcloc !69
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rem11 = urem i32 %chan, 3
  %18 = shl nuw nsw i32 %rem11, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %or.i54 = or i32 %18, 327682
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i54) #7
  %mmio.i55 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %20 = ptrtoint ptr %mmio.i55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i55, align 4
  %add.ptr.i56 = getelementptr i8, ptr %21, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %19) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %22 = ptrtoint ptr %mmio.i55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i55, align 4
  %add.ptr2.i57 = getelementptr i8, ptr %23, i32 136
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i57) #7, !srcloc !79
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %conv4.i58 = trunc i32 %25 to i16
  %26 = and i16 %conv4.i58, 8191
  %27 = xor i16 %26, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %or.i60 = or i32 %18, 262146
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i60) #7
  %29 = ptrtoint ptr %mmio.i55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i55, align 4
  %add.ptr.i62 = getelementptr i8, ptr %30, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %28) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %conv3.i63 = zext i16 %27 to i32
  %31 = tail call i32 @llvm.bswap.i32(i32 %conv3.i63) #7
  %32 = ptrtoint ptr %mmio.i55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i55, align 4
  %add.ptr5.i64 = getelementptr i8, ptr %33, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i64, i32 %31) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %mmio.i55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i55, align 4
  %add.ptr.i68 = getelementptr i8, ptr %35, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %28) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %conv3.i69 = zext i16 %26 to i32
  %36 = tail call i32 @llvm.bswap.i32(i32 %conv3.i69) #7
  %37 = ptrtoint ptr %mmio.i55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio.i55, align 4
  %add.ptr5.i70 = getelementptr i8, ptr %38, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i70, i32 %36) #7, !srcloc !69
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s626_set_int_src(ptr nocapture noundef readonly %dev, i32 noundef %chan, i16 noundef zeroext %int_source) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %rem = urem i32 %chan, 3
  %mul = shl nuw nsw i32 %rem, 2
  %2 = trunc i32 %mul to i16
  %conv4 = or i16 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %chan)
  %cmp = icmp ult i32 %chan, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv6 = zext i16 %conv4 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %or.i = or i32 %conv6, 327680
  %3 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %or4.i = or i32 %conv6, 262144
  %6 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #7
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %8, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %6) #7, !srcloc !69
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %10, i32 136
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %12 = and i32 %11, -14745600
  %13 = or i32 %12, 10485760
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %15, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %13) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %16 = shl i16 %int_source, 5
  %17 = and i16 %16, 96
  %shl = zext i16 %17 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %or.i142 = or i32 %mul, 327680
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i142) #7
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %20, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 %18) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %or4.i145 = or i32 %mul, 262144
  %21 = tail call i32 @llvm.bswap.i32(i32 %or4.i145) #7
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 4
  %add.ptr6.i146 = getelementptr i8, ptr %23, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i146, i32 %21) #7, !srcloc !69
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 4
  %add.ptr8.i147 = getelementptr i8, ptr %25, i32 136
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i147) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %27 = and i32 %26, -1610678272
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %and15.i150 = or i32 %28, %shl
  %29 = tail call i32 @llvm.bswap.i32(i32 %and15.i150) #7
  %30 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i, align 4
  %add.ptr17.i151 = getelementptr i8, ptr %31, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i151, i32 %29) #7, !srcloc !69
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %conv.i = zext i16 %conv4 to i32
  %or.i152 = or i32 %conv.i, 327680
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i152) #7
  %mmio.i153 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %33 = ptrtoint ptr %mmio.i153 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i153, align 4
  %add.ptr.i154 = getelementptr i8, ptr %34, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 %32) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %35 = ptrtoint ptr %mmio.i153 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i153, align 4
  %add.ptr2.i = getelementptr i8, ptr %36, i32 136
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !79
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %conv4.i = trunc i32 %38 to i16
  %39 = and i32 %38, 8191
  %or13 = or i32 %39, 49152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %or.i156 = or i32 %conv.i, 262144
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i156) #7
  %41 = ptrtoint ptr %mmio.i153 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i153, align 4
  %add.ptr.i158 = getelementptr i8, ptr %42, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 %40) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %43 = tail call i32 @llvm.bswap.i32(i32 %or13) #7
  %44 = ptrtoint ptr %mmio.i153 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i153, align 4
  %add.ptr5.i = getelementptr i8, ptr %45, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %43) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %46 = and i16 %conv4.i, 5119
  %47 = shl i16 %int_source, 10
  %48 = and i16 %47, 3072
  %or20140 = or i16 %46, %48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %mmio.i153 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio.i153, align 4
  %add.ptr.i162 = getelementptr i8, ptr %50, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %40) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %conv3.i163 = zext i16 %or20140 to i32
  %51 = tail call i32 @llvm.bswap.i32(i32 %conv3.i163) #7
  %52 = ptrtoint ptr %mmio.i153 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i153, align 4
  %add.ptr5.i164 = getelementptr i8, ptr %53, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i164, i32 %51) #7, !srcloc !69
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %chan)
  %cmp22 = icmp ugt i32 %chan, 2
  %mul24 = shl i32 %chan, 1
  %cond.v = select i1 %cmp22, i32 5, i32 10
  %cond = add i32 %cond.v, %mul24
  %shl28 = shl nuw i32 1, %cond
  %cond37.v = select i1 %cmp22, i32 -1, i32 4
  %cond37 = add i32 %cond37.v, %mul24
  %shl38 = shl nuw i32 1, %cond37
  %or39 = or i32 %shl28, %shl38
  %counter_int_enabs = getelementptr inbounds %struct.s626_private, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %counter_int_enabs to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %counter_int_enabs, align 4
  %56 = trunc i32 %or39 to i16
  %57 = xor i16 %56, -1
  %conv42 = and i16 %55, %57
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %int_source)
  %cond139 = icmp eq i16 %int_source, 1
  %58 = trunc i32 %shl28 to i16
  %conv59 = select i1 %cond139, i16 %58, i16 0
  %storemerge = or i16 %conv42, %conv59
  %59 = ptrtoint ptr %counter_int_enabs to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %storemerge, ptr %counter_int_enabs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s626_send_dac(ptr noundef %dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %dacpol = getelementptr inbounds %struct.s626_private, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dacpol to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dacpol, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -2113928192) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %conv3.i = zext i16 %3 to i32
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #7
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %6) #7, !srcloc !69
  tail call fastcc void @s626_debi_transfer(ptr noundef %dev) #7
  %dac_wbuf = getelementptr inbounds %struct.s626_private, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %dac_wbuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dac_wbuf, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %val, ptr %10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %13, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 134219776) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 524288) #7, !srcloc !69
  %call = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @s626_send_dac_eoc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body4, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body4:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %add.ptr8 = getelementptr i8, ptr %17, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 135921664) #7, !srcloc !69
  %call9 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @s626_send_dac_eoc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body17, label %do.body4.cleanup.sink.split_crit_edge

do.body4.cleanup.sink.split_crit_edge:            ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body17:                                        ; preds = %do.body4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 4
  %add.ptr21 = getelementptr i8, ptr %19, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 689045504) #7, !srcloc !69
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %add.ptr23 = getelementptr i8, ptr %21, i32 328
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %.mask = and i32 %22, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool26.not = icmp eq i32 %.mask, 0
  br i1 %tobool26.not, label %do.body17.do.body37_crit_edge, label %if.then27

do.body17.do.body37_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body37

if.then27:                                        ; preds = %do.body17
  %call28 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @s626_send_dac_eoc, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then27.do.body37_crit_edge, label %if.then27.cleanup.sink.split_crit_edge

if.then27.cleanup.sink.split_crit_edge:           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then27.do.body37_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body37

do.body37:                                        ; preds = %if.then27.do.body37_crit_edge, %do.body17.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 4
  %add.ptr41 = getelementptr i8, ptr %24, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 18481152) #7, !srcloc !69
  %call42 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @s626_send_dac_eoc, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.body37.cleanup_crit_edge, label %do.body37.cleanup.sink.split_crit_edge

do.body37.cleanup.sink.split_crit_edge:           ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body37.cleanup_crit_edge:                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body37.cleanup.sink.split_crit_edge, %if.then27.cleanup.sink.split_crit_edge, %do.body4.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.18.sink = phi ptr [ @.str.12, %entry.cleanup.sink.split_crit_edge ], [ @.str.15, %do.body4.cleanup.sink.split_crit_edge ], [ @.str.18, %if.then27.cleanup.sink.split_crit_edge ], [ @.str.18, %do.body37.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call9, %do.body4.cleanup.sink.split_crit_edge ], [ %call28, %if.then27.cleanup.sink.split_crit_edge ], [ %call42, %do.body37.cleanup.sink.split_crit_edge ]
  %class_dev48 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %25 = ptrtoint ptr %class_dev48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %class_dev48, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull %.str.18.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body37.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body37.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s626_send_dac_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %context to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %context, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb14
    i32 3, label %sw.bb26
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mmio = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %1 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 252
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  %4 = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %mmio5 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %5 = ptrtoint ptr %mmio5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio5, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 276
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  %8 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not = icmp eq i32 %8, 0
  br i1 %tobool11.not, label %sw.bb2.sw.epilog_crit_edge, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %mmio17 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %9 = ptrtoint ptr %mmio17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio17, align 4
  %add.ptr18 = getelementptr i8, ptr %10, i32 328
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %.mask44 = and i32 %11, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask44)
  %tobool23.not = icmp eq i32 %.mask44, 0
  br i1 %tobool23.not, label %sw.bb14.cleanup_crit_edge, label %sw.bb14.sw.epilog_crit_edge

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  %mmio29 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %12 = ptrtoint ptr %mmio29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio29, align 4
  %add.ptr30 = getelementptr i8, ptr %13, i32 328
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %.mask = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool35.not = icmp eq i32 %.mask, 0
  br i1 %tobool35.not, label %sw.bb26.sw.epilog_crit_edge, label %sw.bb26.cleanup_crit_edge

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb26.sw.epilog_crit_edge, %sw.bb14.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb26.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %sw.epilog ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb2.cleanup_crit_edge ], [ 0, %sw.bb14.cleanup_crit_edge ], [ 0, %sw.bb26.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s626_i2c_handshake_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.i.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @s626_load_trim_dacs(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %mmio.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %s626_i2c_read.exit.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %s626_i2c_read.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [11 x i8], ptr @s626_trimadrs, i32 0, i32 %indvars.iv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %i2c_adrs.i = getelementptr inbounds %struct.s626_private, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %i2c_adrs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i2c_adrs.i, align 4
  %shl.i = shl i32 %5, 24
  %conv.i = zext i8 %1 to i32
  %shl1.i = shl nuw nsw i32 %conv.i, 16
  %or2.i = or i32 %shl1.i, %shl.i
  %or3.i = or i32 %or2.i, 208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #7
  %7 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777472) #7, !srcloc !69
  %call.i.i = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @s626_i2c_handshake_eoc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.do.body1.i.i_crit_edge, label %for.body.s626_i2c_read.exit_crit_edge

for.body.s626_i2c_read.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_i2c_read.exit

for.body.do.body1.i.i_crit_edge:                  ; preds = %for.body
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %do.body1.i.i.do.body1.i.i_crit_edge, %for.body.do.body1.i.i_crit_edge
  %11 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %12, i32 140
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #7, !srcloc !79
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  %and.i.i = and i32 %14, 3
  %cmp.i.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.i, label %do.body1.i.i.do.body1.i.i_crit_edge, label %s626_i2c_handshake.exit.i

do.body1.i.i.do.body1.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1.i.i

s626_i2c_handshake.exit.i:                        ; preds = %do.body1.i.i
  %and8.i.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool.not.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %s626_i2c_handshake.exit.i.s626_i2c_read.exit_crit_edge

s626_i2c_handshake.exit.i.s626_i2c_read.exit_crit_edge: ; preds = %s626_i2c_handshake.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_i2c_read.exit

if.end.i:                                         ; preds = %s626_i2c_handshake.exit.i
  %15 = ptrtoint ptr %i2c_adrs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i2c_adrs.i, align 4
  %or6.i = shl i32 %16, 24
  %or9.i = or i32 %or6.i, 16777424
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #7
  %18 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %19, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %17) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i24.i = getelementptr i8, ptr %21, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i24.i, i32 16777472) #7, !srcloc !69
  %call.i25.i = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef null, ptr noundef null, ptr noundef nonnull @s626_i2c_handshake_eoc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool.not.i26.i = icmp eq i32 %call.i25.i, 0
  br i1 %tobool.not.i26.i, label %if.end.i.do.body1.i30.i_crit_edge, label %if.end.i.s626_i2c_read.exit_crit_edge

if.end.i.s626_i2c_read.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_i2c_read.exit

if.end.i.do.body1.i30.i_crit_edge:                ; preds = %if.end.i
  br label %do.body1.i30.i

do.body1.i30.i:                                   ; preds = %do.body1.i30.i.do.body1.i30.i_crit_edge, %if.end.i.do.body1.i30.i_crit_edge
  %22 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr3.i27.i = getelementptr i8, ptr %23, i32 140
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i27.i) #7, !srcloc !79
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  %and.i28.i = and i32 %25, 3
  %cmp.i29.i = icmp eq i32 %and.i28.i, 1
  br i1 %cmp.i29.i, label %do.body1.i30.i.do.body1.i30.i_crit_edge, label %s626_i2c_handshake.exit34.i

do.body1.i30.i.do.body1.i30.i_crit_edge:          ; preds = %do.body1.i30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1.i30.i

s626_i2c_handshake.exit34.i:                      ; preds = %do.body1.i30.i
  %and8.i31.i = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i31.i)
  %tobool12.not.i = icmp eq i32 %and8.i31.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %s626_i2c_handshake.exit34.i.s626_i2c_read.exit_crit_edge

s626_i2c_handshake.exit34.i.s626_i2c_read.exit_crit_edge: ; preds = %s626_i2c_handshake.exit34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s626_i2c_read.exit

if.end14.i:                                       ; preds = %s626_i2c_handshake.exit34.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 140
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  %29 = lshr i32 %28, 8
  %conv17.i = trunc i32 %29 to i8
  br label %s626_i2c_read.exit

s626_i2c_read.exit:                               ; preds = %if.end14.i, %s626_i2c_handshake.exit34.i.s626_i2c_read.exit_crit_edge, %if.end.i.s626_i2c_read.exit_crit_edge, %s626_i2c_handshake.exit.i.s626_i2c_read.exit_crit_edge, %for.body.s626_i2c_read.exit_crit_edge
  %retval.0.i = phi i8 [ %conv17.i, %if.end14.i ], [ 0, %s626_i2c_handshake.exit.i.s626_i2c_read.exit_crit_edge ], [ 0, %s626_i2c_handshake.exit34.i.s626_i2c_read.exit_crit_edge ], [ 0, %for.body.s626_i2c_read.exit_crit_edge ], [ 0, %if.end.i.s626_i2c_read.exit_crit_edge ]
  %30 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private.i, align 4
  %arrayidx.i = getelementptr %struct.s626_private, ptr %31, i32 0, i32 10, i32 %indvars.iv
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %retval.0.i, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr [11 x i8], ptr @s626_trimchan, i32 0, i32 %indvars.iv
  %33 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx2.i, align 1
  %conv.i10 = zext i8 %34 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %36, i32 456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 402653200) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %38, i32 460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 134217744) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %40, i32 464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 939524160) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %42, i32 468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 687865920) #7, !srcloc !69
  %shl.i12 = shl nuw nsw i32 %conv.i10, 8
  %conv18.i = zext i8 %retval.0.i to i32
  %or.i = or i32 %shl.i12, %conv18.i
  %call.i = tail call fastcc i32 @s626_send_dac(ptr noundef %dev, i32 noundef %or.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp ne i32 %call.i, 0
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %indvars.iv.next)
  %exitcond.not = icmp eq i32 %indvars.iv.next, 11
  %or.cond = select i1 %tobool.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %cleanup, label %s626_i2c_read.exit.for.body_crit_edge

s626_i2c_read.exit.for.body_crit_edge:            ; preds = %s626_i2c_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %s626_i2c_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s626_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @s626_driver, i32 noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_s626__236_2600_s626_driver_init6, !1, !"__initcall__kmod_s626__236_2600_s626_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/s626.c", i32 2600, i32 1}
!2 = !{ptr @__exitcall_s626_driver_exit, !1, !"__exitcall_s626_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/s626.c", i32 2602, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/s626.c", i32 2603, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/s626.c", i32 2604, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/s626.c", i32 2570, i32 17}
!12 = !{ptr @s626_driver, !13, !"s626_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/s626.c", i32 2569, i32 29}
!14 = distinct !{null, !15, !"timeout", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/s626.c", i32 146, i32 19}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/s626.c", i32 162, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @s626_debi_transfer._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @s626_debi_transfer._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/s626.c", i32 172, i32 3}
!26 = !{ptr @s626_debi_transfer._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @s626_debi_transfer._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @s626_range_table, !29, !"s626_range_table", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/s626.c", i32 134, i32 35}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/s626.c", i32 1699, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @s626_ai_cmd._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @s626_ai_cmd._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/comedi/drivers/s626.c", i32 408, i32 3}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @s626_send_dac._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @s626_send_dac._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/comedi/drivers/s626.c", i32 433, i32 3}
!42 = !{ptr @s626_send_dac._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @s626_send_dac._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/comedi/drivers/s626.c", i32 479, i32 4}
!46 = !{ptr @s626_send_dac._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @s626_send_dac._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @s626_send_dac._entry.20, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/comedi/drivers/s626.c", i32 504, i32 3}
!50 = !{ptr @s626_send_dac._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @s626_trimchan, !52, !"s626_trimchan", i1 false, i1 false}
!52 = !{!"../drivers/comedi/drivers/s626.c", i32 303, i32 17}
!53 = !{ptr @s626_trimadrs, !54, !"s626_trimadrs", i1 false, i1 false}
!54 = !{!"../drivers/comedi/drivers/s626.c", i32 306, i32 17}
!55 = !{ptr @s626_pci_driver, !56, !"s626_pci_driver", i1 false, i1 false}
!56 = !{!"../drivers/comedi/drivers/s626.c", i32 2594, i32 26}
!57 = !{ptr @s626_pci_table, !58, !"s626_pci_table", i1 false, i1 false}
!58 = !{!"../drivers/comedi/drivers/s626.c", i32 2587, i32 35}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2154712806}
!69 = !{i64 4698363}
!70 = !{i64 2154713240}
!71 = !{i64 2154713716}
!72 = !{i64 2154714211}
!73 = !{i64 2154711760}
!74 = !{i64 2154712170}
!75 = !{!"auto-init"}
!76 = !{i64 2154645205}
!77 = !{i64 2154645695}
!78 = !{i64 2154637640}
!79 = !{i64 4698781}
!80 = !{i64 2154638700}
!81 = !{i64 2154641664}
!82 = !{i64 2154683677}
!83 = !{i64 2154684174}
!84 = !{i64 2154684394}
!85 = !{i64 2154684790}
!86 = !{i64 2154644124}
!87 = !{i64 2154644887}
!88 = !{i64 2154646194}
!89 = !{i64 2154646778}
!90 = !{i64 2154647541}
!91 = !{i64 2154647772}
!92 = !{i64 2154685228}
!93 = !{i64 2154688189}
!94 = !{i64 2154688444}
!95 = !{i64 2154688941}
!96 = !{i64 2154689438}
!97 = !{i64 2154689933}
!98 = !{i64 2154690666}
!99 = !{i64 2154691699}
!100 = !{i64 2154691954}
!101 = !{i64 2154692451}
!102 = !{i64 2154692948}
!103 = !{i64 2154693443}
!104 = !{i64 2154694176}
!105 = !{i64 2154697305}
!106 = !{i64 2154697739}
!107 = !{i64 2154638031}
!108 = !{i64 2154685690}
!109 = !{i64 2154698413}
!110 = !{i32 0, i32 33}
!111 = !{i64 2154699172}
!112 = !{i64 2154662099}
!113 = !{i64 2154662714}
!114 = !{i64 2154663342}
!115 = !{i64 2154664000}
!116 = !{i64 2154701852}
!117 = !{i64 2154702433}
!118 = !{i64 2154702894}
!119 = !{i64 2154703378}
!120 = !{i64 2154703860}
!121 = !{i64 2154704550}
!122 = !{i64 2154705209}
!123 = !{i64 2154705737}
!124 = !{i64 2154706330}
!125 = !{i64 2154706832}
!126 = !{i64 2154707324}
!127 = !{i64 2154707714}
!128 = !{i64 2154708104}
!129 = !{i64 2154708532}
!130 = !{i64 2154708986}
!131 = !{i64 2154709486}
!132 = !{i64 2154710021}
!133 = !{i64 2154710646}
!134 = !{i64 2154711219}
!135 = !{i64 2154687584}
!136 = !{i64 2154652016}
!137 = !{i64 2154654165}
!138 = !{i64 2154656647}
!139 = !{i64 2154657515}
!140 = !{i64 2154659656}
!141 = !{i64 2154650240}
!142 = !{i64 2154650744}
!143 = !{i64 2154651252}
!144 = !{i64 2154651749}
!145 = !{i64 2154648214}
!146 = !{i64 2154648925}
!147 = !{i64 2154649743}
!148 = !{i64 2154664673}
!149 = !{i64 2154665307}
!150 = !{i64 2154665941}
!151 = !{i64 2154666599}
