; ModuleID = '/llk/IR_all_yes/drivers/hwmon/sch56xx-common.c_pt.bc'
source_filename = "../drivers/hwmon/sch56xx-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sch56xx_read_virtual_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_sch56xx_read_virtual_reg\09\09\09\09"
module asm "\09.long\09__crc_sch56xx_read_virtual_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sch56xx_read_virtual_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22sch56xx_read_virtual_reg\22\09\09\09\09\09"
module asm "__kstrtabns_sch56xx_read_virtual_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sch56xx_write_virtual_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_sch56xx_write_virtual_reg\09\09\09\09"
module asm "\09.long\09__crc_sch56xx_write_virtual_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sch56xx_write_virtual_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22sch56xx_write_virtual_reg\22\09\09\09\09\09"
module asm "__kstrtabns_sch56xx_write_virtual_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sch56xx_read_virtual_reg16\22, \22a\22\09"
module asm "\09.weak\09__crc_sch56xx_read_virtual_reg16\09\09\09\09"
module asm "\09.long\09__crc_sch56xx_read_virtual_reg16\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sch56xx_read_virtual_reg16:\09\09\09\09\09"
module asm "\09.asciz \09\22sch56xx_read_virtual_reg16\22\09\09\09\09\09"
module asm "__kstrtabns_sch56xx_read_virtual_reg16:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sch56xx_read_virtual_reg12\22, \22a\22\09"
module asm "\09.weak\09__crc_sch56xx_read_virtual_reg12\09\09\09\09"
module asm "\09.long\09__crc_sch56xx_read_virtual_reg12\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sch56xx_read_virtual_reg12:\09\09\09\09\09"
module asm "\09.asciz \09\22sch56xx_read_virtual_reg12\22\09\09\09\09\09"
module asm "__kstrtabns_sch56xx_read_virtual_reg12:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sch56xx_watchdog_register\22, \22a\22\09"
module asm "\09.weak\09__crc_sch56xx_watchdog_register\09\09\09\09"
module asm "\09.long\09__crc_sch56xx_watchdog_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sch56xx_watchdog_register:\09\09\09\09\09"
module asm "\09.asciz \09\22sch56xx_watchdog_register\22\09\09\09\09\09"
module asm "__kstrtabns_sch56xx_watchdog_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sch56xx_watchdog_data = type { i16, ptr, %struct.watchdog_info, %struct.watchdog_device, i8, i8, i8 }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }

@__param_str_nowayout = internal constant [24 x i8] c"sch56xx_common.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype223 = internal constant [38 x i8] c"sch56xx_common.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout224 = internal constant [81 x i8] c"sch56xx_common.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__kstrtab_sch56xx_read_virtual_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_sch56xx_read_virtual_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_sch56xx_read_virtual_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sch56xx_read_virtual_reg to i32), ptr @__kstrtab_sch56xx_read_virtual_reg, ptr @__kstrtabns_sch56xx_read_virtual_reg }, section "___ksymtab+sch56xx_read_virtual_reg", align 4
@__kstrtab_sch56xx_write_virtual_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_sch56xx_write_virtual_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_sch56xx_write_virtual_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sch56xx_write_virtual_reg to i32), ptr @__kstrtab_sch56xx_write_virtual_reg, ptr @__kstrtabns_sch56xx_write_virtual_reg }, section "___ksymtab+sch56xx_write_virtual_reg", align 4
@__kstrtab_sch56xx_read_virtual_reg16 = external dso_local constant [0 x i8], align 1
@__kstrtabns_sch56xx_read_virtual_reg16 = external dso_local constant [0 x i8], align 1
@__ksymtab_sch56xx_read_virtual_reg16 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sch56xx_read_virtual_reg16 to i32), ptr @__kstrtab_sch56xx_read_virtual_reg16, ptr @__kstrtabns_sch56xx_read_virtual_reg16 }, section "___ksymtab+sch56xx_read_virtual_reg16", align 4
@__kstrtab_sch56xx_read_virtual_reg12 = external dso_local constant [0 x i8], align 1
@__kstrtabns_sch56xx_read_virtual_reg12 = external dso_local constant [0 x i8], align 1
@__ksymtab_sch56xx_read_virtual_reg12 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sch56xx_read_virtual_reg12 to i32), ptr @__kstrtab_sch56xx_read_virtual_reg12, ptr @__kstrtabns_sch56xx_read_virtual_reg12 }, section "___ksymtab+sch56xx_read_virtual_reg12", align 4
@sch56xx_watchdog_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014sch56xx_common: Watchdog not enabled by BIOS, not registering\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sch56xx_watchdog_register\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/hwmon/sch56xx-common.c\00", [33 x i8] zeroinitializer }, align 32
@sch56xx_watchdog_register._entry_ptr = internal global ptr @sch56xx_watchdog_register._entry, section ".printk_index", align 4
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sch56xx watchdog\00", [47 x i8] zeroinitializer }, align 32
@watchdog_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @watchdog_start, ptr @watchdog_stop, ptr @watchdog_trigger, ptr null, ptr @watchdog_set_timeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sch56xx_watchdog_register._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013sch56xx_common: Registering watchdog chardev: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@sch56xx_watchdog_register._entry_ptr.6 = internal global ptr @sch56xx_watchdog_register._entry.4, section ".printk_index", align 4
@__kstrtab_sch56xx_watchdog_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_sch56xx_watchdog_register = external dso_local constant [0 x i8], align 1
@__ksymtab_sch56xx_watchdog_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sch56xx_watchdog_register to i32), ptr @__kstrtab_sch56xx_watchdog_register, ptr @__kstrtabns_sch56xx_watchdog_register }, section "___ksymtab+sch56xx_watchdog_register", align 4
@sch56xx_pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_description226 = internal constant [72 x i8] c"sch56xx_common.description=SMSC SCH56xx Hardware Monitoring Common Code\00", section ".modinfo", align 1
@__UNIQUE_ID_author227 = internal constant [58 x i8] c"sch56xx_common.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file228 = internal constant [49 x i8] c"sch56xx_common.file=drivers/hwmon/sch56xx-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [27 x i8] c"sch56xx_common.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_sch56xx_common__230_544_sch56xx_init6 = internal global ptr @sch56xx_init, section ".initcall6.init", align 4
@__exitcall_sch56xx_exit = internal global ptr @sch56xx_exit, section ".exitcall.exit", align 4
@sch56xx_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013sch56xx_common: Max retries exceeded reading virtual register 0x%04hx (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sch56xx_send_cmd\00", [47 x i8] zeroinitializer }, align 32
@sch56xx_send_cmd._entry_ptr = internal global ptr @sch56xx_send_cmd._entry, section ".printk_index", align 4
@sch56xx_send_cmd._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014sch56xx_common: EC reports: 0x%02x reading virtual register 0x%04hx\0A\00", [57 x i8] zeroinitializer }, align 32
@sch56xx_send_cmd._entry_ptr.11 = internal global ptr @sch56xx_send_cmd._entry.9, section ".printk_index", align 4
@sch56xx_send_cmd._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sch56xx_send_cmd._entry_ptr.13 = internal global ptr @sch56xx_send_cmd._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sch5627\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sch5636\00", [24 x i8] zeroinitializer }, align 32
@sch56xx_find.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 117, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sch56xx_common\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sch56xx_find\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported device id: 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sch56xx_common: Unsupported device id: 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@sch56xx_find._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014sch56xx_common: Device not activated\0A\00", [56 x i8] zeroinitializer }, align 32
@sch56xx_find._entry_ptr = internal global ptr @sch56xx_find._entry, section ".printk_index", align 4
@sch56xx_find._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014sch56xx_common: Base address not set\0A\00", [56 x i8] zeroinitializer }, align 32
@sch56xx_find._entry_ptr.23 = internal global ptr @sch56xx_find._entry.21, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sch56xx\00", [24 x i8] zeroinitializer }, align 32
@superio_enter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013sch56xx_common: I/O address 0x%04x already in use\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"superio_enter\00", [18 x i8] zeroinitializer }, align 32
@superio_enter._entry_ptr = internal global ptr @superio_enter._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 198, i64 199]
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 23, i32 13 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 400, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 411, i32 33 }
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"watchdog_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 373, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 441, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"sch56xx_pdev\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 62, i32 32 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 148, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 165, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 169, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 464, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 467, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 470, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 479, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 491, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 74, i32 7 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [34 x i8] c"../drivers/hwmon/sch56xx-common.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 75, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__UNIQUE_ID_nowayout224, ptr @__UNIQUE_ID_nowayouttype223, ptr @__exitcall_sch56xx_exit, ptr @__initcall__kmod_sch56xx_common__230_544_sch56xx_init6, ptr @__ksymtab_sch56xx_read_virtual_reg, ptr @__ksymtab_sch56xx_read_virtual_reg12, ptr @__ksymtab_sch56xx_read_virtual_reg16, ptr @__ksymtab_sch56xx_watchdog_register, ptr @__ksymtab_sch56xx_write_virtual_reg, ptr @__param_nowayout, ptr @sch56xx_exit, ptr @sch56xx_find._entry, ptr @sch56xx_find._entry.21, ptr @sch56xx_find._entry_ptr, ptr @sch56xx_find._entry_ptr.23, ptr @sch56xx_send_cmd._entry, ptr @sch56xx_send_cmd._entry.12, ptr @sch56xx_send_cmd._entry.9, ptr @sch56xx_send_cmd._entry_ptr, ptr @sch56xx_send_cmd._entry_ptr.11, ptr @sch56xx_send_cmd._entry_ptr.13, ptr @sch56xx_watchdog_register._entry, ptr @sch56xx_watchdog_register._entry.4, ptr @sch56xx_watchdog_register._entry_ptr, ptr @sch56xx_watchdog_register._entry_ptr.6, ptr @superio_enter._entry, ptr @superio_enter._entry_ptr, ptr @nowayout, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @watchdog_ops, ptr @.str.5, ptr @sch56xx_pdev, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch56xx_watchdog_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch56xx_watchdog_register._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch56xx_pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch56xx_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch56xx_send_cmd._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch56xx_send_cmd._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch56xx_find._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch56xx_find._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @superio_enter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sch56xx_read_virtual_reg(i16 noundef zeroext %addr, i16 noundef zeroext %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sch56xx_send_cmd(i16 noundef zeroext %addr, i8 noundef zeroext 2, i16 noundef zeroext %reg, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sch56xx_send_cmd(i16 noundef zeroext %addr, i8 noundef zeroext %cmd, i16 noundef zeroext %reg, i8 noundef zeroext %v) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %addr to i32
  %add1 = add nuw nsw i32 %conv, -18874367
  %0 = inttoptr i32 %add1 to ptr
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %1) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %add14 = add nuw nsw i32 %conv, -18874366
  %2 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %add22 = add nuw nsw i32 %conv, -18874365
  %3 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 -128) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %add30 = add nuw nsw i32 %conv, -18874364
  %4 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %cmd) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %add38 = add nuw nsw i32 %conv, -18874363
  %5 = inttoptr i32 %add38 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 1) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 4) #5, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %cmd)
  %cmp = icmp eq i8 %cmd, 3
  br i1 %cmp, label %do.body50, label %entry.do.body58_crit_edge

entry.do.body58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body58

do.body50:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %v) #5, !srcloc !94
  br label %do.body58

do.body58:                                        ; preds = %do.body50, %entry.do.body58_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %conv61 = zext i16 %reg to i32
  %conv63 = trunc i16 %reg to i8
  %add67 = add nuw nsw i32 %conv, -18874362
  %6 = inttoptr i32 %add67 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv63) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %7 = lshr i16 %reg, 8
  %conv73 = trunc i16 %7 to i8
  %add77 = add nuw nsw i32 %conv, -18874361
  %8 = inttoptr i32 %add77 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv73) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %add84 = or i32 %conv, -18874368
  %9 = inttoptr i32 %add84 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 1) #5, !srcloc !94
  %add96 = add nuw nsw i32 %conv, -18874360
  %10 = inttoptr i32 %add96 to ptr
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body58
  %i.0218 = phi i32 [ 0, %do.body58 ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.0218)
  %cmp88 = icmp ugt i32 %i.0218, 63
  br i1 %cmp88, label %if.then90, label %for.body.if.end91_crit_edge

for.body.if.end91_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

if.then90:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 1) #5
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %for.body.if.end91_crit_edge
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end91.for.inc_crit_edge, label %if.end109

if.end91.for.inc_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end109:                                        ; preds = %if.end91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %11) #5, !srcloc !94
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool112.not = icmp eq i8 %12, 0
  br i1 %tobool112.not, label %if.end109.for.inc_crit_edge, label %for.end

if.end109.for.inc_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.end109.for.inc_crit_edge, %if.end91.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0218, 1
  %exitcond.not = icmp eq i32 %inc, 96
  br i1 %exitcond.not, label %for.inc.do.end120_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.do.end120_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end120

for.end:                                          ; preds = %if.end109
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %i.0218)
  %cmp115 = icmp eq i32 %i.0218, 96
  br i1 %cmp115, label %for.end.do.end120_crit_edge, label %for.end.for.body128_crit_edge

for.end.for.body128_crit_edge:                    ; preds = %for.end
  br label %for.body128

for.end.do.end120_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end120

do.end120:                                        ; preds = %for.end.do.end120_crit_edge, %for.inc.do.end120_crit_edge
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv61, i32 noundef 1) #8
  br label %cleanup

for.body128:                                      ; preds = %for.inc153.for.body128_crit_edge, %for.end.for.body128_crit_edge
  %i.1220 = phi i32 [ %inc154, %for.inc153.for.body128_crit_edge ], [ 0, %for.end.for.body128_crit_edge ]
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  %conv137 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp138 = icmp eq i8 %13, 1
  br i1 %cmp138, label %if.end165, label %if.end141

if.end141:                                        ; preds = %for.body128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1220)
  %cmp142 = icmp eq i32 %i.1220, 0
  br i1 %cmp142, label %do.end147, label %if.end141.for.inc153_crit_edge

if.end141.for.inc153_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc153

do.end147:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #7
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv137, i32 noundef %conv61) #8
  br label %for.inc153

for.inc153:                                       ; preds = %do.end147, %if.end141.for.inc153_crit_edge
  %inc154 = add nuw nsw i32 %i.1220, 1
  %exitcond221.not = icmp eq i32 %inc154, 64
  br i1 %exitcond221.not, label %do.end161, label %for.inc153.for.body128_crit_edge

for.inc153.for.body128_crit_edge:                 ; preds = %for.inc153
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body128

do.end161:                                        ; preds = %for.inc153
  call void @__sanitizer_cov_trace_pc() #7
  %call164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv61, i32 noundef 2) #8
  br label %cleanup

if.end165:                                        ; preds = %for.body128
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %cmd)
  %cmp167 = icmp eq i8 %cmd, 2
  br i1 %cmp167, label %if.then169, label %if.end165.cleanup_crit_edge

if.end165.cleanup_crit_edge:                      ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then169:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #7
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  %conv178 = zext i8 %14 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then169, %if.end165.cleanup_crit_edge, %do.end161, %do.end120
  %retval.0 = phi i32 [ -5, %do.end120 ], [ -5, %do.end161 ], [ %conv178, %if.then169 ], [ 0, %if.end165.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sch56xx_write_virtual_reg(i16 noundef zeroext %addr, i16 noundef zeroext %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sch56xx_send_cmd(i16 noundef zeroext %addr, i8 noundef zeroext 3, i16 noundef zeroext %reg, i8 noundef zeroext %val)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sch56xx_read_virtual_reg16(i16 noundef zeroext %addr, i16 noundef zeroext %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @sch56xx_send_cmd(i16 noundef zeroext %addr, i8 noundef zeroext 2, i16 noundef zeroext %reg, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i16 %reg, 1
  %call.i14 = tail call fastcc i32 @sch56xx_send_cmd(i16 noundef zeroext %addr, i8 noundef zeroext 2, i16 noundef zeroext %add, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %cmp3 = icmp slt i32 %call.i14, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl i32 %call.i14, 8
  %or = or i32 %shl, %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %if.end6 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i14, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sch56xx_read_virtual_reg12(i16 noundef zeroext %addr, i16 noundef zeroext %msb_reg, i16 noundef zeroext %lsn_reg, i32 noundef %high_nibble) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @sch56xx_send_cmd(i16 noundef zeroext %addr, i8 noundef zeroext 2, i16 noundef zeroext %msb_reg, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i16 = tail call fastcc i32 @sch56xx_send_cmd(i16 noundef zeroext %addr, i8 noundef zeroext 2, i16 noundef zeroext %lsn_reg, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp2 = icmp slt i32 %call.i16, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %high_nibble)
  %tobool.not = icmp eq i32 %high_nibble, 0
  %shl6 = shl i32 %call.i, 4
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %shr17 = lshr i32 %call.i16, 4
  %or = or i32 %shr17, %shl6
  br label %cleanup

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %call.i16, 15
  %or7 = or i32 %and, %shl6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %if.then5 ], [ %or7, %if.else ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sch56xx_watchdog_register(ptr noundef %parent, i16 noundef zeroext %addr, i32 noundef %revision, ptr noundef %io_lock, i32 noundef %check_enabled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #5
  %call.i = tail call fastcc i32 @sch56xx_send_cmd(i16 noundef zeroext %addr, i8 noundef zeroext 2, i16 noundef zeroext 1420, i8 noundef zeroext 0) #5
  %call.i94 = tail call fastcc i32 @sch56xx_send_cmd(i16 noundef zeroext %addr, i8 noundef zeroext 2, i16 noundef zeroext 1422, i8 noundef zeroext 0) #5
  tail call void @mutex_unlock(ptr noundef %io_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %cmp2 = icmp slt i32 %call.i94, 0
  %or.cond93 = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond93, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_enabled)
  %tobool.not = icmp ne i32 %check_enabled, 0
  %and = and i32 %call.i94, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call.i95 = tail call noalias ptr @devm_kmalloc(ptr noundef %parent, i32 noundef 160, i32 noundef 3520) #5
  %tobool10.not = icmp eq ptr %call.i95, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %0 = ptrtoint ptr %call.i95 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %addr, ptr %call.i95, align 4
  %io_lock14 = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %call.i95, i32 0, i32 1
  %1 = ptrtoint ptr %io_lock14 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %io_lock, ptr %io_lock14, align 4
  %wdinfo = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %call.i95, i32 0, i32 2
  %identity = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %call.i95, i32 0, i32 2, i32 2
  %call15 = tail call i32 @strscpy(ptr noundef %identity, ptr noundef nonnull @.str.3, i32 noundef 32) #5
  %firmware_version = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %call.i95, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %firmware_version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %revision, ptr %firmware_version, align 4
  %3 = load i8, ptr @nowayout, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool18.not = icmp eq i8 %3, 0
  %spec.store.select = select i1 %tobool18.not, i32 33152, i32 32896
  %4 = ptrtoint ptr %wdinfo to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.store.select, ptr %wdinfo, align 4
  %wddev = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %call.i95, i32 0, i32 3
  %info = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %call.i95, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %wdinfo, ptr %info, align 4
  %ops = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %call.i95, i32 0, i32 3, i32 4
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @watchdog_ops, ptr %ops, align 4
  %parent26 = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %call.i95, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %parent26 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %parent, ptr %parent26, align 4
  %timeout = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %call.i95, i32 0, i32 3, i32 7
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 60, ptr %timeout, align 4
  %min_timeout = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %call.i95, i32 0, i32 3, i32 9
  %9 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %min_timeout, align 4
  %max_timeout = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %call.i95, i32 0, i32 3, i32 10
  %10 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 15300, ptr %max_timeout, align 4
  br i1 %tobool18.not, label %if.end12.watchdog_set_nowayout.exit_crit_edge, label %if.then.i

if.end12.watchdog_set_nowayout.exit_crit_edge:    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %watchdog_set_nowayout.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %status.i = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %call.i95, i32 0, i32 3, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #5
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i, %if.end12.watchdog_set_nowayout.exit_crit_edge
  br i1 %tobool5.not, label %watchdog_set_nowayout.exit.if.end36_crit_edge, label %if.then34

watchdog_set_nowayout.exit.if.end36_crit_edge:    ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then34:                                        ; preds = %watchdog_set_nowayout.exit
  call void @__sanitizer_cov_trace_pc() #7
  %status = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %call.i95, i32 0, i32 3, i32 18
  tail call void @_set_bit(i32 noundef 0, ptr noundef %status) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %watchdog_set_nowayout.exit.if.end36_crit_edge
  %and37 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %spec.select = select i1 %tobool38.not, i8 1, i8 60
  %11 = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %call.i95, i32 0, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.select, ptr %11, align 4
  %conv = trunc i32 %call.i to i8
  %watchdog_control = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %call.i95, i32 0, i32 5
  %13 = ptrtoint ptr %watchdog_control to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %watchdog_control, align 1
  %conv42 = trunc i32 %call.i94 to i8
  %watchdog_output_enable = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %call.i95, i32 0, i32 6
  %14 = ptrtoint ptr %watchdog_output_enable to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv42, ptr %watchdog_output_enable, align 2
  %driver_data.i = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %call.i95, i32 0, i32 3, i32 16
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i95, ptr %driver_data.i, align 4
  %call45 = tail call i32 @devm_watchdog_register_device(ptr noundef %parent, ptr noundef %wddev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end36.cleanup_crit_edge, label %do.end50

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end50:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call45) #8
  tail call void @devm_kfree(ptr noundef %parent, ptr noundef nonnull %call.i95) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.end36.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sch56xx_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @sch56xx_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sch56xx_init() #4 section ".init.text" align 64 {
entry:
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #5
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %name, align 4
  %call = call fastcc i32 @sch56xx_find(i32 noundef 78, ptr noundef nonnull %name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @sch56xx_find(i32 noundef 46, ptr noundef nonnull %name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %address.012 = phi i32 [ %call1, %if.end.if.end4_crit_edge ], [ %call, %entry.if.end4_crit_edge ]
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %call5 = tail call fastcc i32 @sch56xx_device_add(i32 noundef %address.012, ptr noundef %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_start(ptr nocapture noundef readonly %wddev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wddev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %io_lock = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %io_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 4
  %watchdog_preset = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %watchdog_preset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %watchdog_preset, align 4
  %call.i = tail call fastcc i32 @sch56xx_send_cmd(i16 noundef zeroext %5, i8 noundef zeroext 3, i16 noundef zeroext 1419, i8 noundef zeroext %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.leave_crit_edge

entry.leave_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %leave

if.end:                                           ; preds = %entry
  %watchdog_output_enable = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %watchdog_output_enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %watchdog_output_enable, align 2
  %10 = or i8 %9, 2
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 4
  %call.i38 = tail call fastcc i32 @sch56xx_send_cmd(i16 noundef zeroext %12, i8 noundef zeroext 3, i16 noundef zeroext 1422, i8 noundef zeroext %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool5.not = icmp eq i32 %call.i38, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.leave_crit_edge

if.end.leave_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %leave

if.end7:                                          ; preds = %if.end
  %13 = ptrtoint ptr %watchdog_output_enable to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %watchdog_output_enable, align 2
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 4
  %conv10 = zext i16 %15 to i32
  %add11 = add nuw nsw i32 %conv10, -18874359
  %16 = inttoptr i32 %add11 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool16.not = icmp eq i8 %18, 0
  br i1 %tobool16.not, label %if.end7.leave_crit_edge, label %do.body

if.end7.leave_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %leave

do.body:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %1, align 4
  %conv19 = zext i16 %20 to i32
  %add22 = add nuw nsw i32 %conv19, -18874359
  %21 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 1) #5, !srcloc !94
  br label %leave

leave:                                            ; preds = %do.body, %if.end7.leave_crit_edge, %if.end.leave_crit_edge, %entry.leave_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.leave_crit_edge ], [ %call.i38, %if.end.leave_crit_edge ], [ 0, %do.body ], [ 0, %if.end7.leave_crit_edge ]
  %22 = ptrtoint ptr %io_lock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_lock, align 4
  tail call void @mutex_unlock(ptr noundef %23) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_stop(ptr nocapture noundef readonly %wddev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wddev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %watchdog_output_enable = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %watchdog_output_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %watchdog_output_enable, align 2
  %4 = and i8 %3, -3
  %io_lock = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %io_lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %6, i32 noundef 0) #5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 4
  %call.i = tail call fastcc i32 @sch56xx_send_cmd(i16 noundef zeroext %8, i8 noundef zeroext 3, i16 noundef zeroext 1422, i8 noundef zeroext %4) #5
  %9 = ptrtoint ptr %io_lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_lock, align 4
  tail call void @mutex_unlock(ptr noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %watchdog_output_enable to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %4, ptr %watchdog_output_enable, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_trigger(ptr nocapture noundef readonly %wddev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wddev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %io_lock = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %io_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 4
  %watchdog_preset = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %watchdog_preset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %watchdog_preset, align 4
  %call.i = tail call fastcc i32 @sch56xx_send_cmd(i16 noundef zeroext %5, i8 noundef zeroext 3, i16 noundef zeroext 1419, i8 noundef zeroext %7) #5
  %8 = ptrtoint ptr %io_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_lock, align 4
  tail call void @mutex_unlock(ptr noundef %9) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_set_timeout(ptr nocapture noundef %wddev, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wddev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %timeout)
  %cmp = icmp ult i32 %timeout, 256
  %. = select i1 %cmp, i32 1, i32 60
  call void @__sanitizer_cov_trace_cmp4(i32 %., i32 %timeout)
  %cmp1 = icmp ugt i32 %., %timeout
  %mul = mul nuw nsw i32 %., 255
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %timeout)
  %cmp2 = icmp ult i32 %mul, %timeout
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %entry
  %watchdog_control = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %watchdog_control to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %watchdog_control, align 1
  %4 = and i8 %3, -2
  %masksel = zext i1 %cmp to i8
  %control.0 = or i8 %4, %masksel
  %watchdog_control13 = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %1, i32 0, i32 5
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %control.0)
  %cmp16.not = icmp eq i8 %3, %control.0
  br i1 %cmp16.not, label %if.end4.if.end24_crit_edge, label %if.then18

if.end4.if.end24_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then18:                                        ; preds = %if.end4
  %io_lock = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %io_lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_lock, align 4
  tail call void @mutex_lock_nested(ptr noundef %6, i32 noundef 0) #5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 4
  %call.i = tail call fastcc i32 @sch56xx_send_cmd(i16 noundef zeroext %8, i8 noundef zeroext 3, i16 noundef zeroext 1420, i8 noundef zeroext %control.0) #5
  %9 = ptrtoint ptr %io_lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_lock, align 4
  tail call void @mutex_unlock(ptr noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end22, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %watchdog_control13 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %control.0, ptr %watchdog_control13, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %if.end4.if.end24_crit_edge
  %add = add i32 %timeout, -1
  %sub = add i32 %add, %.
  %div = udiv i32 %sub, %.
  %conv25 = trunc i32 %div to i8
  %watchdog_preset = getelementptr inbounds %struct.sch56xx_watchdog_data, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %watchdog_preset to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv25, ptr %watchdog_preset, align 4
  %conv27 = and i32 %div, 255
  %mul28 = mul nuw nsw i32 %conv27, %.
  %timeout29 = getelementptr inbounds %struct.watchdog_device, ptr %wddev, i32 0, i32 7
  %13 = ptrtoint ptr %timeout29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul28, ptr %timeout29, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.then18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sch56xx_find(i32 noundef %sioaddr, ptr nocapture noundef writeonly %name) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %sioaddr, i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef 4194304) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %superio_enter.exit, label %if.end

superio_enter.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %sioaddr) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %and.i = and i32 %sioaddr, 1048575
  %add.i = or i32 %and.i, -18874368
  %0 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 85) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 32) #5, !srcloc !94
  %add1.i = add i32 %sioaddr, 1
  %and2.i = and i32 %add1.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %1 = inttoptr i32 %add3.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %conv6.i = zext i8 %2 to i32
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %2, label %do.body [
    i8 -58, label %if.end.sw.epilog_crit_edge
    i8 -57, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sch56xx_find.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sch56xx_find, %exit)) #5
          to label %if.then9 [label %exit], !srcloc !114

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sch56xx_find.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.19, i32 noundef %conv6.i) #5
  br label %exit

sw.epilog:                                        ; preds = %sw.bb3, %if.end.sw.epilog_crit_edge
  %storemerge = phi ptr [ @.str.15, %sw.bb3 ], [ @.str.14, %if.end.sw.epilog_crit_edge ]
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %storemerge, ptr %name, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 7) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 12) #5, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 48) #5, !srcloc !94
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool13.not = icmp eq i8 %6, 0
  br i1 %tobool13.not, label %do.end17, label %if.end20

do.end17:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #8
  br label %exit

if.end20:                                         ; preds = %sw.epilog
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 102) #5, !srcloc !94
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %conv6.i64 = zext i8 %7 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 103) #5, !srcloc !94
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #5, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %conv6.i70 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv6.i70, 8
  %or = or i32 %shl, %conv6.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp = icmp eq i32 %or, 0
  br i1 %cmp, label %do.end29, label %if.end20.exit_crit_edge

if.end20.exit_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

do.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #8
  br label %exit

exit:                                             ; preds = %do.end29, %if.end20.exit_crit_edge, %do.end17, %if.then9, %do.body
  %err.0 = phi i32 [ -19, %do.end29 ], [ -19, %do.end17 ], [ -19, %if.then9 ], [ %or, %if.end20.exit_crit_edge ], [ -19, %do.body ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -86) #5, !srcloc !94
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %sioaddr, i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %exit, %superio_enter.exit
  %retval.0 = phi i32 [ %err.0, %exit ], [ -16, %superio_enter.exit ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sch56xx_device_add(i32 noundef %address, ptr noundef %name) unnamed_addr #4 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #5
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 2
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 3
  %3 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 4
  %4 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %address, ptr %res, align 4
  %sub = add i32 %address, 9
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %name, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 256, ptr %2, align 4
  %8 = call ptr @memset(ptr %3, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %9 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 255, i32 48)
  %11 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %fwnode.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %9, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %name, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %res, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  store ptr %call.i.i, ptr @sch56xx_pdev, align 4
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %21 = ptrtoint ptr %call.i.i to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %21, i32 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #5
  ret i32 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !23, !24, !25, !27, !29, !31, !33, !34, !36, !38, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !57, !59, !61, !63, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !80, !81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__param_nowayout, !1, !"__param_nowayout", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/sch56xx-common.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_nowayouttype223, !1, !"__UNIQUE_ID_nowayouttype223", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nowayout224, !4, !"__UNIQUE_ID_nowayout224", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/sch56xx-common.c", i32 25, i32 1}
!5 = !{ptr @__ksymtab_sch56xx_read_virtual_reg, !6, !"__ksymtab_sch56xx_read_virtual_reg", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/sch56xx-common.c", i32 195, i32 1}
!7 = !{ptr @__ksymtab_sch56xx_write_virtual_reg, !8, !"__ksymtab_sch56xx_write_virtual_reg", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/sch56xx-common.c", i32 201, i32 1}
!9 = !{ptr @__ksymtab_sch56xx_read_virtual_reg16, !10, !"__ksymtab_sch56xx_read_virtual_reg16", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/sch56xx-common.c", i32 218, i32 1}
!11 = !{ptr @__ksymtab_sch56xx_read_virtual_reg12, !12, !"__ksymtab_sch56xx_read_virtual_reg12", i1 false, i1 false}
!12 = !{!"../drivers/hwmon/sch56xx-common.c", i32 239, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/sch56xx-common.c", i32 400, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @sch56xx_watchdog_register._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @sch56xx_watchdog_register._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/sch56xx-common.c", i32 411, i32 33}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/sch56xx-common.c", i32 441, i32 3}
!23 = !{ptr @sch56xx_watchdog_register._entry.4, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @sch56xx_watchdog_register._entry_ptr.6, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__ksymtab_sch56xx_watchdog_register, !26, !"__ksymtab_sch56xx_watchdog_register", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/sch56xx-common.c", i32 445, i32 1}
!27 = !{ptr @__UNIQUE_ID_description226, !28, !"__UNIQUE_ID_description226", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/sch56xx-common.c", i32 540, i32 1}
!29 = !{ptr @__UNIQUE_ID_author227, !30, !"__UNIQUE_ID_author227", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/sch56xx-common.c", i32 541, i32 1}
!31 = !{ptr @__UNIQUE_ID_file228, !32, !"__UNIQUE_ID_file228", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/sch56xx-common.c", i32 542, i32 1}
!33 = !{ptr @__UNIQUE_ID_license229, !32, !"__UNIQUE_ID_license229", i1 false, i1 false}
!34 = !{ptr @__initcall__kmod_sch56xx_common__230_544_sch56xx_init6, !35, !"__initcall__kmod_sch56xx_common__230_544_sch56xx_init6", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/sch56xx-common.c", i32 544, i32 1}
!36 = !{ptr @__exitcall_sch56xx_exit, !37, !"__exitcall_sch56xx_exit", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/sch56xx-common.c", i32 545, i32 1}
!38 = !{ptr @sch56xx_pdev, !39, !"sch56xx_pdev", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/sch56xx-common.c", i32 62, i32 32}
!40 = !{ptr @__param_str_nowayout, !1, !"__param_str_nowayout", i1 false, i1 false}
!41 = !{ptr @nowayout, !42, !"nowayout", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/sch56xx-common.c", i32 23, i32 13}
!43 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/sch56xx-common.c", i32 148, i32 3}
!45 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @sch56xx_send_cmd._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @sch56xx_send_cmd._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/sch56xx-common.c", i32 165, i32 4}
!50 = !{ptr @sch56xx_send_cmd._entry.9, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sch56xx_send_cmd._entry_ptr.11, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @sch56xx_send_cmd._entry.12, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/sch56xx-common.c", i32 169, i32 3}
!54 = !{ptr @sch56xx_send_cmd._entry_ptr.13, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @watchdog_ops, !56, !"watchdog_ops", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/sch56xx-common.c", i32 373, i32 34}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/sch56xx-common.c", i32 464, i32 11}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/sch56xx-common.c", i32 467, i32 11}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/sch56xx-common.c", i32 470, i32 3}
!63 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @sch56xx_find.__UNIQUE_ID_ddebug225, !62, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!66 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/sch56xx-common.c", i32 479, i32 3}
!69 = !{ptr @sch56xx_find._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @sch56xx_find._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/sch56xx-common.c", i32 491, i32 3}
!73 = !{ptr @sch56xx_find._entry.21, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @sch56xx_find._entry_ptr.23, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/sch56xx-common.c", i32 74, i32 7}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/sch56xx-common.c", i32 75, i32 3}
!79 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @superio_enter._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @superio_enter._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i64 4796636}
!92 = !{i64 2154122824}
!93 = !{i64 2154123033}
!94 = !{i64 4796241}
!95 = !{i64 2154123360}
!96 = !{i64 2154123687}
!97 = !{i64 2154124013}
!98 = !{i64 2154124340}
!99 = !{i64 2154124667}
!100 = !{i64 2154124996}
!101 = !{i64 2154125329}
!102 = !{i64 2154125660}
!103 = !{i64 2154125983}
!104 = !{i64 2154126373}
!105 = !{i64 2154126582}
!106 = !{i64 2154128973}
!107 = !{i64 2154133243}
!108 = !{i8 0, i8 2}
!109 = !{i64 2154140429}
!110 = !{i64 2154140645}
!111 = !{i64 2154121067}
!112 = !{i64 2154118403}
!113 = !{i64 2154118793}
!114 = !{i64 2148965415, i64 2148965420, i64 2148965433, i64 2148965477, i64 2148965511, i64 2148965532}
!115 = !{i64 2154121560}
!116 = !{i64 2154121881}
!117 = !{i64 2154122378}
