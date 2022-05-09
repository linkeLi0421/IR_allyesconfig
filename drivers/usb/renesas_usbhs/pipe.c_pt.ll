; ModuleID = '/llk/IR_all_yes/drivers/usb/renesas_usbhs/pipe.c_pt.bc'
source_filename = "../drivers/usb/renesas_usbhs/pipe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usbhs_pipe = type { i32, ptr, ptr, %struct.list_head, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.usbhs_priv = type { ptr, i32, ptr, %struct.renesas_usbhs_driver_param, %struct.delayed_work, ptr, ptr, %struct.spinlock, %struct.usbhs_mod_info, %struct.usbhs_pipe_info, %struct.usbhs_fifo_info, ptr, ptr, [2 x ptr] }
%struct.renesas_usbhs_driver_param = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.usbhs_mod_info = type { [2 x ptr], ptr, ptr, ptr }
%struct.usbhs_pipe_info = type { ptr, i32, ptr }
%struct.usbhs_fifo_info = type { %struct.usbhs_fifo, [4 x %struct.usbhs_fifo] }
%struct.usbhs_fifo = type { ptr, i32, i32, i32, ptr, ptr, ptr, %struct.sh_dmae_slave, %struct.sh_dmae_slave }
%struct.sh_dmae_slave = type { %struct.shdma_slave }
%struct.shdma_slave = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.renesas_usbhs_driver_pipe_config = type { i8, i16, i8, i8 }

@usbhsp_pipe_name = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@usbhs_pipe_config_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 514, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"devsel error %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usbhs_pipe_config_update\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/renesas_usbhs/pipe.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usbhs_pipe_config_update._entry_ptr = internal global ptr @usbhs_pipe_config_update._entry, section ".printk_index", align 4
@usbhs_pipe_malloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 705, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't get pipe (%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usbhs_pipe_malloc\00", [46 x i8] zeroinitializer }, align 32
@usbhs_pipe_malloc._entry_ptr = internal global ptr @usbhs_pipe_malloc._entry, section ".printk_index", align 4
@usbhs_pipe_malloc._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 716, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pipe setup failed %d\0A\00", [42 x i8] zeroinitializer }, align 32
@usbhs_pipe_malloc._entry_ptr.9 = internal global ptr @usbhs_pipe_malloc._entry.7, section ".printk_index", align 4
@usbhs_pipe_malloc._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 721, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"can't setup pipe\0A\00", [46 x i8] zeroinitializer }, align 32
@usbhs_pipe_malloc._entry_ptr.12 = internal global ptr @usbhs_pipe_malloc._entry.10, section ".printk_index", align 4
@usbhs_pipe_malloc.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.6, ptr @.str.2, ptr @.str.14, i8 0, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"renesas_usbhs\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"enable pipe %d : %s (%s)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@usbhs_pipe_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 819, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"1st PIPE is not DCP\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usbhs_pipe_probe\00", [47 x i8] zeroinitializer }, align 32
@usbhs_pipe_probe._entry_ptr = internal global ptr @usbhs_pipe_probe._entry, section ".printk_index", align 4
@usbhs_pipe_probe.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pipe %x\09: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DCP\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ISO\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BULK\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"INT\00", [28 x i8] zeroinitializer }, align 32
@usbhsp_pipe_tre_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 180, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unknown pipe (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usbhsp_pipe_tre_set\00", [44 x i8] zeroinitializer }, align 32
@usbhsp_pipe_tre_set._entry_ptr = internal global ptr @usbhsp_pipe_tre_set._entry, section ".printk_index", align 4
@usbhsp_pipe_trn_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.26, ptr @.str.2, i32 144, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usbhsp_pipe_trn_set\00", [44 x i8] zeroinitializer }, align 32
@usbhsp_pipe_trn_set._entry_ptr = internal global ptr @usbhsp_pipe_trn_set._entry, section ".printk_index", align 4
@usbhsp_setup_pipecfg.type_array = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 0, i16 -16384, i16 16384, i16 -32768], [24 x i8] zeroinitializer }, align 32
@usbhsp_setup_pipebuff.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usbhsp_setup_pipebuff\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"pipe : %d : buff_size 0x%x: bufnmb 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@switch.table.usbhs_pipe_set_trans_count_if_bulk = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 144, i32 148, i32 152, i32 156, i32 160, i32 144, i32 144, i32 144, i32 184, i32 188, i32 164, i32 168, i32 172, i32 176, i32 180], [36 x i8] zeroinitializer }, align 32
@switch.table.usbhs_pipe_set_trans_count_if_bulk.29 = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 146, i32 150, i32 154, i32 158, i32 162, i32 146, i32 146, i32 146, i32 186, i32 190, i32 166, i32 170, i32 174, i32 178, i32 182], [36 x i8] zeroinitializer }, align 32
@switch.table.usbhs_pipe_set_trans_count_if_bulk.30 = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 144, i32 148, i32 152, i32 156, i32 160, i32 144, i32 144, i32 144, i32 184, i32 188, i32 164, i32 168, i32 172, i32 176, i32 180], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"usbhsp_pipe_name\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 26, i32 14 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 514, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 704, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 716, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 721, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 734, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 819, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 839, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 27, i32 32 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 30, i32 29 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 28, i32 29 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 29, i32 29 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 180, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 144, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [11 x i8] c"type_array\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 410, i32 19 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [36 x i8] c"../drivers/usb/renesas_usbhs/pipe.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 495, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [48 x i8] c"switch.table.usbhs_pipe_set_trans_count_if_bulk\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [51 x i8] c"switch.table.usbhs_pipe_set_trans_count_if_bulk.29\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [51 x i8] c"switch.table.usbhs_pipe_set_trans_count_if_bulk.30\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @usbhs_pipe_config_update._entry, ptr @usbhs_pipe_config_update._entry_ptr, ptr @usbhs_pipe_malloc._entry, ptr @usbhs_pipe_malloc._entry.10, ptr @usbhs_pipe_malloc._entry.7, ptr @usbhs_pipe_malloc._entry_ptr, ptr @usbhs_pipe_malloc._entry_ptr.12, ptr @usbhs_pipe_malloc._entry_ptr.9, ptr @usbhs_pipe_probe._entry, ptr @usbhs_pipe_probe._entry_ptr, ptr @usbhsp_pipe_tre_set._entry, ptr @usbhsp_pipe_tre_set._entry_ptr, ptr @usbhsp_pipe_trn_set._entry, ptr @usbhsp_pipe_trn_set._entry_ptr, ptr @usbhsp_pipe_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @usbhsp_setup_pipecfg.type_array, ptr @.str.27, ptr @.str.28, ptr @switch.table.usbhs_pipe_set_trans_count_if_bulk, ptr @switch.table.usbhs_pipe_set_trans_count_if_bulk.29, ptr @switch.table.usbhs_pipe_set_trans_count_if_bulk.30], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsp_pipe_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_pipe_config_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_pipe_malloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_pipe_malloc._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_pipe_malloc._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhs_pipe_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsp_pipe_tre_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsp_pipe_trn_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhsp_setup_pipecfg.type_array to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.usbhs_pipe_set_trans_count_if_bulk to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.usbhs_pipe_set_trans_count_if_bulk.29 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.usbhs_pipe_set_trans_count_if_bulk.30 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @usbhs_pipe_name(ptr nocapture noundef readonly %pipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipe, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @usbhsp_pipe_name, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbhs_pipe_is_accessible(ptr noundef %pipe) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1.i = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_info.i, align 4
  %cmp.i = icmp eq ptr %3, %pipe
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pipe to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %sub.i = shl nsw i32 %sub.ptr.div.i, 1
  %add.i = add nsw i32 %sub.i, 110
  %add.sink.i = select i1 %cmp.i, i32 96, i32 %add.i
  %call7.i = tail call zeroext i16 @usbhs_read(ptr noundef %1, i32 noundef %add.sink.i) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call7.i)
  %tobool.not = icmp sgt i16 %call7.i, -1
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @usbhs_pipe_contains_transmittable_data(ptr noundef %pipe) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_info, align 4
  %cmp = icmp eq ptr %3, %pipe
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pipe to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %sub.i = shl nsw i32 %sub.ptr.div.i, 1
  %add.i = add nsw i32 %sub.i, 110
  %call7.i = tail call zeroext i16 @usbhs_read(ptr noundef %1, i32 noundef %add.i) #9
  %4 = and i16 %call7.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp ne i16 %4, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %tobool.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_disable(ptr noundef %pipe) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__usbhsp_pid_try_nak_if_stall(ptr noundef %pipe)
  %priv1.i = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_info.i, align 4
  %cmp.i = icmp eq ptr %3, %pipe
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pipe to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %sub.i = shl nsw i32 %sub.ptr.div.i, 1
  %add.i = add nsw i32 %sub.i, 110
  %add.sink.i = select i1 %cmp.i, i32 96, i32 %add.i
  tail call void @usbhs_bset(ptr noundef %1, i32 noundef %add.sink.i, i16 noundef zeroext 3, i16 noundef zeroext 0) #9
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 1024, %entry ], [ %dec, %if.end.do.body_crit_edge ]
  %4 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i7 = getelementptr inbounds %struct.usbhs_priv, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %pipe_info.i7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipe_info.i7, align 4
  %cmp.i8 = icmp eq ptr %7, %pipe
  %sub.ptr.rhs.cast.i10 = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i11 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i10
  %sub.ptr.div.i12 = sdiv exact i32 %sub.ptr.sub.i11, 36
  %sub.i13 = shl nsw i32 %sub.ptr.div.i12, 1
  %add.i14 = add nsw i32 %sub.i13, 110
  %add.sink.i15 = select i1 %cmp.i8, i32 96, i32 %add.i14
  %call7.i = tail call zeroext i16 @usbhs_read(ptr noundef %5, i32 noundef %add.sink.i15) #9
  %8 = and i16 %call7.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end:                                           ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #9
  %dec = add nsw i32 %timeout.0, -1
  %tobool2.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool2.not, label %if.end.do.end_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %do.body.do.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__usbhsp_pid_try_nak_if_stall(ptr noundef %pipe) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1.i = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_info.i, align 4
  %cmp.i = icmp eq ptr %3, %pipe
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pipe to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %sub.i = shl nsw i32 %sub.ptr.div.i, 1
  %add.i = add nsw i32 %sub.i, 110
  %add.sink.i = select i1 %cmp.i, i32 96, i32 %add.i
  %call7.i = tail call zeroext i16 @usbhs_read(ptr noundef %1, i32 noundef %add.sink.i) #9
  %4 = and i16 %call7.i, 3
  %conv2 = zext i16 %4 to i32
  %5 = zext i32 %conv2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv2, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %entry.sw.bb3_crit_edge
  ]

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i8 = getelementptr inbounds %struct.usbhs_priv, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %pipe_info.i8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipe_info.i8, align 4
  %cmp.i9 = icmp eq ptr %9, %pipe
  %sub.ptr.rhs.cast.i11 = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i12 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i11
  %sub.ptr.div.i13 = sdiv exact i32 %sub.ptr.sub.i12, 36
  %sub.i14 = shl nsw i32 %sub.ptr.div.i13, 1
  %add.i15 = add nsw i32 %sub.i14, 110
  %add.sink.i16 = select i1 %cmp.i9, i32 96, i32 %add.i15
  tail call void @usbhs_bset(ptr noundef %7, i32 noundef %add.sink.i16, i16 noundef zeroext 3, i16 noundef zeroext 2) #9
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %entry.sw.bb3_crit_edge
  %10 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i18 = getelementptr inbounds %struct.usbhs_priv, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %pipe_info.i18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pipe_info.i18, align 4
  %cmp.i19 = icmp eq ptr %13, %pipe
  %sub.ptr.rhs.cast.i21 = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i22 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i21
  %sub.ptr.div.i23 = sdiv exact i32 %sub.ptr.sub.i22, 36
  %sub.i24 = shl nsw i32 %sub.ptr.div.i23, 1
  %add.i25 = add nsw i32 %sub.i24, 110
  %add.sink.i26 = select i1 %cmp.i19, i32 96, i32 %add.i25
  tail call void @usbhs_bset(ptr noundef %11, i32 noundef %add.sink.i26, i16 noundef zeroext 3, i16 noundef zeroext 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_enable(ptr noundef %pipe) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__usbhsp_pid_try_nak_if_stall(ptr noundef %pipe)
  %priv1.i = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_info.i, align 4
  %cmp.i = icmp eq ptr %3, %pipe
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pipe to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %sub.i = shl nsw i32 %sub.ptr.div.i, 1
  %add.i = add nsw i32 %sub.i, 110
  %add.sink.i = select i1 %cmp.i, i32 96, i32 %add.i
  tail call void @usbhs_bset(ptr noundef %1, i32 noundef %add.sink.i, i16 noundef zeroext 3, i16 noundef zeroext 1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_stall(ptr noundef %pipe) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1.i = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_info.i, align 4
  %cmp.i = icmp eq ptr %3, %pipe
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pipe to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %sub.i = shl nsw i32 %sub.ptr.div.i, 1
  %add.i = add nsw i32 %sub.i, 110
  %add.sink.i = select i1 %cmp.i, i32 96, i32 %add.i
  %call7.i = tail call zeroext i16 @usbhs_read(ptr noundef %1, i32 noundef %add.sink.i) #9
  %4 = and i16 %call7.i, 3
  %conv2 = zext i16 %4 to i32
  %5 = zext i32 %conv2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %conv2, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i8 = getelementptr inbounds %struct.usbhs_priv, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %pipe_info.i8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipe_info.i8, align 4
  %cmp.i9 = icmp eq ptr %9, %pipe
  %sub.ptr.rhs.cast.i11 = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i12 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i11
  %sub.ptr.div.i13 = sdiv exact i32 %sub.ptr.sub.i12, 36
  %sub.i14 = shl nsw i32 %sub.ptr.div.i13, 1
  %add.i15 = add nsw i32 %sub.i14, 110
  %add.sink.i16 = select i1 %cmp.i9, i32 96, i32 %add.i15
  tail call void @usbhs_bset(ptr noundef %7, i32 noundef %add.sink.i16, i16 noundef zeroext 3, i16 noundef zeroext 2) #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i18 = getelementptr inbounds %struct.usbhs_priv, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %pipe_info.i18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pipe_info.i18, align 4
  %cmp.i19 = icmp eq ptr %13, %pipe
  %sub.ptr.rhs.cast.i21 = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i22 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i21
  %sub.ptr.div.i23 = sdiv exact i32 %sub.ptr.sub.i22, 36
  %sub.i24 = shl nsw i32 %sub.ptr.div.i23, 1
  %add.i25 = add nsw i32 %sub.i24, 110
  %add.sink.i26 = select i1 %cmp.i19, i32 96, i32 %add.i25
  tail call void @usbhs_bset(ptr noundef %11, i32 noundef %add.sink.i26, i16 noundef zeroext 3, i16 noundef zeroext 3) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbhs_pipe_is_stall(ptr noundef %pipe) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1.i = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_info.i, align 4
  %cmp.i = icmp eq ptr %3, %pipe
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pipe to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %sub.i = shl nsw i32 %sub.ptr.div.i, 1
  %add.i = add nsw i32 %sub.i, 110
  %add.sink.i = select i1 %cmp.i, i32 96, i32 %add.i
  %call7.i = tail call zeroext i16 @usbhs_read(ptr noundef %1, i32 noundef %add.sink.i) #9
  %4 = lshr i16 %call7.i, 1
  %.lobit = and i16 %4, 1
  %5 = zext i16 %.lobit to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_set_trans_count_if_bulk(ptr noundef %pipe, i32 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.end, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.end:                                           ; preds = %entry
  %priv1.i = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %2 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe_info.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pipe to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %switch.tableidx = add nsw i32 %sub.ptr.div.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 15
  br i1 %6, label %switch.hole_check, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %switch.hole_check.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %pdev.i = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.24, i32 noundef %sub.ptr.div.i) #12
  br label %usbhsp_pipe_tre_set.exit

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 32543, %switch.maskindex
  %9 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %switch.lobit.not = icmp eq i16 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.usbhs_pipe_set_trans_count_if_bulk, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %cmp.i.i = icmp eq ptr %5, %pipe
  %conv4.i.i = select i1 %cmp.i.i, i32 0, i32 %switch.load
  tail call void @usbhs_bset(ptr noundef %3, i32 noundef %conv4.i.i, i16 noundef zeroext 768, i16 noundef zeroext 256) #9
  br label %usbhsp_pipe_tre_set.exit

usbhsp_pipe_tre_set.exit:                         ; preds = %switch.lookup, %do.end.i
  %flags.i = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 5
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %usbhsp_pipe_tre_set.exit.if.end3_crit_edge, label %if.then1

usbhsp_pipe_tre_set.exit.if.end3_crit_edge:       ; preds = %usbhsp_pipe_tre_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then1:                                         ; preds = %usbhsp_pipe_tre_set.exit
  %maxp.i = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 4
  %13 = ptrtoint ptr %maxp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %maxp.i, align 4
  %add = add i32 %len, -1
  %sub = add i32 %add, %14
  %div = sdiv i32 %sub, %14
  %conv = trunc i32 %div to i16
  %15 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i11 = getelementptr inbounds %struct.usbhs_priv, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %pipe_info.i11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pipe_info.i11, align 4
  %sub.ptr.rhs.cast.i13 = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i14 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i13
  %sub.ptr.div.i15 = sdiv exact i32 %sub.ptr.sub.i14, 36
  %switch.tableidx60 = add nsw i32 %sub.ptr.div.i15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %switch.tableidx60)
  %19 = icmp ult i32 %switch.tableidx60, 15
  br i1 %19, label %switch.hole_check61, label %if.then1.do.end.i29_crit_edge

if.then1.do.end.i29_crit_edge:                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i29

do.end.i29:                                       ; preds = %switch.hole_check61.do.end.i29_crit_edge, %if.then1.do.end.i29_crit_edge
  %pdev.i27 = getelementptr inbounds %struct.usbhs_priv, ptr %16, i32 0, i32 5
  %20 = ptrtoint ptr %pdev.i27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i27, align 4
  %dev2.i28 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i28, ptr noundef nonnull @.str.24, i32 noundef %sub.ptr.div.i15) #12
  br label %usbhsp_pipe_trn_set.exit

switch.hole_check61:                              ; preds = %if.then1
  %switch.maskindex63 = trunc i32 %switch.tableidx60 to i16
  %switch.shifted64 = lshr i16 32543, %switch.maskindex63
  %22 = and i16 %switch.shifted64, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %switch.lobit65.not = icmp eq i16 %22, 0
  br i1 %switch.lobit65.not, label %switch.hole_check61.do.end.i29_crit_edge, label %switch.lookup62

switch.hole_check61.do.end.i29_crit_edge:         ; preds = %switch.hole_check61
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i29

switch.lookup62:                                  ; preds = %switch.hole_check61
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep66 = getelementptr inbounds [15 x i32], ptr @switch.table.usbhs_pipe_set_trans_count_if_bulk.29, i32 0, i32 %switch.tableidx60
  %23 = ptrtoint ptr %switch.gep66 to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load67 = load i32, ptr %switch.gep66, align 4
  %cmp.i.i31 = icmp eq ptr %18, %pipe
  %conv4.i.i32 = select i1 %cmp.i.i31, i32 0, i32 %switch.load67
  tail call void @usbhs_bset(ptr noundef %16, i32 noundef %conv4.i.i32, i16 noundef zeroext -1, i16 noundef zeroext %conv) #9
  br label %usbhsp_pipe_trn_set.exit

usbhsp_pipe_trn_set.exit:                         ; preds = %switch.lookup62, %do.end.i29
  %24 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i35 = getelementptr inbounds %struct.usbhs_priv, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %pipe_info.i35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pipe_info.i35, align 4
  %sub.ptr.rhs.cast.i37 = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i38 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i37
  %sub.ptr.div.i39 = sdiv exact i32 %sub.ptr.sub.i38, 36
  %switch.tableidx69 = add nsw i32 %sub.ptr.div.i39, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %switch.tableidx69)
  %28 = icmp ult i32 %switch.tableidx69, 15
  br i1 %28, label %switch.hole_check70, label %usbhsp_pipe_trn_set.exit.do.end.i53_crit_edge

usbhsp_pipe_trn_set.exit.do.end.i53_crit_edge:    ; preds = %usbhsp_pipe_trn_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i53

do.end.i53:                                       ; preds = %switch.hole_check70.do.end.i53_crit_edge, %usbhsp_pipe_trn_set.exit.do.end.i53_crit_edge
  %pdev.i51 = getelementptr inbounds %struct.usbhs_priv, ptr %25, i32 0, i32 5
  %29 = ptrtoint ptr %pdev.i51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i51, align 4
  %dev2.i52 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i52, ptr noundef nonnull @.str.24, i32 noundef %sub.ptr.div.i39) #12
  br label %if.end3

switch.hole_check70:                              ; preds = %usbhsp_pipe_trn_set.exit
  %switch.maskindex72 = trunc i32 %switch.tableidx69 to i16
  %switch.shifted73 = lshr i16 32543, %switch.maskindex72
  %31 = and i16 %switch.shifted73, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %switch.lobit74.not = icmp eq i16 %31, 0
  br i1 %switch.lobit74.not, label %switch.hole_check70.do.end.i53_crit_edge, label %switch.lookup71

switch.hole_check70.do.end.i53_crit_edge:         ; preds = %switch.hole_check70
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i53

switch.lookup71:                                  ; preds = %switch.hole_check70
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep75 = getelementptr inbounds [15 x i32], ptr @switch.table.usbhs_pipe_set_trans_count_if_bulk.30, i32 0, i32 %switch.tableidx69
  %32 = ptrtoint ptr %switch.gep75 to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load76 = load i32, ptr %switch.gep75, align 4
  %cmp.i.i55 = icmp eq ptr %27, %pipe
  %conv4.i.i56 = select i1 %cmp.i.i55, i32 0, i32 %switch.load76
  tail call void @usbhs_bset(ptr noundef %25, i32 noundef %conv4.i.i56, i16 noundef zeroext 512, i16 noundef zeroext 512) #9
  br label %if.end3

if.end3:                                          ; preds = %switch.lookup71, %do.end.i53, %usbhsp_pipe_tre_set.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @usbhs_pipe_is_dir_in(ptr nocapture noundef readonly %pipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  ret i32 %and
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @usbhs_pipe_get_maxpacket(ptr nocapture noundef readonly %pipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %maxp = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 4
  %0 = ptrtoint ptr %maxp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxp, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_config_update(ptr noundef %pipe, i16 noundef zeroext %devsel, i16 noundef zeroext %epnum, i16 noundef zeroext %maxp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_info, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %pipe to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %dparam.i = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dparam.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dparam.i, align 4
  %double_buf = getelementptr %struct.renesas_usbhs_driver_pipe_config, ptr %5, i32 %sub.ptr.div, i32 3
  %6 = ptrtoint ptr %double_buf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %double_buf, align 1, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %devsel)
  %cmp = icmp ugt i16 %devsel, 10
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv4 = zext i16 %devsel to i32
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev6 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str, i32 noundef %conv4) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %devsel.addr.0 = phi i16 [ 0, %if.then ], [ %devsel, %entry.if.end_crit_edge ]
  %call8 = tail call fastcc i32 @usbhsp_pipe_barrier(ptr noundef %pipe)
  %conv9 = zext i16 %maxp to i32
  %maxp10 = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 4
  %10 = ptrtoint ptr %maxp10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv9, ptr %maxp10, align 4
  %11 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv1, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pipe_info.i, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %15 = trunc i32 %sub.ptr.div.i to i16
  %conv.i = and i16 %15, 15
  tail call void @usbhs_write(ptr noundef %12, i32 noundef 100, i16 noundef zeroext %conv.i) #9
  %shl = shl nuw i16 %devsel.addr.0, 12
  %or = or i16 %shl, %maxp
  %16 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv1, align 4
  %pipe_info.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %pipe_info.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pipe_info.i.i, align 4
  %cmp.i.i = icmp eq ptr %19, %pipe
  %conv4.i.i = select i1 %cmp.i.i, i32 94, i32 108
  tail call void @usbhs_bset(ptr noundef %17, i32 noundef %conv4.i.i, i16 noundef zeroext -1, i16 noundef zeroext %or) #9
  %20 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv1, align 4
  %pipe_info15 = getelementptr inbounds %struct.usbhs_priv, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %pipe_info15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pipe_info15, align 4
  %cmp17 = icmp eq ptr %23, %pipe
  br i1 %cmp17, label %if.end.if.end24_crit_edge, label %if.then19

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv21 = select i1 %tobool.not, i16 0, i16 512
  %or22 = or i16 %conv21, %epnum
  tail call void @usbhs_bset(ptr noundef %21, i32 noundef 104, i16 noundef zeroext 527, i16 noundef zeroext %or22) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end.if.end24_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usbhsp_pipe_barrier(ptr noundef %pipe) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %call = tail call i32 @usbhs_mod_is_host(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  tail call void @usbhs_write(ptr noundef %1, i32 noundef 32, i16 noundef zeroext 0) #9
  tail call fastcc void @__usbhsp_pid_try_nak_if_stall(ptr noundef %pipe) #9
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %pipe_info.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %pipe_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe_info.i.i, align 4
  %cmp.i.i = icmp eq ptr %5, %pipe
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %pipe to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  %sub.i.i = shl nsw i32 %sub.ptr.div.i.i, 1
  %add.i.i = add nsw i32 %sub.i.i, 110
  %add.sink.i.i = select i1 %cmp.i.i, i32 96, i32 %add.i.i
  tail call void @usbhs_bset(ptr noundef %3, i32 noundef %add.sink.i.i, i16 noundef zeroext 3, i16 noundef zeroext 0) #9
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 1024, %entry ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %6 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv1, align 4
  %pipe_info.i7.i = getelementptr inbounds %struct.usbhs_priv, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %pipe_info.i7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipe_info.i7.i, align 4
  %cmp.i8.i = icmp eq ptr %9, %pipe
  %sub.ptr.rhs.cast.i10.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i11.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i10.i
  %sub.ptr.div.i12.i = sdiv exact i32 %sub.ptr.sub.i11.i, 36
  %sub.i13.i = shl nsw i32 %sub.ptr.div.i12.i, 1
  %add.i14.i = add nsw i32 %sub.i13.i, 110
  %add.sink.i15.i = select i1 %cmp.i8.i, i32 96, i32 %add.i14.i
  %call7.i.i = tail call zeroext i16 @usbhs_read(ptr noundef %7, i32 noundef %add.sink.i15.i) #9
  %10 = and i16 %call7.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %do.body.i.usbhs_pipe_disable.exit_crit_edge, label %if.end.i

do.body.i.usbhs_pipe_disable.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhs_pipe_disable.exit

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #9
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool2.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %tobool2.not.i, label %if.end.i.usbhs_pipe_disable.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

if.end.i.usbhs_pipe_disable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhs_pipe_disable.exit

usbhs_pipe_disable.exit:                          ; preds = %if.end.i.usbhs_pipe_disable.exit_crit_edge, %do.body.i.usbhs_pipe_disable.exit_crit_edge
  %conv4 = select i1 %tobool.not, i32 3, i32 4099
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %usbhs_pipe_disable.exit
  %timeout.0 = phi i32 [ 1024, %usbhs_pipe_disable.exit ], [ %dec, %if.end.do.body_crit_edge ]
  %12 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv1, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pipe_info.i, align 4
  %cmp.i = icmp eq ptr %15, %pipe
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %sub.i = shl nsw i32 %sub.ptr.div.i, 1
  %add.i = add nsw i32 %sub.i, 110
  %add.sink.i = select i1 %cmp.i, i32 96, i32 %add.i
  %call7.i = tail call zeroext i16 @usbhs_read(ptr noundef %13, i32 noundef %add.sink.i) #9
  %conv3 = zext i16 %call7.i to i32
  %and = and i32 %conv4, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #9
  %dec = add nsw i32 %timeout.0, -1
  %tobool6.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @usbhs_pipe_is_dir_host(ptr nocapture noundef readonly %pipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4
  ret i32 %and
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @usbhs_pipe_is_running(ptr nocapture noundef readonly %pipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 8
  ret i32 %and
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @usbhs_pipe_running(ptr nocapture noundef %pipe, i32 noundef %running) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %running)
  %tobool.not = icmp eq i32 %running, 0
  %flags1 = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 5
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %and = and i32 %1, -9
  %masksel = select i1 %tobool.not, i32 0, i32 8
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %flags1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_data_sequence(ptr noundef %pipe, i32 noundef %sequence) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sequence to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %sequence, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %val.0 = phi i16 [ 128, %sw.bb1 ], [ 256, %entry.sw.epilog_crit_edge ]
  %priv1.i = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %1 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pipe_info.i, align 4
  %cmp.i = icmp eq ptr %4, %pipe
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pipe to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %sub.i = shl nsw i32 %sub.ptr.div.i, 1
  %add.i = add nsw i32 %sub.i, 110
  %add.sink.i = select i1 %cmp.i, i32 96, i32 %add.i
  tail call void @usbhs_bset(ptr noundef %2, i32 noundef %add.sink.i, i16 noundef zeroext 384, i16 noundef zeroext %val.0) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_clear(ptr noundef %pipe) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_info, align 4
  %cmp = icmp eq ptr %3, %pipe
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usbhs_fifo_clear_dcp(ptr noundef %pipe) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pipe to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %sub.i = shl nsw i32 %sub.ptr.div.i, 1
  %add.i = add nsw i32 %sub.i, 110
  tail call void @usbhs_bset(ptr noundef %1, i32 noundef %add.i, i16 noundef zeroext 512, i16 noundef zeroext 512) #9
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %pipe_info.i7 = getelementptr inbounds %struct.usbhs_priv, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %pipe_info.i7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipe_info.i7, align 4
  %cmp.i8 = icmp eq ptr %7, %pipe
  %sub.ptr.rhs.cast.i10 = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i11 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i10
  %sub.ptr.div.i12 = sdiv exact i32 %sub.ptr.sub.i11, 36
  %sub.i13 = shl nsw i32 %sub.ptr.div.i12, 1
  %add.i14 = add nsw i32 %sub.i13, 110
  %add.sink.i15 = select i1 %cmp.i8, i32 96, i32 %add.i14
  tail call void @usbhs_bset(ptr noundef %5, i32 noundef %add.sink.i15, i16 noundef zeroext 512, i16 noundef zeroext 0) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_fifo_clear_dcp(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_clear_without_sequence(ptr noundef %pipe, i32 noundef %needs_bfre, i32 noundef %bfre_enable) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1.i = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_info.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pipe to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %4 = trunc i32 %sub.ptr.div.i to i16
  %conv.i = and i16 %4, 15
  tail call void @usbhs_write(ptr noundef %1, i32 noundef 100, i16 noundef zeroext %conv.i) #9
  %5 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %pipe_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pipe_info.i.i, align 4
  %cmp.i.i = icmp eq ptr %8, %pipe
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  %sub.i.i = shl nsw i32 %sub.ptr.div.i.i, 1
  %add.i.i = add nsw i32 %sub.i.i, 110
  %add.sink.i.i = select i1 %cmp.i.i, i32 96, i32 %add.i.i
  %call7.i.i = tail call zeroext i16 @usbhs_read(ptr noundef %6, i32 noundef %add.sink.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %needs_bfre)
  %tobool.not = icmp eq i32 %needs_bfre, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bfre_enable)
  %tobool1.not = icmp eq i32 %bfre_enable, 0
  %conv = select i1 %tobool1.not, i16 0, i16 1024
  %9 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i.i7 = getelementptr inbounds %struct.usbhs_priv, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %pipe_info.i.i7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pipe_info.i.i7, align 4
  %cmp.i.i8 = icmp eq ptr %12, %pipe
  %conv4.i.i = select i1 %cmp.i.i8, i32 92, i32 104
  tail call void @usbhs_bset(ptr noundef %10, i32 noundef %conv4.i.i, i16 noundef zeroext 1024, i16 noundef zeroext %conv) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i9 = getelementptr inbounds %struct.usbhs_priv, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %pipe_info.i9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pipe_info.i9, align 4
  %cmp.i = icmp eq ptr %16, %pipe
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usbhs_fifo_clear_dcp(ptr noundef %pipe) #9
  br label %usbhs_pipe_clear.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.rhs.cast.i.i11 = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i12 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.i11
  %sub.ptr.div.i.i13 = sdiv exact i32 %sub.ptr.sub.i.i12, 36
  %sub.i.i14 = shl nsw i32 %sub.ptr.div.i.i13, 1
  %add.i.i15 = add nsw i32 %sub.i.i14, 110
  tail call void @usbhs_bset(ptr noundef %14, i32 noundef %add.i.i15, i16 noundef zeroext 512, i16 noundef zeroext 512) #9
  %17 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i7.i = getelementptr inbounds %struct.usbhs_priv, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %pipe_info.i7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pipe_info.i7.i, align 4
  %cmp.i8.i = icmp eq ptr %20, %pipe
  %sub.ptr.rhs.cast.i10.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i11.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i10.i
  %sub.ptr.div.i12.i = sdiv exact i32 %sub.ptr.sub.i11.i, 36
  %sub.i13.i = shl nsw i32 %sub.ptr.div.i12.i, 1
  %add.i14.i = add nsw i32 %sub.i13.i, 110
  %add.sink.i15.i = select i1 %cmp.i8.i, i32 96, i32 %add.i14.i
  tail call void @usbhs_bset(ptr noundef %18, i32 noundef %add.sink.i15.i, i16 noundef zeroext 512, i16 noundef zeroext 0) #9
  br label %usbhs_pipe_clear.exit

usbhs_pipe_clear.exit:                            ; preds = %if.else.i, %if.then.i
  %21 = and i16 %call7.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %switch.not.not = icmp eq i16 %21, 0
  %spec.select = select i1 %switch.not.not, i16 256, i16 128
  %22 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i.i17 = getelementptr inbounds %struct.usbhs_priv, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %pipe_info.i.i17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pipe_info.i.i17, align 4
  %cmp.i.i18 = icmp eq ptr %25, %pipe
  %sub.ptr.rhs.cast.i.i20 = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i.i21 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.i20
  %sub.ptr.div.i.i22 = sdiv exact i32 %sub.ptr.sub.i.i21, 36
  %sub.i.i23 = shl nsw i32 %sub.ptr.div.i.i22, 1
  %add.i.i24 = add nsw i32 %sub.i.i23, 110
  %add.sink.i.i25 = select i1 %cmp.i.i18, i32 96, i32 %add.i.i24
  tail call void @usbhs_bset(ptr noundef %23, i32 noundef %add.sink.i.i25, i16 noundef zeroext 384, i16 noundef zeroext %spec.select) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_config_change_bfre(ptr noundef %pipe, i32 noundef %enable) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_info, align 4
  %cmp = icmp eq ptr %3, %pipe
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pipe to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %4 = trunc i32 %sub.ptr.div.i to i16
  %conv.i = and i16 %4, 15
  tail call void @usbhs_write(ptr noundef %1, i32 noundef 100, i16 noundef zeroext %conv.i) #9
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %pipe_info.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %pipe_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pipe_info.i.i, align 4
  %cmp.i.i = icmp eq ptr %8, %pipe
  %..i.i = select i1 %cmp.i.i, i32 92, i32 104
  %call5.i.i = tail call zeroext i16 @usbhs_read(ptr noundef %6, i32 noundef %..i.i) #9
  %9 = lshr i16 %call5.i.i, 10
  %.lobit = and i16 %9, 1
  %10 = zext i16 %.lobit to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %enable)
  %tobool3.not = icmp eq i32 %10, %enable
  br i1 %tobool3.not, label %if.end.return_crit_edge, label %if.end5

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usbhs_pipe_clear_without_sequence(ptr noundef %pipe, i32 noundef 1, i32 noundef %enable)
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_init(ptr nocapture noundef %priv, ptr noundef %dma_map_ctrl) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 9
  %size = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13 = icmp sgt i32 %1, 0
  br i1 %cmp13, label %entry.land.rhs_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %usbhs_pipe_clear.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %i.014 = phi i32 [ %inc, %usbhs_pipe_clear.exit.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_info, align 4
  %add.ptr = getelementptr %struct.usbhs_pipe, ptr %3, i32 %i.014
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %do.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body:                                          ; preds = %land.rhs
  %flags = getelementptr %struct.usbhs_pipe, ptr %3, i32 %i.014, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %flags, align 4
  %fifo = getelementptr %struct.usbhs_pipe, ptr %3, i32 %i.014, i32 2
  %5 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fifo, align 4
  %mod_private = getelementptr %struct.usbhs_pipe, ptr %3, i32 %i.014, i32 7
  %6 = ptrtoint ptr %mod_private to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %mod_private, align 4
  %list = getelementptr %struct.usbhs_pipe, ptr %3, i32 %i.014, i32 3
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr %struct.usbhs_pipe, ptr %3, i32 %i.014, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i, align 4
  %priv.i = getelementptr %struct.usbhs_pipe, ptr %3, i32 %i.014, i32 1
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pipe_info.i, align 4
  %cmp.i = icmp eq ptr %12, %add.ptr
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usbhs_fifo_clear_dcp(ptr noundef nonnull %add.ptr) #9
  br label %usbhs_pipe_clear.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  %sub.i.i = shl nsw i32 %sub.ptr.div.i.i, 1
  %add.i.i = add nsw i32 %sub.i.i, 110
  tail call void @usbhs_bset(ptr noundef %10, i32 noundef %add.i.i, i16 noundef zeroext 512, i16 noundef zeroext 512) #9
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 4
  %pipe_info.i7.i = getelementptr inbounds %struct.usbhs_priv, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %pipe_info.i7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pipe_info.i7.i, align 4
  %cmp.i8.i = icmp eq ptr %16, %add.ptr
  %sub.ptr.rhs.cast.i10.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i11.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i10.i
  %sub.ptr.div.i12.i = sdiv exact i32 %sub.ptr.sub.i11.i, 36
  %sub.i13.i = shl nsw i32 %sub.ptr.div.i12.i, 1
  %add.i14.i = add nsw i32 %sub.i13.i, 110
  %add.sink.i15.i = select i1 %cmp.i8.i, i32 96, i32 %add.i14.i
  tail call void @usbhs_bset(ptr noundef %14, i32 noundef %add.sink.i15.i, i16 noundef zeroext 512, i16 noundef zeroext 0) #9
  br label %usbhs_pipe_clear.exit

usbhs_pipe_clear.exit:                            ; preds = %if.else.i, %if.then.i
  %inc = add nuw nsw i32 %i.014, 1
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %cmp = icmp slt i32 %inc, %18
  br i1 %cmp, label %usbhs_pipe_clear.exit.land.rhs_crit_edge, label %usbhs_pipe_clear.exit.for.end_crit_edge

usbhs_pipe_clear.exit.for.end_crit_edge:          ; preds = %usbhs_pipe_clear.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

usbhs_pipe_clear.exit.land.rhs_crit_edge:         ; preds = %usbhs_pipe_clear.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.end:                                          ; preds = %usbhs_pipe_clear.exit.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  %dma_map_ctrl4 = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 9, i32 2
  %19 = ptrtoint ptr %dma_map_ctrl4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dma_map_ctrl, ptr %dma_map_ctrl4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @usbhs_pipe_malloc(ptr noundef %priv, i32 noundef %endpoint_type, i32 noundef %dir_in) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call i32 @usbhs_mod_is_host(ptr noundef %priv) #9
  %size.i = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.i = icmp sgt i32 %3, 0
  br i1 %cmp25.i, label %land.rhs.lr.ph.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.rhs.lr.ph.i:                                 ; preds = %entry
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 9
  %4 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pipe_info.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %i.026.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.usbhs_pipe, ptr %5, i32 %i.026.i
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %land.rhs.i.do.end_crit_edge, label %for.body.i

land.rhs.i.do.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.i:                                       ; preds = %land.rhs.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %endpoint_type)
  %cmp3.i = icmp eq i32 %7, %endpoint_type
  br i1 %cmp3.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %flags.i = getelementptr %struct.usbhs_pipe, ptr %5, i32 %i.026.i, i32 5
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %for.inc.i.do.end_crit_edge, %land.rhs.i.do.end_crit_edge, %entry.do.end_crit_edge
  %arrayidx = getelementptr [4 x ptr], ptr @usbhsp_pipe_name, i32 0, i32 %endpoint_type
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, ptr noundef %11) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %flags.i, align 4
  %list = getelementptr %struct.usbhs_pipe, ptr %5, i32 %i.026.i, i32 3
  %13 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr %struct.usbhs_pipe, ptr %5, i32 %i.026.i, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %prev.i, align 4
  tail call fastcc void @__usbhsp_pid_try_nak_if_stall(ptr noundef nonnull %add.ptr.i) #9
  %priv1.i.i = getelementptr %struct.usbhs_pipe, ptr %5, i32 %i.026.i, i32 1
  %15 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv1.i.i, align 4
  %pipe_info.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %pipe_info.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pipe_info.i.i, align 4
  %cmp.i.i = icmp eq ptr %18, %add.ptr.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  %sub.i.i = shl nsw i32 %sub.ptr.div.i.i, 1
  %add.i.i = add nsw i32 %sub.i.i, 110
  %add.sink.i.i = select i1 %cmp.i.i, i32 96, i32 %add.i.i
  tail call void @usbhs_bset(ptr noundef %16, i32 noundef %add.sink.i.i, i16 noundef zeroext 3, i16 noundef zeroext 0) #9
  br label %do.body.i68

do.body.i68:                                      ; preds = %if.end.i69.do.body.i68_crit_edge, %if.end
  %timeout.0.i = phi i32 [ 1024, %if.end ], [ %dec.i, %if.end.i69.do.body.i68_crit_edge ]
  %19 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv1.i.i, align 4
  %pipe_info.i7.i = getelementptr inbounds %struct.usbhs_priv, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %pipe_info.i7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pipe_info.i7.i, align 4
  %cmp.i8.i = icmp eq ptr %22, %add.ptr.i
  %sub.ptr.rhs.cast.i10.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i11.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i10.i
  %sub.ptr.div.i12.i = sdiv exact i32 %sub.ptr.sub.i11.i, 36
  %sub.i13.i = shl nsw i32 %sub.ptr.div.i12.i, 1
  %add.i14.i = add nsw i32 %sub.i13.i, 110
  %add.sink.i15.i = select i1 %cmp.i8.i, i32 96, i32 %add.i14.i
  %call7.i.i = tail call zeroext i16 @usbhs_read(ptr noundef %20, i32 noundef %add.sink.i15.i) #9
  %23 = and i16 %call7.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i67 = icmp eq i16 %23, 0
  br i1 %tobool.not.i67, label %do.body.i68.usbhs_pipe_disable.exit_crit_edge, label %if.end.i69

do.body.i68.usbhs_pipe_disable.exit_crit_edge:    ; preds = %do.body.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhs_pipe_disable.exit

if.end.i69:                                       ; preds = %do.body.i68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #9
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool2.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %tobool2.not.i, label %if.end.i69.usbhs_pipe_disable.exit_crit_edge, label %if.end.i69.do.body.i68_crit_edge

if.end.i69.do.body.i68_crit_edge:                 ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i68

if.end.i69.usbhs_pipe_disable.exit_crit_edge:     ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhs_pipe_disable.exit

usbhs_pipe_disable.exit:                          ; preds = %if.end.i69.usbhs_pipe_disable.exit_crit_edge, %do.body.i68.usbhs_pipe_disable.exit_crit_edge
  %call3 = tail call fastcc i32 @usbhsp_pipe_barrier(ptr noundef nonnull %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  %25 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv1.i.i, align 4
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pipe_info, align 4
  br i1 %cmp, label %do.end7, label %if.end10

do.end7:                                          ; preds = %usbhs_pipe_disable.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.rhs.cast = ptrtoint ptr %28 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %sub.ptr.div) #12
  br label %cleanup

if.end10:                                         ; preds = %usbhs_pipe_disable.exit
  %cmp.i = icmp eq ptr %28, %add.ptr.i
  br i1 %cmp.i, label %do.end16, label %if.end.i71

if.end.i71:                                       ; preds = %if.end10
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i, align 4
  %arrayidx.i = getelementptr [4 x i16], ptr @usbhsp_setup_pipecfg.type_array, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir_in)
  %tobool.i = icmp ne i32 %dir_in, 0
  br i1 %tobool.i, label %if.then12.i, label %if.end.i71.if.end13.i_crit_edge

if.end.i71.if.end13.i_crit_edge:                  ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %34, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end.i71.if.end13.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.i = icmp ne i32 %call, 0
  %xor69.i = xor i1 %tobool.i, %tobool14.i
  %spec.select.i = select i1 %xor69.i, i16 16, i16 0
  br i1 %xor69.i, label %if.end13.i.if.end17_crit_edge, label %if.then27.i

if.end13.i.if.end17_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then27.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  %or29.i = or i32 %36, 2
  store i32 %or29.i, ptr %flags.i, align 4
  br label %if.end17

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end17:                                         ; preds = %if.then27.i, %if.end13.i.if.end17_crit_edge
  %spec.select70.i = phi i16 [ 128, %if.then27.i ], [ 0, %if.end13.i.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp32.i = icmp eq i32 %30, 2
  %shtnak.0.i = select i1 %cmp32.i, i16 %spec.select70.i, i16 0
  %or45.i = or i16 %32, %spec.select.i
  %or47.i = or i16 %or45.i, %shtnak.0.i
  %37 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv1.i.i, align 4
  %pdev.i = getelementptr inbounds %struct.usbhs_priv, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i, align 4
  %pipe_info.i74 = getelementptr inbounds %struct.usbhs_priv, ptr %38, i32 0, i32 9
  %41 = ptrtoint ptr %pipe_info.i74 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pipe_info.i74, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %dparam.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %38, i32 0, i32 3
  %43 = ptrtoint ptr %dparam.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dparam.i.i, align 4
  %bufsize.i = getelementptr %struct.renesas_usbhs_driver_pipe_config, ptr %44, i32 %sub.ptr.div.i, i32 1
  %45 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %bufsize.i, align 2
  %bufnum.i = getelementptr %struct.renesas_usbhs_driver_pipe_config, ptr %44, i32 %sub.ptr.div.i, i32 2
  %47 = ptrtoint ptr %bufnum.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bufnum.i, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhsp_setup_pipebuff.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhs_pipe_malloc, %if.then.i)) #9
          to label %usbhsp_setup_pipebuff.exit [label %if.then.i], !srcloc !70

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %conv5.i = zext i16 %46 to i32
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3
  %conv11.i = zext i8 %48 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhsp_setup_pipebuff.__UNIQUE_ID_ddebug234, ptr noundef %dev2.i, ptr noundef nonnull @.str.28, i32 noundef %sub.ptr.div.i, i32 noundef %conv5.i, i32 noundef %conv11.i) #9
  br label %usbhsp_setup_pipebuff.exit

usbhsp_setup_pipebuff.exit:                       ; preds = %if.then.i, %if.end17
  %49 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv1.i.i, align 4
  %pipe_info.i77 = getelementptr inbounds %struct.usbhs_priv, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %pipe_info.i77 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pipe_info.i77, align 4
  %sub.ptr.rhs.cast.i79 = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i80 = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i79
  %sub.ptr.div.i81 = sdiv exact i32 %sub.ptr.sub.i80, 36
  %53 = trunc i32 %sub.ptr.div.i81 to i16
  %conv.i = and i16 %53, 15
  tail call void @usbhs_write(ptr noundef %50, i32 noundef 100, i16 noundef zeroext %conv.i) #9
  %54 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv1.i.i, align 4
  %pipe_info.i.i83 = getelementptr inbounds %struct.usbhs_priv, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %pipe_info.i.i83 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pipe_info.i.i83, align 4
  %cmp.i.i84 = icmp eq ptr %57, %add.ptr.i
  %conv4.i.i = select i1 %cmp.i.i84, i32 92, i32 104
  tail call void @usbhs_bset(ptr noundef %55, i32 noundef %conv4.i.i, i16 noundef zeroext -1, i16 noundef zeroext %or47.i) #9
  %58 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv1.i.i, align 4
  %pipe_info.i86 = getelementptr inbounds %struct.usbhs_priv, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %pipe_info.i86 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pipe_info.i86, align 4
  %cmp.i87 = icmp eq ptr %61, %add.ptr.i
  br i1 %cmp.i87, label %usbhsp_setup_pipebuff.exit.usbhsp_pipe_buf_set.exit_crit_edge, label %if.end.i88

usbhsp_setup_pipebuff.exit.usbhsp_pipe_buf_set.exit_crit_edge: ; preds = %usbhsp_setup_pipebuff.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %usbhsp_pipe_buf_set.exit

if.end.i88:                                       ; preds = %usbhsp_setup_pipebuff.exit
  call void @__sanitizer_cov_trace_pc() #11
  %62 = shl i16 %46, 4
  %63 = add i16 %62, 31744
  %64 = and i16 %63, 31744
  %conv13.i = zext i8 %48 to i16
  %or.i75 = or i16 %64, %conv13.i
  tail call void @usbhs_bset(ptr noundef %59, i32 noundef 106, i16 noundef zeroext -1, i16 noundef zeroext %or.i75) #9
  br label %usbhsp_pipe_buf_set.exit

usbhsp_pipe_buf_set.exit:                         ; preds = %if.end.i88, %usbhsp_setup_pipebuff.exit.usbhsp_pipe_buf_set.exit_crit_edge
  %65 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv1.i.i, align 4
  %pipe_info.i90 = getelementptr inbounds %struct.usbhs_priv, ptr %66, i32 0, i32 9
  %67 = ptrtoint ptr %pipe_info.i90 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pipe_info.i90, align 4
  %cmp.i91 = icmp eq ptr %68, %add.ptr.i
  br i1 %cmp.i91, label %if.then.i92, label %if.else.i

if.then.i92:                                      ; preds = %usbhsp_pipe_buf_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usbhs_fifo_clear_dcp(ptr noundef nonnull %add.ptr.i) #9
  br label %usbhs_pipe_clear.exit

if.else.i:                                        ; preds = %usbhsp_pipe_buf_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.rhs.cast.i.i94 = ptrtoint ptr %68 to i32
  %sub.ptr.sub.i.i95 = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i94
  %sub.ptr.div.i.i96 = sdiv exact i32 %sub.ptr.sub.i.i95, 36
  %sub.i.i97 = shl nsw i32 %sub.ptr.div.i.i96, 1
  %add.i.i98 = add nsw i32 %sub.i.i97, 110
  tail call void @usbhs_bset(ptr noundef %66, i32 noundef %add.i.i98, i16 noundef zeroext 512, i16 noundef zeroext 512) #9
  %69 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv1.i.i, align 4
  %pipe_info.i7.i99 = getelementptr inbounds %struct.usbhs_priv, ptr %70, i32 0, i32 9
  %71 = ptrtoint ptr %pipe_info.i7.i99 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pipe_info.i7.i99, align 4
  %cmp.i8.i100 = icmp eq ptr %72, %add.ptr.i
  %sub.ptr.rhs.cast.i10.i101 = ptrtoint ptr %72 to i32
  %sub.ptr.sub.i11.i102 = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i10.i101
  %sub.ptr.div.i12.i103 = sdiv exact i32 %sub.ptr.sub.i11.i102, 36
  %sub.i13.i104 = shl nsw i32 %sub.ptr.div.i12.i103, 1
  %add.i14.i105 = add nsw i32 %sub.i13.i104, 110
  %add.sink.i15.i106 = select i1 %cmp.i8.i100, i32 96, i32 %add.i14.i105
  tail call void @usbhs_bset(ptr noundef %70, i32 noundef %add.sink.i15.i106, i16 noundef zeroext 512, i16 noundef zeroext 0) #9
  br label %usbhs_pipe_clear.exit

usbhs_pipe_clear.exit:                            ; preds = %if.else.i, %if.then.i92
  %73 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv1.i.i, align 4
  %pipe_info.i.i109 = getelementptr inbounds %struct.usbhs_priv, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %pipe_info.i.i109 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pipe_info.i.i109, align 4
  %cmp.i.i110 = icmp eq ptr %76, %add.ptr.i
  %sub.ptr.rhs.cast.i.i112 = ptrtoint ptr %76 to i32
  %sub.ptr.sub.i.i113 = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i112
  %sub.ptr.div.i.i114 = sdiv exact i32 %sub.ptr.sub.i.i113, 36
  %sub.i.i115 = shl nsw i32 %sub.ptr.div.i.i114, 1
  %add.i.i116 = add nsw i32 %sub.i.i115, 110
  %add.sink.i.i117 = select i1 %cmp.i.i110, i32 96, i32 %add.i.i116
  tail call void @usbhs_bset(ptr noundef %74, i32 noundef %add.sink.i.i117, i16 noundef zeroext 384, i16 noundef zeroext 256) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhs_pipe_malloc.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhs_pipe_malloc, %if.then24)) #9
          to label %cleanup [label %if.then24], !srcloc !70

if.then24:                                        ; preds = %usbhs_pipe_clear.exit
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %priv1.i.i, align 4
  %pipe_info26 = getelementptr inbounds %struct.usbhs_priv, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %pipe_info26 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pipe_info26, align 4
  %sub.ptr.rhs.cast29 = ptrtoint ptr %80 to i32
  %sub.ptr.sub30 = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast29
  %sub.ptr.div31 = sdiv exact i32 %sub.ptr.sub30, 36
  %81 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr.i, align 4
  %arrayidx.i118 = getelementptr [4 x ptr], ptr @usbhsp_pipe_name, i32 0, i32 %82
  %83 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i118, align 4
  %85 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags.i, align 4
  %and.i120 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i120)
  %tobool34.not = icmp eq i32 %and.i120, 0
  %cond = select i1 %tobool34.not, ptr @.str.16, ptr @.str.15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhs_pipe_malloc.__UNIQUE_ID_ddebug235, ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %sub.ptr.div31, ptr noundef %84, ptr noundef nonnull %cond) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %usbhs_pipe_clear.exit, %do.end16, %do.end7, %do.end
  %retval.0 = phi ptr [ null, %do.end7 ], [ null, %do.end16 ], [ null, %do.end ], [ %add.ptr.i, %if.then24 ], [ %add.ptr.i, %usbhs_pipe_clear.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbhs_mod_is_host(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_free(ptr noundef %pipe) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1.i = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_info.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pipe to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %4 = trunc i32 %sub.ptr.div.i to i16
  %conv.i = and i16 %4, 15
  tail call void @usbhs_write(ptr noundef %1, i32 noundef 100, i16 noundef zeroext %conv.i) #9
  %5 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv1.i, align 4
  %pipe_info.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %pipe_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pipe_info.i.i, align 4
  %cmp.i.i = icmp eq ptr %8, %pipe
  %conv4.i.i = select i1 %cmp.i.i, i32 92, i32 104
  tail call void @usbhs_bset(ptr noundef %6, i32 noundef %conv4.i.i, i16 noundef zeroext -1, i16 noundef zeroext 0) #9
  %flags.i = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 5
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %flags.i, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @usbhs_pipe_select_fifo(ptr noundef %pipe, ptr noundef %fifo) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo1 = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 2
  %0 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pipe3 = getelementptr inbounds %struct.usbhs_fifo, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pipe3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pipe3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %fifo1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fifo, ptr %fifo1, align 4
  %tobool5.not = icmp eq ptr %fifo, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pipe7 = getelementptr inbounds %struct.usbhs_fifo, ptr %fifo, i32 0, i32 4
  %4 = ptrtoint ptr %pipe7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pipe, ptr %pipe7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @usbhs_dcp_malloc(ptr nocapture noundef readonly %priv) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %size.i = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25.i = icmp sgt i32 %1, 0
  br i1 %cmp25.i, label %land.rhs.lr.ph.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs.lr.ph.i:                                 ; preds = %entry
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 9
  %2 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_info.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %i.026.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.usbhs_pipe, ptr %3, i32 %i.026.i
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %land.rhs.i.cleanup_crit_edge, label %for.body.i

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %land.rhs.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.i = icmp eq i32 %5, 0
  br i1 %cmp3.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %flags.i = getelementptr %struct.usbhs_pipe, ptr %3, i32 %i.026.i, i32 5
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %flags.i, align 4
  %list = getelementptr %struct.usbhs_pipe, ptr %3, i32 %i.026.i, i32 3
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr %struct.usbhs_pipe, ptr %3, i32 %i.026.i, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.inc.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr.i, %if.end ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.i.cleanup_crit_edge ], [ null, %land.rhs.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_dcp_control_transfer_done(ptr noundef %pipe) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_info, align 4
  %cmp.not = icmp eq ptr %3, %pipe
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !71

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 790, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call fastcc void @__usbhsp_pid_try_nak_if_stall(ptr noundef %pipe) #9
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 4
  %pipe_info.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %pipe_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pipe_info.i.i, align 4
  %cmp.i.i = icmp eq ptr %7, %pipe
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %pipe to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  %sub.i.i = shl nsw i32 %sub.ptr.div.i.i, 1
  %add.i.i = add nsw i32 %sub.i.i, 110
  %add.sink.i.i = select i1 %cmp.i.i, i32 96, i32 %add.i.i
  tail call void @usbhs_bset(ptr noundef %5, i32 noundef %add.sink.i.i, i16 noundef zeroext 3, i16 noundef zeroext 1) #9
  %call = tail call i32 @usbhs_mod_is_host(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %if.then24, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv1, align 4
  %pipe_info.i = getelementptr inbounds %struct.usbhs_priv, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %pipe_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pipe_info.i, align 4
  %cmp.i = icmp eq ptr %11, %pipe
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %sub.i = shl nsw i32 %sub.ptr.div.i, 1
  %add.i = add nsw i32 %sub.i, 110
  %add.sink.i = select i1 %cmp.i, i32 96, i32 %add.i
  tail call void @usbhs_bset(ptr noundef %9, i32 noundef %add.sink.i, i16 noundef zeroext 4, i16 noundef zeroext 4) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_dcp_dir_for_host(ptr noundef readonly %pipe, i32 noundef %dir_out) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir_out)
  %tobool.not = icmp eq i32 %dir_out, 0
  %conv = select i1 %tobool.not, i16 0, i16 16
  %priv1.i.i = getelementptr inbounds %struct.usbhs_pipe, ptr %pipe, i32 0, i32 1
  %0 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i.i, align 4
  %pipe_info.i.i = getelementptr inbounds %struct.usbhs_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %pipe_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_info.i.i, align 4
  %cmp.i.i = icmp eq ptr %3, %pipe
  %conv4.i.i = select i1 %cmp.i.i, i32 92, i32 104
  tail call void @usbhs_bset(ptr noundef %1, i32 noundef %conv4.i.i, i16 noundef zeroext 16, i16 noundef zeroext %conv) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usbhs_pipe_probe(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 9
  %pdev = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %dparam = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %dparam to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dparam, align 4
  %pipe_size4 = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %pipe_size4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pipe_size4, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 36) #9
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !72

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %pipe_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %pipe_info, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #13
  %12 = ptrtoint ptr %pipe_info to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i, ptr %pipe_info, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end9

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end7.i.i
  %size = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %5, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1262.not = icmp eq i32 %5, 0
  br i1 %cmp1262.not, label %if.end9.cleanup_crit_edge, label %if.end9.land.rhs_crit_edge

if.end9.land.rhs_crit_edge:                       ; preds = %if.end9
  br label %land.rhs

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.end9.land.rhs_crit_edge
  %i.063 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %if.end9.land.rhs_crit_edge ]
  %14 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pipe_info, align 4
  %add.ptr = getelementptr %struct.usbhs_pipe, ptr %15, i32 %i.063
  %tobool16.not = icmp eq ptr %add.ptr, null
  br i1 %tobool16.not, label %land.rhs.cleanup_crit_edge, label %for.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %land.rhs
  %priv17 = getelementptr %struct.usbhs_pipe, ptr %15, i32 %i.063, i32 1
  %16 = ptrtoint ptr %priv17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %priv, ptr %priv17, align 4
  %arrayidx18 = getelementptr %struct.renesas_usbhs_driver_pipe_config, ptr %3, i32 %i.063
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx18, align 2
  %19 = and i8 %18, 3
  %and = zext i8 %19 to i32
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and, ptr %add.ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbhs_pipe_probe.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbhs_pipe_probe, %if.then26)) #9
          to label %for.inc [label %if.then26], !srcloc !70

if.then26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx18, align 2
  %idxprom = zext i8 %22 to i32
  %arrayidx29 = getelementptr [4 x ptr], ptr @usbhsp_pipe_name, i32 0, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx29, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbhs_pipe_probe.__UNIQUE_ID_ddebug236, ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %i.063, ptr noundef %24) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %for.body
  %inc = add nuw nsw i32 %i.063, 1
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  %cmp12 = icmp slt i32 %inc, %26
  br i1 %cmp12, label %for.inc.land.rhs_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usbhs_pipe_remove(ptr nocapture noundef readonly %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe_info = getelementptr inbounds %struct.usbhs_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %pipe_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe_info, align 4
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @usbhs_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_bset(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbhs_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/renesas_usbhs/pipe.c", i32 514, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @usbhs_pipe_config_update._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @usbhs_pipe_config_update._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/renesas_usbhs/pipe.c", i32 704, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @usbhs_pipe_malloc._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @usbhs_pipe_malloc._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/renesas_usbhs/pipe.c", i32 716, i32 3}
!15 = !{ptr @usbhs_pipe_malloc._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @usbhs_pipe_malloc._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/renesas_usbhs/pipe.c", i32 721, i32 3}
!19 = !{ptr @usbhs_pipe_malloc._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @usbhs_pipe_malloc._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/renesas_usbhs/pipe.c", i32 734, i32 2}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @usbhs_pipe_malloc.__UNIQUE_ID_ddebug235, !22, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!25 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/renesas_usbhs/pipe.c", i32 819, i32 3}
!29 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @usbhs_pipe_probe._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @usbhs_pipe_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/renesas_usbhs/pipe.c", i32 839, i32 3}
!34 = !{ptr @usbhs_pipe_probe.__UNIQUE_ID_ddebug236, !33, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/renesas_usbhs/pipe.c", i32 27, i32 32}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/renesas_usbhs/pipe.c", i32 30, i32 29}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/renesas_usbhs/pipe.c", i32 28, i32 29}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/renesas_usbhs/pipe.c", i32 29, i32 29}
!43 = !{ptr @usbhsp_pipe_name, !44, !"usbhsp_pipe_name", i1 false, i1 false}
!44 = !{!"../drivers/usb/renesas_usbhs/pipe.c", i32 26, i32 14}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/renesas_usbhs/pipe.c", i32 180, i32 3}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @usbhsp_pipe_tre_set._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @usbhsp_pipe_tre_set._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/renesas_usbhs/pipe.c", i32 144, i32 3}
!52 = !{ptr @usbhsp_pipe_trn_set._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @usbhsp_pipe_trn_set._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @usbhsp_setup_pipecfg.type_array, !55, !"type_array", i1 false, i1 false}
!55 = !{!"../drivers/usb/renesas_usbhs/pipe.c", i32 410, i32 19}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/renesas_usbhs/pipe.c", i32 495, i32 2}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @usbhsp_setup_pipebuff.__UNIQUE_ID_ddebug234, !57, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i8 0, i8 2}
!70 = !{i64 2148772585, i64 2148772590, i64 2148772603, i64 2148772647, i64 2148772681, i64 2148772702}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{!"branch_weights", i32 1, i32 2000}
