; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/earlycon.c_pt.bc'
source_filename = "../drivers/tty/serial/earlycon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.earlycon_id = type { [15 x i8], i8, [128 x i8], ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.earlycon_device = type { ptr, %struct.uart_port, [16 x i8], i32 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@early_con = internal global { %struct.console, [60 x i8] } { %struct.console { [16 x i8] c"uart\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i16 9, i16 0, i32 0, i32 0, i32 0, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__earlycon_table = external dso_local constant [0 x %struct.earlycon_id], align 4
@__earlycon_table_end = external dso_local constant [0 x %struct.earlycon_id], align 4
@__setup_str_param_setup_earlycon = internal constant [9 x i8] c"earlycon\00", section ".init.rodata", align 1
@__setup_param_setup_earlycon = internal global %struct.obs_kernel_param { ptr @__setup_str_param_setup_earlycon, ptr @param_setup_earlycon, i32 1 }, section ".init.setup", align 4
@early_console_dev = internal global { %struct.earlycon_device, [96 x i8] } { %struct.earlycon_device { ptr @early_con, %struct.uart_port zeroinitializer, [16 x i8] zeroinitializer, i32 0 }, [96 x i8] zeroinitializer }, align 32
@of_setup_earlycon.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&port->lock\00", [20 x i8] zeroinitializer }, align 32
@of_setup_earlycon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014earlycon: [%s] bad address\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"of_setup_earlycon\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/tty/serial/earlycon.c\00", [34 x i8] zeroinitializer }, align 32
@of_setup_earlycon._entry_ptr = internal global ptr @of_setup_earlycon._entry, section ".printk_index", align 4
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reg-offset\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-shift\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"big-endian\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"native-endian\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg-io-width\00", [19 x i8] zeroinitializer }, align 32
@of_setup_earlycon._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014earlycon: [%s] unsupported reg-io-width\0A\00", [53 x i8] zeroinitializer }, align 32
@of_setup_earlycon._entry_ptr.11 = internal global ptr @of_setup_earlycon._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"current-speed\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@earlycon_acpi_spcr_enable = dso_local local_unnamed_addr global i8 0, section ".init.data", align 1
@register_earlycon.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@earlycon_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013earlycon: %s: Couldn't map %pa\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"earlycon_map\00", [19 x i8] zeroinitializer }, align 32
@earlycon_map._entry_ptr = internal global ptr @earlycon_map._entry, section ".printk_index", align 4
@earlycon_print_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016earlycon: %s%d at MMIO%s %pa (options '%s')\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"earlycon_print_info\00", [44 x i8] zeroinitializer }, align 32
@earlycon_print_info._entry_ptr = internal global ptr @earlycon_print_info._entry, section ".printk_index", align 4
@.str.19 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"16\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"32\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"32be\00", [27 x i8] zeroinitializer }, align 32
@earlycon_print_info._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.3, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016earlycon: %s%d at I/O port 0x%lx (options '%s')\0A\00", [45 x i8] zeroinitializer }, align 32
@earlycon_print_info._entry_ptr.25 = internal global ptr @earlycon_print_info._entry.23, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 44]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 4294967182, i64 4294967294]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 7]
@__sancov_gen_cov_switch_values.30 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 2, i64 3, i64 6, i64 7]
@___asan_gen_.31 = private unnamed_addr constant [10 x i8] c"early_con\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 29, i32 23 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"early_console_dev\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 35, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 256, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 260, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 265, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 270, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 273, i32 41 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 275, i32 30 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 276, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 289, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 294, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 298, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 141, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 124, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 50, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 81, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [33 x i8] c"../drivers/tty/serial/earlycon.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 88, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__setup_param_setup_earlycon, ptr @earlycon_map._entry, ptr @earlycon_map._entry_ptr, ptr @earlycon_print_info._entry, ptr @earlycon_print_info._entry.23, ptr @earlycon_print_info._entry_ptr, ptr @earlycon_print_info._entry_ptr.25, ptr @of_setup_earlycon._entry, ptr @of_setup_earlycon._entry.9, ptr @of_setup_earlycon._entry_ptr, ptr @of_setup_earlycon._entry_ptr.11, ptr @early_con, ptr @early_console_dev, ptr @of_setup_earlycon.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @register_earlycon.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_con to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_console_dev to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_setup_earlycon.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_setup_earlycon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_setup_earlycon._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_earlycon.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @earlycon_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @earlycon_print_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @earlycon_print_info._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @setup_earlycon(ptr noundef %buf) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup33_crit_edge, label %lor.lhs.false

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup33

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup33_crit_edge, label %if.end

lor.lhs.false.cleanup33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup33

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i16, ptr getelementptr inbounds (%struct.console, ptr @early_con, i32 0, i32 8), align 4
  %3 = and i16 %2, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool2.not = icmp eq i16 %3, 0
  br i1 %tobool2.not, label %if.end.again_crit_edge, label %if.end.cleanup33_crit_edge

if.end.cleanup33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup33

if.end.again_crit_edge:                           ; preds = %if.end
  br label %again

again:                                            ; preds = %for.end.again_crit_edge, %if.end.again_crit_edge
  %empty_compatible.0.off0 = phi i1 [ false, %for.end.again_crit_edge ], [ true, %if.end.again_crit_edge ]
  br i1 icmp ult (ptr @__earlycon_table, ptr @__earlycon_table_end), label %again.for.body_crit_edge, label %again.for.end_crit_edge

again.for.end_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

again.for.body_crit_edge:                         ; preds = %again
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %again.for.body_crit_edge
  %match.060 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ @__earlycon_table, %again.for.body_crit_edge ]
  %call = tail call i32 @strlen(ptr noundef %match.060) #10
  %call8 = tail call i32 @strncmp(ptr noundef nonnull %buf, ptr noundef %match.060, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end11:                                         ; preds = %for.body
  br i1 %empty_compatible.0.off0, label %land.lhs.true, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end11
  %compatible = getelementptr inbounds %struct.earlycon_id, ptr %match.060, i32 0, i32 2
  %4 = ptrtoint ptr %compatible to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %compatible, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool16.not = icmp eq i8 %5, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end18_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %arrayidx19 = getelementptr i8, ptr %buf, i32 %call
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx19, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %if.end18.for.inc_crit_edge [
    i8 0, label %if.end18.cleanup_crit_edge
    i8 44, label %if.end27
  ]

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %call, 1
  %add.ptr = getelementptr i8, ptr %buf, i32 %add
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end18.cleanup_crit_edge
  %buf.addr.2 = phi ptr [ %add.ptr, %if.end27 ], [ null, %if.end18.cleanup_crit_edge ]
  %call29 = tail call fastcc i32 @register_earlycon(ptr noundef %buf.addr.2, ptr noundef %match.060) #11
  br label %cleanup33

for.inc:                                          ; preds = %if.end18.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.earlycon_id, ptr %match.060, i32 1
  %cmp = icmp ult ptr %incdec.ptr, @__earlycon_table_end
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %again.for.end_crit_edge
  br i1 %empty_compatible.0.off0, label %for.end.again_crit_edge, label %for.end.cleanup33_crit_edge

for.end.cleanup33_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup33

for.end.again_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %again

cleanup33:                                        ; preds = %for.end.cleanup33_crit_edge, %cleanup, %if.end.cleanup33_crit_edge, %lor.lhs.false.cleanup33_crit_edge, %entry.cleanup33_crit_edge
  %retval.3 = phi i32 [ %call29, %cleanup ], [ -22, %lor.lhs.false.cleanup33_crit_edge ], [ -22, %entry.cleanup33_crit_edge ], [ -114, %if.end.cleanup33_crit_edge ], [ -2, %for.end.cleanup33_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @register_earlycon(ptr noundef %buf, ptr noundef %match) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @parse_options(ptr noundef nonnull %buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool1.not, ptr null, ptr %buf
  br label %do.body

do.body:                                          ; preds = %land.lhs.true, %entry.do.body_crit_edge
  %buf.addr.0 = phi ptr [ null, %entry.do.body_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1), ptr noundef nonnull @.str, ptr noundef nonnull @register_earlycon.__key, i16 noundef signext 3) #7
  store i32 1843200, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 22), align 4
  %0 = load i32, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 43), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool3.not = icmp eq i32 %0, 0
  br i1 %tobool3.not, label %do.body.if.end7_crit_edge, label %if.then4

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %0, -4096
  tail call void @__set_fixmap(i32 noundef 0, i32 noundef %and.i, i32 noundef 1619) #7
  %and1.i = and i32 %0, 4095
  %add.ptr.i = getelementptr i8, ptr inttoptr (i32 -1052672 to ptr), i32 %and1.i
  store ptr %add.ptr.i, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 2), align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %do.body.if.end7_crit_edge
  tail call fastcc void @earlycon_init(ptr noundef %match) #11
  %setup = getelementptr inbounds %struct.earlycon_id, ptr %match, i32 0, i32 3
  %1 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %setup, align 4
  %call8 = tail call i32 %2(ptr noundef nonnull @early_console_dev, ptr noundef %buf.addr.0) #7
  tail call fastcc void @earlycon_print_info() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %3 = load ptr, ptr @early_console_dev, align 4
  %write = getelementptr inbounds %struct.console, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @register_console(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call8, %if.end7.cleanup_crit_edge ], [ -19, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @param_setup_earlycon(ptr noundef %buf) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %if.then3.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call5 = tail call i32 @setup_earlycon(ptr noundef nonnull %buf) #11
  %0 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call5, label %if.end9 [
    i32 -2, label %lor.lhs.false.cleanup_crit_edge
    i32 -114, label %lor.lhs.false.cleanup_crit_edge15
  ]

lor.lhs.false.cleanup_crit_edge15:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @early_init_dt_scan_chosen_stdout() #7
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then3.critedge, %lor.lhs.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge15
  %retval.0 = phi i32 [ %call5, %if.end9 ], [ %call, %if.then3.critedge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge15 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_setup_earlycon(ptr noundef %match, i32 noundef %node, ptr noundef %options) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1), ptr noundef nonnull @.str, ptr noundef nonnull @of_setup_earlycon.__key, i16 noundef signext 3) #7
  store i8 2, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 26), align 2
  %call1 = tail call i64 @of_flat_dt_translate_address(i32 noundef %node) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call1)
  %cmp = icmp eq i64 %call1, -1
  br i1 %cmp, label %do.end4, label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %match) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 43), align 4
  %call6 = tail call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.4, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call6, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 43), align 4
  %add = add i32 %2, %1
  store i32 %add, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 43), align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %3 = load i32, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 43), align 4
  %and.i = and i32 %3, -4096
  tail call void @__set_fixmap(i32 noundef 0, i32 noundef %and.i, i32 noundef 1619) #7
  %and1.i = and i32 %3, 4095
  %add.ptr.i = getelementptr i8, ptr inttoptr (i32 -1052672 to ptr), i32 %and1.i
  store ptr %add.ptr.i, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 2), align 4
  %call12 = tail call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.5, ptr noundef null) #7
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end9.if.end16_crit_edge, label %if.then14

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call12, align 4
  %conv15 = trunc i32 %5 to i8
  store i8 %conv15, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 25), align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end9.if.end16_crit_edge
  %call17 = tail call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.6, ptr noundef null) #7
  %cmp18.not = icmp eq ptr %call17, null
  br i1 %cmp18.not, label %lor.rhs, label %if.end16.lor.end_crit_edge

if.end16.lor.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.7, ptr noundef null) #7
  %cmp21.not = icmp eq ptr %call20, null
  %phi.cast = select i1 %cmp21.not, i8 3, i8 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end16.lor.end_crit_edge
  %6 = phi i8 [ 6, %if.end16.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %call23 = tail call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.8, ptr noundef null) #7
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %lor.end.if.end41_crit_edge, label %if.then25

lor.end.if.end41_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then25:                                        ; preds = %lor.end
  %7 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call23, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %8, label %do.end36 [
    i32 1, label %if.then25.if.end41.sink.split_crit_edge
    i32 2, label %sw.bb27
    i32 4, label %sw.bb29
  ]

if.then25.if.end41.sink.split_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.sink.split

sw.bb27:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.sink.split

sw.bb29:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.sink.split

do.end36:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %match) #12
  br label %cleanup

if.end41.sink.split:                              ; preds = %sw.bb29, %sw.bb27, %if.then25.if.end41.sink.split_crit_edge
  %.sink = phi i8 [ 7, %sw.bb27 ], [ %6, %sw.bb29 ], [ 2, %if.then25.if.end41.sink.split_crit_edge ]
  store i8 %.sink, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 26), align 2
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %lor.end.if.end41_crit_edge
  %call42 = tail call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.12, ptr noundef null) #7
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end41.if.end45_crit_edge, label %if.then44

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call42 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call42, align 4
  store i32 %11, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 3), align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end41.if.end45_crit_edge
  %call46 = tail call ptr @of_get_flat_dt_prop(i32 noundef %node, ptr noundef nonnull @.str.13, ptr noundef null) #7
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.end45.if.end49_crit_edge, label %if.then48

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call46 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call46, align 4
  store i32 %13, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 22), align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end45.if.end49_crit_edge
  %tobool50.not = icmp eq ptr %options, null
  br i1 %tobool50.not, label %if.end49.if.end54_crit_edge, label %if.then51

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %call52 = tail call i32 @simple_strtoul(ptr noundef nonnull %options, ptr noundef null, i32 noundef 0) #7
  store i32 %call52, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 3), align 4
  %call53 = tail call i32 @strlcpy(ptr noundef getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 2), ptr noundef nonnull %options, i32 noundef 16) #7
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end49.if.end54_crit_edge
  tail call fastcc void @earlycon_init(ptr noundef %match) #11
  %setup = getelementptr inbounds %struct.earlycon_id, ptr %match, i32 0, i32 3
  %14 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %setup, align 4
  %call57 = tail call i32 %15(ptr noundef nonnull @early_console_dev, ptr noundef %options) #7
  tail call fastcc void @earlycon_print_info() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end54.cleanup_crit_edge, label %if.end61

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end61:                                         ; preds = %if.end54
  %16 = load ptr, ptr @early_console_dev, align 4
  %write = getelementptr inbounds %struct.console, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write, align 4
  %tobool62.not = icmp eq ptr %18, null
  br i1 %tobool62.not, label %if.end61.cleanup_crit_edge, label %if.end64

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end64:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @register_console(ptr noundef %16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end61.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %do.end36, %do.end4
  %retval.0 = phi i32 [ -6, %do.end4 ], [ -22, %do.end36 ], [ 0, %if.end64 ], [ %call57, %if.end54.cleanup_crit_edge ], [ -19, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_flat_dt_translate_address(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_flat_dt_prop(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @earlycon_init(ptr noundef %name) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @early_console_dev, align 4
  %call = tail call i32 @strlen(ptr noundef %name) #10
  %add.ptr = getelementptr i8, ptr %name, i32 %call
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %entry
  %s.0 = phi ptr [ %add.ptr, %entry ], [ %arrayidx, %land.lhs.true.for.cond_crit_edge ]
  %cmp = icmp ugt ptr %s.0, %name
  br i1 %cmp, label %land.lhs.true, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %arrayidx = getelementptr i8, ptr %s.0, i32 -1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = add i8 %2, -48
  %4 = icmp ult i8 %3, 10
  br i1 %4, label %land.lhs.true.for.cond_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true.for.end_crit_edge, %for.cond.for.end_crit_edge
  %5 = ptrtoint ptr %s.0 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %s.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @simple_strtoul(ptr noundef %s.0, ptr noundef null, i32 noundef 10) #7
  %conv8 = trunc i32 %call7 to i16
  %index = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %7 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv8, ptr %index, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %sub.ptr.lhs.cast = ptrtoint ptr %s.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %name to i32
  %sub.ptr.sub = sub i32 1, %sub.ptr.rhs.cast
  %add = add i32 %sub.ptr.sub, %sub.ptr.lhs.cast
  %8 = tail call i32 @llvm.umin.i32(i32 %add, i32 16)
  %call12 = tail call i32 @strlcpy(ptr noundef %0, ptr noundef %name, i32 noundef %8) #7
  %data = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 13
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @early_console_dev, ptr %data, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @earlycon_print_info() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @early_console_dev, align 4
  %1 = load i8, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 26), align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %1, label %do.end38 [
    i8 2, label %entry.do.end_crit_edge
    i8 7, label %entry.do.end_crit_edge1
    i8 3, label %entry.do.end_crit_edge2
    i8 6, label %entry.do.end_crit_edge3
  ]

entry.do.end_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

entry.do.end_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

entry.do.end_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge1, %entry.do.end_crit_edge2, %entry.do.end_crit_edge3
  %index = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %index, align 2
  %conv17 = sext i16 %4 to i32
  %5 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %1, label %cond.false27 [
    i8 2, label %do.end.cond.end33_crit_edge
    i8 7, label %cond.end33.fold.split
  ]

do.end.cond.end33_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end33

cond.false27:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp30 = icmp eq i8 %1, 3
  %cond = select i1 %cmp30, ptr @.str.21, ptr @.str.22
  br label %cond.end33

cond.end33.fold.split:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end33

cond.end33:                                       ; preds = %cond.end33.fold.split, %cond.false27, %do.end.cond.end33_crit_edge
  %cond34 = phi ptr [ @.str.19, %do.end.cond.end33_crit_edge ], [ %cond, %cond.false27 ], [ @.str.20, %cond.end33.fold.split ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %0, i32 noundef %conv17, ptr noundef nonnull %cond34, ptr noundef getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 43), ptr noundef getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 2)) #12
  br label %if.end

do.end38:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %index42 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %6 = ptrtoint ptr %index42 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %index42, align 2
  %conv43 = sext i16 %7 to i32
  %8 = load i32, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 1), align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %0, i32 noundef %conv43, i32 noundef %8, ptr noundef getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 2)) #12
  br label %if.end

if.end:                                           ; preds = %do.end38, %cond.end33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_options(ptr noundef %options) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %options.addr = alloca ptr, align 4
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %options.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %options, ptr %options.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #7
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %addr, align 4, !annotation !67
  %call = call i32 @uart_parse_earlycon(ptr noundef %options, ptr noundef getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 26), ptr noundef nonnull %addr, ptr noundef nonnull %options.addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i8, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 26), align 2
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %2, label %if.end.cleanup_crit_edge [
    i8 2, label %sw.bb
    i8 7, label %sw.bb3
    i8 3, label %if.end.sw.bb5_crit_edge
    i8 6, label %if.end.sw.bb5_crit_edge1
    i8 0, label %sw.bb8
  ]

if.end.sw.bb5_crit_edge1:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  store i32 %5, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 43), align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  store i8 1, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 25), align 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  store i32 %7, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 43), align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end.sw.bb5_crit_edge, %if.end.sw.bb5_crit_edge1
  store i8 2, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 25), align 1
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  store i32 %9, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 43), align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr, align 4
  store i32 %11, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 1, i32 1), align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb5, %sw.bb3, %sw.bb
  %12 = ptrtoint ptr %options.addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %options.addr, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %sw.epilog.cleanup_crit_edge, label %if.then10

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = call i32 @simple_strtoul(ptr noundef nonnull %13, ptr noundef null, i32 noundef 0) #7
  store i32 %call11, ptr getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 3), align 4
  %14 = ptrtoint ptr %options.addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %options.addr, align 4
  %call12 = call i32 @strcspn(ptr noundef %15, ptr noundef nonnull @.str.14)
  %add = add i32 %call12, 1
  %16 = call i32 @llvm.umin.i32(i32 %add, i32 16)
  %call15 = call i32 @strlcpy(ptr noundef getelementptr inbounds (%struct.earlycon_device, ptr @early_console_dev, i32 0, i32 2), ptr noundef %15, i32 noundef %16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uart_parse_earlycon(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @early_init_dt_scan_chosen_stdout() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_fixmap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { cold }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !27, !29, !31, !33, !35, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !50, !51, !52, !53, !54, !56, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__setup_param_setup_earlycon, !1, !"__setup_param_setup_earlycon", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/earlycon.c", i32 242, i32 1}
!2 = !{ptr @of_setup_earlycon.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/earlycon.c", i32 256, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/tty/serial/earlycon.c", i32 260, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @of_setup_earlycon._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @of_setup_earlycon._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/tty/serial/earlycon.c", i32 265, i32 34}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/tty/serial/earlycon.c", i32 270, i32 34}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/tty/serial/earlycon.c", i32 273, i32 41}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/tty/serial/earlycon.c", i32 275, i32 30}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/tty/serial/earlycon.c", i32 276, i32 34}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/tty/serial/earlycon.c", i32 289, i32 4}
!23 = !{ptr @of_setup_earlycon._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @of_setup_earlycon._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/tty/serial/earlycon.c", i32 294, i32 34}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/tty/serial/earlycon.c", i32 298, i32 34}
!29 = !{ptr @earlycon_acpi_spcr_enable, !30, !"earlycon_acpi_spcr_enable", i1 false, i1 false}
!30 = !{!"../drivers/tty/serial/earlycon.c", i32 220, i32 6}
!31 = !{ptr @early_con, !32, !"early_con", i1 false, i1 false}
!32 = !{!"../drivers/tty/serial/earlycon.c", i32 29, i32 23}
!33 = !{ptr @register_earlycon.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/tty/serial/earlycon.c", i32 141, i32 2}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/earlycon.c", i32 124, i32 12}
!37 = !{ptr @__setup_str_param_setup_earlycon, !1, !"__setup_str_param_setup_earlycon", i1 false, i1 false}
!38 = !{ptr @early_console_dev, !39, !"early_console_dev", i1 false, i1 false}
!39 = !{!"../drivers/tty/serial/earlycon.c", i32 35, i32 31}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/tty/serial/earlycon.c", i32 50, i32 3}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @earlycon_map._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @earlycon_map._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/tty/serial/earlycon.c", i32 81, i32 3}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @earlycon_print_info._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @earlycon_print_info._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/tty/serial/earlycon.c", i32 88, i32 3}
!56 = !{ptr @earlycon_print_info._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @earlycon_print_info._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"auto-init"}
