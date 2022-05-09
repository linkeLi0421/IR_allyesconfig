; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/encx24j600-regmap.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/encx24j600-regmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+regmap_encx24j600_spi_write\22, \22a\22\09"
module asm "\09.weak\09__crc_regmap_encx24j600_spi_write\09\09\09\09"
module asm "\09.long\09__crc_regmap_encx24j600_spi_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_encx24j600_spi_write:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_encx24j600_spi_write\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_encx24j600_spi_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+regmap_encx24j600_spi_read\22, \22a\22\09"
module asm "\09.weak\09__crc_regmap_encx24j600_spi_read\09\09\09\09"
module asm "\09.long\09__crc_regmap_encx24j600_spi_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_encx24j600_spi_read:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_encx24j600_spi_read\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_encx24j600_spi_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_regmap_init_encx24j600\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_regmap_init_encx24j600\09\09\09\09"
module asm "\09.long\09__crc_devm_regmap_init_encx24j600\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_regmap_init_encx24j600:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_regmap_init_encx24j600\22\09\09\09\09\09"
module asm "__kstrtabns_devm_regmap_init_encx24j600:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.encx24j600_context = type { ptr, ptr, ptr, %struct.mutex, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__kstrtab_regmap_encx24j600_spi_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_encx24j600_spi_write = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_encx24j600_spi_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_encx24j600_spi_write to i32), ptr @__kstrtab_regmap_encx24j600_spi_write, ptr @__kstrtabns_regmap_encx24j600_spi_write }, section "___ksymtab_gpl+regmap_encx24j600_spi_write", align 4
@__kstrtab_regmap_encx24j600_spi_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_encx24j600_spi_read = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_encx24j600_spi_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_encx24j600_spi_read to i32), ptr @__kstrtab_regmap_encx24j600_spi_read, ptr @__kstrtabns_regmap_encx24j600_spi_read }, section "___ksymtab_gpl+regmap_encx24j600_spi_read", align 4
@devm_regmap_init_encx24j600.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctx->mutex\00", [20 x i8] zeroinitializer }, align 32
@regcfg = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.4, i32 8, i32 2, i32 0, i32 16, ptr @encx24j600_regmap_writeable, ptr @encx24j600_regmap_readable, ptr @encx24j600_regmap_volatile, ptr @encx24j600_regmap_precious, ptr null, ptr null, i8 0, ptr @regmap_lock_mutex, ptr @regmap_unlock_mutex, ptr null, ptr null, ptr null, ptr null, i8 0, i32 238, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 2, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@devm_regmap_init_encx24j600._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@regmap_encx24j600 = internal global { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @regmap_encx24j600_write, ptr null, ptr null, ptr null, ptr @regmap_encx24j600_reg_update_bits, ptr @regmap_encx24j600_read, ptr null, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"encx24j600_regmap:505:(&regcfg)->lock\00", [58 x i8] zeroinitializer }, align 32
@devm_regmap_init_encx24j600._key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@phymap_encx24j600 = internal global { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @regmap_encx24j600_phy_reg_write, ptr null, ptr null, ptr @regmap_encx24j600_phy_reg_read, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@phycfg = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.15, i32 8, i32 0, i32 0, i32 16, ptr @encx24j600_phymap_writeable, ptr @encx24j600_phymap_readable, ptr @encx24j600_phymap_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 31, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 2, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"encx24j600_regmap:508:(&phycfg)->lock\00", [58 x i8] zeroinitializer }, align 32
@__kstrtab_devm_regmap_init_encx24j600 = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_regmap_init_encx24j600 = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_regmap_init_encx24j600 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_regmap_init_encx24j600 to i32), ptr @__kstrtab_devm_regmap_init_encx24j600, ptr @__kstrtabns_devm_regmap_init_encx24j600 }, section "___ksymtab_gpl+devm_regmap_init_encx24j600", align 4
@__UNIQUE_ID_file339 = internal constant [72 x i8] c"encx24j600_regmap.file=drivers/net/ethernet/microchip/encx24j600-regmap\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [30 x i8] c"encx24j600_regmap.license=GPL\00", section ".modinfo", align 1
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@regmap_encx24j600_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: reg=%02x reg_size=%zu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"regmap_encx24j600_read\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/microchip/encx24j600-regmap.c\00", [45 x i8] zeroinitializer }, align 32
@regmap_encx24j600_read._entry_ptr = internal global ptr @regmap_encx24j600_read._entry, section ".printk_index", align 4
@regmap_encx24j600_read._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: reg=%02x val_size=%zu\0A\00", [35 x i8] zeroinitializer }, align 32
@regmap_encx24j600_read._entry_ptr.10 = internal global ptr @regmap_encx24j600_read._entry.8, section ".printk_index", align 4
@regmap_encx24j600_phy_reg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.7, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: error %d writing reg %02x=%04x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"regmap_encx24j600_phy_reg_write\00", [32 x i8] zeroinitializer }, align 32
@regmap_encx24j600_phy_reg_write._entry_ptr = internal global ptr @regmap_encx24j600_phy_reg_write._entry, section ".printk_index", align 4
@regmap_encx24j600_phy_reg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: error %d reading reg %02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"regmap_encx24j600_phy_reg_read\00", [33 x i8] zeroinitializer }, align 32
@regmap_encx24j600_phy_reg_read._entry_ptr = internal global ptr @regmap_encx24j600_phy_reg_read._entry, section ".printk_index", align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@switch.table.regmap_encx24j600_read = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bbnbfbrbjbv", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 8, i64 16, i64 18, i64 20, i64 26, i64 28, i64 30, i64 104, i64 106, i64 110]
@__sancov_gen_cov_switch_values.16 = internal global [8 x i64] [i64 6, i64 8, i64 134, i64 136, i64 138, i64 140, i64 142, i64 144]
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 503, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"regcfg\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 461, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"regmap_encx24j600\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 477, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 505, i32 16 }
@___asan_gen_.35 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"phymap_encx24j600\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 495, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"phycfg\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 483, i32 29 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 508, i32 16 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 462, i32 10 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 268, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 276, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 406, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 377, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [54 x i8] c"../drivers/net/ethernet/microchip/encx24j600-regmap.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 484, i32 10 }
@___asan_gen_.89 = private unnamed_addr constant [36 x i8] c"switch.table.regmap_encx24j600_read\00", align 1
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_license340, ptr @__ksymtab_devm_regmap_init_encx24j600, ptr @__ksymtab_regmap_encx24j600_spi_read, ptr @__ksymtab_regmap_encx24j600_spi_write, ptr @regmap_encx24j600_phy_reg_read._entry, ptr @regmap_encx24j600_phy_reg_read._entry_ptr, ptr @regmap_encx24j600_phy_reg_write._entry, ptr @regmap_encx24j600_phy_reg_write._entry_ptr, ptr @regmap_encx24j600_read._entry, ptr @regmap_encx24j600_read._entry.8, ptr @regmap_encx24j600_read._entry_ptr, ptr @regmap_encx24j600_read._entry_ptr.10, ptr @devm_regmap_init_encx24j600.__key, ptr @.str, ptr @regcfg, ptr @devm_regmap_init_encx24j600._key, ptr @regmap_encx24j600, ptr @.str.1, ptr @devm_regmap_init_encx24j600._key.2, ptr @phymap_encx24j600, ptr @phycfg, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @switch.table.regmap_encx24j600_read], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_regmap_init_encx24j600.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regcfg to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_regmap_init_encx24j600._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_encx24j600 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_regmap_init_encx24j600._key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phymap_encx24j600 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phycfg to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_encx24j600_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_encx24j600_read._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_encx24j600_phy_reg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_encx24j600_phy_reg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.regmap_encx24j600_read to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @regmap_encx24j600_spi_write(ptr nocapture noundef readonly %context, i8 noundef zeroext %reg, ptr noundef %data, i32 noundef %count) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i4 = alloca %struct.spi_transfer, align 4
  %opcode.addr.i = alloca i8, align 1
  %m.i = alloca %struct.spi_message, align 4
  %t.i = alloca [2 x %struct.spi_transfer], align 4
  %reg.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %reg)
  %cmp = icmp ult i8 %reg, -64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %opcode.addr.i)
  %1 = ptrtoint ptr %opcode.addr.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %reg, ptr %opcode.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m.i) #5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t.i) #5
  %2 = getelementptr inbounds i8, ptr %t.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %4 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %opcode.addr.i, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %5 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %len1.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 1
  %6 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data, ptr %arrayinit.element.i, align 4
  %len3.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 1, i32 2
  %7 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %count, ptr %len3.i, align 4
  %8 = getelementptr inbounds i8, ptr %m.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 40)
  %10 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %m.i, ptr %m.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %m.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %m.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %m.i, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %m.i, ptr noundef nonnull %m.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.spi_message_add_tail.exit.i_crit_edge

if.then.spi_message_add_tail.exit.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %m.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %m.i, ptr %prev3.i.i.i.i, align 4
  %17 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i, ptr %m.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.then.spi_message_add_tail.exit.i_crit_edge
  %transfer_list.i9.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t.i, i32 0, i32 1, i32 18
  %18 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i11.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i9.i, ptr noundef %19, ptr noundef nonnull %m.i) #5
  br i1 %call.i.i.i11.i, label %if.end.i.i.i13.i, label %spi_message_add_tail.exit.i.encx24j600_cmdn.exit_crit_edge

spi_message_add_tail.exit.i.encx24j600_cmdn.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %encx24j600_cmdn.exit

if.end.i.i.i13.i:                                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i9.i, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %m.i, ptr %transfer_list.i9.i, align 4
  %prev3.i.i.i12.i = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t.i, i32 0, i32 1, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i12.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i9.i, ptr %19, align 4
  br label %encx24j600_cmdn.exit

encx24j600_cmdn.exit:                             ; preds = %if.end.i.i.i13.i, %spi_message_add_tail.exit.i.encx24j600_cmdn.exit_crit_edge
  %24 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %context, align 4
  %call.i = call i32 @spi_sync(ptr noundef %25, ptr noundef nonnull %m.i) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opcode.addr.i)
  br label %cleanup

if.end:                                           ; preds = %entry
  %26 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %context, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i4) #5
  %28 = getelementptr inbounds i8, ptr %t.i4, i32 4
  %29 = call ptr @memset(ptr %28, i32 0, i32 92)
  %30 = ptrtoint ptr %t.i4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %reg.addr, ptr %t.i4, align 4
  %len1.i5 = getelementptr inbounds %struct.spi_transfer, ptr %t.i4, i32 0, i32 2
  %31 = ptrtoint ptr %len1.i5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %len1.i5, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %32 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %33 = call ptr @memset(ptr %32, i32 0, i32 40)
  %34 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %36 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i4, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_write.exit_crit_edge

if.end.spi_write.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %39 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i4, i32 0, i32 18, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %41 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %27, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i4) #5
  br label %cleanup

cleanup:                                          ; preds = %spi_write.exit, %encx24j600_cmdn.exit
  %retval.0 = phi i32 [ %call.i, %encx24j600_cmdn.exit ], [ %call.i.i, %spi_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @regmap_encx24j600_spi_read(ptr nocapture noundef readonly %context, i8 noundef zeroext %reg, ptr noundef %data, i32 noundef %count) #0 align 64 {
entry:
  %reg.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -56, i8 %reg)
  %cmp = icmp eq i8 %reg, -56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %1 = icmp ne i32 %count, 0
  %2 = zext i1 %1 to i32
  %count.addr.0 = select i1 %cmp, i32 %2, i32 %count
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context, align 4
  %call = call i32 @spi_write_then_read(ptr noundef %4, ptr noundef nonnull %reg.addr, i32 noundef 1, ptr noundef %data, i32 noundef %count.addr.0) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_regmap_init_encx24j600(ptr noundef %dev, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.encx24j600_context, ptr %ctx, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @devm_regmap_init_encx24j600.__key) #5
  store ptr %ctx, ptr getelementptr inbounds (%struct.regmap_config, ptr @regcfg, i32 0, i32 14), align 4
  %call = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef nonnull @regmap_encx24j600, ptr noundef %ctx, ptr noundef nonnull @regcfg, ptr noundef nonnull @devm_regmap_init_encx24j600._key, ptr noundef nonnull @.str.1) #5
  %regmap = getelementptr inbounds %struct.encx24j600_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call to i32
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef nonnull @phymap_encx24j600, ptr noundef %ctx, ptr noundef nonnull @phycfg, ptr noundef nonnull @devm_regmap_init_encx24j600._key.2, ptr noundef nonnull @.str.3) #5
  %phymap = getelementptr inbounds %struct.encx24j600_context, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %phymap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %phymap, align 4
  %cmp.i23 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %call6 to i32
  %spec.select = select i1 %cmp.i23, i32 %3, i32 0
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @encx24j600_regmap_writeable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %reg)
  %cmp = icmp ult i32 %reg, 18
  %0 = add i32 %reg, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %1 = icmp ult i32 %0, 6
  %or.cond = or i1 %cmp, %1
  %2 = add i32 %reg, -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %2)
  %3 = icmp ult i32 %2, 26
  %or.cond63 = or i1 %3, %or.cond
  %4 = add i32 %reg, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %4)
  %5 = icmp ult i32 %4, 12
  %or.cond65 = or i1 %5, %or.cond63
  %6 = add i32 %reg, -82
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %7 = icmp ult i32 %6, 4
  %or.cond67 = or i1 %7, %or.cond65
  %8 = and i32 %reg, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %8)
  %9 = icmp eq i32 %8, 96
  %or.cond69 = or i1 %9, %or.cond67
  %10 = add i32 %reg, -108
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %10)
  %11 = icmp ult i32 %10, 20
  %or.cond71 = or i1 %11, %or.cond69
  %12 = add i32 %reg, -134
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %12)
  %13 = icmp ult i32 %12, 12
  %or.cond73 = or i1 %13, %or.cond71
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %8)
  %14 = icmp eq i32 %8, 192
  %or.cond75 = or i1 %14, %or.cond73
  br i1 %or.cond75, label %entry.return_crit_edge, label %lor.lhs.false31

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false31:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = add i32 %reg, -202
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %15)
  %16 = icmp ult i32 %15, 38
  br label %return

return:                                           ; preds = %lor.lhs.false31, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ %16, %lor.lhs.false31 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @encx24j600_regmap_readable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %reg)
  %cmp = icmp ult i32 %reg, 54
  %0 = add i32 %reg, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %0)
  %1 = icmp ult i32 %0, 12
  %or.cond = or i1 %cmp, %1
  %2 = add i32 %reg, -82
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %3 = icmp ult i32 %2, 4
  %or.cond39 = or i1 %3, %or.cond
  %4 = add i32 %reg, -96
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %5 = icmp ult i32 %4, 6
  %or.cond41 = or i1 %5, %or.cond39
  %6 = add i32 %reg, -104
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %6)
  %7 = icmp ult i32 %6, 24
  %or.cond43 = or i1 %7, %or.cond41
  br i1 %or.cond43, label %entry.return_crit_edge, label %lor.lhs.false15

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false15:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = add i32 %reg, -134
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %8)
  %9 = icmp ult i32 %8, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %reg)
  %cmp20 = icmp eq i32 %reg, 200
  %or.cond36 = or i1 %cmp20, %9
  br label %return

return:                                           ; preds = %lor.lhs.false15, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ %or.cond36, %lor.lhs.false15 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @encx24j600_regmap_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.epilog [
    i32 8, label %entry.return_crit_edge
    i32 16, label %entry.return_crit_edge1
    i32 18, label %entry.return_crit_edge2
    i32 20, label %entry.return_crit_edge3
    i32 30, label %entry.return_crit_edge4
    i32 110, label %entry.return_crit_edge5
    i32 26, label %entry.return_crit_edge6
    i32 28, label %entry.return_crit_edge7
    i32 104, label %entry.return_crit_edge8
    i32 106, label %entry.return_crit_edge9
  ]

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @encx24j600_regmap_precious(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %reg, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %0)
  %1 = icmp eq i32 %0, 192
  %2 = add i32 %reg, -202
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %2)
  %3 = icmp ult i32 %2, 38
  %retval.0 = or i1 %1, %3
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @regmap_lock_mutex(ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.encx24j600_context, ptr %context, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @regmap_unlock_mutex(ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.encx24j600_context, ptr %context, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_encx24j600_write(ptr nocapture noundef %context, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %incdec.ptr = getelementptr i8, ptr %data, i32 1
  %dec = add i32 %len, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %1)
  %cmp = icmp ugt i8 %1, -96
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @regmap_encx24j600_spi_write(ptr noundef %context, i8 noundef zeroext %1, ptr noundef %incdec.ptr, i32 noundef %dec)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec)
  %cmp2 = icmp ugt i32 %dec, 2
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call fastcc i32 @regmap_encx24j600_sfr_update(ptr noundef %context, i8 noundef zeroext %1, ptr noundef %incdec.ptr, i32 noundef %dec, i8 noundef zeroext 34, i8 noundef zeroext 64) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call.i, %if.end5 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_encx24j600_reg_update_bits(ptr nocapture noundef %context, i32 noundef %reg, i32 noundef %mask, i32 noundef %val) #0 align 64 {
entry:
  %val.addr.i75 = alloca i8, align 1
  %val.addr.i73 = alloca i8, align 1
  %val.addr.i71 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %val, %mask
  %neg = xor i32 %val, -1
  %and1 = and i32 %neg, %mask
  %0 = add i32 %reg, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %0)
  %1 = icmp ult i32 %0, 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %reg)
  %cmp3 = icmp ugt i32 %reg, 127
  %or.cond67 = or i1 %cmp3, %1
  br i1 %or.cond67, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and4 = and i32 %and, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i32 %reg to i8
  %conv6 = trunc i32 %and to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %2 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv6, ptr %val.addr.i, align 1
  %call.i = call fastcc i32 @regmap_encx24j600_sfr_update(ptr noundef %context, i8 noundef zeroext %conv, ptr noundef nonnull %val.addr.i, i32 noundef 1, i8 noundef zeroext 36, i8 noundef zeroext -128) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then5 ], [ 0, %if.end.if.end7_crit_edge ]
  %3 = and i32 %and, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp12 = icmp eq i32 %ret.0, 0
  %or.cond68 = select i1 %tobool10.not, i1 %cmp12, i1 false
  br i1 %or.cond68, label %if.then14, label %if.end7.if.end18_crit_edge

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %and8 = lshr i32 %and, 8
  %4 = trunc i32 %reg to i8
  %conv15 = add nuw i8 %4, 1
  %conv16 = trunc i32 %and8 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i71)
  %5 = ptrtoint ptr %val.addr.i71 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv16, ptr %val.addr.i71, align 1
  %call.i72 = call fastcc i32 @regmap_encx24j600_sfr_update(ptr noundef %context, i8 noundef zeroext %conv15, ptr noundef nonnull %val.addr.i71, i32 noundef 1, i8 noundef zeroext 36, i8 noundef zeroext -128) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i71)
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end7.if.end18_crit_edge
  %ret.1 = phi i32 [ %call.i72, %if.then14 ], [ %ret.0, %if.end7.if.end18_crit_edge ]
  %and19 = and i32 %and1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp ne i32 %and19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp22 = icmp eq i32 %ret.1, 0
  %or.cond69 = select i1 %tobool20.not, i1 %cmp22, i1 false
  br i1 %or.cond69, label %if.then24, label %if.end18.if.end28_crit_edge

if.end18.if.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %conv25 = trunc i32 %reg to i8
  %conv26 = trunc i32 %and1 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i73)
  %6 = ptrtoint ptr %val.addr.i73 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv26, ptr %val.addr.i73, align 1
  %call.i74 = call fastcc i32 @regmap_encx24j600_sfr_update(ptr noundef %context, i8 noundef zeroext %conv25, ptr noundef nonnull %val.addr.i73, i32 noundef 1, i8 noundef zeroext 38, i8 noundef zeroext -96) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i73)
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end18.if.end28_crit_edge
  %ret.2 = phi i32 [ %call.i74, %if.then24 ], [ %ret.1, %if.end18.if.end28_crit_edge ]
  %7 = and i32 %and1, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool32.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %cmp34 = icmp eq i32 %ret.2, 0
  %or.cond70 = select i1 %tobool32.not, i1 %cmp34, i1 false
  br i1 %or.cond70, label %if.then36, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %and29 = lshr i32 %and1, 8
  %8 = trunc i32 %reg to i8
  %conv38 = add nuw i8 %8, 1
  %conv39 = trunc i32 %and29 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i75)
  %9 = ptrtoint ptr %val.addr.i75 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv39, ptr %val.addr.i75, align 1
  %call.i76 = call fastcc i32 @regmap_encx24j600_sfr_update(ptr noundef %context, i8 noundef zeroext %conv38, ptr noundef nonnull %val.addr.i75, i32 noundef 1, i8 noundef zeroext 38, i8 noundef zeroext -96) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i75)
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end28.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i76, %if.then36 ], [ %ret.2, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_encx24j600_read(ptr nocapture noundef %context, ptr nocapture noundef readonly %reg_buf, i32 noundef %reg_size, ptr noundef %val, i32 noundef %val_size) #0 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %bank_opcode.i.i = alloca i32, align 4
  %tx_buf.i = alloca [2 x i8], align 1
  %reg.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg_buf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reg_size)
  %cmp.not = icmp eq i32 %reg_size, 1
  %conv1 = zext i8 %1 to i32
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %conv1, i32 noundef %reg_size) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %1)
  %cmp2 = icmp ugt i8 %1, -96
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %2 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %reg.addr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -56, i8 %1)
  %cmp.i = icmp eq i8 %1, -56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_size)
  %3 = icmp ne i32 %val_size, 0
  %4 = zext i1 %3 to i32
  %count.addr.0.i = select i1 %cmp.i, i32 %4, i32 %val_size
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  %call.i = call i32 @spi_write_then_read(ptr noundef %6, ptr noundef nonnull %reg.addr.i, i32 noundef 1, ptr noundef %val, i32 noundef %count.addr.0.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val_size)
  %cmp7 = icmp ugt i32 %val_size, 2
  br i1 %cmp7, label %do.end12, label %if.end16

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, i32 noundef %conv1, i32 noundef %val_size) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %and.i = and i8 %1, 31
  %and3.i = lshr i8 %1, 5
  %7 = and i8 %and3.i, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i) #5
  %8 = getelementptr inbounds [2 x i8], ptr %tx_buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp.i28 = icmp sgt i8 %1, -1
  br i1 %cmp.i28, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %and.i)
  %cmp10.i = icmp ult i8 %and.i, 22
  br i1 %cmp10.i, label %land.lhs.true.i, label %if.then.i.if.end29.i_crit_edge

if.then.i.if.end29.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %bank12.i = getelementptr inbounds %struct.encx24j600_context, ptr %context, i32 0, i32 4
  %10 = ptrtoint ptr %bank12.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bank12.i, align 4
  %conv13.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv13.i)
  %cmp14.not.i = icmp eq i32 %11, %conv13.i
  br i1 %cmp14.not.i, label %land.lhs.true.i.if.end29.i_crit_edge, label %if.then16.i

land.lhs.true.i.if.end29.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bank_opcode.i.i) #5
  %and.i.i = shl nuw nsw i32 %conv13.i, 1
  %or.i.i = or i32 %and.i.i, 192
  %12 = ptrtoint ptr %bank_opcode.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i.i, ptr %bank_opcode.i.i, align 4
  %13 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %context, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #5
  %15 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 92)
  %17 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %bank_opcode.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  %19 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.then16.i.spi_write.exit.i.i_crit_edge

if.then16.i.spi_write.exit.i.i_crit_edge:         ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_write.exit.i.i

spi_write.exit.i.i:                               ; preds = %if.end.i.i.i.i.i.i.i.i, %if.then16.i.spi_write.exit.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.thread59.i, label %if.end.i

if.end.thread59.i:                                ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %bank12.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv13.i, ptr %bank12.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank_opcode.i.i) #5
  br label %if.end29.i

if.end.i:                                         ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank_opcode.i.i) #5
  br label %regmap_encx24j600_sfr_read.exit

if.else.i:                                        ; preds = %if.end16
  %switch.tableidx = add i8 %1, 122
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %switch.tableidx)
  %30 = icmp ult i8 %switch.tableidx, 11
  br i1 %30, label %switch.hole_check, label %if.else.i.regmap_encx24j600_sfr_read.exit_crit_edge

if.else.i.regmap_encx24j600_sfr_read.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %regmap_encx24j600_sfr_read.exit

switch.hole_check:                                ; preds = %if.else.i
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 1365, %switch.maskindex
  %31 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %switch.lobit.not = icmp eq i16 %31, 0
  br i1 %switch.lobit.not, label %switch.hole_check.regmap_encx24j600_sfr_read.exit_crit_edge, label %switch.lookup

switch.hole_check.regmap_encx24j600_sfr_read.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %regmap_encx24j600_sfr_read.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %32 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [11 x i8], ptr @switch.table.regmap_encx24j600_read, i32 0, i32 %32
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %33)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end29.i

if.end29.i:                                       ; preds = %switch.lookup, %if.end.thread59.i, %land.lhs.true.i.if.end29.i_crit_edge, %if.then.i.if.end29.i_crit_edge
  %cmd.0.i = phi i8 [ %and.i, %if.end.thread59.i ], [ %and.i, %land.lhs.true.i.if.end29.i_crit_edge ], [ %and.i, %if.then.i.if.end29.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %34 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %cmd.0.i, ptr %tx_buf.i, align 1
  %35 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %context, align 4
  %call37.i = call i32 @spi_write_then_read(ptr noundef %36, ptr noundef nonnull %tx_buf.i, i32 noundef 1, ptr noundef %val, i32 noundef %val_size) #5
  br label %regmap_encx24j600_sfr_read.exit

regmap_encx24j600_sfr_read.exit:                  ; preds = %if.end29.i, %switch.hole_check.regmap_encx24j600_sfr_read.exit_crit_edge, %if.else.i.regmap_encx24j600_sfr_read.exit_crit_edge, %if.end.i
  %retval.0.i = phi i32 [ %call37.i, %if.end29.i ], [ %call.i.i.i.i, %if.end.i ], [ -22, %if.else.i.regmap_encx24j600_sfr_read.exit_crit_edge ], [ -22, %switch.hole_check.regmap_encx24j600_sfr_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i) #5
  br label %cleanup

cleanup:                                          ; preds = %regmap_encx24j600_sfr_read.exit, %do.end12, %if.then4, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %if.then4 ], [ -22, %do.end12 ], [ %retval.0.i, %regmap_encx24j600_sfr_read.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @regmap_encx24j600_sfr_update(ptr nocapture noundef %ctx, i8 noundef zeroext %reg, ptr noundef %val, i32 noundef %len, i8 noundef zeroext %unbanked_cmd, i8 noundef zeroext %banked_code) unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %bank_opcode.i = alloca i32, align 4
  %reg.addr = alloca i8, align 1
  %cmd = alloca i8, align 1
  %m = alloca %struct.spi_message, align 4
  %t = alloca [3 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr, align 1
  %1 = lshr i8 %reg, 5
  %2 = and i8 %1, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #5
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t) #5
  %3 = getelementptr inbounds i8, ptr %t, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 284)
  %5 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cmd, ptr %t, align 4
  %len5 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %6 = ptrtoint ptr %len5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %len5, align 4
  %arrayinit.element = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1
  %7 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %reg.addr, ptr %arrayinit.element, align 4
  %len7 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 2
  %8 = ptrtoint ptr %len7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %len7, align 4
  %arrayinit.element12 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 2
  %9 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %val, ptr %arrayinit.element12, align 4
  %len14 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 2, i32 2
  %10 = ptrtoint ptr %len14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %len, ptr %len14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %reg)
  %cmp = icmp sgt i8 %reg, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %and = and i8 %reg, 31
  %or67 = or i8 %and, %banked_code
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %or67, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %and)
  %cmp25 = icmp ult i8 %and, 22
  br i1 %cmp25, label %land.lhs.true, label %if.then.if.end44_crit_edge

if.then.if.end44_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

land.lhs.true:                                    ; preds = %if.then
  %bank27 = getelementptr inbounds %struct.encx24j600_context, ptr %ctx, i32 0, i32 4
  %12 = ptrtoint ptr %bank27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bank27, align 4
  %conv28 = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv28)
  %cmp29.not = icmp eq i32 %13, %conv28
  br i1 %cmp29.not, label %land.lhs.true.if.end44_crit_edge, label %if.then31

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then31:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bank_opcode.i) #5
  %and.i = shl nuw nsw i32 %conv28, 1
  %or.i = or i32 %and.i, 192
  %14 = ptrtoint ptr %bank_opcode.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or.i, ptr %bank_opcode.i, align 4
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %17 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 92)
  %19 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %bank_opcode.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %21 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 40)
  %23 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.then31.spi_write.exit.i_crit_edge

if.then31.spi_write.exit.i_crit_edge:             ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %if.then31.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %16, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i, label %if.end.thread83, label %if.end

if.end.thread83:                                  ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %bank27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv28, ptr %bank27, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank_opcode.i) #5
  br label %if.end44

if.end:                                           ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank_opcode.i) #5
  br label %cleanup56

if.else:                                          ; preds = %entry
  %32 = zext i8 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %reg, label %if.else.cleanup56_crit_edge [
    i8 -122, label %sw.bb
    i8 -120, label %sw.bb38
    i8 -118, label %sw.bb39
    i8 -116, label %sw.bb40
    i8 -114, label %sw.bb41
    i8 -112, label %sw.bb42
  ]

if.else.cleanup56_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup56

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 96, ptr %cmd, align 1
  br label %if.end44

sw.bb38:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 108, ptr %cmd, align 1
  br label %if.end44

sw.bb39:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 100, ptr %cmd, align 1
  br label %if.end44

sw.bb40:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 112, ptr %cmd, align 1
  br label %if.end44

sw.bb41:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 104, ptr %cmd, align 1
  br label %if.end44

sw.bb42:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 116, ptr %cmd, align 1
  br label %if.end44

if.end44:                                         ; preds = %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb, %if.end.thread83, %land.lhs.true.if.end44_crit_edge, %if.then.if.end44_crit_edge
  %39 = getelementptr inbounds i8, ptr %m, i32 8
  %40 = call ptr @memset(ptr %39, i32 0, i32 40)
  %41 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %43 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %44 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i68 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i68, label %if.end.i.i.i, label %if.end44.spi_message_add_tail.exit_crit_edge

if.end44.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %46 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %48 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end44.spi_message_add_tail.exit_crit_edge
  %49 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %unbanked_cmd)
  %cmp47 = icmp eq i8 %50, %unbanked_cmd
  br i1 %cmp47, label %if.then49, label %spi_message_add_tail.exit.if.end53_crit_edge

spi_message_add_tail.exit.if.end53_crit_edge:     ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then49:                                        ; preds = %spi_message_add_tail.exit
  %51 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %reg.addr, ptr %arrayinit.element, align 4
  %transfer_list.i69 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %52 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i71 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i69, ptr noundef %53, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i71, label %if.end.i.i.i73, label %if.then49.if.end53_crit_edge

if.then49.if.end53_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.end.i.i.i73:                                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %transfer_list.i69, ptr %prev.i.i.i, align 4
  %55 = ptrtoint ptr %transfer_list.i69 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %m, ptr %transfer_list.i69, align 4
  %prev3.i.i.i72 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %56 = ptrtoint ptr %prev3.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev3.i.i.i72, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %transfer_list.i69, ptr %53, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end.i.i.i73, %if.then49.if.end53_crit_edge, %spi_message_add_tail.exit.if.end53_crit_edge
  %transfer_list.i75 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 2, i32 18
  %58 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i77 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i75, ptr noundef %59, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i77, label %if.end.i.i.i79, label %if.end53.spi_message_add_tail.exit80_crit_edge

if.end53.spi_message_add_tail.exit80_crit_edge:   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit80

if.end.i.i.i79:                                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %transfer_list.i75, ptr %prev.i.i.i, align 4
  %61 = ptrtoint ptr %transfer_list.i75 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %m, ptr %transfer_list.i75, align 4
  %prev3.i.i.i78 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 2, i32 18, i32 1
  %62 = ptrtoint ptr %prev3.i.i.i78 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i.i78, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %transfer_list.i75, ptr %59, align 4
  br label %spi_message_add_tail.exit80

spi_message_add_tail.exit80:                      ; preds = %if.end.i.i.i79, %if.end53.spi_message_add_tail.exit80_crit_edge
  %64 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctx, align 4
  %call55 = call i32 @spi_sync(ptr noundef %65, ptr noundef nonnull %m) #5
  br label %cleanup56

cleanup56:                                        ; preds = %spi_message_add_tail.exit80, %if.else.cleanup56_crit_edge, %if.end
  %retval.1 = phi i32 [ %call55, %spi_message_add_tail.exit80 ], [ %call.i.i.i, %if.end ], [ -22, %if.else.cleanup56_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd) #5
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_encx24j600_phy_reg_write(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  %mistat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mistat) #5
  %0 = ptrtoint ptr %mistat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mistat, align 4, !annotation !59
  %and = and i32 %reg, 31
  %or = or i32 %and, 256
  %regmap = getelementptr inbounds %struct.encx24j600_context, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 84, i32 noundef %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end28_crit_edge, !prof !60

entry.do.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 102, i32 noundef %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end13, label %if.end.do.end28_crit_edge, !prof !60

if.end.do.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

if.end13:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #5
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call1545 = call i32 @regmap_read(ptr noundef %6, i32 noundef 106, ptr noundef nonnull %mistat) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1545)
  %cmp.not46 = icmp eq i32 %call1545, 0
  br i1 %cmp.not46, label %if.end13.if.end31_crit_edge, label %if.end13.land.rhs_crit_edge

if.end13.land.rhs_crit_edge:                      ; preds = %if.end13
  br label %land.rhs

if.end13.if.end31_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %if.end13.land.rhs_crit_edge
  %7 = ptrtoint ptr %mistat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mistat, align 4
  %and16 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %land.rhs.do.end28_crit_edge, label %do.end

land.rhs.do.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

do.end:                                           ; preds = %land.rhs
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !61
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !62
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call15 = call i32 @regmap_read(ptr noundef %10, i32 noundef 106, ptr noundef nonnull %mistat) #5
  %cmp.not = icmp eq i32 %call15, 0
  br i1 %cmp.not, label %do.end.if.end31_crit_edge, label %do.end.land.rhs_crit_edge

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

do.end28:                                         ; preds = %land.rhs.do.end28_crit_edge, %if.end.do.end28_crit_edge, %entry.do.end28_crit_edge
  %ret.0.ph = phi i32 [ %call4, %if.end.do.end28_crit_edge ], [ %call, %entry.do.end28_crit_edge ], [ 1, %land.rhs.do.end28_crit_edge ]
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %ret.0.ph, i32 noundef %and, i32 noundef %val) #8
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %do.end.if.end31_crit_edge, %if.end13.if.end31_crit_edge
  %ret.044 = phi i32 [ %ret.0.ph, %do.end28 ], [ 0, %if.end13.if.end31_crit_edge ], [ 0, %do.end.if.end31_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mistat) #5
  ret i32 %ret.044
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_encx24j600_phy_reg_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr noundef %val) #0 align 64 {
entry:
  %mistat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mistat) #5
  %0 = ptrtoint ptr %mistat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mistat, align 4, !annotation !59
  %and = and i32 %reg, 31
  %or = or i32 %and, 256
  %regmap = getelementptr inbounds %struct.encx24j600_context, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 84, i32 noundef %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end50_crit_edge, !prof !60

entry.do.end50_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 82, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end13, label %if.end.do.end50_crit_edge, !prof !60

if.end.do.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

if.end13:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #5
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call1570 = call i32 @regmap_read(ptr noundef %6, i32 noundef 106, ptr noundef nonnull %mistat) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1570)
  %cmp.not71 = icmp eq i32 %call1570, 0
  br i1 %cmp.not71, label %if.end13.if.end32.critedge_crit_edge, label %if.end13.land.rhs_crit_edge

if.end13.land.rhs_crit_edge:                      ; preds = %if.end13
  br label %land.rhs

if.end13.if.end32.critedge_crit_edge:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.critedge

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %if.end13.land.rhs_crit_edge
  %7 = ptrtoint ptr %mistat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mistat, align 4
  %and16 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %land.rhs.do.end50_crit_edge, label %do.end

land.rhs.do.end50_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

do.end:                                           ; preds = %land.rhs
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !63
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !64
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call15 = call i32 @regmap_read(ptr noundef %10, i32 noundef 106, ptr noundef nonnull %mistat) #5
  %cmp.not = icmp eq i32 %call15, 0
  br i1 %cmp.not, label %do.end.if.end32.critedge_crit_edge, label %do.end.land.rhs_crit_edge

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

do.end.if.end32.critedge_crit_edge:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.critedge

if.end32.critedge:                                ; preds = %do.end.if.end32.critedge_crit_edge, %if.end13.if.end32.critedge_crit_edge
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call34 = call i32 @regmap_write(ptr noundef %12, i32 noundef 82, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %err_out, label %if.end32.critedge.do.end50_crit_edge, !prof !60

if.end32.critedge.do.end50_crit_edge:             ; preds = %if.end32.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

err_out:                                          ; preds = %if.end32.critedge
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call45 = call i32 @regmap_read(ptr noundef %14, i32 noundef 104, ptr noundef %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %err_out.if.end53_crit_edge, label %err_out.do.end50_crit_edge

err_out.do.end50_crit_edge:                       ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

err_out.if.end53_crit_edge:                       ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.end50:                                         ; preds = %err_out.do.end50_crit_edge, %if.end32.critedge.do.end50_crit_edge, %land.rhs.do.end50_crit_edge, %if.end.do.end50_crit_edge, %entry.do.end50_crit_edge
  %ret.068 = phi i32 [ %call45, %err_out.do.end50_crit_edge ], [ %call34, %if.end32.critedge.do.end50_crit_edge ], [ %call4, %if.end.do.end50_crit_edge ], [ %call, %entry.do.end50_crit_edge ], [ 1, %land.rhs.do.end50_crit_edge ]
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %ret.068, i32 noundef %and) #8
  br label %if.end53

if.end53:                                         ; preds = %do.end50, %err_out.if.end53_crit_edge
  %ret.069 = phi i32 [ %ret.068, %do.end50 ], [ 0, %err_out.if.end53_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mistat) #5
  ret i32 %ret.069
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @encx24j600_phymap_writeable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %reg)
  %0 = icmp ult i32 %reg, 18
  %switch.cast = trunc i32 %reg to i18
  %switch.downshift = lshr i18 -131055, %switch.cast
  %1 = and i18 %switch.downshift, 1
  %switch.masked = icmp ne i18 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @encx24j600_phymap_readable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %reg)
  %0 = icmp ult i32 %reg, 32
  %switch.downshift = lshr i32 -2013134733, %reg
  %1 = and i32 %switch.downshift, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.masked = icmp ne i32 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @encx24j600_phymap_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 31
  %switch.cast = trunc i32 %switch.tableidx to i31
  %switch.downshift = lshr i31 -1006567375, %switch.cast
  %1 = and i31 %switch.downshift, 1
  %2 = sext i31 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %switch.masked = icmp ne i31 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__ksymtab_regmap_encx24j600_spi_write, !1, !"__ksymtab_regmap_encx24j600_spi_write", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/encx24j600-regmap.c", i32 231, i32 1}
!2 = !{ptr @__ksymtab_regmap_encx24j600_spi_read, !3, !"__ksymtab_regmap_encx24j600_spi_read", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/microchip/encx24j600-regmap.c", i32 242, i32 1}
!4 = !{ptr @devm_regmap_init_encx24j600.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/microchip/encx24j600-regmap.c", i32 503, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @devm_regmap_init_encx24j600._key, !8, !"_key", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/microchip/encx24j600-regmap.c", i32 505, i32 16}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @devm_regmap_init_encx24j600._key.2, !11, !"_key", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/microchip/encx24j600-regmap.c", i32 508, i32 16}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__ksymtab_devm_regmap_init_encx24j600, !14, !"__ksymtab_devm_regmap_init_encx24j600", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/microchip/encx24j600-regmap.c", i32 514, i32 1}
!15 = !{ptr @__UNIQUE_ID_file339, !16, !"__UNIQUE_ID_file339", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/microchip/encx24j600-regmap.c", i32 516, i32 1}
!17 = !{ptr @__UNIQUE_ID_license340, !16, !"__UNIQUE_ID_license340", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/microchip/encx24j600-regmap.c", i32 462, i32 10}
!20 = !{ptr @regcfg, !21, !"regcfg", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/microchip/encx24j600-regmap.c", i32 461, i32 29}
!22 = !{ptr @regmap_encx24j600, !23, !"regmap_encx24j600", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/microchip/encx24j600-regmap.c", i32 477, i32 26}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/microchip/encx24j600-regmap.c", i32 268, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @regmap_encx24j600_read._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @regmap_encx24j600_read._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/microchip/encx24j600-regmap.c", i32 276, i32 3}
!32 = !{ptr @regmap_encx24j600_read._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @regmap_encx24j600_read._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @phymap_encx24j600, !35, !"phymap_encx24j600", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/microchip/encx24j600-regmap.c", i32 495, i32 26}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/microchip/encx24j600-regmap.c", i32 406, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @regmap_encx24j600_phy_reg_write._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @regmap_encx24j600_phy_reg_write._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/microchip/encx24j600-regmap.c", i32 377, i32 3}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @regmap_encx24j600_phy_reg_read._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @regmap_encx24j600_phy_reg_read._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/microchip/encx24j600-regmap.c", i32 484, i32 10}
!48 = !{ptr @phycfg, !49, !"phycfg", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/microchip/encx24j600-regmap.c", i32 483, i32 29}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2156114145}
!62 = !{i64 2156113987}
!63 = !{i64 2156111932}
!64 = !{i64 2156111774}
